# Integration Tests (Simulated)

Integration tests verify that different components of the Zero Trust design
work together as expected.

## IT-01 – Compliant Managed Device

- Trust level: Managed
- VLAN: Corporate
- Expected:
  - Access to approved internal resources.
  - No high-severity SIEM alerts.
  - Normal login + web access logs only.

## IT-02 – Non-Compliant Device

- Trust level: Untrusted
- VLAN: Quarantine
- Expected:
  - Cannot access internal VLANs (RFC1918).
  - Logs show repeated firewall blocks.
  - SIEM may raise medium-level monitoring alerts.

## IT-03 – Guest Device Attempting Privileged Access

- Trust level: Guest
- VLAN: Guest/BYOD
- Expected:
  - Attempts to reach internal management/DMZ servers are blocked.
  - SIEM records Zero Trust policy violation events.

These tests can be shown in the report and presentation to explain behavior.

