#!/bin/bash
set -e

echo "=== Update sistem & pasang dependency dasar ==="
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl

echo
echo "=== Memeriksa apakah Docker sudah terpasang... ==="
if ! command -v docker &> /dev/null; then
  echo "Docker tidak ditemukan. Memasang Docker..."
  
  curl -fsSL https://get.docker.com -o get-docker.sh
  sh get-docker.sh

  echo "Menambahkan user saat ini ke grup docker..."
  sudo usermod -aG docker "$USER"
  echo "***** Harap logout lalu login kembali agar grup docker aktif *****"
else
  echo "Docker sudah terpasang, lanjut ke tahap berikutnya."
fi

echo
echo "=== Menjalankan Install Script Tashi DePIN Worker ==="
/bin/bash -c "$(curl -fsSL https://depin.tashi.network/install.sh)" -

echo
echo "=== Instalasi selesai! ==="
echo "Container Tashi Worker otomatis akan restart saat server reboot."
echo "Pastikan port 39065 TCP/UDP terbuka agar Worker bisa bekerja optimal."
