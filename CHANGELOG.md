# 更新日志

本项目所有重要变更均会记录在此文件中。

格式参考 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/)，版本号遵循 [语义化版本](https://semver.org/lang/zh-CN/)。

## [1.0.0] - 2026-08-20

### 新增（项目立项：电脑管家 Agent Alfred）

- **为什么建**：全局注册表（`~/.claude/CLAUDE.md`「智能体命名注册表」）已登记 Alfred / DeviceStewardAgent（资源管理：本地电脑 / 远程服务器 / 云电脑的进程 / 内存 / 存储监控与治理建议），但仓库一直未建——本次按 fleet 脚手架规范（2026-07-13 立、经多个项目验证）正式立项。
- **改了什么**：
  - 建立完整脚手架：角色化 `.claude/CLAUDE.md`、中英双语 README、`assets/logo.svg`（emerald 渐变 + 🖥️）、标准徽章（License / Version / Type + fleet Visitors 访问量徽章）、`LICENSE.md`（MIT）、`VERSION`（1.0.0）、`CHANGELOG.md`、`.gitignore`、`.claude/settings.json` + `settings.local.example.json`、`.codebuddy/CODEBUDDY.md`（一行引用 `.claude/CLAUDE.md`，单一来源）。
  - **ResourceMonitor**（[xhqing/ResourceMonitor](https://github.com/xhqing/ResourceMonitor)，VSCode 扩展：整机资源监控 + AI 清理建议）登记为 Alfred 的子项目，`.claude/` 超集关系按全局规则（2026-08-10 立）配置：DeviceStewardAgent `.claude/` 为权威源，ResourceMonitor `.claude/` 为其超集。
