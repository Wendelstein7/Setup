## Passwordless sudo

<small>Source: https://askubuntu.com/questions/147241/execute-sudo-without-password</small>

This guide will instruct how to set-up passwordless sudo, so that the system will not ask for a password when executing commands as the super user with the `sudo`-command.

### **Automatically**

Run the included script [sudo.sh](sudo.sh) to automatically set-up passwordless sudo.

```bash
./sudo.sh
```

### **Manually**

To manually enable passwordless sudo, open the `sudoers` file using the following command:

```bash
sudo visudo
```

Add the following line to the `sudoers` file: (replacing `user` with your username)

```
user ALL=(ALL) NOPASSWD: ALL
```

However, this separates local changes from the default policy and can cause conflicts in case the distribution sudoers file changes.

The preferred way to grant individual (or group) permissions would be to add files under `/etc/sudoers.d`:

```bash
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER
```

This will create a file called `/etc/sudoers.d/$USER` (where `$USER` is replaced with the username of the user that you were logged in as when you ran that command), making it clear which users are granted permission.
