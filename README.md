
## Respo Feather for Calcit

Feather icon components for Respo applications written in Calcit.

使用者注意：`0.4.30` 候选配对正式 Calcit CLI / `@calcit/procs` **0.30.1**，
请同步下方完整依赖图、重新生成 JS，并完整刷新页面，不混装旧 alpha。
UI 从 0.7 升到 0.8，基础样式可能变化；图标 API、颜色、点击与存档格式不变。
Demo 先恢复存档，再首次渲染和注册 watch、快捷键、离页保存与定时器；
坏存档仍明确报错，但不再留下会在离页时覆盖原值的持久化回调。
发布与否以同名正式 tag 为准，源码版本号不等于已发版。

- Available icons: https://feathericons.com
- Demo: http://repo.calcit-lang.org/respo-feather.calcit/

### Usages

Install dependency:

```bash
npm install feather-icons
```

```cirru.no-run
ns demo.icon $ :require
  feather.core :refer $ comp-icon

comp-icon |activity
  {} (:size 20) (:color :blue)
    :class-name |consumer-icon
    :style $ {} (:opacity 0.5)
  , nil
```

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### 中文说明

本模块为 Calcit/Respo 应用提供 Feather 图标组件。依赖固定到已发布的
Respo 模块 tag，以保证本地与 CI 的依赖解析稳定。

当前候选配对正式 Calcit / `@calcit/procs` `0.30.1`。
仍固定旧工具链的项目不要单独替换本模块，先迁移完整依赖图。
此前将 11 处底层 Map 读取迁到公开 `get` / Option，保留 nil、false、0、原默认值及存储 key。
states 在真实开放边界校验为 Map，保留混合 key；站点配置明确为 Map<Tag,String>。
图标名称复用已有 host trait 的完整命名，返回 List 和存储/cursor 输入改用真实检查，
不把断言或强转当成运行时验证。图标渲染、颜色、点击和存储格式不变。

演示页面的前端构建产物上传到 COS，并通过公开
CDN 地址校验；PR 使用仓库路径下的 `/pr/<PR>/<run-id>/<attempt>/` 前缀。生产环境继续使用原有
`dist/*` rsync 部署路径。

COS Action 使用精确正式 tag `v1.2.0`，设置 `public-base-url` 启用内置
逐文件公网 checksum 校验，沿用默认 `verify-*` 参数，不添加重复校验脚本。
每个 PR 独立排队，与生产队列分开；生产 COS 前缀不变，不取消正在上传的任务。
Fork PR 只构建，不使用部署 secrets。原类型/渲染门禁及生产部署保持不变。

准备 0.4.30，使用已发布的正式 Reel `0.6.41`、UI `0.8.0`、
Respo `0.16.124`、js-ffi `0.2.5`；传递 Router
`0.8.37`。Reel 0.6.41 指向其 #83，尚不含后续 main 的 UI 解耦改动。
发布状态以 GitHub Release 为准。使用 Node.js 24、Yarn 4.18.0、Vite 8.3.1。
本仓库 npm 新包安装隔离期沿用已批准的一小时设置，不使用逐包预批准。
规范项目文件为 `calcit.cirru` 与 `deps.cirru`，CI 禁止恢复两个旧 Snapshot 文件。

0.4.30 只调整 Demo 启动中的存档恢复顺序；原解析/派发异常继续传播，
成功恢复后才安装原来的宿主 effect，不补默认存档或吞异常。
图标 API、颜色行为、原测试与部署路径不变。原有附带测试继续在 native 与生成 JS 上回放，
完整 strict、原渲染测试和构建仍是升级门禁，不把单纯的版本号变化当作验收。

### 颜色边界

`comp-icon` 返回名义 `respo.schema/Component`。颜色先检查实际输入，
再通过已证明标量类型的 `.to-string` 方法转换，不把开放值直接交给泛型
ToString。nil、false、Unit 使用默认蓝色；String（含空字符串）、Tag、
Number（含 0）、true 与 Symbol 保留各自文本。Map/List/Set 等非标量
在调用 SVG API 前给出明确错误。

旧版生成 JS 曾把空字符串和 0 也替换为蓝色；当前版本与 Calcit native
合同对齐，两者现在保留原值。应用需要默认色时应传 nil 或省略 `:color`。
原 class/style、点击处理、未知图标提示继续保留。

### 开发验证

```sh
caps --strict --ci
YARN_ENABLE_HARDENED_MODE=1 yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format edn
calcit test --require-match
calcit js
node --test scripts/feather-render.test.mjs
yarn vite build
```

现有 JS runner 从 Snapshot 查询全部附带测试，复制同一 AST 到独立临时
Snapshot，执行 native 与生成 JS，再验证规范 Snapshot 字节未变；不存在
零测试选择静默通过，也不新增检查入口。普通消费项目可通过
`calcit query def feather.core/icon-color-text` 查看合同和附带测试。
CI 用 all-defs 严格检查覆盖全部定义，不重复手列 namespace；
完整 strict 明确要求 passed 且 diagnostics 为空，保留原渲染测试并报告弱类型与废弃调用。
旧迁移预算在正式依赖图、原有测试及构建通过后退役，不保留重复预算脚本。
实际启动使用 `typed/new-reel` 创建名义 State，持久化用 `:store` 字段访问，
不再把旧 Map 初始值标注成 State；选中图标按字符串读取，不把它作为函数调用。
原渲染测试使用独立创建的 typed Reel，不能代替启动、点击与刷新恢复的浏览器验收。

### 限制

- 当前候选使用正式工具链与正式模块 tag；发布仍需最新 PR HEAD CI/review、真实页面与合并后 main 验收。
- Reel 0.6.41 已正式发布，CI 直接要求完整 strict；仍须验证当前根的合同与
  干净 Caps 依赖解析，不以普通检查代替，不删除演示功能、伪造类型或放宽门禁。
- reload 保留 watch/cache/reel/HUD 的顺序与异常传播，宿主 effect 后显式返回 Unit。
  0.4.27 的正式 0.30.0/Reel 0.6.37 根完整 strict、204 个定义、原 4 项 native
  及原 16 项 Node suite（含同源 native/生成 JS 回放）通过；干净 CI/review 仍需独立完成。
- 颜色检查证明标量文本，不验证浏览器是否接受任意 CSS 颜色文本。
- 图标库、SVG 与 DOM 属于 `:js-ffi`，纯颜色转换可在 native 执行。
- 其余开放 options、事件回调和原宿主对象授权未在此版本全面类型化。

### License

MIT
