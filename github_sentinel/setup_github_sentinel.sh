#!/bin/bash

# 创建 GitHubSentinel 目录及其子目录
mkdir -p GitHubSentinel/src GitHubSentinel/tests

# 在 src 目录下创建文件并写入初始内容
cat <<EOL > GitHubSentinel/src/main.py
from config import Config
from scheduler import Scheduler
from github_client import GitHubClient
from notifier import Notifier
from report_generator import ReportGenerator
from subscription_manager import SubscriptionManager

def main():
    config = Config()
    github_client = GitHubClient(config.github_token)
    notifier = Notifier(config.notification_settings)
    report_generator = ReportGenerator()
    subscription_manager = SubscriptionManager(config.subscriptions_file)
    
    scheduler = Scheduler(
        github_client=github_client,
        notifier=notifier,
        report_generator=report_generator,
        subscription_manager=subscription_manager,
        interval=config.update_interval
    )
    
    scheduler.start()

if __name__ == "__main__":
    main()
EOL

cat <<EOL > GitHubSentinel/src/config.py
import json

class Config:
    def __init__(self):
        self.load_config()
    
    def load_config(self):
        with open('config.json', 'r') as f:
            config = json.load(f)
            self.github_token = config.get('github_token')
            self.notification_settings = config.get('notification_settings')
            self.subscriptions_file = config.get('subscriptions_file')
            self.update_interval = config.get('update_interval', 24 * 60 * 60)  # Default to 24 hours
EOL

cat <<EOL > GitHubSentinel/src/scheduler.py
import time
import threading

class Scheduler:
    def __init__(self, github_client, notifier, report_generator, subscription_manager, interval):
        self.github_client = github_client
        self.notifier = notifier
        self.report_generator = report_generator
        self.subscription_manager = subscription_manager
        self.interval = interval
    
    def start(self):
        while True:
            self.run()
            time.sleep(self.interval)
    
    def run(self):
        subscriptions = self.subscription_manager.get_subscriptions()
        updates = self.github_client.fetch_updates(subscriptions)
        report = self.report_generator.generate(updates)
        self.notifier.notify(report)
EOL

cat <<EOL > GitHubSentinel/src/github_client.py
import requests

class GitHubClient:
    def __init__(self, token):
        self.token = token
    
    def fetch_updates(self, subscriptions):
        headers = {
            'Authorization': f'token {self.token}'
        }
        updates = {}
        for repo in subscriptions:
            response = requests.get(f'https://api.github.com/repos/{repo}/events', headers=headers)
            if response.status_code == 200:
                updates[repo] = response.json()
        return updates
EOL

cat <<EOL > GitHubSentinel/src/notifier.py
class Notifier:
    def __init__(self, settings):
        self.settings = settings
    
    def notify(self, report):
        # Implement notification logic, e.g., send email or Slack message
        pass
EOL

cat <<EOL > GitHubSentinel/src/report_generator.py
class ReportGenerator:
    def generate(self, updates):
        # Implement report generation logic
        report = ""
        for repo, events in updates.items():
            report += f"Repository: {repo}\n"
            for event in events:
                report += f"- {event['type']} at {event['created_at']}\n"
        return report
EOL

cat <<EOL > GitHubSentinel/src/subscription_manager.py
import json

class SubscriptionManager:
    def __init__(self, subscriptions_file):
        self.subscriptions_file = subscriptions_file
    
    def get_subscriptions(self):
        with open(self.subscriptions_file, 'r') as f:
            return json.load(f)
EOL

cat <<EOL > GitHubSentinel/src/utils.py
# Add utility functions as needed
EOL

# 在 tests 目录下创建文件并写入初始内容
cat <<EOL > GitHubSentinel/tests/test_github_client.py
import unittest
from src.github_client import GitHubClient

class TestGitHubClient(unittest.TestCase):
    def test_fetch_updates(self):
        # Add test cases for GitHubClient
        pass

if __name__ == '__main__':
    unittest.main()
EOL

cat <<EOL > GitHubSentinel/tests/test_notifier.py
import unittest
from src.notifier import Notifier

class TestNotifier(unittest.TestCase):
    def test_notify(self):
        # Add test cases for Notifier
        pass

if __name__ == '__main__':
    unittest.main()
EOL

cat <<EOL > GitHubSentinel/tests/test_report_generator.py
import unittest
from src.report_generator import ReportGenerator

class TestReportGenerator(unittest.TestCase):
    def test_generate(self):
        # Add test cases for ReportGenerator
        pass

if __name__ == '__main__':
    unittest.main()
EOL

cat <<EOL > GitHubSentinel/tests/test_subscription_manager.py
import unittest
from src.subscription_manager import SubscriptionManager

class TestSubscriptionManager(unittest.TestCase):
    def test_get_subscriptions(self):
        # Add test cases for SubscriptionManager
        pass

if __name__ == '__main__':
    unittest.main()
EOL

cat <<EOL > GitHubSentinel/tests/test_utils.py
import unittest
# Add imports for utility functions to test

class TestUtils(unittest.TestCase):
    # Add test cases for utility functions
    pass

if __name__ == '__main__':
    unittest.main()
EOL

# 创建 requirements.txt
cat <<EOL > GitHubSentinel/requirements.txt
requests
EOL

# 创建 README.md
cat <<EOL > GitHubSentinel/README.md
# GitHub Sentinel

GitHub Sentinel is an open-source tool AI Agent designed for developers and project managers. It automatically retrieves and aggregates updates from subscribed GitHub repositories on a regular basis (daily/weekly). Key features include subscription management, update retrieval, notification system, and report generation.

## Features
- Subscription management
- Update retrieval
- Notification system
- Report generation

## Getting Started
1. Install dependencies:
    \`\`\`sh
    pip install -r requirements.txt
    \`\`\`

2. Configure the application by editing \`config.json\`.

3. Run the application:
    \`\`\`sh
    python src/main.py
    \`\`\`

## Configuration
The configuration file \`config.json\` should contain the following settings:
\`\`\`json
{
    "github_token": "your_github_token",
    "notification_settings": {
        "email": "your_email@example.com",
        "slack_webhook_url": "your_slack_webhook_url"
    },
    "subscriptions_file": "subscriptions.json",
    "update_interval": 86400
}
\`\`\`
EOL

# 提示脚本执行完成
echo "Project GitHubSentinel setup completed."
