# 🔐 CIS 3353 – Zero Trust Network Architecture Project

A structured, educational implementation of a **Zero Trust Network Architecture (ZTNA)** designed for **CIS 3353 – Computer Systems Security**.  
This project demonstrates modern Zero Trust concepts using **pfSense**, **Windows Server PKI**, **proxy filtering**, and **SIEM-based monitoring**.

---

## 👥 Collaborators
- **Kien Nguyen**  
- **Jamal Turner**  
- **Chris F**  

---

## 🎯 Objective

This project implements a simplified Zero Trust Network Architecture to demonstrate:

- 🌐 Network segmentation using pfSense  
- 🔐 PKI certificate creation and authentication  
- 🛡️ Basic proxy filtering with Squid / SquidGuard  
- 📊 Security monitoring and alerting with a Wazuh-style SIEM  
- 🧪 Test scripts and evidence collection  

The goal is to illustrate how Zero Trust principles can be applied in a practical, structured, and measurable way.

---

## 🧩 Core Components

### 🌐 Network Segmentation
- Multiple VLANs (Management, Corporate, DMZ, Guest/BYOD, Quarantine)  
- Default-deny between internal zones  
- Only specific, intentional flows allowed (e.g., Corporate → DMZ HTTPS)

### 🔐 PKI Identity & Authentication
- Windows Server AD CS (Certificate Authority)  
- User and device certificate templates  
- Certificate enrollment and authentication flows

### 🚧 Firewall Enforcement
- pfSense configured as the central Policy Enforcement Point  
- Strict inter-VLAN rules based on Zero Trust principles  
- Guest and Quarantine networks isolated from internal subnets

### 🌐 Proxy & URL Filtering
- Squid/SquidGuard used to filter outbound HTTP/HTTPS traffic  
- Domain categories (allowed / restricted / blocked)  
- Adds another control point for Zero Trust egress traffic

### 📊 Security Monitoring (SIEM)
- Wazuh-style SIEM pipeline for:
  - pfSense firewall logs  
  - Endpoint/log simulation (e.g., Sysmon-style logs)  
  - Custom detection rules for Zero Trust violations  

### 🤖 Scripts & Testing
- Device compliance and trust scoring (e.g., Managed vs Guest vs Untrusted)  
- Simple automation to simulate quarantine actions  
- Penetration testing and integration testing scenarios documented in the repo

---

## 🏗️ Setup Overview (High Level)

1. Deploy **pfSense** firewall  
2. Create **VLANs** and segmentation policies  
3. Configure **Windows Server AD CS (PKI)**  
4. Enroll **certificates** for devices and/or users  
5. Install **Wazuh SIEM** (or simulated equivalent)  
6. Forward **pfSense + Sysmon-style logs** to Wazuh  
7. Run **test scripts** and capture results as evidence  

---

## 🧠 Implementation Summary

This Zero Trust model uses:

- 🔐 **Identity-based access control** via certificates  
- 🌐 **Segmentation** to isolate different network zones  
- 🛡️ **Proxy filtering** to limit outbound traffic and block risky domains  
- 📊 **Log collection and monitoring** through a SIEM-style pipeline  
- 🚨 **Basic detection rules** and manual analysis of alerts  
- 🧪 **Testing outputs** (logs, scans, results) to validate expected behavior  

Even though this is a simulated/classroom environment, the structure mirrors how a real organization would approach a Zero Trust initiative.

---

## 📂 Repository Structure

```text
configs/               → pfSense configs + PKI templates  
monitoring/            → SIEM rules, sample logs, alert examples  
scripts/               → Compliance checks, test utilities  
automation/            → Threat-response / quarantine logic  
documentation/         → Sprint notes, test plans, write-ups  
lab-evidence/          → Scans, logs, screenshots, sample outputs  
architecture/          → Topology descriptions and design summaries  

## 📘 Documentation

Additional detail, including:

- 🏛️ **Architecture overview**  
- 🌐 **Network segmentation design**  
- 🔐 **PKI and identity flow**  
- 🚧 **Firewall & proxy rules**  
- 📊 **SIEM rule examples and alerts**  
- 🧪 **Penetration & integration test descriptions**  
- 📅 **Sprint-by-sprint progress**  

is available in the **GitHub Wiki** for this repository.

---

## 🏁 Final Notes

This project is a **simulated Zero Trust environment** built for learning and demonstration.  
While it is not a production deployment, it:

- 🔐 Follows real Zero Trust principles (“never trust, always verify”)  
- 🌐 Emphasizes identity, segmentation, and monitoring  
- 📄 Uses realistic configuration formats, logs, and workflows  
- 🚀 Provides a strong foundation for further lab expansion or future courses  
