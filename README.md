# Automated-Firefox-Policy-Management-on-macOS-using-Bash
Automated Firefox Policy Management on macOS using Bash


# 🦊 Firefox Policies Automation Script (macOS)

This project provides a **Bash automation script** for managing Firefox policies on macOS.  
It creates and modifies the `policies.json` file under the Firefox distribution folder to **enforce clearing cache, cookies, offline apps, and site settings on shutdown**.  
After validation, the script restores the default settings.

---

## 📋 Features
- Checks if Firefox is installed on macOS.
- Creates the `distribution` directory if missing.
- Generates `policies.json` with **SanitizeOnShutdown = true** (clearing browsing data).
- Launches and terminates Firefox to apply policy changes.
- Reverts policies back to **SanitizeOnShutdown = false**.
- Fully automated execution with status messages.

---

## 🛠️ Requirements
- macOS
- Firefox installed in `/Applications/Firefox.app`
- `bash` shell (default on macOS)

---

2. Make the script executable:
   chmod +x firefox_policies.sh

3. Run the script:
   ./firefox.sh

📂 Script Workflow

Check for Firefox installation.

Create distribution/policies.json with clear-on-shutdown enabled.

Open and close Firefox to enforce the policy.

Overwrite policies.json with default values (clear-on-shutdown disabled).

Reopen Firefox with restored settings.

⚠️ Notes

This script is macOS-specific (/Applications/Firefox.app path).

Requires sudo if run from a non-admin account (for chown root:wheel).

📜 License

This project is licensed under the MIT License.



## 🚀 Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/ajithselvam/firefox-policies-automation.git
   cd firefox-policies-automation
