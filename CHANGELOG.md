# 更新日志

本项目所有重要变更均会记录在此文件中。

格式参考 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/)，版本号遵循 [语义化版本](https://semver.org/lang/zh-CN/)。

## [未发布]

### 新增（项目根 `AGENTS.md` 软链接指向 `.claude/CLAUDE.md`）

- **为什么改**：让不读 `.claude/CLAUDE.md` 而读 `AGENTS.md` 约定的工具（如 ZCode 等以 AGENTS.md 为指令入口的 agent）也能加载到本项目的角色规则，且两条入口指向同一份内容、避免双文件维护分叉（与 `.codebuddy/CODEBUDDY.md` 单一来源思路一致）。
- **改了什么**：新建软链接 `AGENTS.md` → `.claude/CLAUDE.md`（相对路径，git 以符号链接形式跟踪，clone 后依然可解析）。

### 变更（措辞统一 fleet → team / 舰队 → 团队：README 中英双语 + `.claude/CLAUDE.md` 跟随全局统一）

- **为什么改**：用户 2026-08-16 已把 xhqing 主页 README 的自称从「舰队 / fleet」改为「团队 / team」，但本仓 README 中英两版与 `.claude/CLAUDE.md`（含同步到子项目 ResourceMonitor 的超集内容）仍是 fleet 旧措辞——外部读者沿「主页 → 各 agent 仓库」浏览会看到两种自称并存；2026-08-21 用户裁定全量存量一次清零、统一为团队 / team。
- **改了什么**：`README.md` 1 处（while the fleet works → the team works）、`README_cn.md` 1 处（为全舰队干活供底 → 为全团队）、`.claude/CLAUDE.md` 3 处（「fleet 项目名」→「团队项目名」、为全 fleet 提供 → 为全团队、徽章缓存标记「按 fleet 徽章标准」→「按团队徽章标准」）并按超集关系同步 ResourceMonitor `.claude/CLAUDE.md`（diff 验证超集一致）。仅改措辞，职责、结构、徽章均不变。

## [1.0.0] - 2026-08-20

### 新增（项目立项：电脑管家 Agent Alfred）

- **为什么建**：全局注册表（`~/.claude/CLAUDE.md`「智能体命名注册表」）已登记 Alfred / DeviceStewardAgent（资源管理：本地电脑 / 远程服务器 / 云电脑的进程 / 内存 / 存储监控与治理建议），但仓库一直未建——本次按 fleet 脚手架规范（2026-07-13 立、经多个项目验证）正式立项。
- **改了什么**：
  - 建立完整脚手架：角色化 `.claude/CLAUDE.md`、中英双语 README、`assets/logo.svg`（emerald 渐变 + 🖥️）、标准徽章（License / Version / Type + fleet Visitors 访问量徽章）、`LICENSE.md`（MIT）、`VERSION`（1.0.0）、`CHANGELOG.md`、`.gitignore`、`.claude/settings.json` + `settings.local.example.json`、`.codebuddy/CODEBUDDY.md`（一行引用 `.claude/CLAUDE.md`，单一来源）。
  - **ResourceMonitor**（[xhqing/ResourceMonitor](https://github.com/xhqing/ResourceMonitor)，VSCode 扩展：整机资源监控 + AI 清理建议）登记为 Alfred 的子项目，`.claude/` 超集关系按全局规则（2026-08-10 立）配置：DeviceStewardAgent `.claude/` 为权威源，ResourceMonitor `.claude/` 为其超集。
