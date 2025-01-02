#!/bin/bash

set -euo pipefail

base_dir=$(cd "$(dirname "$0")"; pwd)

echo "=== stop prometheus stack ==="
sudo systemctl stop prometheus-stack
sudo systemctl status prometheus-stack | head -5
echo "=== done ==="
