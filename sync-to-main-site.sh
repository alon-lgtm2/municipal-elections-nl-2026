#!/bin/bash
# Sync elections page to the main israelis-nl site
# Run this after making changes to index.html

ELECTIONS_DIR="$(cd "$(dirname "$0")" && pwd)"
MAIN_SITE_DIR="$(cd "$ELECTIONS_DIR/../Israelis-nl" && pwd)"

if [ ! -d "$MAIN_SITE_DIR/static/elect" ]; then
  echo "Error: Main site directory not found at $MAIN_SITE_DIR"
  exit 1
fi

cp "$ELECTIONS_DIR/index.html" "$MAIN_SITE_DIR/static/elect/index.html"
echo "Synced elections page to $MAIN_SITE_DIR/static/elect/index.html"
echo ""
echo "Next steps:"
echo "  cd $MAIN_SITE_DIR"
echo "  git add static/elect/index.html"
echo "  git commit -m 'sync: update elect HTML to latest version'"
echo "  git push"
