# Office-2024

A modern office management solution designed to streamline workflows, boost productivity, and simplify daily operations.

## Features

- Task and project management
- Team collaboration tools
- Calendar and scheduling
- Document sharing and storage
- Analytics and reporting

## ✅ **Included Products:**

1. ### **Office Professional Plus 2024 Volume License**

   * Product ID: `ProPlus2024Volume`
   * PID Key: `XJ2XN-FW8RK-P4HMP-DKDBV-GCVGB`
   * **Languages:**

     * English (United States) `en-us`
     * Arabic (Saudi Arabia) `ar-sa`
   * **Excludes:** Skype for Business (`Lync`)

2. ### **Visio Professional 2024 Volume License**

   * Product ID: `VisioPro2024Volume`
   * PID Key: `B7TN8-FJ8V3-7QYCP-HQPMV-YY89G`
   * **Languages:**

     * English (US)
     * Arabic (Saudi Arabia)
   * **Excludes:** Skype for Business

3. ### **Project Professional 2024 Volume License**

   * Product ID: `ProjectPro2024Volume`
   * PID Key: `FQQ23-N4YCY-73HQ3-FM9WC-76HF4`
   * **Languages:**

     * English (US)
     * Arabic (Saudi Arabia)
   * **Excludes:** Skype for Business

4. ### **Proofing Tools**

   * Product ID: `ProofingTools`
   * Languages:

     * Arabic (Saudi Arabia)
     * English (United States)

---

### ⚙️ **Settings and Behavior:**

* **OfficeClientEdition:** 64-bit
* **Channel:** PerpetualVL2024 (i.e., a perpetual, non-subscription version for volume licensing)
* **SharedComputerLicensing:** Disabled
* **DeviceBasedLicensing:** Disabled
* **Auto Activation:** Enabled (`AUTOACTIVATE=1`)
* **MSI Removal:** Removes any existing MSI-based Office installations.
* **Updates:** Enabled
* **Skype for Business (Lync)**: Will **not be installed** for any product.

---

### 📝 **Custom App Settings:**

* Excel: Default file format = `51` (which is `.xlsx`)
* PowerPoint: Default file format = `27` (which is `.pptx`)
* Word: Default format is unspecified (you might want to set this if needed)

---

### 🚫 Not Included:

* **Skype for Business**
* **Any Microsoft Office Apps not part of the ProPlus suite, Visio, or Project**

## Getting Started

1. **Clone the repository:**
  ```bash
  git clone https://github.com/MoAboDaif/Office-2024.git
  cd Office-2024
  ```

2. **Install the application:**
  Open CMD, PowerShell, or Terminal as an administrator and run:
  ```bash
  setup.exe /configure ./Configuration.xml
  ```
  Alternatively, you can execute the `setup.bat` file.

3. **Activate Office:**
  Run the following batch file to activate Office:
  ```bash
  Office-2019-Activation-Issue-fix.bat
  ```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for improvements.

## Disclaimer

This project is intended for testing and evaluation purposes only. Please purchase a valid license for permanent use.
