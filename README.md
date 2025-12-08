🔐 CIS 3353 – Zero Trust Network Architecture Project

A structured, educational implementation of a Zero Trust Network Architecture (ZTNA) designed for CIS 3353 – Computer Systems Security.
This project demonstrates modern Zero Trust concepts using pfSense, Windows Server PKI, proxy filtering, and SIEM-based monitoring.

👥 Collaborators

Kien Nguyen

Jamal Turner

Chris F

🎯 Project Overview

This project implements a simplified Zero Trust model focusing on:

🔐 Certificate-based authentication (PKI)

🌐 Network segmentation using pfSense VLANs

🚧 Default-deny firewall enforcement

🛡️ Proxy and URL filtering (Squid/SquidGuard)

📊 Security monitoring via a Wazuh-style SIEM

🧪 Test scenarios and helper scripts

The goal is to demonstrate how modern Zero Trust environments secure identity, network traffic, and device posture while continuously monitoring system behavior.

🧩 Core Components
🌐 1. Network Segmentation

Multiple VLANs isolate devices based on trust level to prevent lateral movement:

Management

Corporate

DMZ

Guest/BYOD

Quarantine

🔐 2. PKI Identity & Authentication

A Windows Server CA issues certificates to users/devices.
Authentication relies on cryptographic identity, not trust-by-location.

🚧 3. Firewall Enforcement

pfSense applies strict Zero Trust rules:

Default deny between VLANs

Limited allowed flows (e.g., Corporate → DMZ HTTPS)

Guest/BYOD isolation

Full quarantine environment

🌐 4. Proxy Filtering

Squid/SquidGuard enforce outbound browsing rules:

Allowed

Restricted

Blocked categories

📊 5. Security Monitoring (SIEM)

A Wazuh-style SIEM pipeline analyzes:

pfSense logs

Sysmon-style endpoint logs

Custom Zero Trust alerts

🤖 6. Scripts & Automation

Device compliance scoring

Automated quarantine workflow simulation

Pen-testing and integration testing utilities

🏗️ High-Level Architecture Workflow

pfSense isolates network segments

PKI certificates authenticate users & devices

Firewall rules enforce Zero Trust access policies

Proxy filtering controls outbound traffic

SIEM monitors logs and detects violations

Scripts automate device posture and threat response

🛠️ Setup Summary

Deploy pfSense

Create VLANs & firewall rules

Install Windows Server AD CS

Configure certificate templates + auto-enrollment

Install Squid/SquidGuard

Deploy Wazuh SIEM stack

Forward logs from pfSense & endpoints

Execute tests + collect evidence

🧠 Zero Trust Implementation Summary

This project implements core Zero Trust principles:

Never trust, always verify

Identity before access

Device health affects trust level

Segmentation prevents lateral movement

Explicit allow policies

Continuous monitoring & logging

Automated action on violations

Together, these components form a complete educational Zero Trust environment.

📂 Repository Structure
