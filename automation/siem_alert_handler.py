"""Simulated SIEM alert handler for Zero Trust project."""

import json
from pathlib import Path

ALERTS_FILE = Path(__file__).resolve().parents[1] / "monitoring" / "wazuh" / "sample-alerts.json"

def handle_alert(alert):
    rid = alert["rule"]["id"]
    desc = alert["rule"]["description"]
    srcip = alert.get("srcip")
    print(f"[ALERT] {rid}: {desc}")
    if srcip:
        print(f"  Source IP: {srcip}")
    if rid == "900100":
        print("  Action: quarantine this IP and notify IR team.")

if __name__ == "__main__":
    data = json.loads(ALERTS_FILE.read_text())
    for alert in data:
        handle_alert(alert)

