<div align="center">
  <img src="assets/logo.svg" alt="DeviceStewardAgent logo" width="380">

  <p>
    <a href="LICENSE.md"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT"></a>
    <img src="https://img.shields.io/badge/Version-1.0.0-blue.svg" alt="Version: 1.0.0">
    <img src="https://img.shields.io/badge/Type-AI%20Agent-blueviolet" alt="Type: AI Agent">
    <img src="https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/xhqing/xhqing/main/traffic/badges/DeviceStewardAgent.json" alt="Visits/day (14d)" />
  </p>

  <p>
    <a href="README.md">English</a>
    &nbsp;|&nbsp;
    简体中文
  </p>
</div>

## 🖥️ Alfred —— 电脑管家 Agent

**Alfred** 是本项目的**电脑管家 Agent**。名字取自蝙蝠侠的管家 Alfred Pennyworth——可靠、周到、把一切打理得井井有条。Alfred 的职责是**资源管理**：监控本地 Mac、远程服务器、云电脑的健康状况（进程 / 内存 / 存储），给出可勾选的清理与调优建议，让每台设备都保持低负载的流畅状态，为全团队干活供底。

当前 Alfred 具备以下能力：

- **整机资源监控**——实时 CPU / 内存 / 磁盘 + 占用最高的进程，随时知道是什么在拖慢机器。
- **AI 驱动的清理建议**——原始数字不会告诉你该做什么；Alfred 把每次快照翻译成具体、可勾选的动作（卸载扩展、清缓存、杀进程），每条都带理由、风险等级和可直接执行的命令。
- **勾选即执行、安全可控**——只勾你信得过的建议再确认；每条命令都过严格白名单，破坏性或越界的操作一律拒绝。
- **多设备管家**——同样的照料通过 SSH 延伸到远程服务器与云电脑。

## 项目结构

本仓库是 **Alfred Agent 项目**——Agent 的身份、能力与运营手册所在。工具本体在**子项目仓库**中：

| 仓库 | 用途 |
|------|------|
| [xhqing/ResourceMonitor](https://github.com/xhqing/ResourceMonitor) | **Resource Monitor** VSCode 扩展——监控整机（CPU / 内存 / 磁盘），把数字变成 AI 清理建议并安全执行勾选项。Alfred 的监控能力由它实现。 |

## 快速开始

工具本体及其全部文档都在 **ResourceMonitor** 仓库：

- **安装与使用**：见 [ResourceMonitor/README.md](https://github.com/xhqing/ResourceMonitor)
- **中文安装与使用文档**：[ResourceMonitor/README_cn.md](https://github.com/xhqing/ResourceMonitor/blob/main/README_cn.md)

```bash
git clone https://github.com/xhqing/ResourceMonitor.git
cd ResourceMonitor
npm install
npm run build      # 或 npm run watch
# 在 VSCode 里按 F5 打开扩展开发宿主
```

你可以自己执行命令，也可以交给 AI 助手——无论哪种方式，干活的都是 Alfred。

---

## 版权与署名

本项目基于 [MIT 协议](LICENSE.md) 开源。

Copyright (c) 2026 All Contributors。

### 署名方式

如果你复用或再分发本项目的任何部分，请：

- 保留上方版权声明与 MIT 协议文本。
- 通过链接回项目原始来源的方式注明出处。

**项目地址：** [https://github.com/xhqing/DeviceStewardAgent](https://github.com/xhqing/DeviceStewardAgent)
