# 图标颜色的文本边界

Diary 的 RenderNode 下游回归发现，`comp-icon` 将开放 options map 中的
Dynamic 颜色直接交给 `turn-string`。新工具链要求明确的 ToString 证据，
因此阻挡了组件的静态检查。

增加 `icon-color-text`，先保留原有 `or color :blue` 默认逻辑，再按运行时
类型收窄 String、Tag、Number、Bool、Symbol，转换成 String。集合输入
给出明确错误。没有增加 `unsafe-coerce`，没有改变尺寸、样式、事件或
宿主 API。

保留 `turn-string` 以兼容固定 Calcit 0.27；新版本中该入口转交 ToString。
默认逻辑也保留旧版本的表现：在当前 0.27 JS 输出中，空字符串和数字 0
使用 blue；native 中这两个值保持原值。此次未把原有平台差异改成新行为。

## 验证

- 固定 0.27 CLI，按发布依赖图进行严格检查和 JS 生成，均通过。
- 3 项附加测试覆盖文本标量、默认值和集合拒绝，全部通过；候选
  0.29.0-alpha.1 下同样通过。
- 12 项实际 JS 渲染测试通过，包括图标、typed Reel 画廊、SVG color
  属性、currentColor stroke 和无效颜色拒绝。
- 独立恢复最新 main `61931b4` 并重新生成 JS，7 组有效颜色的 HTML
  与修复后逐字一致。
- 公共定义检查 30/30 通过；现有质量基线通过，没有扩大预算。
- 使用 Node 24.19.0 / Vite 8.3.1 构建前端通过。
- 将此模块接入独立 Diary 回归快照，颜色类型警告消失，真实 JS 的
  初始页、离线页、登录页内容检查通过。该验证使用本地迁移依赖和
  候选 runtime，不代表 Diary 完整客户端或浏览器交互已经通过。

版本 pin 保持原值；验证日志、JSON 和生成产物不纳入仓库。
