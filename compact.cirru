
{} (:package |feather)
  :configs $ {} (:init-fn |feather.main/main!) (:reload-fn |feather.main/reload!)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
    :version |0.2.0
  :files $ {}
    |feather.comp.container $ {}
      :ns $ quote
        ns feather.comp.container $ :require ([] respo-ui.core :as ui)
          [] respo.util.format :refer $ [] hsl
          [] respo.core :refer $ [] defcomp defeffect <> >> div button textarea span input
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] feather.config :refer $ [] dev?
          [] feather.core :refer $ [] comp-icon comp-i
          [] "\"feather-icons" :as feather-icons
          [] "\"copy-text-to-clipboard" :as copy!
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
                  .keys js/Object $ .-icons feather-icons/@
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
                  , & $ ->> icons
                    map $ fn (icon)
                      div
                        {}
                          :style $ merge ui/center
                            {} (:display :inline-flex) (:width 80) (:height 80) (:cursor :pointer)
                            if
                              = icon $ :icon store
                              {} $ :background-color (hsl 0 0 95)
                          :on-click $ fn (event d!)
                            copy!/default $ str "\":" icon
                            d! :exhibit icon
                        comp-icon icon
                          {} (:font-size 24)
                            :color $ hsl 200 80 60
                          , nil
                        <> icon $ {} (:font-size 12)
                          :color $ hsl 0 0 80
                          :white-space :nowrap
                when dev? $ comp-reel (>> states :reel) reel ({})
      :proc $ quote ()
    |feather.config $ {}
      :ns $ quote (ns feather.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote (def dev? true)
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/calcit-workflow/") (:title "\"Calcit") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"workflow")
      :proc $ quote ()
    |feather.main $ {}
      :ns $ quote
        ns feather.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] feather.comp.container :refer $ [] comp-container
          [] feather.updater :refer $ [] updater
          [] feather.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] feather.config :as config
      :defs $ {}
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op op-data
            reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! () (load-console-formatter!)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if ssr? $ render-app! realize-ssr!
            render-app! render!
            add-watch *reel :changes $ fn (reel prev) (render-app! render!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ extract-cirru-edn (js/JSON.parse raw)
            println "|App started."
        |persist-storage! $ quote
          defn persist-storage! () $ .setItem js/localStorage (:storage-key config/site)
            js/JSON.stringify $ to-cirru-edn (:store @*reel)
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*reel) (\ dispatch! % %2)
        |reload! $ quote
          defn reload! () (remove-watch *reel :changes) (clear-cache!)
            add-watch *reel :changes $ fn (reel prev) (render-app! render!)
            reset! *reel $ refresh-reel @*reel schema/store updater
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
      :proc $ quote ()
    |feather.schema $ {}
      :ns $ quote (ns feather.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
      :proc $ quote ()
    |feather.updater $ {}
      :ns $ quote
        ns feather.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case op
              :states $ update-states store data
              :hydrate-storage data
              :exhibit $ assoc store :icon data
              op store
      :proc $ quote ()
    |feather.core $ {}
      :ns $ quote
        ns feather.core $ :require
          [] respo.core :refer $ [] defcomp create-element span div i <>
          [] respo.util.format :refer $ [] hsl
          [] "\"feather-icons" :as feather-icons
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
                obj $ aget (.-icons feather-icons/@) icon-name
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
      :proc $ quote ()
