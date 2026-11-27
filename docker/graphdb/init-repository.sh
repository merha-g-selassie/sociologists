#!/bin/sh
set -eu

GRAPHDB_URL="${GRAPHDB_URL:-http://localhost:7200}"
REPO_ID="sociologists"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Attendre que GraphDB soit disponible
attempt=0
until curl -fsS "$GRAPHDB_URL/rest/repositories" > /dev/null 2>&1; do
  attempt=$((attempt + 1))
  if [ "$attempt" -ge 60 ]; then
    echo "GraphDB unavailable" >&2
    exit 1
  fi
  sleep 2
done

STATUS=$(curl -s -o /dev/null -w "%{http_code}" \
  "$GRAPHDB_URL/rest/repositories/$REPO_ID")

if [ "$STATUS" = "200" ]; then
  echo "Repository $REPO_ID already exists."
elif [ "$STATUS" = "404" ]; then
  curl -fsS \
    -F "config=@$SCRIPT_DIR/repository-config.ttl" \
    "$GRAPHDB_URL/rest/repositories"

  echo "Repository $REPO_ID created."
else
  echo "GraphDB returned HTTP $STATUS" >&2
  exit 1
fi