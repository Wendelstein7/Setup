### TLP (Power management and saving)

<small>Source: https://linrunner.de/tlp/installation/debian.html, https://support.system76.com/articles/battery/</small>

TLP is a feature-rich command line utility for Linux, saving laptop battery power without the need to delve deeper into technical details. TLP’s default settings are already optimized for battery life and implement Powertop’s recommendations out of the box. So you may just install and forget it. Nevertheless TLP is highly customizable to fulfil your specific requirements.

#### **Installation**

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
sudotlp-stat -s
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

#### **Configuration**

The configuration file for TLP is located at `/etc/tlp.conf`.
To apply battery charging tresholds, run `sudo tlp setcharge` after updating the config file.

#### **Fully charge once shortcut**

Create `~/.local/share/applications/tlp-fully-charge.desktop` with the following content:

```desktop
[Desktop Entry]
Type=Application
Name=Fully Charge Battery
Comment=Fully charge the battery to 100% now.
Keywords=battery;charge;charging;full;fully;complete;ac
Exec=zenity --notification --text="$(sudo tlp fullcharge BAT0 2>&1)"
Icon=battery-full-charged
```

And make it executable, and reload the GNOME desktop shortcut database:

```bash
chmod +x ~/.local/share/applications/tlp-fully-charge.desktop
update-desktop-database ~/.local/share/applications
```
