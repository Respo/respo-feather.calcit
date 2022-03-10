
{} (:package |feather)
  :configs $ {} (:init-fn |feather.main/main!) (:reload-fn |feather.main/reload!)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
    :version |0.2.3
  :entries $ {}
  :files $ {}
    |feather.comp.container $ {}
      :ns $ quote
        ns feather.comp.container $ :require (respo-ui.core :as ui)
          respo.util.format :refer $ hsl
          respo.core :refer $ defcomp defeffect <> >> div button textarea span input
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-md.comp.md :refer $ comp-md
          feather.config :refer $ dev?
          feather.core :refer $ comp-icon comp-i
          "\"feather-icons" :default feather-icons
          "\"copy-text-to-clipboard" :default copy!
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
                {} $ :style (merge ui/global ui/fullscreen)
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
                div
                  {} $ :style
                    {} (:width "\"100%") (:padding 16) (:overflow :auto) (:margin-top 80)
                  , & $ -> icons
                    map $ fn (icon)
                      div
                        {}
                          :style $ merge ui/center
                            {} (:display :inline-flex) (:width 80) (:height 80) (:cursor :pointer)
                            if
                              = icon $ :icon store
                              {} $ :background-color (hsl 0 0 95)
                          :on-click $ fn (event d!)
                            copy! $ str "\":" icon
                            d! :exhibit icon
                        comp-icon icon
                          {} (:font-size 24)
                            :color $ hsl 200 80 60
                          , nil
                        <> icon $ {} (:font-size 12)
                          :color $ hsl 0 0 80
                          :white-space :nowrap
                when dev? $ comp-reel (>> states :reel) reel ({})
    |feather.config $ {}
      :ns $ quote (ns feather.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:title "\"Calcit") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"respo-feather")
    |feather.main $ {}
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
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) (\ dispatch! % %2)
        |persist-storage! $ quote
          defn persist-storage! () $ .setItem js/localStorage (:storage-key config/site)
            js/JSON.stringify $ to-cirru-edn (:store @*reel)
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! () (load-console-formatter!)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ extract-cirru-edn (js/JSON.parse raw)
            println "|App started."
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op op-data
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
    |feather.schema $ {}
      :ns $ quote (ns feather.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
    |feather.updater $ {}
      :ns $ quote
        ns feather.updater $ :require
          respo.cursor :refer $ update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case op
              :states $ update-states store data
              :hydrate-storage data
              :exhibit $ assoc store :icon data
              op store
    |feather.core $ {}
      :ns $ quote
        ns feather.core $ :require
          respo.core :refer $ defcomp create-element span div i <>
          respo.util.format :refer $ hsl
          "\"feather-icons" :default feather-icons
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
                    .toSvg obj $ to-js-data
                      {}
                        :width $ :font-size style
                        :height $ :font-size style
                        :color $ :color style
                  :on-click on-click
                do
                  .error js/console "\"No icon named:" $ turn-string icon
                  span
                    {} (:on-click on-click)
                      :style $ merge style-base style style-error
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
