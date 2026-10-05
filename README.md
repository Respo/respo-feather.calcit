
## Respo Feather for Calcit

Feather icon components for Respo applications written in Calcit.

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

本次 alpha 适配 Calcit / `@calcit/procs` `0.29.0-alpha.6`。演示页面的前端构建产物上传到 COS，并通过公开
CDN 地址校验；PR 使用仓库路径下的 `/pr/<PR>/<run-id>/<attempt>/` 前缀。生产环境继续使用原有
`dist/*` rsync 部署路径。

COS Action 固定到正式 1.2.0 的发布提交，设置 `public-base-url` 启用内置
逐文件公网 checksum 校验，沿用默认 `verify-*` 参数，不添加重复校验脚本。
每个 PR 独立排队，与生产队列分开；生产 COS 前缀不变，不取消正在上传的任务。
Fork PR 只构建，不使用部署 secrets。原类型/渲染门禁及生产部署保持不变。

依赖固定为已发布的 Reel `0.6.33-alpha.3`、UI `0.7.32-alpha.4`、
Respo `0.16.114-alpha.7`、js-ffi `0.2.1-alpha.13`；传递 Router
`0.8.28-alpha.5`。使用 Node.js 24、Yarn 4.18.0、Vite 8.3.1。
规范项目文件为 `calcit.cirru` 与 `deps.cirru`，CI 禁止恢复两个旧 Snapshot 文件。

### 颜色边界

`comp-icon` 返回名义 `respo.schema/Component`。颜色先检查实际输入，
再通过已证明标量类型的 `.to-string` 方法转换，不把开放值直接交给泛型
ToString。nil、false、Unit 使用默认蓝色；String（含空字符串）、Tag、
Number（含 0）、true 与 Symbol 保留各自文本。Map/List/Set 等非标量
在调用 SVG API 前给出明确错误。

旧版生成 JS 曾把空字符串和 0 也替换为蓝色；此 alpha 与 Calcit native
合同对齐，两者现在保留原值。应用需要默认色时应传 nil 或省略 `:color`。
原 class/style、点击处理、未知图标提示继续保留。

### 开发验证

```sh
caps --strict --ci
YARN_ENABLE_HARDENED_MODE=1 yarn install --immutable
caps verify --toolchain
calcit --check-only
calcit test --require-match
calcit js
node --test scripts/feather-render.test.mjs
yarn vite build
```

现有 JS runner 从 Snapshot 查询全部附带测试，复制同一 AST 到独立临时
Snapshot，执行 native 与生成 JS，再验证规范 Snapshot 字节未变；不存在
零测试选择静默通过，也不新增检查入口。普通消费项目可通过
`calcit query def feather.core/icon-color-text` 查看合同和附带测试。

### 限制

- 这是 alpha 工具链适配，不代表整个生态已稳定发布。
- 颜色检查证明标量文本，不验证浏览器是否接受任意 CSS 颜色文本。
- 图标库、SVG 与 DOM 属于 `:js-ffi`，纯颜色转换可在 native 执行。
- 其余开放 options、事件回调和原宿主对象授权未在此版本全面类型化。

### License

MIT
