# 库默认图与完整 Demo 图分离

公开 feather.core 不使用 UI/Reel，但原默认入口是画廊，消费者递归装载默认模块图时也需要它们。只移动开发依赖不能改变装载要求。

沿用 Calcit 已有 named entry：先从原 default 完整复制 demo，保留画廊 init/reload、target、type slot、模块和 feature policy；default 使用具有 Unit 合同的公开 helper smoke，仅保留 Respo/JS-FFI。UI/Reel 转入开发依赖，版本不变。不修改 loader、图标 API、业务字段、Demo 源码或原四项附带测试。

CI 的完整 strict、全定义、分析和 JS 构建显式选择 demo。扩展现有 Node 渲染测试建立缺失 Demo 模块的真实文件系统图，用官方 guarded transaction 创建独立消费者，验证普通引用、native/JS 执行和公开返回类型；显式缺失 Demo 与不完整全定义图保持失败。原 attached tests、SVG、typed Reel、颜色与错误断言保留，不以轻量库检查替代完整项目验收。

发版仍使用正式 alpha.7 CLI/runtime 配对，先完成最新 PR review/CI，再验证合并后的精确 main。源码配置迁移不等于模块 tag 已发布；发布后才以对应正式 tag 描述消费者可安装的变化。
