# Tablet Development Environment

![code-updater](./assets/code-updater.jpg)

## Getting Started

1. To get started using your android tablet as development environment, download and install [Termux](https://f-droid.org/en/packages/com.termux/) from [F-Droid](https://f-droid.org/en/packages/com.termux/).

2. Open termux and install git

```sh
pkg install git -y
```

3. Clone this repo

```sh
git clone https://github.com/krsbx/tablet-de.git
```

4. Run setup scripts from the termux folder

```sh
cd tablet-de/termux && ./setup.sh
```

5. Update your bash variables

```sh
source ~/.bashrc
```

6. Access your ubuntu distro

```sh
distro
```

7. Run setup scripts from the distro folder

```sh
cd tablet-de/distro && ./setup.sh
```

8. Update your bash variables

```sh
source ~/.bashrc
```

9. Start the code server

```sh
code-server
```

10. Stop the code server after few seconds by pression `ctrl+c`

11. Change the code-server password in `$HOME/.config/code-server/config.yml`

12. Start the code server in the background

```sh
code
```

13. Access your code server from your browser [http://localhost:8080](http://localhost:8080)

## Extras

### Installing PostgreSql

1. In your termux terminal, simply run the following command

```
bash tablet-de/termux-extra/postgresql/setup.sh
```

2. Run `pgstart` to start the postgres server and `pgstop` to stop the server

### Installing Redis

1. In your termux terminal, simply run the following command

```
bash tablet-de/termux-extra/redis/setup.sh
```

2. Run `redis-start` to start the redis server and `redis-stop` to stop the server

### Installing Docker

1. In your termux terminal, simply run the following command

```
bash tablet-de/termux-extra/docker/setup.sh
```

2. Follow the detailed instructions on `tablet-de/termux-extra/docker/README.md`

## Help

### Termux session terminated randomly

This one is a common issues that happen in android since there is a limit how much an app spawn a process. To solve these issues, we recommend to follow the following link regarding [increasing your maximum allowed phantom process](https://github.com/agnostic-apollo/Android-Docs/blob/master/en/docs/apps/processes/phantom-cached-and-empty-processes.md#how-to-disable-the-phantom-processes-killing).

### How to debug my web app?

If you are a frontend developer and need to debug your web app, you can use [Kiwi Browser](https://play.google.com/store/apps/details?id=com.kiwibrowser.browser&hl=en&gl=US) which has a built-in developer tools that functions exactly how you usually use in your desktop browser.
