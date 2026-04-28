# Architecture Notes

## Workflow components

### Slack Event Trigger
Receives Slack event payloads via n8n webhook.

### Handle URL Verification
Slack requires URL verification when setting up event subscriptions. The workflow detects the challenge payload and responds with the challenge value.

### Ignore Bot Messages
Prevents recursive bot loops by filtering out bot-generated messages and Slack event subtypes.

### Fetch Google Sheet
Retrieves the latest project-status tracker rows from Google Sheets.

### Format Sheet Data
Transforms sheet rows into clean context for the AI Agent.

### Project Status Agent
Uses the Slack user question and project context to produce a concise, grounded response.

### Reply in Thread
Posts the answer back into the original Slack thread for clean collaboration.

### Error Alerts
Separate error workflow sends failures to Slack so the workflow can be monitored operationally.

## Production improvements

- Replace Google Sheets with a database for scale.
- Add caching for frequently asked questions.
- Add confidence scoring.
- Add observability dashboard for query volume, latency, and failure rate.
- Add human escalation path for ambiguous or missing data.
- Add role-based access control for sensitive project data.
