# Setup Guide

## Prerequisites

- n8n Cloud or local n8n instance
- Slack workspace admin access or Slack app creation access
- Google account with access to the project tracker sheet
- OpenAI API access

## Step 1 — Import the workflow

1. Open n8n.
2. Go to **Workflows**.
3. Select **Import from File**.
4. Upload `workflows/slack_project_status_chatbot_n8n.json`.

## Step 2 — Configure credentials

Configure these credentials in n8n:

- Slack OAuth credential
- Google Sheets OAuth credential
- OpenAI API credential

Do not commit credentials or API keys to GitHub.

## Step 3 — Update workflow placeholders

Search the imported workflow for placeholders and update them:

- `REPLACE_WITH_GOOGLE_SHEET_ID`
- `REPLACE_WITH_ALERT_CHANNEL`
- Sheet tab name, if different from the sample
- Slack channel or app settings as needed

## Step 4 — Configure Slack app

In Slack API settings:

1. Create a Slack app.
2. Add bot scopes such as:
   - `chat:write`
   - `channels:history`
   - `app_mentions:read`
   - `channels:read`
3. Enable Event Subscriptions.
4. Paste the n8n production webhook URL.
5. Complete Slack URL verification.
6. Subscribe to relevant bot events, such as app mentions or message events.
7. Install the app into the workspace.

## Step 5 — Configure Google Sheet

Use `data/sample_project_status.csv` as a starting point.

Recommended columns:

- project_name
- owner
- status
- priority
- due_date
- blockers
- next_step
- last_updated

## Step 6 — Test the workflow

Ask Slack questions such as:

- “What is the status of Project Atlas?”
- “Which projects are blocked?”
- “Who owns the data migration project?”
- “What is due this week?”

## Step 7 — Production hardening checklist

- Add retry logic for Google Sheets failures.
- Add a fallback response for missing data.
- Add low-confidence routing to a human owner.
- Add logging for question, answer, latency, and outcome.
- Add PII and sensitive data checks.
- Add caching if response latency becomes too high.
