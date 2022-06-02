### Microsoft .NET SDK

<small>Source: https://docs.microsoft.com/en-us/dotnet/core/install/linux-ubuntu</small>

.NET is supported on Ubuntu. This article describes how to install.NET on Ubuntu. When an Ubuntu version falls out of support, .NET is no longer supported with that version. Install the SDK (which includes the runtime) if you want to develop .NET apps. Or, if you only need to run apps, install the Runtime. If you're installing the Runtime, we suggest you install the ASP.NET Core Runtime as it includes both .NET and ASP.NET Core runtimes.

*Note: The .NET SDK works fine on Ubuntu derived distributions such as POP!_OS_.*

#### **Automatically**

Run the included script that adds the Microsoft repository to your system's package manager and installs dotnet sdk
```bash
sudo ./dotnet.sh
```

#### **Manually**

Add the Microsoft repository to the apt package manager:
```bash
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
```

Then, to install the SDK: (for development)
```bash
sudo apt-get install -y dotnet-sdk-6.0
```

Or, to install only the ASP.NET Core runtime: (recommended)
```bash
sudo apt-get install -y aspnetcore-runtime-6.0
```
Or, to install only the .NET runtime: (alternative)
```bash
sudo apt-get install -y dotnet-runtime-6.0
```
