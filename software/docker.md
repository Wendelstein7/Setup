### Docker Desktop

<small>Source: https://docs.docker.com/desktop/linux/, https://docs.docker.com/desktop/linux/install/ubuntu/</small>

Docker Desktop is an easy-to-install application that enables you to build and share containerized applications and microservices.

#### **Repository**

Add the docker package repository by executing the included script:

```bash
./docker.sh
```

#### **Docker desktop**

Download the `.deb` file from [its website](https://docs.docker.com/desktop/linux/install/) and install it using `apt`. (This requires that you have set up the docker package repository.)

```bash
sudo apt install ./<file>.deb
```

To verify that Docker is installed, execute the following command to download and run the `hello-world` container:

```bash
docker run hello-world
```

This should print `Hello from Docker!`. If you see `Error response from daemon` instead, try starting the Docker Desktop application first.
