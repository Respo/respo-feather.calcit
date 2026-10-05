# 图标颜色的文本边界

Diary 的 RenderNode 下游回归发现，`comp-icon` 将开放 options map 中的
Dynamic 颜色直接交给 `turn-string`。新工具链要求明确的 ToString 证据，
因此阻挡了组件的静态检查。

增加 `icon-color-text`，明确 decode 原 native 标量合同，再按运行时
类型收窄 String、Tag、Number、Bool、Symbol，通过普通 `.to-string`
方法转换成 String。nil、false、Unit 默认蓝色。集合输入
给出明确错误。没有增加 `unsafe-coerce`，没有改变尺寸、样式、事件或
宿主 API。

本轮升级到正式 registry CLI / npm runtime `0.29.0-alpha.6`，依赖均为
已发布 tag。同源测试发现旧 `or` lowering 在 JS 把空字符串和 0 替换
成 blue，与 native 以及 core `or` 文档矛盾；已独立提交
[calcit#1781](https://github.com/calcit-lang/calcit/issues/1781)。本模块的
显式标量 decode 保留 native 文本合同，两个后端使用相同断言；这不表示
核心 lowering 缺陷已修复。

`comp-icon` 明确返回既有 nominal Component；未扩大原 Dynamic 参数，
未新增宿主授权/unsafe，未改变尺寸、样式、点击和未知图标路径。watch
改用效果命名，等价替换废弃的 `some?`；原质量门禁和生产部署保持原值。

## 验证

- 已发布 alpha.6 图的严格入口与所有公开定义 30/30 通过。
- 全部 4 项附带测试在 native 及同 AST 生成 JS 回放通过，含空文本、0、
  Unicode、默认值、标量和非标量拒绝；原测试断言保留。
- 原 runner 扩展后的 16 项 JS 回归通过，覆盖原图标和 typed Reel 画廊、
  SVG 文本、currentColor、class/style、未知图标与非法颜色拒绝。
- 原质量预算不改且通过，废弃调用为零。部署、发布 tag 和独立消费者
  验收以相关 PR/issue 的最终状态为准，不凭本地测试冒称已发布。

候选模块版本为 `0.4.23-alpha.1`；验证日志、报告、临时复现和生成产物
不纳入仓库。本模块完成也不等于 Diary 全部浏览器/存储路径通过。
