# AI Resume & Job Hunter

一套用于自动化求职流程的 AI Agent Skills，遵循 [agentskills.io](https://agentskills.io/specification) 规范。

## Skills

| Skill | 功能 | 依赖 |
|-------|------|------|
| [resume-builder](./resume-builder/) | 对话式简历完善：挖掘经历、包装增强、制造技术重难点 | 无外部依赖 |
| [job-hunter](./job-hunter/) | 自动化社招岗位海选：并行爬取、智能匹配、薪资风评整合 | Playwright MCP |

## 快速开始

### 1. 安装 Skills

将 skill 目录复制到你的 agent skills 目录：

```bash
git clone https://github.com/June-PJ/ai-resume-job-hunter.git
cp -r ai-resume-job-hunter/resume-builder <your-agent-skills-dir>/
cp -r ai-resume-job-hunter/job-hunter <your-agent-skills-dir>/
```

### 2. 配置 Playwright MCP（job-hunter 需要）

在你的 agent MCP 配置文件中添加：

```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": ["@playwright/mcp"]
    }
  }
}
```

### 3. 使用流程

```
用户 → "帮我写简历"
       → resume-builder skill 启动
       → 对话引导 → 输出 resume.md

用户 → "帮我找工作" + resume.md
       → job-hunter skill 启动
       → 并行爬取 → 匹配分析 → 输出求职报告
```

## License

MIT
