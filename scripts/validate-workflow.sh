#!/usr/bin/env bash
set -euo pipefail

WORKFLOW_FILE="${1:-workflows/slack_project_status_chatbot_n8n.json}"

if [ ! -f "$WORKFLOW_FILE" ]; then
  echo "Workflow file not found: $WORKFLOW_FILE"
  exit 1
fi

node -e "JSON.parse(require('fs').readFileSync('$WORKFLOW_FILE', 'utf8')); console.log('Valid JSON:', '$WORKFLOW_FILE')"
