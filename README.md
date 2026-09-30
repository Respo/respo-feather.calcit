
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
CDN 地址校验；PR 使用仓库路径下的 `/pr/` 前缀。生产环境继续使用原有
`dist/*` rsync 部署路径。

0.4.22 发布兼容 Calcit 0.27.0 的严格依赖图，包含 Reel alpha.2、UI alpha.3、
Respo alpha.5 和 js-ffi alpha.4。使用 Node.js 24、Yarn 4.18.0、Vite 8.3.1。
规范项目文件为 `calcit.cirru` 与 `deps.cirru`，CI 禁止恢复两个旧 Snapshot 文件。

### License

MIT
