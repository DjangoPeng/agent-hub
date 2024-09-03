# agent-hub

<p align="center">
    <br> English | <a href="README.md">中文</a>
</p>

Agent Hub is a platform for AI Agent solutions. This repository contains three distinct projects aimed at revolutionizing enterprise workflows, enhancing personalized language learning experiences, and enriching multimodal interactions:

- **[GitHub Sentinel](./github_sentinel/README.md)**: A tool-based AI Agent designed to seamlessly manage projects and automatically update GitHub repositories, promoting more efficient collaboration and project tracking.
- **LanguageMentor**: A dialogue-based AI Agent that leverages advanced language models, such as LLaMA 3, to support personalized learning in over 100 languages worldwide, particularly useful for global travel and living scenarios.
- **ChatPPT**: A multimodal AI Agent that integrates voice, image, and text inputs to optimize enterprise office scenarios with AI-driven insights and PowerPoint automation.

**Future Vision**: As we continue to innovate, Agent Hub will serve as a launchpad for more AI Agents, each tailored to meet the needs of different industries while pushing the boundaries of AI technology.

**Explore, Fork, and Contribute**: We encourage you to explore the projects, fork this repository, and contribute to the ongoing development of transformative AI agents.

## GitHub Sentinel

GitHub Sentinel is an AI Agent designed for intelligent information retrieval and high-value content mining in the era of large language models (LLMs). It is targeted at users who require high-frequency, large-scale information access, particularly open-source enthusiasts, individual developers, and investors.

### Key Features

- **Subscription Management**: Easily manage and track the GitHub repositories you care about.
- **Update Retrieval**: Automatically retrieve and aggregate the latest updates from subscribed repositories, including commits, issues, and pull requests.
- **Notification System**: Notify subscribers of the latest project developments in real-time through emails and other channels.
- **Report Generation**: Generate detailed project progress reports based on retrieved updates, supporting various formats and templates to meet different needs.
- **Multi-Model Support**: Integrate OpenAI and Ollama models to generate natural language project reports, providing more intelligent and accurate information services.
- **Scheduled Tasks**: Support running scheduled tasks as a daemon process to ensure timely information updates.
- **Graphical Interface**: Implemented a simple and user-friendly GUI using Gradio, lowering the usage threshold.
- **Containerization**: The project supports Docker build and containerized deployment, enabling quick deployment and operation in different environments.
- **Continuous Integration**: Comprehensive unit tests have been implemented, facilitating further configuration of production-level CI/CD processes to ensure project stability and high-quality delivery.

GitHub Sentinel not only helps users automatically track and analyze the latest developments in `GitHub open-source projects`, but also quickly expands to other information channels, such as trending topics on `Hacker News`, providing more comprehensive information mining and analysis capabilities.

#### GitHub Project Tracking and Summary

![gradio_v0.8_github](https://github.com/DjangoPeng/GitHubSentinel/blob/main/images/gradio_v0.8_github.png)

#### Hacker News Trending Tech Topic Mining

![gradio_v0.8_hn](https://github.com/DjangoPeng/GitHubSentinel/blob/main/images/gradio_v0.8_hn.png)