# Cybersecurity Task 4: Linux Firewall Configuration

## 📋 Task Overview
This repository demonstrates the configuration and testing of UFW (Uncomplicated Firewall) on Kali Linux to implement network traffic filtering with specific security rules.

## 🎯 Objectives
- Configure UFW firewall with security-focused rules
- Block insecure Telnet protocol (port 23)
- Allow secure SSH access management
- Test and verify firewall rule effectiveness
- Document implementation process

## 🛠️ Configuration Details

### Initial Firewall Status
- **Status**: Active and enabled
- **Default Policy**: Deny incoming, Allow outgoing
- **Logging**: Enabled (low level)
- **IPv6**: Supported and configured

### Implemented Rules

| Port/Service | Direction | Action | Purpose |
|--------------|-----------|---------|---------|
| 23/tcp (Telnet) | IN | DENY | Block insecure plaintext protocol |
| 22/tcp (SSH) | IN | ALLOW | Enable secure remote access |
| 80/tcp (HTTP) | IN | ALLOW | Web traffic |
| 443/tcp (HTTPS) | IN | ALLOW | Secure web traffic |
| 8000:8010/tcp | IN | ALLOW | Custom application range |
| 25/tcp (SMTP) | OUT | DENY | Prevent unauthorized mail relay |


## 🧪 Testing Results

### Connection Tests Performed
- **Telnet (Port 23)**: ❌ Connection refused - Successfully blocked
- **SSH (Port 22)**: ❌ Connection refused - Properly filtered  
- **Netcat (Port 22)**: ❌ Connection refused - Rules working correctly


## 🔧 Implementation Scripts

### Automated Configuration Script
Created `firewall_config.sh` for systematic rule application:


## 📊 Security Achievements

✅ **Telnet Mitigation**: Blocked insecure protocol preventing credential exposure  
✅ **SSH Security**: Implemented controlled SSH access management  
✅ **Web Services**: Enabled standard HTTP/HTTPS traffic  
✅ **Custom Applications**: Configured specific port range for applications  
✅ **Mail Security**: Prevented unauthorized SMTP relay  
✅ **IPv6 Compliance**: Applied rules for both IPv4 and IPv6 protocols  


## 🖥️ System Information
- **Platform**: Kali Linux
- **Firewall**: UFW (Uncomplicated Firewall)
- **Total Rules**: 11 (including IPv6)
- **Status**: Active and operational

## 🔍 Verification Methods

1. **Command-line Testing**: Using `telnet`, `ssh`, and `nc` utilities
2. **Connection Verification**: Confirmed proper blocking of restricted services
3. **Rule Validation**: Verified all rules applied correctly
4. **Status Monitoring**: Comprehensive firewall status checking

## 💡 Key Learnings

- UFW provides simplified iptables management
- Proper testing is crucial for firewall validation
- Default deny policies enhance security posture
- IPv6 support requires explicit configuration
- Documentation aids in maintenance and troubleshooting

## 🚀 Usage Instructions

1. Clone this repository
2. Review the configuration script
3. Execute `chmod +x scripts/firewall_config.sh`
4. Run `sudo ./scripts/firewall_config.sh`
5. Verify rules with `sudo ufw status verbose`
