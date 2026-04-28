# Demo Script

## 60-second version

“I built a Slack Project Status AI Agent using n8n, Slack, Google Sheets, and OpenAI. The problem is that teams waste time asking repeated project-status questions across Slack and spreadsheets. This workflow lets users ask natural-language questions directly in Slack, retrieves the latest project tracker data from Google Sheets, uses an AI Agent to reason over that data, and replies in the same Slack thread.

The workflow includes Slack event ingestion, URL verification handling, bot-message filtering, Google Sheets retrieval, prompt/context formatting, AI response generation, Slack threaded replies, and error alerts. From a product standpoint, I would measure success using query resolution rate, response latency, adoption, escalation rate, and reduction in repeated manual follow-ups.”

## 3-minute walkthrough

1. Show the Google Sheet project tracker.
2. Show Slack and ask: “Which projects are blocked?”
3. Show n8n execution path:
   - Slack Event Trigger
   - URL verification branch
   - Ignore Bot Messages
   - Fetch Google Sheet
   - Format Sheet Data
   - Project Status Agent
   - Reply in Thread
4. Show the Slack response.
5. Explain guardrails:
   - ignores bot messages
   - answers only from available project context
   - fallback for missing data
   - error alert workflow
6. Explain product metrics:
   - query resolution rate
   - latency
   - adoption
   - escalation rate

## Interview positioning

Use this project to demonstrate:

- AI workflow orchestration
- Practical agentic automation
- Product sense and MVP thinking
- API integration fluency
- Slack/Google/OpenAI ecosystem familiarity
- Ability to turn a business problem into a working prototype
