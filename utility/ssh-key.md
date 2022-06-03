## SSH-Keys

This guide will instruct how to properly install existing private ssh-keys.

### **Manually**

First, create the required directory:

```bash
mkdir -p ~/.ssh
chmod 700 ~/.ssh
```

Then, copy the private key to the directory:

```bash
cp <file> ~/.ssh/id_rsa
```

Afterwards, adjust the file permissions to make it only readable by you:

```bash
chmod 400 ~/.ssh/id_rsa
```

Finally, add the private key into the SSH authentication agent

```bash
ssh-add ~/.ssh/id_rsa
```
