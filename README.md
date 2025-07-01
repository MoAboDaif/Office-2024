# Office-2024

A modern office management solution designed to streamline workflows, boost productivity, and simplify daily operations.

## Features

- Task and project management
- Team collaboration tools
- Calendar and scheduling
- Document sharing and storage
- Analytics and reporting

## ✅ **Included Products**

The following Microsoft Office products are included by default. You can customize which products are installed by editing the `Configuration.xml` file (see [How to Change Included Products](#how-to-change-included-products)).

1. ### **Office Professional Plus 2024 Volume License**
  - **Product ID:** `ProPlus2024Volume`
  - **PID Key:** `XJ2XN-FW8RK-P4HMP-DKDBV-GCVGB`
  - **Languages:**
    - English (United States) `en-us`
    - Arabic (Saudi Arabia) `ar-sa`
  - **Excludes:** Skype for Business (`Lync`)

2. ### **Visio Professional 2024 Volume License**
  - **Product ID:** `VisioPro2024Volume`
  - **PID Key:** `B7TN8-FJ8V3-7QYCP-HQPMV-YY89G`
  - **Languages:**
    - English (United States) `en-us`
    - Arabic (Saudi Arabia) `ar-sa`
  - **Excludes:** Skype for Business

3. ### **Project Professional 2024 Volume License**
  - **Product ID:** `ProjectPro2024Volume`
  - **PID Key:** `FQQ23-N4YCY-73HQ3-FM9WC-76HF4`
  - **Languages:**
    - English (United States) `en-us`
    - Arabic (Saudi Arabia) `ar-sa`
  - **Excludes:** Skype for Business

4. ### **Proofing Tools**
  - **Product ID:** `ProofingTools`
  - **Languages:**
    - Arabic (Saudi Arabia)
    - English (United States)

---

### ⚙️ **Settings and Behavior**

- **OfficeClientEdition:** 64-bit
- **Channel:** PerpetualVL2024 (perpetual, non-subscription version for volume licensing)
- **SharedComputerLicensing:** Disabled
- **DeviceBasedLicensing:** Disabled
- **Auto Activation:** Enabled (`AUTOACTIVATE=1`)
- **MSI Removal:** Removes any existing MSI-based Office installations
- **Updates:** Enabled
- **Skype for Business (Lync):** Will **not be installed** for any product

---

### 📝 **Custom App Settings**

- **Excel:** Default file format = `51` (i.e., `.xlsx`)
- **PowerPoint:** Default file format = `27` (i.e., `.pptx`)
- **Word:** Default format is unspecified (set in `Configuration.xml` if needed)

---

### 🚫 **Not Included**

- **Skype for Business**
- **Any Microsoft Office apps not part of the ProPlus suite, Visio, or Project**

---

## How to Change Included Products

To customize which Office products are installed:

1. **Open `Configuration.xml`** in the root directory.
2. Locate the `<Product>` elements. Each product is defined as:
  ```xml
  <Product ID="ProPlus2024Volume">
    ...
  </Product>
  ```
3. **To add a product:** Insert a new `<Product>` block with the desired `ID` and options.
4. **To remove a product:** Delete or comment out the corresponding `<Product>` block.
5. **To change languages:** Edit the `<Language ID="..."/>` lines within each product.
6. **Save the file** and proceed with installation as described below.

For a full list of available Product IDs and Language IDs, see the [Microsoft Office Deployment documentation](https://learn.microsoft.com/en-us/deployoffice/office-deployment-tool-configuration-options).

---

## Getting Started

1. **Clone the repository:**
  ```bash
  git clone https://github.com/MoAboDaif/Office-2024.git
  cd Office-2024
  ```

2. **Edit the configuration (optional):**
  - To change included products or languages, edit `Configuration.xml` as described above.

3. **Install the application:**
  - Open CMD, PowerShell, or Terminal as an administrator and run:
    ```bash
    setup.exe /configure ./Configuration.xml
    ```
  - Alternatively, you can execute the `setup.bat` file:
    ```bash
    setup.bat
    ```

4. **Activate Office:**
  - After installation finishes, run the following batch file to activate Office:
    ```bash
    Office-2019-Activation-Issue-fix.bat
    ```

---

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for improvements.

---

## Disclaimer

This project is intended for testing and evaluation purposes only. Please purchase a valid license for permanent use.

