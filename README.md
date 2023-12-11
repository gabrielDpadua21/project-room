# Project Room

v 1.0.0

<div align="center">
    <img src="./images/law.jpg" width="100%">
</div>

## Requirements

Before you start, make sure you have the following installed:

- Docker
- Docker Compose
- Zsh as your terminal

To run the project, simply execute the following command in your terminal:

```bash
bash install
```

This project uses a series of custom commands to facilitate interaction with Docker and Docker Compose. Here's an explanation of each command:

- `room` or `room service_name`: This command runs a docker compose. You can run it without arguments to start all services, or specify a service name to start just that service.

- `shambles service_name` or `shambles service_name bash`: This command runs a docker compose in interactive mode. You can specify a service name and an optional argument (bash or sh) to start the service in an interactive shell.

- `cs` or `cs service_name`: This command restarts a service or all services if no service name is specified. It uses the `docker compose restart` command.

- `scan service_name` or `scan 100 service_name`: This command displays the logs of a service. You can specify a service name and an optional number of lines to display. By default, it displays the last line.

- `att` or `att service_name`: This command stops a service or all services if no service name is specified. It uses the `docker compose stop` command.

- `rk` or `rk service_name`: This command brings down a service or all services if no service name is specified. It uses the `docker compose down` command.

- `mes`: This command lists all running services. It uses the `docker compose ls` command.

- `is` or `is service_name`: This command builds a service or all services if no service name is specified. It uses the `docker compose build` command.

### Uninstall

```bash
bash uninstall.sh
```

---

## Developed with
<div align="center">

<img width="90px" src="https://img.icons8.com/plasticine/100/000000/bash.png"/>

<img width="80px" src="https://img.icons8.com/color/48/000000/git.png"/>
</div>

---

### Contribute to the project to improve

- Send PRs
- Suggestions

---

### Send me an E-mail
<a href="mailto:gabriel.d.padua21@gmail.com"><img src="https://slackmojis.com/emojis/870-mail/download" width="33px"></a>

#### License

Copyright © 2021, [Gabriel D. Padua](https://github.com/gabrielDpadua21).
Released under the [MIT license](LICENSE).