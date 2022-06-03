## Node Version Manager

<small>Source: https://github.com/nvm-sh/nvm</small>

nvm is a version manager for node.js, designed to be installed per-user, and invoked per-shell. `nvm` works on any POSIX-compliant shell (sh, dash, ksh, zsh, bash), in particular on these platforms: unix, macOS, and windows WSL.

### **Automatically**

Run the included script [nvm.sh](nvm.sh) to automatically install.

```bash
./nvm.sh
```

### **Manually**

To install or update nvm, you should run the install script. The script clones the nvm repository to `~/.nvm`, and attempts to add the source lines from the snippet below to the correct profile file (`~/.bash_profile`, `~/.zshrc`, `~/.profile`, or `~/.bashrc`).

Run the Node Version Manager (nvm) install script:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
```

Then, to install and apply the latest release of nodew, run:

```bash
nvm install node
nvm use node
```
