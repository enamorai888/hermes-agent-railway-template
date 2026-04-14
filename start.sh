#!/bin/bash
set -e
mkdir -p /data/.hermes/sessions /data/.hermes/skills /data/.hermes/workspace /data/.hermes/pairing
if [ -n "$LLM_MODEL" ]; then
echo "provider: ${HERMES_PROVIDER:-openrouter}" > /data/.hermes/config.yaml
echo "model: ${LLM_MODEL}" >> /data/.hermes/config.yaml
echo "Wrote config.yaml: provider=${HERMES_PROVIDER:-openrouter}, model=${LLM_MODEL}"
fi
exec python /app/server.py
