# Personal Portfolio API

A backend-first personal profile service that exposes resume data via clean APIs, with a minimal web UI to query it.

## Features

- **Profile Management**: Store and fetch personal info.
- **Skills Management**: Track skills and proficiency.
- **Projects Management**: Showcase projects with tech stacks and links.
- **Search**: Global search across projects, skills, and education.
- **Health Check**: Service health monitoring.
- **Minimal Frontend**: A clean, responsive UI to view the portfolio.

## Tech Stack

- **Backend**: Node.js, Express
- **Database**: MySQL
- **Frontend**: HTML, CSS, JavaScript (Vanilla)

## Database Schema

The database `portfolio_db` consists of the following tables:

### `profile`
- `id`: INT (PK)
- `name`: VARCHAR
- `email`: VARCHAR
- `education`: TEXT
- `github_link`: VARCHAR
- `linkedin_link`: VARCHAR
- `portfolio_link`: VARCHAR
- `bio`: TEXT

### `skills`
- `id`: INT (PK)
- `name`: VARCHAR
- `category`: VARCHAR
- `proficiency`: INT
- `is_top`: BOOLEAN

### `projects`
- `id`: INT (PK)
- `title`: VARCHAR
- `description`: TEXT
- `tech_stack`: VARCHAR
- `live_link`: VARCHAR
- `github_link`: VARCHAR

## API Endpoints

### Profile
- `GET /profile`: Fetch personal profile details.

### Skills
- `GET /skills`: List all skills.
- `GET /skills/top`: Get top/most-used skills.

### Projects
- `GET /projects`: List all projects.
- `GET /projects?skill=javascript`: Filter projects by skill.

### Search
- `GET /search?q=query`: Global search.

### Health
- `GET /health`: Check API status.

## Setup & Installation

1.  **Clone the repository**:
    ```bash
    git clone <repository-url>
    cd personal-portfolio-api
    ```

2.  **Install dependencies**:
    ```bash
    npm install
    ```

3.  **Configure Database**:
    - Ensure MySQL is running.
    - Create a database named `portfolio_db` (or update `.env`).
    - Import the schema from `schema.sql`:
      ```bash
      mysql -u root -p < schema.sql
      ```
    - Update `.env` with your database credentials.

4.  **Run the server**:
    ```bash
    npm start
    ```
    For development:
    ```bash
    npm run dev
    ```

5.  **Access the UI**:
    Open `http://localhost:3000` in your browser.

## Live Deployment

[Link to Live Deployment]
