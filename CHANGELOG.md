# 更新日志

本项目所有重要变更均会记录在此文件中。

格式参考 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.1.0/)，版本号遵循 [语义化版本](https://semver.org/lang/zh-CN/)。

## [1.0.3] - 2026-10-17

### 变更（采纳「Agent 进驻子项目」新规：专属文件归属段措辞更新 + 新增项目级 `.pi/` 目录）

- **为什么改（2026-10-17）**：用户修订全局规则——智能体专属文件的**实体**只属于 Agent 项目；子项目不再禁止关联，改为根目录挂 `AGENTS.md` / `.pi` 两条相对路径软链接（随仓库提交）「引回」负责 Agent，即「Agent 进驻子项目」（取代 2026-10-12 的「子项目一律不得存在」；`.claude/` 不纳入本网络）；细则见全局 `~/.claude/docs/agents-registry.md`「智能体专属文件归属与子项目映射（2026-10-17 修订）」节。
- **改了什么**：① `.claude/CLAUDE.md`（`AGENTS.md` 为其符号链接）「子项目清单」节内智能体专属文件归属段的措辞更新为 2026-10-17 版（实体只属于 Agent 项目、子项目挂两条指回软链接、后台会话仍以 Agent 项目根为工作目录）；② 新建项目级 `.pi/` 目录（含 `.gitkeep`）——作为日后子项目 `.pi` 软链接的指向目标（本仓当前暂无子项目）。本轮两处文件改动由 Kit 代为完成，本仓按 `/add` → `/commit` 流程预检、记录并提交。

## [1.0.2] - 2026-10-14

### 变更（ResourceMonitor 子项目取消：清单节、目录结构节与 TODO 同步收尾）

- **为什么改（2026-10-14）**：用户决定取消子项目 ResourceMonitor、不再维护——本地项目资料删除（由 Kit 统一执行）、GitHub 远端仓库保留为存档（删除前已核验该仓库干净、提交全部已推送）；本仓「子项目清单」节、目录结构节与 TODO 中的相关条目需同步收尾。
- **改了什么**：① `.claude/CLAUDE.md`（`AGENTS.md` 为其符号链接）「子项目清单」节移除 ResourceMonitor 条目，改为「暂无子项目 + 已取消说明」并保留 2026-10-12 新规说明句；目录结构节两行（README 指向行、工具本体行）改为存档表述；② `TODO.md` 的 **T1**（zcode-cli 孤儿进程反馈 Atlas 排查——zcode-cli 已随本轮决定取消、不再维护）移入新建的 `TODO-archive.md`，标 ✅已放弃；`TODO.md` 清空为「暂无未完成待办」；③ 新建 `TODO-archive.md`（本项目首个归档批次）。

## [1.0.1] - 2026-10-12

### 变更（子项目智能体专属文件归位：ResourceMonitor 清理 + 本仓「子项目清单」节更新）

- **为什么改（2026-10-12）**：用户修订全局规则——`CLAUDE.md`、`AGENTS.md`、`.claude/`、项目级 `.pi/` 等智能体专属文件只有 Agent 项目允许拥有，非 Agent 项目（含子项目）一律不得存在（取代原「子项目 `.claude/` 超集」规则）；细则见全局 `~/.claude/docs/agents-registry.md`「智能体专属文件归属与子项目映射（2026-10-12 修订）」节。
- **改了什么**：① 按新规清理子项目 ResourceMonitor——删除根 `CLAUDE.md`（旧格式检测缓存，缓存载体已迁移为 `.commit-cache.md`）与 `.claude/CLAUDE.md`（本仓 CLAUDE.md 全文随附副本），子项目不再携带任何智能体专属文件；② 本仓 `.claude/CLAUDE.md`「子项目清单」节同步改写为新规表述（子项目不携带智能体专属文件、后台会话只以本仓根目录为工作目录）。

### 变更（全盘磁盘治理：可用空间 1.6G → 28G，使用率 91% → 37%）

- **为什么改（2026-09-12）**：本机磁盘 228G 仅剩 1.6G（使用率 91%），已到影响系统稳定性的临界点；磁盘/存储治理是 Alfred（电脑管家）的本职职责，本次为全盘扫描 + 分级清理。
- **改了什么**（按层级）：
  1. **A 级零风险清理（约 12G）**：删 Downloads 中已装应用/重复版本的 dmg（富途 FTNN ×2、腾讯会议、Trae_CN ×2、Typeless、VSCode、WorkBuddy 旧版 ×3、VSCodium ×2，约 3.6G）；删照片智能分析缓存（`mediaanalysisd`，2.9G，删后自动重建）；删 Library/Caches 五项（VSCode ShipIt 898M、WorkBuddy BundleMigration 1.0G、Trae CN 880M、LarkShell 496M、trae ShipIt 36M）；清 npm 缓存（`~/.npm/_cacache` + `_npx` 约 1.8G）；`brew cleanup --prune=all`（41MB）。
  2. **B 级用户授权删除（约 3.9G）**：删 `~/android-sdk`（3G，无任何项目/环境变量引用，`.zshrc` 中为条件式 PATH、目录不存在时无副作用）；删 `~/.rustup` + `~/.cargo`（864M，无 Rust 项目、cargo 不在 PATH）。
  3. **C 级行情数据重压缩（省 14.8G）**：Intraday 项目 `data_tick` 全量 parquet 从 SNAPPY 重压缩为 ZSTD（41.70GB → 26.89GB，省 36%），逐文件三重验证全部通过——详见 Intraday 仓库 CHANGELOG 同日条目。
  4. **保留待用户处理**：Chrome 缓存 + Service Worker 约 2.4G（运行中不动，待退出后清）；微信 5.9G（应用内清）；Downloads 中未装应用 dmg（ChatGPT/UTM/百度网盘等，待用户决定）。
- **重压缩脚本**：`Intraday/tmp/recompress.py`（幂等可续跑）。

### 新增（项目根 `AGENTS.md` 软链接指向 `.claude/CLAUDE.md`）

- **为什么改**：让不读 `.claude/CLAUDE.md` 而读 `AGENTS.md` 约定的工具（如 ZCode 等以 AGENTS.md 为指令入口的 agent）也能加载到本项目的角色规则，且两条入口指向同一份内容、避免双文件维护分叉（与 `.codebuddy/CODEBUDDY.md` 单一来源思路一致）。
- **改了什么**：新建软链接 `AGENTS.md` → `.claude/CLAUDE.md`（相对路径，git 以符号链接形式跟踪，clone 后依然可解析）。

### 新增（项目根 `TODO.md` 待办清单）

- **为什么建**：全局规则（2026-08-01 立）要求所有「待办 / 未决」内容集中到项目根 `TODO.md` + `TODO-archive.md`（按紧急度分节、唯一编号），本项目一直缺失该文件；2026-09-07 排查本机 zcode 进程残留时产生首条待办（zcode-cli 会话退出孤儿残留，需反馈 Atlas 排查），首次触达即新建。
- **改了什么**：新建项目根 `TODO.md`（头部含个人隐私类待办分流至 local 版指引），登记首条待办 **T1**（zcode 孤儿残留 → 反馈 FullStackEngineerAgent，🟡 黄色紧急度）。

### 变更（措辞统一 fleet → team / 舰队 → 团队：README 中英双语 + `.claude/CLAUDE.md` 跟随全局统一）

- **为什么改**：用户 2026-08-16 已把 xhqing 主页 README 的自称从「舰队 / fleet」改为「团队 / team」，但本仓 README 中英两版与 `.claude/CLAUDE.md`（含同步到子项目 ResourceMonitor 的超集内容）仍是 fleet 旧措辞——外部读者沿「主页 → 各 agent 仓库」浏览会看到两种自称并存；2026-08-21 用户裁定全量存量一次清零、统一为团队 / team。
- **改了什么**：`README.md` 1 处（while the fleet works → the team works）、`README_cn.md` 1 处（为全舰队干活供底 → 为全团队）、`.claude/CLAUDE.md` 3 处（「fleet 项目名」→「团队项目名」、为全 fleet 提供 → 为全团队、徽章缓存标记「按 fleet 徽章标准」→「按团队徽章标准」）并按超集关系同步 ResourceMonitor `.claude/CLAUDE.md`（diff 验证超集一致）。仅改措辞，职责、结构、徽章均不变。

## [1.0.0] - 2026-08-20

### 新增（项目立项：电脑管家 Agent Alfred）

- **为什么建**：全局注册表（`~/.claude/CLAUDE.md`「智能体命名注册表」）已登记 Alfred / DeviceStewardAgent（资源管理：本地电脑 / 远程服务器 / 云电脑的进程 / 内存 / 存储监控与治理建议），但仓库一直未建——本次按 fleet 脚手架规范（2026-07-13 立、经多个项目验证）正式立项。
- **改了什么**：
  - 建立完整脚手架：角色化 `.claude/CLAUDE.md`、中英双语 README、`assets/logo.svg`（emerald 渐变 + 🖥️）、标准徽章（License / Version / Type + fleet Visitors 访问量徽章）、`LICENSE.md`（MIT）、`VERSION`（1.0.0）、`CHANGELOG.md`、`.gitignore`、`.claude/settings.json` + `settings.local.example.json`、`.codebuddy/CODEBUDDY.md`（一行引用 `.claude/CLAUDE.md`，单一来源）。
  - **ResourceMonitor**（[xhqing/ResourceMonitor](https://github.com/xhqing/ResourceMonitor)，VSCode 扩展：整机资源监控 + AI 清理建议）登记为 Alfred 的子项目，`.claude/` 超集关系按全局规则（2026-08-10 立）配置：DeviceStewardAgent `.claude/` 为权威源，ResourceMonitor `.claude/` 为其超集。
