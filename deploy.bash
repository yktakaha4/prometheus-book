#!/bin/bash

set -euo pipefail

base_dir=$(cd "$(dirname "$0")"; pwd)

echo "check config..."
promtool check config "$base_dir/chap02/systemd/prometheus.yml"

echo "restart stack..."
sudo systemctl restart prometheus-stack
sudo systemctl status prometheus-stack | head -5
