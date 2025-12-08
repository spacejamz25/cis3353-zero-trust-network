# 🔐 CIS 3353 Zero Trust Network Architecture Project  
### **A Complete Zero Trust Lab Implementation with PKI, SIEM, Threat Detection, & Automated Response**

![Status](https://img.shields.io/badge/status-in%20development-blue)
![Framework](https://img.shields.io/badge/framework-Zero%20Trust-orange)
![Security](https://img.shields.io/badge/security-level%20high-red)
![Course](https://img.shields.io/badge/course-CIS3353-lightgrey)

---

## 📌 **Project Overview**

This project implements a fully functional **Zero Trust Network Architecture (ZTNA)** as part of the **CIS 3353** curriculum.  
The environment integrates:

- **Network segmentation** using pfSense  
- **Certificate-based identity & authentication** via PKI  
- **Device trust evaluation** using compliance scoring  
- **Advanced access controls** (time-based, role-based, trust-based)  
- **SIEM monitoring** using Wazuh + Sysmon  
- **Threat intelligence & anomaly detection**  
- **Automated response** including quarantine  
- **Penetration testing and end-to-end validation**

This repository contains all scripts, documentation, diagrams, test results, and automation required to demonstrate a complete Zero Trust implementation.

---

## 🧩 **Architecture Summary**

                +------------------------------+
                |     Wazuh SIEM / Dashboard   |
                |  Logs, Alerts, UEBA, ML, TI  |
                +---------------+--------------+
                                ^
             Sysmon / Agents    |
                                |
+-----------+ +------------+------------+ +-----------+
| Client | ---> | pfSense | ---> | Internet |
| (Corp) | | Firewall / Proxy / NAC | | |
+-----------+ +------------+------------+ +-----------+
| VLAN 10 | VLANs 20/30/40/999
| |
v v
+-----------+ +---------------+
| Windows | | Linux Server |
| Managed | | Apps / Logs |
+-----------+ +---------------+

- **VLANs:** Mgmt, Corp, DMZ, Guest, IoT, Quarantine  
- **Authentication:** EAP-TLS, PKI auto-enrollment  
- **Monitoring:** pfSense Syslog + Wazuh agents  
- **Detection:** Custom rules, anomaly detection, TI feeds  
- **Response:** Automated quarantine script  

---

## 🚀 **Project Goals**

✔ Implement a complete Zero Trust network  
✔ Restrict access based on **identity**, **device trust**, **time**, and **policy**  
✔ Integrate SIEM to detect and monitor violations  
✔ Automate threat response  
✔ Produce a professional final report and demo

---

## 📅 **Sprint Overview**

### **🔵 Sprint 1 — Network Segmentation**
- pfSense installation  
- VLAN creation  
- Default-deny policies  
- Test VMs  
- Network diagrams  

### **🔵 Sprint 2 — PKI & Authentication**
- Windows CA deployment  
- Certificate templates  
- Auto-enrollment  
- EAP-TLS authentication  
- CRL + revocation  

### **🔵 Sprint 3 — Access Controls & Enforcement**
- Device trust levels  
- Compliance scoring script  
- Score-to-policy mapping  
- Time-based firewall controls  
- Squid proxy & SquidGuard filtering  

### **🔵 Sprint 4 — SIEM & Monitoring**
- Wazuh SIEM deployment  
- pfSense & Sysmon log ingestion  
- Custom detection rules  
- Dashboards & alerting  

### **🔵 Sprint 5 — Threat Detection & Response**
- UEBA behavioral analytics  
- Machine-learning anomaly detection  
- Threat intelligence ingestion  
- Automated quarantine  
- Slack alerting  

### **🔵 Sprint 6 — Testing & Final Presentation**
- Penetration testing  
- Integration testing  
- Technical architecture doc  
- Demo scripts  
- Final presentation slides  

---

## 📂 **Repository Structure**

cis3353-zero-trust-network/
│
├── architecture/
│ ├── network-diagrams/
│ ├── siem-architecture.png
│ ├── access-control-flow.png
│ └── device-trust-model.png
│
├── documentation/
│ ├── technical-architecture.md
│ ├── sprint-notes/
│ ├── testing-results/
│ └── final-checklist.md
│
├── scripts/
│ ├── device-compliance.ps1
│ ├── pentest-suite.py
│ ├── integration-test.py
│ ├── auto-quarantine.py
│ ├── slack-alert.py
│ ├── ml-anomaly-detection.py
│ └── threat-intel-updater.py
│
├── demos/
│ ├── scenario1-legit-access.md
│ ├── scenario2-malicious-access.md
│ └── presentation.pdf
│
└── README.md


---

## 🛠️ **Setup Instructions (High-Level)**

### **1️⃣ pfSense Setup**
- Deploy pfSense VM  
- Create VLANs (Mgmt, Corp, DMZ, Guest, IoT, Quarantine)  
- Configure interfaces + firewall  

### **2️⃣ Windows CA Setup**
- Promote domain controller  
- Install AD CS  
- Create certificate templates  
- Configure auto-enrollment  

### **3️⃣ Client + Server Setup**
- Join domain  
- Install certificates  
- Install Wazuh agent / Sysmon  

### **4️⃣ SIEM Setup**
- Deploy Wazuh all-in-one  
- Integrate pfSense logs  
- Install agents  
- Add custom detection rules  

### **5️⃣ Testing & Validation**
- Penetration tests  
- Integration script  
- Document results  

---

## 🎬 **Demonstrations**

This project includes scripts and documentation for demonstrations:

- Legitimate user access
- Malicious access attempt (blocked)
- After-hours restriction demo
- SIEM detection + Slack alert
- Automated quarantine workflow

Demo scripts are located under `/demos/`.

---

## ✍️ **Authors**
**CIS 3353 – Zero Trust Team**  
University Assignment – 2025

---

## 📄 **License**
This project is for academic use only.

