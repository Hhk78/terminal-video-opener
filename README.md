# terminal-video-opener
Terminalden YouTube videolarını kendi istediğiniz formatta izleyin.

# Başlangıç
```bash
chmod +x izle.sh
./izle.sh
```
# Özellikler ve Kullanım
./izle.sh yaptıktan sonra video linkini yapıştırın. Biraz bekleyin seçenekler çıkacak. İlk olarak sadece video formatları çıkacak. İstediğiniz çözünürlüğün yazdığı satırın başındaki kodu girin. Az bekleyin. Şimdi ise sadece ses formatlarının olduğu liste çıkacak. İstediğiniz kalitedeki sesin olduğu satırın başındaki kodu girin. Az bekleyin. Video tam ekran açılacaktır.

# Yapım sebebi
Eski cihazlarda YouTube arayüzü kasmaktadır. Bu araç ile kolayca kasmadan video izleyebilirsiniz.

# Bağımlılıklar

Debian-based için;
```bash
sudo apt install yt-dlp mpv
```

Arch-based için;
```bash
sudo pacman -Sy yt-dlp mpv
```
