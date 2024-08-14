
## GitHub Sentinel Agent

GitHub Sentinel 是一个工具类 AI Agent，专为开发者和项目经理设计，自动从订阅的 GitHub 仓库中定期（每日/每周）检索和汇总更新。该工具通过订阅管理、更新检索、通知系统和报告生成等功能，提高团队协作效率和项目管理便利性。

### 版本历史

| 版本号  | 主要特性                                                                                  | 发布链接                                        |
|--------|----------------------------------------------------------------------------------------|-----------------------------------------------|
| v0.0.1 | - 初始版本测试发布<br>- 基本功能框架搭建                                                       | [访问 v0.0.1](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.0.1) |
| v0.1   | - 新增交互式命令行界面 (REPL)<br>- 实现添加、删除和列出订阅的命令<br>- 实现即时更新获取命令<br>- 新增帮助命令显示使用说明<br>- 优化命令行参数解析逻辑<br>- 启动时显示帮助信息<br>- 修复与命令执行和错误处理相关的问题 | [访问 v0.1](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.1)   |
| v0.2   | - 新增每日进度模块以抓取问题、拉取请求和提交<br>- 集成 OpenAI Python SDK 用于 GPT-4 API 调用<br>- 增强报告生成模块，使用 GPT-4 从 Markdown 文件创建日常项目报告<br>- 优化命令行界面，改进命令处理和帮助显示<br>- 修复多个小问题，提升稳定性 | [访问 v0.2](https://github.com/DjangoPeng/GitHubSentinel/tree/v0.2)   |

### 项目初始化

我与 ChatGPT 的多轮对话完成了 GitHub Sentinel 项目的早期版本(v0.0.1->v0.2)，详细的对话过程链接：https://chatgpt.com/share/d9b4c3f3-2594-4541-a4a6-e13b3d505ffa

运行 GPT-4 生成的脚本 [setup_github_sentinel.sh](./setup_github_sentinel.sh) 即可生成 v0.0.1 版本完整代码。


### 探索更多

期待更多开发者扩展和探索更多功能，参与到项目的持续改进中来。请通过 [GitHubSentinel项目页](https://github.com/DjangoPeng/GitHubSentinel) 提交你的反馈和建议。