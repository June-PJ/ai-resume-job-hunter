# job-hunter

自动化社招岗位海选 Skill。接收简历 + 偏好，通过 sub-agent 并行爬取多平台岗位，智能匹配打分并整合薪资/风评数据，输出完整求职报告。

## 功能

- 🔍 并行爬取多平台（Boss直聘、拉勾、猎聘、企业官网）
- 🎯 多维度智能匹配（技术栈 + 薪资 + 年限 + 偏好）
- 📊 差距分析（缺什么、能不能补、怎么补）
- 💰 薪资/风评整合（看准网、职级对标、脉脉）
- 📄 输出完整求职报告（Markdown + JSON）

## 输入

- 简历文件（必选）：支持 PDF / Word / Markdown
- 用户偏好（可选）：城市、薪资、规模、远程/坐班、加班强度、行业黑名单

## 输出

- `job-report.md` — 人类可读的完整求职报告
- `job-data.json` — 结构化数据

## 依赖

需要配置 **Playwright MCP**：

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

## 使用

对话中说"帮我找工作"并提供简历文件即可触发。
