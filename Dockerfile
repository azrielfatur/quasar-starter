# Menggunakan image node versi 14 sebagai base image
FROM node:14-alpine

# Menetapkan direktori kerja di dalam container
WORKDIR /app

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Menginstall dependencies menggunakan npm
RUN npm config rm proxy
RUN npm config rm https-proxy
RUN npm install

# Menyalin seluruh kode aplikasi ke dalam container
COPY . .

# Menjalankan aplikasi ketika container dijalankan
CMD ["node", "app.js"]
