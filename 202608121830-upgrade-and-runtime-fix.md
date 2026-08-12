# 2026-08-12 18:30

- 从远端最新 `main` 创建升级分支，将 Calcit 与 `@calcit/procs` 升级到 0.13.12，并同步 Respo 模块版本。
- 修复 `comp-icon` 对 `get` 返回 Option 的误用：显式 `option:unwrap-or`，同时保证传给 Respo 的 `:style` 始终是 Map。
- 通过 `cr --check-only`、类型/weak-types 审计、JS 生成和 Vite 构建；浏览器验证图标列表正常渲染且无最新运行时错误。
