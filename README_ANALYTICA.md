# Analytica — Data Analytics & Business Intelligence Platform

## Windows quick start
1. Install Python 3.10 or newer and enable **Add Python to PATH**.
2. Extract this complete folder.
3. Double-click `run.bat`.
4. The script creates a virtual environment, installs `requirements.txt`, and launches Streamlit.
5. Open the local URL printed in the terminal, usually http://localhost:8501.

## Manual start (PowerShell)
```powershell
py -m venv .venv
.venv\Scripts\activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m streamlit run app.py
```

## GitHub / Streamlit Community Cloud
Push the complete folder to GitHub. In Streamlit Community Cloud, select the repository and branch, and set `app.py` as the main file. Dependencies are installed from `requirements.txt`.

Keep the folder structure intact. Do not commit `.venv`; it is created locally.

This is a renamed and visually restyled version of the supplied DATAVORA project. Review and understand the application before presenting or submitting it.
