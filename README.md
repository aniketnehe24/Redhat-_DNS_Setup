# DNS Server Setup Project

## 📘 Project Overview

This project involves setting up a Domain Name System (DNS) server on a Linux machine to provide name resolution services within a private or public network. The setup uses the BIND (Berkeley Internet Name Domain) DNS server, one of the most widely used DNS solutions.

---

## 🧱 Project Structure

```bash
dns-setup/
├── named.conf                  # Main BIND configuration file
├── named.conf.local           # Local zone definitions
├── db.example.com             # Forward zone file
├── db.192.168.1               # Reverse zone file
├── scripts/
│   ├── install_bind.sh        # Script to install BIND and dependencies
│   ├── configure_dns.sh       # Script to configure DNS zones
├── README.md                  # Project documentation (this file)
