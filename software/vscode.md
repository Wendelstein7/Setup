### Microsoft VSCode (proprietary)

<small>Source: https://code.visualstudio.com/docs/setup/linux</small>

This guide will instruct how to install Microsoft VSCode from the proprietary repository.

#### **Automatically**

Run the included script [vscode.sh](vscode.sh) to automatically install.

```bash
./vscode.sh
```

#### **Manually**

Download the `.deb` file from [its website](https://code.visualstudio.com/docs/?dv=linux64_deb) and install it using `apt`.

Installing the .deb package will automatically install the apt repository and signing key to enable auto-updating using the system's package manager.

```bash
sudo apt install ./<file>.deb
```
