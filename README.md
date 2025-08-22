Tashi Installer
Skrip universal untuk memasang Docker + Tashi DePIN Worker di Ubuntu 24.04, Debian 12/13.
Cara Pakai
Unduh dan jalankan skrip installer:
curl -sL https://raw.githubusercontent.com/pingtux/tashi-installer/main/install_tashi.sh -o install_tashi.sh
chmod +x install_tashi.sh
./install_tashi.sh

Port & NAT / Firewall
Tashi Worker perlu akses publik pada port 39065 (TCP/UDP) untuk bekerja 100% dan menghasilkan reward maksimal.
NAT / CGNAT: Jika server berada di belakang NAT/CGNAT, lakukan port forwarding pada router/ISP untuk port 39065.
UFW Firewall: Jika menggunakan UFW, buka port 39065 TCP/UDP:
sudo ufw allow 39065/tcp
sudo ufw allow 39065/udp
sudo ufw reload

Docker Tashi Worker Management
Cek status container:
docker ps -a | grep tashi-worker

Start container:
docker start tashi-worker

Stop container:
docker stop tashi-worker

Restart container:
docker restart tashi-worker

Catatan: Auto-restart saat server reboot sudah diatur otomatis via --restart unless-stopped saat instalasi.
Catatan Tambahan

Jika baru menambahkan user ke grup docker, lakukan logout dan login ulang agar perintah docker bisa digunakan tanpa sudo.
Pastikan port 39065 TCP/UDP terbuka agar Worker dapat berkomunikasi dengan jaringan.
