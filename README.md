
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

### License

MIT
