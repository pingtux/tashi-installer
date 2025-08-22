# Unduh dan jalankan skrip installer
curl -sL https://raw.githubusercontent.com/pingtux/tashi-installer/main/install_tashi.sh -o install_tashi.sh
chmod +x install_tashi.sh
./install_tashi.sh

# Buka port 39065 (TCP/UDP) untuk UFW
sudo ufw allow 39065/tcp
sudo ufw allow 39065/udp
sudo ufw reload

# Kelola Docker
docker ps -a | grep tashi-worker  # Cek status
docker start tashi-worker         # Start
docker stop tashi-worker          # Stop
docker restart tashi-worker       # Restart
