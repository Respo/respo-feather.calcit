
{} (:package |feather)
  :configs $ {} (:init-fn |feather.main/main!) (:reload-fn |feather.main/reload!) (:version |0.4.0-a1)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
  :entries $ {}
  :files $ {}
    |feather.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  cursor $ either (:cursor states) ([])
                  state $ either (:data states)
                    {} $ :content "\""
                div
                  {} $ :class-name (str-spaced css/preset css/global css/fullscreen)
                  if
                    some? $ :icon store
                    div
                      {} $ :class-name (str-spaced css/row-center style-preview)
                      <> $ str "\"Copied " "\":" (:icon store)
                      =< 16 nil
                      comp-i
                        str $ :icon store
                        , 40 "\"black"
                  list->
                    {} $ :style
                      {} (:width "\"100%") (:padding 16) (:overflow :auto) (:margin-top 80)
                    -> icon-names $ map
                      fn (icon)
                        [] icon $ memof1-call-by icon comp-icon-demo icon
                          = icon $ :icon store
                  when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-icon-demo $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-icon-demo (icon selected?)
              div
                {}
                  :class-name $ str-spaced css/center css-cell (if selected? style-selected)
                  :on-click $ fn (event d!)
                    copy! $ str "\":" icon
                    d! :exhibit icon
                comp-icon icon
                  {} (:font-size 24)
                    :color $ hsl 200 80 60
                  , nil
                <> icon css-icon-name
        |css-cell $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-cell $ {}
              "\"$0" $ {} (:display :inline-flex) (:width 80) (:height 80) (:cursor :pointer) (:transition-duration "\"300ms")
              "\"$0:hover" $ {}
                :background-color $ hsl 0 0 96
              "\"$0:active" $ {} (:transition-duration "\"0ms")
                :background-color $ hsl 0 0 90
                :transform "\"scale(1.02)"
        |css-icon-name $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-icon-name $ {}
              "\"$0" $ {} (:font-size 12)
                :color $ hsl 0 0 80
                :white-space :nowrap
        |icon-names $ %{} :CodeEntry (:doc |)
          :code $ quote
            def icon-names $ to-calcit-data
              js/Object.keys $ .-icons feather-icons
        |style-preview $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-preview $ {}
              "\"&" $ {} (:padding "\"16px") (:position :fixed) (:top 0) (:width "\"100%")
                :background-color $ hsl 0 0 100 0.8
                :border-bottom $ str "\"1px solid " (hsl 0 0 92)
        |style-selected $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-selected $ {}
              "\"&" $ {}
                :background-color $ hsl 0 0 95
                :outline $ str "\"1px solid " (hsl 200 90 89)
                :z-index 999
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
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
    |feather.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:title "\"Calcit") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"respo-feather")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns feather.config)
    |feather.core $ %{} :FileEntry
      :defs $ {}
        |comp-i $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-i (icon ? size color)
              comp-icon icon
                {} (:font-size size) (:color color)
                , nil
        |comp-icon $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-icon (icon options on-click)
              assert "\"icon name in string" $ or (string? icon) (tag? icon)
              let
                  icon-name $ turn-string icon
                  obj $ aget (.-icons feather-icons) icon-name
                  class-name $ get options :class-name
                  size $ get options :font-size
                  color $ get options :color
                assert "\"size in number" $ or (number? size) (nil? size)
                assert "\"color in string" $ or (string? color) (nil? color) (tag? color)
                if (some? obj)
                  create-element :i $ {}
                    :class-name $ str-spaced style-base class-name
                    :style $ get options :style
                    :on-click on-click
                    :innerHTML $ .!toSvg obj
                      js-object
                        :width $ or size 14
                        :height $ or size 14
                        :color $ turn-string (or color :blue)
                  do
                    js/console.error "\"No icon named:" $ turn-string icon
                    span
                      {} (:on-click on-click) (:class-name style-error)
                      <> $ str "\"No icon: " icon-name
        |style-base $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-base $ {}
              "\"&" $ {} (:display :inline-block)
        |style-error $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-error $ {}
              "\"&" $ {}
                :background-color $ hsl 0 80 70
                :color :white
                :padding "\"0 8px"
                :line-height "\"24px"
                :border-radius "\"12px"
                :display :inline-block
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns feather.core $ :require
            respo.core :refer $ defcomp create-element span div i <>
            respo.util.format :refer $ hsl
            "\"feather-icons" :default feather-icons
            respo.css :refer $ defstyle
    |feather.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ js/console.log "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
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
                  dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
              println "|App started."
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! () $ js/localStorage.setItem (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |repeat! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn repeat! (duration cb)
              js/setTimeout
                fn () (cb)
                  repeat! (* 1000 duration) cb
                * 1000 duration
        |snippets $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn snippets () $ println config/cdn?
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
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
    |feather.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns feather.schema)
    |feather.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:hydrate-storage data) data
                (:exhibit d) (assoc store :icon d)
                _ $ do (eprintln "\"Unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns feather.updater $ :require
            respo.cursor :refer $ update-states
