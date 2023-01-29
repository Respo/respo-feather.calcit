
{} (:package |feather)
  :configs $ {} (:init-fn |feather.main/main!) (:reload-fn |feather.main/reload!) (:version |0.2.3)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
  :entries $ {}
  :files $ {}
    |feather.comp.container $ {}
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ either (:cursor states) ([])
                state $ either (:data states)
                  {} $ :content "\""
                icons $ to-calcit-data
                  js/Object.keys $ .-icons feather-icons
              div
                {} $ :class-name (str-spaced css/global css/fullscreen)
                if
                  some? $ :icon store
                  div
                    {} $ :style
                      merge ui/row-center $ {} (:padding "\"16px") (:position :fixed) (:top 0) (:width "\"100%")
                        :background-color $ hsl 0 0 100 0.8
                        :border-bottom $ str "\"1px solid " (hsl 0 0 92)
                    <> $ str "\"Copied " "\":" (:icon store)
                    =< 16 nil
                    comp-i
                      str $ :icon store
                      , 40 "\"black"
                list->
                  {} $ :style
                    {} (:width "\"100%") (:padding 16) (:overflow :auto) (:margin-top 80)
                  -> icons $ map
                    fn (icon)
                      [] icon $ memof1-call-by icon comp-icon-demo icon
                        = icon $ :icon store
                when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-icon-demo $ quote
          defcomp comp-icon-demo (icon selected?)
            div
              {}
                :class-name $ str-spaced css/center css-cell
                :style $ if selected?
                  {}
                    :background-color $ hsl 0 0 95
                    :outline $ str "\"1px solid " (hsl 200 90 89)
                    :z-index 999
                :on-click $ fn (event d!)
                  copy! $ str "\":" icon
                  d! :exhibit icon
              comp-icon icon
                {} (:font-size 24)
                  :color $ hsl 200 80 60
                , nil
              <> icon css-icon-name
        |css-cell $ quote
          defstyle css-cell $ {}
            "\"$0" $ {} (:display :inline-flex) (:width 80) (:height 80) (:cursor :pointer) (:transition-duration "\"300ms")
            "\"$0:hover" $ {}
              :background-color $ hsl 0 0 96
            "\"$0:active" $ {} (:transition-duration "\"0ms")
              :background-color $ hsl 0 0 90
              :transform "\"scale(1.02)"
        |css-icon-name $ quote
          defstyle css-icon-name $ {}
            "\"$0" $ {} (:font-size 12)
              :color $ hsl 0 0 80
              :white-space :nowrap
      :ns $ quote
        ns feather.comp.container $ :require (respo-ui.core :as ui) (respo-ui.css :as css)
          respo.util.format :refer $ hsl
          respo.core :refer $ defcomp defeffect list-> <> >> div button textarea span input
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-md.comp.md :refer $ comp-md
          feather.config :refer $ dev?
          feather.core :refer $ comp-icon comp-i
          "\"feather-icons" :default feather-icons
          "\"copy-text-to-clipboard" :default copy!
          respo.css :refer $ defstyle
          memof.once :refer $ memof1-call-by
    |feather.config $ {}
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ quote
          def site $ {} (:title "\"Calcit") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"respo-feather")
      :ns $ quote (ns feather.config)
    |feather.core $ {}
      :defs $ {}
        |comp-i $ quote
          defcomp comp-i (icon size color)
            comp-icon icon
              {} (:font-size size) (:color color)
              , nil
        |comp-icon $ quote
          defcomp comp-icon (icon style on-click)
            assert
              or (string? icon) (keyword? icon)
              , "\"1: icon name in string"
            assert
              number? $ :font-size style
              , "\"2: size in number"
            assert
              string? $ :color style
              , "\"3: color in string"
            let
                icon-name $ turn-string icon
                obj $ aget (.-icons feather-icons) icon-name
              if (some? obj)
                create-element :i $ {}
                  :style $ merge style-base style
                  :innerHTML $ if (some? obj)
                    .!toSvg obj $ to-js-data
                      {}
                        :width $ :font-size style
                        :height $ :font-size style
                        :color $ :color style
                  :on-click on-click
                do
                  js/console.error "\"No icon named:" $ turn-string icon
                  span
                    {} (:on-click on-click)
                      :stle $ merge style-base style style-error
                    <> $ str "\"No " icon-name
        |style-base $ quote
          def style-base $ {} (:display :inline-block)
        |style-error $ quote
          def style-error $ {}
            :background-color $ hsl 0 80 70
            :color :white
            :padding "\"0 8px"
            :line-height "\"24px"
            :border-radius "\"12px"
      :ns $ quote
        ns feather.core $ :require
          respo.core :refer $ defcomp create-element span div i <>
          respo.util.format :refer $ hsl
          "\"feather-icons" :default feather-icons
    |feather.main $ {}
      :defs $ {}
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              js/console.log "\"Dispatch:" op op-data
            reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! () (load-console-formatter!)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |a dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
            flipped js/setInterval (* 60 1000) persist-storage!
            let
                raw $ js/localStorage.getItem (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |persist-storage! $ quote
          defn persist-storage! () $ js/localStorage.setItem (:storage-key config/site)
            format-cirru-edn $ :store @*reel
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) (\ dispatch! % %2)
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
        |snippets $ quote
          defn snippets () $ println config/cdn?
      :ns $ quote
        ns feather.main $ :require
          respo.core :refer $ render! clear-cache!
          feather.comp.container :refer $ comp-container
          feather.updater :refer $ updater
          feather.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          feather.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
    |feather.schema $ {}
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
      :ns $ quote (ns feather.schema)
    |feather.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op store
              :states $ update-states store data
              :hydrate-storage data
              :exhibit $ assoc store :icon data
      :ns $ quote
        ns feather.updater $ :require
          respo.cursor :refer $ update-states
