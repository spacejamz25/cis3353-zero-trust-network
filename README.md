# CIS 3353 Zero Trust Network Architecture Project

## Collaborators
- (Kien Nguyen)
- (Jamal Turners)

---

## Objective
This project implements a simplified Zero Trust Network Architecture for CIS 3353.  
The goal is to demonstrate secure segmentation, certificate-based authentication,  
basic proxy filtering, and security monitoring using pfSense, Windows Server PKI,  
and the Wazuh SIEM platform.

The project focuses on:
- Network segmentation using pfSense  
- PKI certificate creation & authentication  
- Basic proxy filtering (Squid / SquidGuard)  
- Log monitoring and simple alerting with Wazuh  
- A few helper scripts and test results  

---

## Setup Overview (High Level)
1. Deploy pfSense firewall  
2. Create VLANs and segmentation policies  
3. Configure Windows Server AD CS (PKI)  
4. Enroll certificates for devices/users  
5. Install Wazuh SIEM  
6. Forward pfSense + Sysmon logs to Wazuh  
7. Run basic test scripts and capture results into the `tests/` folder  

---

## Implementation Summary
This Zero Trust model uses:
- **Identity-based access control** with certificates  
- **Segmentation** to isolate different VLANs  
- **Proxy filtering** to restrict web access  
- **Log collection** via Wazuh and pfSense  
- **Simple detection rules** and manual analysis  

Supporting documents and screenshots are stored in the `Ref/` and `tests/` folders.

---

## File Structure
```text
Ref/       → Reference PDFs, assignment guide, diagrams
configs/   → pfSense, Wazuh, PKI config backups or exports
scripts/   → Small helper scripts (optional, for tests)
tests/     → Screenshots and test/validation results

## 📄 **License**
This project is for academic use only.

