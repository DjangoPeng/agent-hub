# agent-hub

<p align="center">
    <br> <a href="README-EN.md">English</a> | 中文
</p>

Agent Hub 是一个 AI Agent 解决方案中心平台。本仓库包含三个不同的项目，旨在彻底改变企业工作流程，增强个性化语言学习体验，以及丰富多模态交互：

- **[GitHub Sentinel](./github_sentinel/README.md)**：一个工具类 AI Agent，旨在无缝管理项目和自动更新 GitHub 仓库，以促进更有效的协作和项目跟踪。
- **LanguageMentor**：一个对话类 AI Agent，利用如 LLaMA 3 等先进的语言模型为全球超过 100 种语言的个性化学习提供支持，特别适用于全球旅行和生活场景。
- **ChatPPT**：一个多模态 AI Agent，整合语音、图像和文本输入，以 AI 驱动的洞察和 PowerPoint 自动化，优化企业办公场景。

**未来愿景**：随着我们不断的创新，agent-hub 将作为推出更多 AI Agent 的跳板，每一个都旨在满足不同行业的需求，同时推动 AI 技术的边界。

**探索、复制和贡献**：我们鼓励您探索项目、复制此仓库，并为持续开发变革性 AI agents 做出贡献。


## GitHubSentinel

GitHub Sentinel 是专为大模型（LLMs）时代打造的智能信息检索和高价值内容挖掘 AI Agent。它面向那些需要高频次、大量信息获取的用户，特别是开源爱好者、个人开发者和投资人等。

### 主要功能

- **订阅管理**：轻松管理和跟踪您关注的 GitHub 仓库。
- **更新检索**：自动检索并汇总订阅仓库的最新动态，包括提交记录、问题和拉取请求。
- **通知系统**：通过电子邮件等方式，实时通知订阅者项目的最新进展。
- **报告生成**：基于检索到的更新生成详细的项目进展报告，支持多种格式和模板，满足不同需求。
- **多模型支持**：结合 OpenAI 和 Ollama 模型，生成自然语言项目报告，提供更智能、精准的信息服务。
- **定时任务**：支持以守护进程方式执行定时任务，确保信息更新及时获取。
- **图形化界面**：基于 Gradio 实现了简单易用的 GUI 操作模式，降低使用门槛。
- **容器化**：项目支持 Docker 构建和容器化部署，便于在不同环境中快速部署和运行。
- **持续集成**：实现了完备的单元测试，便于进一步配置生产级 CI/CD 流程，确保项目的稳定性和高质量交付。

GitHub Sentinel 不仅能帮助用户自动跟踪和分析 `GitHub 开源项目` 的最新动态，还能快速扩展到其他信息渠道，如 `Hacker News` 的热门话题，提供更全面的信息挖掘与分析能力。

#### GitHub 项目进度跟踪与总结

![gradio_v0.8_github](https://github.com/DjangoPeng/GitHubSentinel/blob/main/images/gradio_v0.8_github.png)

#### Hacker News 热门技术话题挖掘

![gradio_v0.8_hn](https://github.com/DjangoPeng/GitHubSentinel/blob/main/images/gradio_v0.8_hn.png)