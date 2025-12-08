# Demo Scenario 1 – Legitimate Access (Managed Device)

- VLAN: Corporate
- Trust level: Managed
- Action: User visits internal web app in DMZ during business hours.
- Expected:
  - Firewall allows 10.20.10.x to 10.30.10.10:443.
  - SIEM logs event but no high-severity alert.

