#!/bin/bash

FIREFOX_PATH="/Applications/Firefox.app"
POLICIES_DIR="$FIREFOX_PATH/Contents/Resources/distribution"
POLICIES_FILE="$POLICIES_DIR/policies.json"

# Check if Firefox is installed
if [ ! -d "$FIREFOX_PATH" ]; then
    echo "❌ Firefox is not installed at $FIREFOX_PATH"
    exit 1
fi

# Create the distribution directory if it doesn't exist
if [ ! -d "$POLICIES_DIR" ]; then
    echo "� Creating distribution directory..."
    mkdir -p "$POLICIES_DIR"
fi

# Create the policies.json file
cat > "$POLICIES_FILE" <<EOF
{
  "policies": {
    "SanitizeOnShutdown": true,
    "ClearOnShutdown": {
      "Cache": true,
      "Cookies": true,
      "OfflineApps": true,
      "SiteSettings": true
    }
  }
}
EOF

# Set proper permissions
chmod 644 "$POLICIES_FILE"
chown root:wheel "$POLICIES_FILE"

echo "✅ Firefox policies.json created at $POLICIES_FILE"


sleep 3

killall -9 "firefox" 2>/dev/null
killall -9 "Firefox" 2>/dev/null


sleep 3

open /applications/firefox.app


sleep 3


killall -9 "firefox" 2>/dev/null
killall -9 "Firefox" 2>/dev/null



cat > "$POLICIES_FILE" <<EOF
{
  "policies": {
    "SanitizeOnShutdown": false,
    "ClearOnShutdown": {
      "Cache": false,
      "Cookies": false,
      "OfflineApps": false,
      "SiteSettings": false
    }
  }
}
EOF


sleep 1

open /applications/firefox.app



killall -9 "firefox" 2>/dev/null
killall -9 "Firefox" 2>/dev/null

echo "done ✅"


#
