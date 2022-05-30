### GitHub Desktop

<small>Source: https://github.com/shiftkey/desktop</small>

Focus on what matters instead of fighting with Git. Whether you're new to Git or a seasoned user, GitHub Desktop simplifies your development workflow.

Linux is not officially supported; however, there are several community-supported package managers that can be used to install GitHub Desktop. Installers for various Linux distributions can be found on the [shiftkey/desktop](https://github.com/shiftkey/desktop) fork.

#### **Automatically**

Run the included script that adds an unofficial repository to your system's package manager and installs GitHub Desktop.

```bash
./github-desktop.sh
```

GitHub Desktop should now be installed and will be kept up-to-date by the package manager.

_Advice: check back in the future if GitHub officially supports Linux, and if so, update the package manager to install the official version for better security and faster updates._

#### **Manually**

First install the GPG certificate:

```bash
wget -qO - https://mirror.mwt.me/ghd/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null
```

And setup the US-mirror of the package repository:

```bash
sudo sh -c 'echo "deb [arch=amd64] https://mirror.mwt.me/ghd/deb/ any main" > /etc/apt/sources.list.d/packagecloud-shiftkey-desktop.list'
```

Then, update the apt package index:

```bash
sudo apt update
```

Finally, nstall GitHub Desktop:

```bash
sudo apt install github-desktop
```
