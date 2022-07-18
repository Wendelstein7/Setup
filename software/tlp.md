## TLP (Power management and saving)

<small>Source: https://linrunner.de/tlp/installation/debian.html, https://support.system76.com/articles/battery/</small>

TLP is a feature-rich command line utility for Linux, saving laptop battery power without the need to delve deeper into technical details. TLP’s default settings are already optimized for battery life and implement Powertop’s recommendations out of the box. So you may just install and forget it. Nevertheless TLP is highly customizable to fulfil your specific requirements.

### **Installation**

To install TLP, run this command:

```bash
sudo apt install tlp tlp-rdw --no-install-recommends
```

After installation TLP will start automatically on boot. To avoid having to restart the system the first time, you can start it manually by using the command:

```bash
sudo tlp start
```

Use the following command to check that TLP is enabled and active, and check if `State = enabled` is shown in the output:

```bash
sudo tlp-stat -s
```

Should TLP require its service to be enabled, it will instruct you on how to do so.

To view the various information sections, use one of the following commands:

```bash
sudo tlp-stat -s # View TLP system status

sudo tlp-stat -c # View current configuration

sudo tlp-stat -b # View battery status
sudo tlp-stat -d # View disk status
sudo tlp-stat -g # View graphics status
sudo tlp-stat -p # View processor status
sudo tlp-stat -t # View temperature and fan status
```

### **Configuration**

The configuration file for TLP is located at `/etc/tlp.conf`.

#### **Battery life care**

To extend battery life, you could configure the battery to charge only up to a certain percentage, like 80%. You can do this by adding the following lines to the `/etc/tlp.conf` file:

```conf
START_CHARGE_THRESH_BAT0=75
STOP_CHARGE_THRESH_BAT0=80
```
To apply battery charging tresholds, run `sudo tlp setcharge` after updating the config file.

#### **Fully charge once shortcut**

Sometimes, you might want to force a fully charged battery, for example when you're leaving for a long trip. With the following instructions you can create a "fully charge once" shortcut in GNOME.

Create `~/.local/share/applications/tlp-fully-charge.desktop` with the following content:

```conf
[Desktop Entry]
Type=Application
Name=Fully Charge Battery
Comment=Fully charge the battery to 100% now.
Keywords=battery;charge;charging;full;fully;complete;ac
Exec=/home/user/.charge.sh
Icon=battery-full-charged
```

And create `~/.charge.sh` with the following content:

```bash
#!/bin/bash

zenity --notification --text="$(sudo tlp fullcharge BAT0 2>&1)"
```
Then make both files executable, and reload the GNOME desktop shortcut database:

```bash
chmod +x ~/.charge.sh
chmod +x ~/.local/share/applications/tlp-fully-charge.desktop
update-desktop-database ~/.local/share/applications
```
