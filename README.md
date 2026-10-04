
## Respo Feather for Calcit

Feather icon components for Respo applications written in Calcit.

- Available icons: https://feathericons.com
- Demo: http://repo.calcit-lang.org/respo-feather.calcit/

### Usages

Install dependency:

```bash
npm install feather-icons
```

```cirru
feather.core/comp-i icon font-size color

; or
feather.core/comp-icon icon
  {}
    :font-size 12
    :color :blue
    :class-name css-icon
    :style $ {}
  fn (e d!)
```

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### 中文说明

本模块为 Calcit/Respo 应用提供 Feather 图标组件。依赖固定到已发布的
Respo 模块 tag，以保证本地与 CI 的依赖解析稳定。

项目使用 Calcit 0.27.0。演示页面的前端构建产物上传到 COS，并通过公开
CDN 地址校验；PR 使用仓库路径下的 `/pr/<PR>/<run-id>/<attempt>/` 前缀。生产环境继续使用原有
`dist/*` rsync 部署路径。

COS Action 固定到正式 1.2.0 的发布提交，设置 `public-base-url` 启用内置
逐文件公网 checksum 校验，沿用默认 `verify-*` 参数，不添加重复校验脚本。
每个 PR 独立排队，与生产队列分开；生产 COS 前缀不变，不取消正在上传的任务。
Fork PR 只构建，不使用部署 secrets。本次仅更新 COS/CDN 配置，保留现有
依赖及全部类型/渲染门禁；Calcit 0.28 类型迁移另行验证，不能算作已完成升级。

0.4.22 发布兼容 Calcit 0.27.0 的严格依赖图，包含 Reel alpha.2、UI alpha.3、
Respo alpha.5 和 js-ffi alpha.4。使用 Node.js 24、Yarn 4.18.0、Vite 8.3.1。
规范项目文件为 `calcit.cirru` 与 `deps.cirru`，CI 禁止恢复两个旧 Snapshot 文件。

### License

MIT
