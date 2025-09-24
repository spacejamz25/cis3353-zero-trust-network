# cis3353-zero-trust-network
Zero Trust Network implementation demonstrating micro-segmentation, PKI authentication, and continuous monitoring.

# Zero Trust Network Architecture Implementation
**CIS 3353: Computer Systems Security - Group Project**

## Project Overview
This project demonstrates the implementation of Zero Trust Network Architecture principles through micro-segmentation, identity-based authentication, and continuous monitoring. Our goal is to create a secure network environment that embodies "never trust, always verify."


## Architecture Overview
Our Zero Trust implementation includes:
- **Network Micro-segmentation**: 5 distinct VLANs with strict access controls
- **PKI Authentication**: Certificate-based device and user authentication
- **Continuous Monitoring**: SIEM with real-time threat detection
- **Policy Enforcement**: Granular access controls based on identity and device trust

## Network Zones


## Technology Stack
- **pfSense**: Firewall, routing, and VPN services
- **Windows Server 2019**: Certificate Authority and RADIUS
- **Wazuh/ELK Stack**: SIEM and log analysis
- **VMware/VirtualBox**: Virtualization platform
- **Various Linux/Windows VMs**: Test systems and services


## Repository Structure
