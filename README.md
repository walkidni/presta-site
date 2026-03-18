# PrestaShop Test Site

This repository contains the local PrestaShop installation.

## Repository structure

- `presta-site` contains the local PrestaShop setup, theme customization, and integration wiring
- `modules/ps-module-expiry-date` contains the expiration-date module as its own nested Git repository

The module is integrated locally through the `modules/` directory but remains its own repository and should be committed independently from inside `modules/ps-module-expiry-date`.

## Prerequisites

- Docker
- Docker Compose

## Installation

1. Clone the repository (if not already done).
2. Start the Docker containers:
   ```bash
   docker compose up -d
   ```
3. Wait for the automatic installation to complete (check logs with `docker compose logs -f`).

## Module integration

The expiration-date module is located at:

- `modules/ps-module-expiry-date`

At runtime, Docker mounts it into PrestaShop at:

- `/var/www/html/modules/psmoduleexpirydate`

This keeps the technical PrestaShop module directory aligned with the separate nested repository.

## Access Information

- **Front Office:** [http://localhost:8080](http://localhost:8080)
- **Back Office:** [http://localhost:8080/admin-dev](http://localhost:8080/admin-dev)
  - **Login:** `admin@prestashop.com`
  - **Password:** `prestashop_demo`

## Useful Commands

- `docker compose up -d`: Start the site in the background.
- `docker compose down`: Stop and remove containers.
- `docker compose logs -f`: Watch live logs.
- `docker compose restart`: Restart containers.
- `git -C modules/ps-module-expiry-date status`: Check module-repo status from the main repo.
