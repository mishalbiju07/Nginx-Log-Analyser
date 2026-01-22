# Nginx Log Analyzer

A simple command-line tool to analyze Nginx access logs.  

This project is designed to help practice **shell scripting** skills and basic command-line data processing.

---

## **Features**

The script reads an Nginx access log file and provides the following insights:

- **Top 5 IP addresses** with the most requests
- **Top 5 most requested paths**
- **Top 5 response status codes**
- **Top 5 user agents**

---

## **Requirements**

- Linux/WSL or any UNIX-like environment
- Bash shell
- Basic command-line utilities: `awk`, `sort`, `uniq`, `head`, `grep`, `sed`

### **Log file format**

The log file should contain the following fields:

- IP address
- Date and time
- Request method and path
- Response status code
- Response size
- Referrer
- User agent

You can use the sample Nginx access log file for testing.

---

## **Usage**

1. Clone the repository:

```bash
git clone https://github.com/mishalbiju07/Nginx-Log-Analyser.git
cd Nginx-Log-Analyser
