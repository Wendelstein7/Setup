## Spotify

<small>Source: https://www.spotify.com/nl/download/linux/</small>

With Spotify, it’s easy to find the right music or podcast for every moment – on your phone, your computer, your tablet and more. There are millions of tracks and episodes on Spotify. So whether you’re behind the wheel, working out, partying or relaxing, the right music or podcast is always at your fingertips. Choose what you want to listen to, or let Spotify surprise you.

### **Automatically**

Run the included script [spotify.sh](spotify.sh) to automatically install.

```bash
./spotify.sh
```

### **Manually**

Configure Spotify Debian repository:

```bash
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt update
```

Then. install Spotify:

```bash
sudo apt install spotify-client
```
