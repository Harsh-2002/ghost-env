# Ghost Development Environment Setup

This repository contains a script to automate the setup of a Ghost development environment using Docker.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/): Make sure Docker is installed on your system.
- [Git](https://git-scm.com/): Ensure Git is installed to clone this repository.

## Quick Start

1. Install Git on your system:

   - On Ubuntu/Debian:

     ```bash
     sudo apt-get update
     sudo apt-get install git
     ```

2. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/Harsh-2002/ghost-env.git
   cd ghost-env
   ```

3. Execute the setup script:

   ```bash
   sudo chmod u+x setup_ghost.sh && sudo bash setup_ghost.sh
   ```

   This script installs Docker, creates a Ghost directory, downloads the Docker Compose file, and sets up the Ghost development environment.

4. Wait for the process to complete, and you will see a message indicating that your Ghost development environment is live at `http://localhost:8040`.
