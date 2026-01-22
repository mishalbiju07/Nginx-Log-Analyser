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
```
2. Run the analyzer on a log file:
```bash
./nginix-log-analyzer.sh nginx-access.log.txt
```
3. Example output:
   ```bash
   Top 5 IP addresses with the most requests:
   45.76.135.253 - 1000 requests
   142.93.143.8 - 600 requests
   178.128.94.113 - 50 requests
   43.224.43.187 - 30 requests
   178.128.94.113 - 20 requests





