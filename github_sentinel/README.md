
## GitHub Sentinel Agent

GitHub Sentinel 是一个工具类 AI Agent，专为开发者和项目经理设计，自动从订阅的 GitHub 仓库中定期（每日/每周）检索和汇总更新。该工具通过订阅管理、更新检索、通知系统和报告生成等功能，提高团队协作效率和项目管理便利性。

### 版本历史

| 版本号  | 主要特性                                                                                                   | 发布链接                                        |
|--------|---------------------------------------------------------------------------------------------------------|-----------------------------------------------|
| v0.0.1 | - 初始版本测试发布<br>- 基本功能框架搭建                                                                        | [访问 v0.0.1](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.0.1) |
| v0.1   | - 新增交互式命令行界面 (REPL)<br>- 实现添加、删除和列出订阅的命令<br>- 实现即时更新获取命令<br>- 新增帮助命令显示使用说明<br>- 优化命令行参数解析逻辑<br>- 启动时显示帮助信息<br>- 修复与命令执行和错误处理相关的问题 | [访问 v0.1](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.1)   |
| v0.2   | - 新增每日进度模块以抓取问题、拉取请求和提交<br>- 集成 OpenAI Python SDK 用于 GPT-4 API 调用<br>- 增强报告生成模块，使用 GPT-4 从 Markdown 文件创建日常项目报告<br>- 优化命令行界面，改进命令处理和帮助显示<br>- 修复多个小问题，提升稳定性 | [访问 v0.2](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.2)   |
| v0.2.1 | - 修复 `SubscriptionManager` 模块Bug                                                        | [访问 v0.2.1](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.2.1) |
| v0.3   | - 优化信息收集：只展示合并的 PR 和关闭的 Issue<br>- 时间范围默认设置从每日更新至可配置范围<br>- 增加基于用户定义日期范围的报告导出和生成功能<br>- 集成 Logoru 日志系统，支持持久化和不同级别的日志<br>- 改进 `export_progress_by_date_range` 函数，使文件名格式更清晰，时间范围报告更直观 | [访问 v0.3](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.3)   |
| v0.3.2   | - 新增 github_client jupyter 文件，演示 GitHubClient 模块的研发和迭代过程，详细说明了如何使用 GitHub REST API 来获取 GitHub Repo 进展。<br>- 新增 report_generator jupyter 文件，演示了如何使用 ReportGenerator 和 LLM 模块来自动生成进展报告。<br> - 为进展获取和报告生成模块新增中文注释 | [访问 v0.3.2](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.3.2) |
| v0.4   | - 新增多模式运行：<br>  - 命令行工具：交互式运行，手动管理订阅、更新检索和报告生成<br>  - 守护进程：后台服务运行，定期自动处理更新<br>  - Gradio 图形化界面：使用 Gradio 启动 Web 应用，提供用户友好的订阅管理和报告生成界面<br>- 大幅增强 README 文档，详细介绍所有三种操作模式的设置指南，确保用户可以根据自己的需求配置和运行 GitHub Sentinel<br>- 更新守护进程启动命令，提升清晰度和可用性，确保平稳运行和可靠的日志记录<br>- 精炼帮助命令和文档，更好地指导用户配置和操作不同模式的 GitHub Sentinel | [访问 v0.4](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.4)   |
| v0.4.1   | - 解耦提示词管理：从 llm.py 中提取出提示词定义，通过系统角色实现更灵活和可维护的提示词管理，增强了报告生成任务的内容和格式的自定义能力。<br>- 模型升级：默认大模型从 `GPT-3.5-Turbo` 升级至 `GPT-4o-mini`，提高了文本生成的质量，增加了生成报告的准确性和相关性。<br>- 增加中文注释：为项目的其他模块增加了中文注释，提高了代码的可读性和可维护性，便于中文开发者和用户使用。 | [访问 v0.4.1](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.4.1)   |
| v0.5   | - 新增定期更新功能：使用 `Schedule` 实现更简单的定时任务，替代原始的 DaemonContext 守护进程与 Threading 守护多线程。<br>- 新增邮件通知功能：实现基础的邮箱通知功能，并在发送时保留报告格式和标题。<br>- 守护进程管理：新增 `daemon_control.sh` 脚本用于管理守护进程，以便于支持容器化部署。<br>- 日志优化：日志输出全面汉化。同时，每次守护进程启动单独生成一份日志，便于查看和分析问题。<br>- 新增 `hacker_news_client.ipynb` 用于演示如何使用 ChatGPT 和 GPT-4o-mini 生成 Hacker News 技术热点趋势报告。 | [访问 v0.5](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.5)   |
| v0.6   | - 扩展 `LLM Class` 支持调用私有化大模型服务（如：`Ollama`）<br>- 配置管理新增 `llm` 相关配置项，同时支持 `OpenAI GPT` 模型和 `Ollama` 私有化部署模型服务<br>- 更新文档，新增 `Ollama` 安装部署与服务发布文档 | [访问 v0.6](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.6)   |

### 项目初始化

我与 ChatGPT 的多轮对话完成了 GitHub Sentinel 项目的早期版本(v0.0.1->v0.2)，详细的对话过程链接：https://chatgpt.com/share/d9b4c3f3-2594-4541-a4a6-e13b3d505ffa

运行 GPT-4 生成的脚本 [setup_github_sentinel.sh](./setup_github_sentinel.sh) 即可生成 v0.0.1 版本完整代码。


### 探索更多

期待更多开发者扩展和探索更多功能，参与到项目的持续改进中来。请通过 [GitHubSentinel项目页](https://github.com/DjangoPeng/GitHubSentinel) 提交你的反馈和建议。
