# GenAI_application_with_Docker

# ASGI Application

This is an ASGI application built using FastAPI. The project includes dependencies for handling API requests, using machine learning models, and more.

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Running the Application](#running-the-application)
- [Docker](#docker)
- [License](#license)

## Introduction

This project is an ASGI application using FastAPI. It includes various dependencies for handling API requests and working with machine learning models. The application is designed to be fast and efficient, making use of asynchronous programming features.

## Installation

### Prerequisites

- Python 3.9 or higher
- Docker (optional, for containerized deployment)

### Steps

1. Clone the repository:

   ```bash
   git clone https://github.com/S1000-bit/GenAI_application_with_Docker.git
   cd GenAI_application_with_Docker

2. Create and activate a virtual environment:
    `python -m venv env`
    `source env/bin/activate  # On Windows use env\Scripts\activate`

3. Install the required dependencies:
    `pip install -r requirements.txt`

4. Docker:
    To run the application using Docker, you need to have Docker installed on your machine.
    1. Build the Docker image `docker build -t your-app-name `
    2. Run the Docker container: `docker run -d -p 8000:8000 your-app-name`


