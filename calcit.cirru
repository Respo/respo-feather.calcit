
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |feather
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'feather.main/main!) (:mode :native) (:reload-fn 'feather.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'feather.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ :store reel
                states $ &map:get store :states
                cursor $ or (&map:get states :cursor) ([])
                state $ or (&map:get states :data)
                  {} $ :content |
                selected-icon $ &map:get store :icon
              div
                {} $ :class-name $ str-spaced css/preset css/global css/fullscreen
                if (some? selected-icon)
                  let
                      icon $ selected-icon
                    div
                      {} $ :class-name $ str-spaced css/row-center style-preview
                      <> $ str "|Copied " |: icon
                      =< 16 nil
                      comp-i (str icon) 40 |black
                list->
                  {} $ :style $ {} (:width |100%) (:padding 16) (:overflow :auto) (:margin-top 80)
                  map (unsafe-coerce icon-names 'List)
                    fn (icon)
                      [] icon $ comp-icon-demo icon $ &= icon selected-icon
                when dev? $ comp-typed-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'reel.typed/State 'Enum (:: 'Map 'Dynamic 'Dynamic)
            :features $ #{} :js-ffi
        'comp-icon-demo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-icon-demo (icon selected?)
            div
              {}
                :class-name $ str-spaced css/center css-cell $ if selected? style-selected
                :on-click $ fn (event d!)
                  copy! $ str |: icon
                  d! :exhibit icon
              comp-icon icon
                {} (:font-size 24)
                  :color $ hsl 200 80 60
                , nil
              <> icon css-icon-name
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String 'Bool
        'css-cell $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-cell
            {}
              |$0 $ {} (:display :inline-flex) (:width 80) (:height 80) (:cursor :pointer) (:transition-duration |300ms)
              |$0:hover $ {} $ :background-color (hsl 0 0 96)
              |$0:active $ {} (:transition-duration |0ms)
                :background-color $ hsl 0 0 90
                :transform "|scale(1.02)"
          :examples $ []
          :schema $ :: 'Dynamic
        'css-icon-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-icon-name
            {} $ |$0 $ {} (:font-size 12)
              :color $ hsl 0 0 80
              :white-space :nowrap
          :examples $ []
          :schema $ :: 'Dynamic
        'icon-names $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def icon-names
            to-calcit-data $ js/Object.keys $ .-icons (unsafe-coerce feather-icons FeatherIconsHost)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'style-preview $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-preview
            {} $ |& $ {} (:padding |16px) (:position :fixed) (:top 0) (:width |100%)
              :background-color $ hsl 0 0 100 0.8
              :border-bottom $ str "|1px solid " $ hsl 0 0 92
          :examples $ []
          :schema $ :: 'Dynamic
        'style-selected $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-selected
            {} $ |& $ {}
              :background-color $ hsl 0 0 95
              :outline $ str "|1px solid " $ hsl 200 90 89
              :z-index 999
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.comp.container
          :require (respo-ui.core :as ui) (respo-ui.css :as css)
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp defeffect list-> <> >> div button textarea span input memo-comp-by
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-typed-reel
            respo-md.comp.md :refer $ comp-md
            feather.config :refer $ dev?
            feather.core :refer $ comp-icon comp-i
            |feather-icons :default feather-icons
            |copy-text-to-clipboard :default copy!
            respo.css :refer $ defstyle
    'feather.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:title |Calcit) (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:storage-key |respo-feather)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.config
    'feather.core $ %{} 'FileEntry
      :defs $ {}
        'FeatherIconHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FeatherIconHost
            .to-svg $ :: 'Fn $ {} (:args [] 'Dynamic) (:return 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :to-svg |toSvg
          :schema $ :: 'Trait
        'FeatherIconsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FeatherIconsHost
            (:icons 'Dynamic)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'comp-i $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-i (icon size color)
            comp-icon icon
              {} (:font-size size) (:color color)
              , nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic
        'comp-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-icon (icon options on-click)
            let
                icon-name $ if (tag? icon) (turn-string icon) icon
                obj $ js-get
                  unsafe-coerce
                    .-icons $ unsafe-coerce feather-icons FeatherIconsHost
                    , JsObject
                  , icon-name
              if obj
                span $ {}
                  :class-name $ str-spaced style-base $ or (&map:get options :class-name) |
                  :style $ or (&map:get options :style) ({})
                  :on-click on-click
                  :innerHTML $ .to-svg (unsafe-coerce obj FeatherIconHost)
                    js-object
                      :width $ or (&map:get options :size) 14
                      :height $ or (&map:get options :size) 14
                      :color $ turn-string $ or (&map:get options :color) :blue
                do
                  shared/console-error! $ str "|No icon named:" icon-name
                  span
                    {} (:on-click on-click) (:class-name style-error)
                    <> $ str "|No icon: " icon-name
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'style-base $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-base
            {} $ |& $ {} (:display :inline-block)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-error
            {} $ |& $ {}
              :background-color $ hsl 0 80 70
              :color :white
              :padding "|0 8px"
              :line-height |24px
              :border-radius |12px
              :display :inline-block
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.core
          :require
            respo.core :refer $ defcomp create-element span div <>
            respo.util.format :refer $ hsl
            |feather-icons :default feather-icons
            respo.css :refer $ defstyle
            js-ffi.shared :as shared
    'feather.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'Enum (:: 'Map 'Dynamic 'Dynamic)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ shared/console-log! $ str |Dispatch: op
            reset! *reel $ next-reel op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (load-console-formatter!)
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |a dispatch!
            browser/add-event-listener! |beforeunload $ fn (event) (persist-storage!)
            browser/set-interval! persist-storage! $ * 60 1000
            let
                storage-key $ &map:get config/site :storage-key
                raw $ browser/storage-get storage-key
              match raw
                (:some value)
                  dispatch! $ :: :hydrate-storage $ parse-cirru-edn value
                (:none) &unit
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            unsafe-coerce
              option:unwrap $ browser/query-selector |.app
              , 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'next-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn next-reel (op)
            typed/record-op updater
              assert-type @*reel $ :: 'reel.typed/State 'Enum $ :: 'Map 'Dynamic 'Dynamic
              assert-type op 'Enum
              generate-id!
              shared/now-ms
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Enum
            :features $ #{} :js-ffi
            :return $ :: 'reel.typed/State 'Enum $ :: 'Map 'Dynamic 'Dynamic
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            let
                storage-key $ &map:get config/site :storage-key
                store $ ret-reel-store @*reel
              browser/storage-set! storage-key $ format-cirru-edn store
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ reloaded-reel
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reloaded-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reloaded-reel ()
            typed/refresh updater
              assert-type @*reel $ :: 'reel.typed/State 'Enum $ :: 'Map 'Dynamic 'Dynamic
              assert-type schema/store $ :: 'Map 'Dynamic 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :return $ :: 'reel.typed/State 'Enum $ :: 'Map 'Dynamic 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            browser/set-timeout!
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number 'Fn
            :features $ #{} :js-ffi
        'ret-reel-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ret-reel-store (r) r.:store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'reel.typed/State 'Enum (:: 'Map 'Dynamic 'Dynamic)
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Dynamic 'Dynamic
        'snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn snippets () (println config/cdn?)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.main
          :require
            respo.core :refer $ render! clear-cache!
            feather.comp.container :refer $ comp-container
            feather.updater :refer $ updater
            feather.schema :as schema
            reel.util :refer $ listen-devtools! generate-id!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            reel.typed :as typed
            feather.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'feather.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.schema
    'feather.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s) (update-states store cursor s)
              (:hydrate-storage data)
                assert-type data $ :: 'Map 'Dynamic 'Dynamic
              (:exhibit d) (&map:assoc store :icon d)
              _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) 'Enum 'String 'Number
            :return $ :: 'Map 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.updater
          :require $ respo.cursor :refer $ update-states
