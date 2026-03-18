# PrestaShop Test Site

This repository contains the local PrestaShop installation.

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
