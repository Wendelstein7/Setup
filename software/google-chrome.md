## Google Chrome (proprietary)

This guide will instruct how to install Google Chrome from the proprietary repository.

### **Automatically**

If Google Chrome is available on your systems package repository, you can install it using the following command:

```bash
sudo apt install google-chrome-stable
```

### **Manually**

Download the `.deb` file from [its website](https://www.google.com/chrome/) and install it using `apt`.

```bash
sudo apt install ./<file>.deb
```

### **Dark Mode**

Google Chrome may not automatically read and adapt to the colour scheme of your desktop environment. To force dark mode, run the included script [google-chrome-dark.sh](google-chrome-dark.sh) to automatically create a GNOME-shortcut to launch Chrome with dark-mode enabled.

*Credits to [Felipe Santos](https://github.com/felipecrs/dotfiles) for the script and method.*

```bash
./google-chrome-dark.sh
```
