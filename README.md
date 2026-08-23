<div align="center">
  <img src="assets/logo.svg" alt="DeviceStewardAgent logo" width="380">

  <p>
    <a href="LICENSE.md"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT"></a>
    <img src="https://img.shields.io/badge/Version-1.0.0-blue.svg" alt="Version: 1.0.0">
    <img src="https://img.shields.io/badge/Type-AI%20Agent-blueviolet" alt="Type: AI Agent">
    <img src="https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/xhqing/xhqing/main/traffic/badges/DeviceStewardAgent.json" alt="Visits/day (14d)" />
  </p>

  <p>
    <a href="README_cn.md">简体中文</a>
    &nbsp;|&nbsp;
    English
  </p>
</div>

## 🖥️ Alfred — Device Steward Agent

**Alfred** is this project's **Device Steward Agent**. Named after Batman's butler Alfred Pennyworth — reliable, meticulous, keeping everything in perfect order — Alfred's job is **resource management**: monitoring and tending the health of your local Mac, remote servers, and cloud machines (processes / memory / storage), and giving you checkable cleanup and tuning advice, so every device stays fast and lightly loaded while the team works.

Today Alfred ships with these capabilities:

- **Whole-machine resource monitoring** — live CPU / memory / disk plus top processes, so you always know what is weighing the machine down.
- **AI-driven cleanup suggestions** — raw numbers don't tell you what to *do*; Alfred turns each snapshot into concrete, checkable actions (uninstall an extension, clear a cache, kill a process), each with a reason, a risk level, and a ready-to-run command.
- **Safe, tick-and-run execution** — pick the suggestions you trust and confirm; every command passes a strict allowlist, so destructive or out-of-scope operations are refused.
- **Multi-device stewardship** — the same care extends to remote servers and cloud machines over SSH.

## Project Layout

This repository is the **Alfred Agent project** — the agent's identity, capabilities, and operating playbook. The tooling itself lives in a **subproject repository**:

| Repository | Purpose |
|------------|---------|
| [xhqing/ResourceMonitor](https://github.com/xhqing/ResourceMonitor) | The **Resource Monitor** VSCode extension — monitors the whole machine (CPU / memory / disk), turns the numbers into AI cleanup suggestions, and executes the ones you pick, safely. Alfred's monitoring capabilities are implemented here. |

## Getting Started

The tool and all of its documentation live in the **ResourceMonitor** repository:

- **Installation & usage**: see [ResourceMonitor/README.md](https://github.com/xhqing/ResourceMonitor)
- **中文安装与使用文档**: [ResourceMonitor/README_cn.md](https://github.com/xhqing/ResourceMonitor/blob/main/README_cn.md)

```bash
git clone https://github.com/xhqing/ResourceMonitor.git
cd ResourceMonitor
npm install
npm run build      # or npm run watch
# In VSCode, press F5 to open the Extension Development Host
```

Run the commands yourself, or hand them to your AI assistant — either way, Alfred does the work.

---

## License & Attribution

This project is licensed under the [MIT License](LICENSE.md).

Copyright (c) 2026 All Contributors.

### Attribution

If you reuse or redistribute any part of this project, please:

- Retain the above copyright notice and the MIT license text.
- Credit the project by linking back to its source.

**Project URL:** [https://github.com/xhqing/DeviceStewardAgent](https://github.com/xhqing/DeviceStewardAgent)
