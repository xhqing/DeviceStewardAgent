# 待办

未完成事项清单，按紧急度分节。已处理条目移入 `TODO-archive.md`。个人隐私类待办请写入被 `.gitignore` 忽略的 `TODO.local.md`（归档同入 `TODO-archive.local.md`），不进本公开文件。

## 🟡 黄色紧急度

- [ ] **T1** zcode-cli 会话退出后进程树残留孤儿：实测 9 组孤儿 zcode-cli（ppid=1、约 277 MB，2026-09-07 已手工清理），根因疑似会话宿主（终端 zsh / node 启动器）退出时 zcode-cli 进程未被回收或未自行退出，属 zcode-cli（Atlas 维护）的退出回收缺陷，需反馈 FullStackEngineerAgent 排查修复，避免每次会话关闭都累积一组孤儿（记录：2026-09-07 12:16）
