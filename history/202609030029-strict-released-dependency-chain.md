# Strict released dependency chain / 严格的已发布依赖链

- Upgrade Calcit and `@calcit/procs` to 0.13.75, Respo to 0.16.89, respo-ui to 0.7.14, Reel to 0.6.11, and respo-markdown to 0.4.29.
- 将 Calcit 与 `@calcit/procs` 升级到 0.13.75，Respo 升级到 0.16.89，respo-ui 升级到 0.7.14，Reel 升级到 0.6.11，respo-markdown 升级到 0.4.29。
- This removes transitive version-selection warnings so downstream consumers can use `caps --strict` without dependency drift.
- 本次升级消除传递依赖版本选择告警，使下游消费者可以在无依赖漂移的前提下使用 `caps --strict`。
- Keep the JSON quality baseline because the repository Node gate consumes it directly; mark it as generated text in `.gitattributes`.
- 质量 baseline 仍由仓库 Node 门禁直接消费，因此保留 JSON；同时在 `.gitattributes` 中标记为生成文本。
