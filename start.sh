#!/bin/bash
set -e

mkdir -p /data/.hermes/sessions
mkdir -p /data/.hermes/skills
mkdir -p /data/.hermes/workspace
mkdir -p /data/.hermes/pairing

# Write config.yaml with model and provider from env vars
if [ -n "$LLM_MODEL" ]; then
  cat > /data/.hermes/config.yaml << EOF
  provider: ${HERMES_PROVIDER:-openrouter}
  model: ${LLM_MODEL}
  EOF
    echo "Wrote config.yaml: provider=${HERMES_PROVIDER:-openrouter}, model=${LLM_MODEL}"
    fi

    exec python /app/server.py
