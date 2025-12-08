# Demo Scenario 2 – Malicious / Policy Violation

- VLAN: Guest
- Trust level: Guest
- Action: Device attempts RDP to corporate server and access malicious domain.
- Expected:
  - Firewall blocks RDP attempt.
  - Proxy blocks malicious domain.
  - SIEM creates policy violation alert (900100 / 900110).

