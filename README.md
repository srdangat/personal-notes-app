<div align="center">
  <img src="https://img.icons8.com/color/96/000000/note.png" alt="Notes App Icon" width="80" height="80">
  
  # Personal Notes App
  
  **A clean, fast, and feature-rich note-taking web application built with Python Flask and SQLite.**
  
  [![Python](https://img.shields.io/badge/Python-3.8%2B-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
  [![Flask](https://img.shields.io/badge/Flask-3.0-000000?style=for-the-badge&logo=flask&logoColor=white)](https://flask.palletsprojects.com/)
  [![SQLite](https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white)](https://www.sqlite.org/)
  [![License](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)
</div>

<br>

Welcome to the **Personal Notes App**! This application is designed to help you quickly capture, organize, and revisit your thoughts. It features a modern, responsive design and a simple, intuitive user interface.

## ✨ Features

- 📝 **Create & Quick Capture:** Easily write down ideas with a simple editor.
- ✏️ **Edit on the Fly:** Modify existing notes seamlessly.
- 🗑️ **Safe Deletion:** Delete notes with built-in confirmation prompts.
- 🔍 **Instant Search:** Find notes instantly by searching titles or content.
- 👁️ **Distraction-Free Reading:** View notes in a dedicated full-page layout.
- 📅 **Smart Timestamps:** Automatic creation and last-updated tracking.
-  **Modern UI:** Premium dark-mode design with smooth CSS micro-animations.

---

## 🛠️ Technology Stack

This project was built with simplicity and performance in mind:

- **Backend:** [Python 3](https://www.python.org/) & [Flask](https://flask.palletsprojects.com/)
- **Database:** [SQLite](https://www.sqlite.org/) (Zero-configuration, file-based)
- **ORM:** [Flask-SQLAlchemy](https://flask-sqlalchemy.palletsprojects.com/)
- **Frontend:** HTML5, Vanilla CSS (Flexbox/Grid), and [Google Fonts (Inter)](https://fonts.google.com/specimen/Inter)

---

## 🚀 Getting Started

Follow these steps to get a copy of the project up and running on your local machine for development and testing.

### Prerequisites

You need **Python 3.8 or higher** installed on your system.
- [Download Python](https://www.python.org/downloads/)

### 1. Clone the Repository

```bash
git clone https://github.com/srdangat/flask-crud-notes-app.git
cd flask-crud-notes-app
```

### 2. Set Up a Virtual Environment

It's highly recommended to use a virtual environment to manage dependencies securely.

**Windows:**
```powershell
python -m venv venv
venv\Scripts\activate
```

**macOS / Linux:**
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Run the Application

```bash
python app.py
```

The server will start locally. Open your web browser and navigate to:
**👉 http://localhost:5000**

*(Note: The `notes.db` database file is automatically generated upon the first run. No manual setup is required!)*

---

## 🗂️ Project Structure

```text
Notes-app/
├── app.py              # Main Flask application and routing
├── models.py           # SQLAlchemy database models
├── requirements.txt    # Python package dependencies
├── README.md           # Project documentation
├── static/
│   └── style.css       # Custom styling and animations
└── templates/          # HTML templates (Jinja2)
    ├── base.html       # Base layout containing navbar and footer
    ├── index.html      # Note dashboard and search interface
    ├── add_note.html   # Note creation form
    ├── edit_note.html  # Note editing form
    └── view_note.html  # Full-screen note viewer
```

---

## 🔐 Deployment & Production Notes

If you plan to deploy this application to a public server, please take the following steps to ensure security:

1. **Change the Secret Key:**
   Update `app.config['SECRET_KEY']` in `app.py` or your `.env` file to a secure, random string.
   *Generate one using Python:*
   ```bash
   python -c "import secrets; print(secrets.token_hex(32))"
   ```

2. **Disable Debug Mode:**
   Ensure `FLASK_DEBUG=0` in your environment variables to prevent sensitive stack traces from leaking to end users.

3. **Database Migration (Optional but Recommended):**
   While SQLite is excellent for personal use, consider migrating to **PostgreSQL** or **MySQL** if you anticipate high concurrency or large amounts of data.


## Running with Docker & PostgreSQL

## Environment variables needed
You need to create a `.env` file in the same folder as `docker-compose.yml`. Add these variables to it:

```
POSTGRES_DB=database_name
POSTGRES_USER=username
POSTGRES_PASSWORD=password
DATABASE_URL=postgresql://<username>:<password>@<host>:<port>/<database_name>
SECRET_KEY=long-random-string
```

## How to run it with Docker Compose
Make sure you have Docker installed and running.

1. Open your terminal in the project folder.
2. Build and start the containers by running:
   ```
   docker compose up -d --build
   ```
3. Open your web browser and go to `http://localhost:5000` to use the app.

   To stop the app, run:
   ```
   docker compose down
   ```

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! 
Feel free to check the [issues page](https://github.com/srdangat/personal-notes-app/issues).

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

Distributed under the **MIT License**. See `LICENSE` for more information.

---