# tashi-installer
Universal installer for Tashi DePIN Worker (Docker + Script)

# Tashi Installer

Script universal untuk memasang **Docker + Tashi DePIN Worker** di Ubuntu 24.04, Debian 12/13.

## Cara Pakai
```bash
curl -sL https://raw.githubusercontent.com/pingtux/tashi-installer/main/install_tashi.sh -o install_tashi.sh
chmod +x install_tashi.sh
./install_tashi.sh '''bash

Port & NAT / Firewall

Tashi Worker needs to be publicly accessible on port 39065 (TCP/UDP) untuk bekerja 100% dan menghasilkan reward maksimal.

NAT / CGNAT: Jika server berada di belakang NAT/CGNAT, lakukan port forwarding pada router/ISP untuk port 39065.

UFW Firewall: Jika menggunakan UFW, buka port 39065 TCP/UDP:

