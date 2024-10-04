Invoke-WebRequest https://raw.githubusercontent.com/rameshvbabu/cdw-requirements/refs/heads/qa/requirements.txt -Outfile requirements.txt
write-Host "Latest requirements file downloaded"
python -m venv .venv
.\.venv\Scripts\activate
pip list
python.exe -m pip install --upgrade pip
pip list
write-Host "Installing packages from requirements file"
pip install -r requirements.txt
pip list
write-Host "All packages installed successfully"
