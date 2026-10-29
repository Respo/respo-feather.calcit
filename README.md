
## Respo Feather for Calcit

Feather icon components for Respo applications written in Calcit.

### 当前工具链与使用者影响

候选 **0.5.0-alpha.6** 配对正式 **Calcit / @calcit/procs 0.32.1**，同步已发布的 Respo **0.17.1**、JS-FFI **0.2.9**，以及 Demo 的 Reel **0.7.0-alpha.5**、UI **0.9.0**。Snapshot 已用 `calcit edit format` 迁移为 0.32 类型写法。消费者需整图更新、重新生成 JS 并重启开发服务；正式 tag 发布前不要引用候选 main/hash。原 0.30 稳定维护线和旧 tag 保留。

已发布 0.5.0-alpha.4 仍声明 alpha.7；main 的正式工具链声明不等于旧 tag 已升级。本候选只做类型标注的 0.32 语法迁移（`:: 'Fn` 旧写法改为 `quote` 形式），不改图标 API、颜色、点击、HUD、原四项附带测试或存档逻辑。原完整 strict、同源 native/JS 回放、渲染回归和前端构建继续作为门禁，不关闭审计、不放宽类型或基线，不增加迁移/验证脚本。

依赖图更新包含上游已发布的 Respo/UI/Reel 修复，因此须验收真实图；不能把本项目源码未变说成整个生态行为都没变。模块的 0.5 alpha 发布线保留，不回退为旧 0.4 稳定接口。

### 库消费与 Demo

库的默认入口只装载公开 API 使用的 Respo / JS-FFI。UI / Reel 放在开发依赖和
独立的 `demo` 入口中；分组保持，具体依赖版本以本候选 deps.cirru 为准。图标 API 与原测试不变。
普通 Calcit 消费者按依赖的默认图装载源码，不再为了调用 `feather.core` 预加载 Demo。
依赖分组与 Snapshot 模块图共同调整，不能只移动 `deps.cirru` 的字段。

| 入口 | 用途 | Calcit 直接模块 |
| --- | --- | --- |
| `default` | 库消费、公开命名空间检查与轻量 smoke | Respo、JS-FFI |
| `demo` | 完整图标画廊、完整 strict、生成 Demo JS | Respo、UI、Reel、JS-FFI |

开发画廊时，原 `calcit js` 改为 `calcit --entry demo js`；监听使用
`calcit --entry demo -w js`。根项目用 `caps --strict --ci` 安装完整开发图。
`default` 的轻量入口只验证公开颜色 helper，不替代完整 Demo 的严格检查。
`--all-defs` 会检查本地 Demo 定义，必须选择依赖完整的 `demo` 入口。
详见 [Calcit 模块合同](https://github.com/calcit-lang/calcit/blob/main/docs/installation/modules.md)。

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

公开返回值保持名义 `respo.schema/Component`，真实开放 options、宿主和混合 cursor 边界继续受检，不用强转伪造类型。Demo 保留成功恢复存档后再注册保存回调的顺序；坏存档仍报错，不回落为空存档。reload 的 watch/cache/reel/HUD 顺序及异常传播不变。

前端仅使用 COS Action **v1.2.0** 的 public-base-url / 内置 verify，不增加额外校验脚本。PR 资源按仓库/pr/编号/run/attempt 隔离，fork 不上传；原生产 COS 和 dist rsync 路径、队列保持不变。PR 预览不是生产部署验收，合并后的原工作流会部署 Demo，不代表合并或部署下游业务应用。

Node.js 24、Yarn 4.18.0、Vite 8.3.1 和原 npm 一小时隔离设置保持，不加逐包预批准。只维护 calcit.cirru/deps.cirru，不恢复 compact.cirru/package.cirru，不提交 js-out。

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
calcit --check-only --ns feather.core
calcit --entry demo --check-only --all-defs
calcit --entry demo fix --workflow strict --verify --format edn
calcit test --require-match
calcit --entry demo js
node --test scripts/feather-render.test.mjs
yarn vite build
```

现有 JS runner 从 Snapshot 查询全部附带测试，复制同一 AST 到独立临时
Snapshot，执行 native 与生成 JS，再验证规范 Snapshot 字节未变；不存在
零测试选择静默通过，也不新增检查入口。普通消费项目可通过
`calcit query def feather.core/icon-color-text` 查看合同和附带测试。
CI 在完整 Demo 图上用 all-defs 严格检查覆盖全部定义，不重复手列 namespace；
完整 strict 明确要求 passed 且 diagnostics 为空，保留原渲染测试并报告弱类型与废弃调用。
另建只含真实 Respo / JS-FFI 模块的隔离图，验证原附带测试、独立消费者的正常
Calcit 引用和 native/JS 执行；缺少 Demo 依赖的显式 Demo 与全定义检查仍须失败，
公开 String 返回值仍不能传入 Number 运算。隔离验收不改规范 Snapshot，不伪造空模块。
旧迁移预算在正式依赖图、原有测试及构建通过后退役，不保留重复预算脚本。
实际启动使用 `typed/new-reel` 创建名义 State，持久化用 `:store` 字段访问，
不再把旧 Map 初始值标注成 State；选中图标按字符串读取，不把它作为函数调用。
原渲染测试使用独立创建的 typed Reel，不能代替启动、点击与刷新恢复的浏览器验收。

### 限制

- 当前工具链是正式 0.32.1，部分模块仍沿用已有 alpha 发布线。发布需要精确 PR/main CI、评审和实际页面验收，源码版本号不代表 tag 已发布。
- 不以轻量入口检查替代完整 Demo strict，也不因消除图冲突而扩大公开类型或移除门禁。旧存档保护已由既有实现负责，依赖升级不意味着跨浏览器或全部消费者均已验证。
- 颜色检查证明标量文本，不验证浏览器是否接受任意 CSS 颜色文本。
- 图标库、SVG 与 DOM 属于 `:js-ffi`，纯颜色转换可在 native 执行。
- 其余开放 options、事件回调和原宿主对象授权未在此版本全面类型化。

### License

MIT
