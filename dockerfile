# 1. Base image choose karo
FROM ubuntu:22.04   # Ya node:18, python:3.11, golang:1.21 apke app ke hisaab se

# 2. Working directory set karo
WORKDIR /app

# 3. Dependencies ya package files copy karo
# Node.js ke liye
# COPY package*.json ./

# Python ke liye
# COPY requirements.txt ./

# 4. Dependencies install karo
# Node.js example
# RUN npm install --production

# Python example
# RUN apt-get update && apt-get install -y python3-pip
# RUN pip3 install --no-cache-dir -r requirements.txt

# 5. App ke saare files copy karo
COPY . .

# 6. Build step (agar chahiye ho)
# RUN npm run build   # Node.js
# RUN go build -o myapp main.go  # Go

# 7. Port expose karo
EXPOSE 3000   # Apke app ka port

# 8. Environment variables set kar sakte ho (optional)
# ENV APP_ENV=production

# 9. Command jo app run kare
# Node.js
# CMD ["node", "index.js"]

# Python
# CMD ["python3", "app.py"]

# Go
# CMD ["./myapp"]
