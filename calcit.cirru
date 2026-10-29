
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |feather
  :entries $ {}
    :default $ {} (:description "|库运行依赖与公开 helper 检查；画廊使用 --entry demo") (:init-fn 'feather.library-check/main!) (:mode :js) (:reload-fn 'feather.library-check/main!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op |feather.schema/Op
    :demo $ {} (:description "|完整图标画廊与 Demo 模块图") (:init-fn 'feather.main/main!) (:mode :js) (:reload-fn 'feather.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op |feather.schema/Op
  :files $ {}
    'feather.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ :store reel
                states $ decode-map-as
                  .unwrap-or (get store :states) nil
                  :: 'Map 'Dynamic 'Dynamic
                cursor $ or
                  .unwrap-or (get states :cursor) nil
                  []
                state $ or
                  .unwrap-or (get states :data) nil
                  {} $ :content |
                selected-icon $ .unwrap-or (get store :icon) nil
              div
                {} $ :class-name $ str-spaced css/preset css/global css/fullscreen
                if (non-nil? selected-icon)
                  let
                      icon selected-icon
                    div
                      {} $ :class-name $ str-spaced css/row-center style-preview
                      <> $ str "|Copied " |: icon
                      =< 16 nil
                      comp-i (str icon) 40 |black
                list->
                  {} $ :style $ {} (:width |100%) (:padding 16) (:overflow :auto) (:margin-top 80)
                  map icon-names $ fn (icon)
                    [] icon $ comp-icon-demo icon $ &= icon selected-icon
                when dev? $ comp-typed-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ quote $ Fn
            reel.typed/State Enum $ Map Dynamic Dynamic
            -> respo.schema/Component
            :features :js-ffi
        'comp-icon-demo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-icon-demo (icon selected?)
            div
              {}
                :class-name $ if selected? (str-spaced css/center css-cell style-selected) (str-spaced css/center css-cell)
                :on-click $ fn (event d!)
                  copy! $ str |: icon
                  d! :exhibit icon
              comp-icon icon
                {} (:font-size 24)
                  :color $ hsl 200 80 60
                , nil
              <> icon css-icon-name
          :examples $ []
          :schema $ quote $ Fn String Bool (-> respo.schema/Component)
        'css-cell $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-cell
            {}
              |$0 $ {} (:display :inline-flex) (:width 80) (:height 80) (:cursor :pointer) (:transition-duration |300ms)
              |$0:hover $ {} $ :background-color (hsl 0 0 96)
              |$0:active $ {} (:transition-duration |0ms)
                :background-color $ hsl 0 0 90
                :transform "|scale(1.02)"
          :examples $ []
          :schema $ quote String
        'css-icon-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-icon-name
            {} $ |$0 $ {} (:font-size 12)
              :color $ hsl 0 0 80
              :white-space :nowrap
          :examples $ []
          :schema $ quote String
        'icon-names $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def icon-names (load-icon-names)
          :examples $ []
          :schema $ quote $ List String
        'load-icon-names $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-icon-names ()
            decode-map-as
              to-calcit-data $ js/Object.keys $ .-icons (unsafe-coerce feather-icons feather.core/FeatherIconsHost)
              :: 'List 'String
          :examples $ []
          :schema $ quote $ Fn
            -> $ List String
            :features :js-ffi
        'style-preview $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-preview
            {} $ |& $ {} (:padding |16px) (:position :fixed) (:top 0) (:width |100%)
              :background-color $ hsl 0 0 100 0.8
              :border-bottom $ str "|1px solid " $ hsl 0 0 92
          :examples $ []
          :schema $ quote String
        'style-selected $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-selected
            {} $ |& $ {}
              :background-color $ hsl 0 0 95
              :outline $ str "|1px solid " $ hsl 200 90 89
              :z-index 999
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.comp.container
          :require (respo-ui.core :as ui) (respo-ui.css :as css)
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp defeffect list-> <> >> div button textarea span input memo-comp-by
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-typed-reel
            feather.config :refer $ dev?
            feather.core :refer $ comp-icon comp-i
            |feather-icons :default feather-icons
            |copy-text-to-clipboard :default copy!
            respo.css :refer $ defstyle
    'feather.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:title |Calcit) (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:storage-key |respo-feather)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.config
    'feather.core $ %{} 'FileEntry
      :defs $ {}
        'FeatherIconHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FeatherIconHost
            .to-svg $ quote $ Fn feather.core/FeatherIconHost Dynamic (-> String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :to-svg |toSvg
          :schema $ quote Trait
        'FeatherIconsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FeatherIconsHost (:icons 'JsObject)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ quote Trait
        'comp-i $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-i (icon size color)
            comp-icon icon
              {} (:font-size size) (:color color)
              , nil
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic Dynamic (-> respo.schema/Component)
        'comp-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-icon (icon options on-click)
            let
                opts $ if (map? options) options $ if (nil? options) ({}) (raise "|comp-icon expected options as a map")
                icon-name $ if (tag? icon) (to-string icon) icon
                obj $ js-get
                  unsafe-coerce
                    .-icons $ unsafe-coerce feather-icons FeatherIconsHost
                    , JsObject
                  , icon-name
              if obj
                span $ {}
                  :class-name $ str-spaced style-base $ or
                    .unwrap-or (get opts :class-name) nil
                    , |
                  :style $ or
                    .unwrap-or (get opts :style) nil
                    {}
                  :on-click on-click
                  :innerHTML $ .to-svg (unsafe-coerce obj FeatherIconHost)
                    js-object
                      :width $ or
                        .unwrap-or (get opts :size) nil
                        , 14
                      :height $ or
                        .unwrap-or (get opts :size) nil
                        , 14
                      :color $ icon-color-text $ .unwrap-or (get opts :color) nil
                do
                  shared/console-error! $ str "|No icon named:" icon-name
                  span
                    {} (:on-click on-click) (:class-name style-error)
                    <> $ str "|No icon: " icon-name
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic Dynamic (-> respo.schema/Component) (:features :js-ffi)
        'icon-color-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn icon-color-text (color)
            cond
                nil? color
                , |blue
              (= :unit (type-of color))
                , |blue
              (string? color)
                .to-string $ assert-type color 'String
              (tag? color)
                .to-string $ assert-type color 'Tag
              (number? color)
                .to-string $ assert-type color 'Number
              (bool? color)
                if color
                  .to-string $ assert-type color 'Bool
                  , |blue
              (symbol? color)
                .to-string $ assert-type color 'Symbol
              true $ raise "|[Feather/comp-icon] expected color to be a text scalar"
          :examples $ []
          :schema $ quote $ Fn ColorInput (-> String) (:generics ColorInput)
          :tests $ []
            %{} 'TestEntry (:name |preserves-text-scalars)
              :code $ quote $ do
                assert= |blue $ icon-color-text :blue
                assert= |#123456 $ icon-color-text |#123456
                assert= | $ icon-color-text |
                assert= |0 $ icon-color-text 0
                assert= |true $ icon-color-text true
                assert= |red $ icon-color-text 'red
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |defaults-falsey-colors)
              :code $ quote $ do
                assert= |blue $ icon-color-text nil
                assert= |blue $ icon-color-text false
                assert= |blue $ icon-color-text &unit
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |rejects-collections)
              :code $ quote $ each
                [] ({}) ([]) (#{})
                fn (value)
                  let
                      rejected? $ ref false
                    try (icon-color-text value)
                      fn (error)
                        assert= "|[Feather/comp-icon] expected color to be a text scalar" error
                        reset! rejected? true
                    assert |collection-color-rejected $ deref rejected?
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |preserves-unicode-and-number-text)
              :code $ quote $ do
                assert= "|蓝色😀" $ icon-color-text "|蓝色😀"
                assert= |12.5 $ icon-color-text 12.5
                assert= |-2 $ icon-color-text -2
              :tags $ #{} :regression :unit
        'style-base $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-base
            {} $ |& $ {} (:display :inline-block)
          :examples $ []
          :schema $ quote String
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
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.core
          :require
            respo.core :refer $ defcomp create-element span div <>
            respo.util.format :refer $ hsl
            |feather-icons :default feather-icons
            respo.css :refer $ defstyle
            js-ffi.shared :as shared
    'feather.library-check $ %{} 'FileEntry
      :defs $ {} $ 'main!
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            assert= |red $ icon-color-text :red
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.library-check
          :require $ feather.core :refer $ icon-color-text
    'feather.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref
            reel.typed/State Enum $ Map Dynamic Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ shared/console-log! $ str |Dispatch: op
            if (enum? op)
              &let
                _next $ reset! *reel $ next-reel op
                , &unit
              raise "|dispatch! expected an Enum op"
          :examples $ []
          :schema $ quote $ Fn Enum (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (load-console-formatter!)
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            let
                storage-key $ match (get config/site :storage-key)
                  (:some lookup-value) lookup-value
                  (:none) (raise "|Feather configuration missing :storage-key")
                raw $ browser/storage-get storage-key
              match raw
                (:some value)
                  dispatch! $ :: :hydrate-storage $ parse-cirru-edn value
                (:none) &unit
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |a dispatch!
            browser/add-event-listener! |beforeunload $ fn (event) (persist-storage!)
            browser/set-interval! persist-storage! $ * 60 1000
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> js-ffi.browser/DomElementHost) (:features :js-ffi)
        'next-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn next-reel (op)
            let
                reel $ assert-type @*reel $ quote
                  reel.typed/State Enum $ Map Dynamic Dynamic
              match (typed/decode-control op)
                (:some control) (typed/apply-control updater reel control)
                (:none)
                  typed/record-op updater reel op (generate-id!) (shared/now-ms)
          :examples $ []
          :schema $ quote $ Fn Enum
            -> $ reel.typed/State Enum $ Map Dynamic Dynamic
            :features :js-ffi
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            let
                storage-key $ match (get config/site :storage-key)
                  (:some lookup-value) lookup-value
                  (:none) (raise "|Feather configuration missing :storage-key")
                store $ ret-reel-store @*reel
              browser/storage-set! storage-key $ format-cirru-edn store
              , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ reloaded-reel
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'reloaded-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reloaded-reel ()
            typed/refresh updater
              assert-type @*reel $ quote $ reel.typed/State Enum (Map Dynamic Dynamic)
              assert-type schema/store $ quote $ Map Dynamic Dynamic
          :examples $ []
          :schema $ quote $ Fn
            -> $ reel.typed/State Enum $ Map Dynamic Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render!
              narrow-element $ mount-target
              comp-container @*reel
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            browser/set-timeout!
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
            , &unit
          :examples $ []
          :schema $ quote $ Fn Number Fn (-> Unit) (:features :js-ffi)
        'ret-reel-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ret-reel-store (r) (:store r)
          :examples $ []
          :schema $ quote $ Fn
            reel.typed/State Enum $ Map Dynamic Dynamic
            -> $ Map Dynamic Dynamic
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.main
          :require
            respo.core :refer $ render! clear-cache!
            respo.ffi.browser :refer $ narrow-element
            feather.comp.container :refer $ comp-container
            feather.updater :refer $ updater
            feather.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            reel.typed :as typed
            feather.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'feather.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry
          :doc "|Dispatch Op of the Feather demo, bound to the :dispatch-op type slot. Includes the :reel/* controls that comp-reel sends."
          :code $ quote $ defenum Op
            :states
              quote $ List Dynamic
              , 'Dynamic
            :hydrate-storage 'Dynamic
            :exhibit 'Dynamic
            :reel/toggle
            :reel/recall 'Number
            :reel/run
            :reel/step
            :reel/merge
            :reel/reset
            :reel/remove 'Number
          :examples $ []
          :schema $ quote EnumDef
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ quote Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.schema
    'feather.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                decode-map-as
                  update-states store
                    decode-map-as cursor $ :: 'List 'Dynamic
                    , s
                  :: 'Map 'Dynamic 'Dynamic
              (:hydrate-storage data)
                decode-map-as data $ :: 'Map 'Dynamic 'Dynamic
              (:exhibit d) (&map:assoc store :icon d)
              _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic) Enum String Number
            -> $ Map Dynamic Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns feather.updater
          :require $ respo.cursor :refer $ update-states
