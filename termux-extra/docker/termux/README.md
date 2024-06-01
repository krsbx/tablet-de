## Prerequsite

- Install all the qemu packages on Termux
- Download alpine virtual ISO file
- Create alpine qcow image file

> Run `setup.sh` file to complete all the prerequsite

## Alpine Installation

1. [Termux] Run `boot.sh` file

```bash
bash boot.sh
```

2. [VM], login as root

3. [VM] Run the following command

```bash
mkdir -p /etc/udhcpc
echo 'RESOLV_CONF="no"' >> /etc/udhcpc/udhcpc.conf
echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" >> /etc/resolv.conf
```

4. [VM] Setup your Alpine by running `setup-alpine`
   4.1. On NTP Connection, type `none`
   4.2. On setup a user, type `no`
   4.3. On root SSH login, type `yes`
   4.4. On SSH key, type `none`
   4.5. On installation location, type `sda`
   4.6. On how the storage being used, type `sys`

5. [VM] Shutdown Alpine by running

```bash
poweroff
exit
```

6. [Termux] Run `alpine.sh` file

```bash
bash alpine.sh
```

7. [VM] Login as root and type your password

8. [VM] Enable community package
   8.1. Edit `/etc/apk/repositories` using `vi /etc/apk/repositories`
   8.2. Uncomment the URL that ends with `.../community`
   8.3. Save and exit vi

9. [VM] Install docker

```bash
apk update
apk add docker
```

10. [Termux] In new session, copy `start-docker` to Alpine

```bash
bash copy.sh
```

12. [VM] Run docker

```bash
./start-docker
```

Note: Everything that inside the `[...]` indicate the location where you need to run the command
