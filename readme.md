# 🖼️ Godot Image Sharing Network

[![Godot Engine](https://img.shields.io/badge/Godot-4.0+-blue.svg)](https://godotengine.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A real-time image sharing application built with Godot Engine using networking capabilities. Users can host or join sessions to share images instantly across the network.

---

## 🎯 Features

- **Host/Client Architecture**: Create or join image sharing sessions
- **Real-time Image Transmission**: Share PNG and JPG images instantly
- **Automatic Image Scaling**: Smart resizing to fit display area
- **Network Multiplayer**: Built on Godot's ENet multiplayer system
- **User-friendly Interface**: Simple UI for seamless experience

## 🛠️ Technical Details

### Core Components
- **Node Structure**: Extends Node2D for scene management
- **Networking**: ENetMultiplayerPeer for reliable connections
- **File Handling**: FileAccess for image loading
- **RPC System**: Remote procedure calls for image transmission

### Supported Formats
- PNG Images
- JPG/JPEG Images

## 📋 Requirements

- Godot Engine 4.0 or higher
- Network connection (local or internet)
- `file_dialog.tscn` scene file

## 🚀 Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/godot-image-sharing.git
   ```

2. Open the project in Godot Engine

3. Ensure `file_dialog.tscn` is present in your project root

4. Run the project

## 🎮 Usage

### Host a Session
1. Click the "Host" button
2. Server will start on port 1500
3. Wait for clients to connect
4. Start sharing images!

### Join a Session
1. Click the "Client" button
2. Connects to localhost:1500
3. Begin receiving and sending images

### Share Images
1. Click the "Send" button
2. Select an image file (PNG/JPG)
3. Image will be shared with all connected users

## 📁 Project Structure

```
project/
├── main.gd              # Main script (this file)
├── file_dialog.tscn     # File dialog scene
└── README.md           # This documentation
```

## 🔧 Code Overview

### Key Functions

- `_ready()`: Initializes file dialog and connections
- `on_host_button_pressed()`: Sets up server
- `on_client_button_pressed()`: Connects to server
- `send_image()`: RPC function for image transmission
- `texture_size_change()`: Handles image scaling
- `on_file_chosen()`: Processes selected image files

### Network Configuration

- **Port**: 1500
- **Host**: localhost (can be modified)
- **Protocol**: ENet (reliable UDP)

## 🎨 UI Components

The interface includes:
- **VBoxContainerImage**: Main container
- **Label**: Status display
- **TextureRect**: Image display area
- **Buttons**: Host, Client, Send actions

## ⚙️ Configuration

### Changing Network Settings

```gdscript
# Modify port
peer.create_server(YOUR_PORT)  # Host
peer.create_client("YOUR_IP", YOUR_PORT)  # Client
```

### Adjusting Image Size Limits

```gdscript
# In texture_size_change function
var max_width := 800   # Modify as needed
var max_height := 600  # Modify as needed
```

## 🐛 Troubleshooting

### Common Issues

1. **Connection Failed**: Check firewall settings and network connectivity
2. **Images Not Loading**: Verify file format (PNG/JPG only)
3. **Performance Issues**: Consider reducing max image dimensions

### Debug Tips

- Check Godot's remote debugger for network status
- Monitor console output for connection logs
- Verify file permissions for image access

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

# 🖼️ Godot Resim Paylaşım Ağı

Godot Engine ile geliştirilmiş gerçek zamanlı resim paylaşım uygulaması. Kullanıcılar oturum başlatabilir veya katılabilir ve ağ üzerinden anında resim paylaşabilir.

---

## 🎯 Özellikler

- **Host/Client Mimarisi**: Resim paylaşım oturumları oluşturun veya katılın
- **Gerçek Zamanlı Resim Aktarımı**: PNG ve JPG resimlerini anında paylaşın
- **Otomatik Resim Ölçeklendirme**: Görüntüleme alanına uyacak şekilde akıllı boyutlandırma
- **Ağ Çok Oyunculu**: Godot'un ENet multiplayer sistemi üzerine kurulu
- **Kullanıcı Dostu Arayüz**: Sorunsuz deneyim için basit UI

## 🛠️ Teknik Detaylar

### Ana Bileşenler
- **Node Yapısı**: Sahne yönetimi için Node2D'yi genişletir
- **Ağ İletişimi**: Güvenilir bağlantılar için ENetMultiplayerPeer
- **Dosya İşleme**: Resim yükleme için FileAccess
- **RPC Sistemi**: Resim aktarımı için uzaktan prosedür çağrıları

### Desteklenen Formatlar
- PNG Resimleri
- JPG/JPEG Resimleri

## 📋 Gereksinimler

- Godot Engine 4.0 veya üzeri
- Ağ bağlantısı (yerel veya internet)
- `file_dialog.tscn` sahne dosyası

## 🚀 Kurulum

1. Bu repository'yi klonlayın:
   ```bash
   git clone https://github.com/kullanici-adi/godot-resim-paylasim.git
   ```

2. Projeyi Godot Engine'de açın

3. `file_dialog.tscn` dosyasının proje kök dizininde bulunduğundan emin olun

4. Projeyi çalıştırın

## 🎮 Kullanım

### Oturum Başlatma
1. "Host" butonuna tıklayın
2. Sunucu 1500 portunda başlayacak
3. Clientların bağlanmasını bekleyin
4. Resim paylaşmaya başlayın!

### Oturuma Katılma
1. "Client" butonuna tıklayın
2. localhost:1500'e bağlanır
3. Resim almaya ve göndermeye başlayın

### Resim Paylaşma
1. "Send" butonuna tıklayın
2. Bir resim dosyası seçin (PNG/JPG)
3. Resim tüm bağlı kullanıcılarla paylaşılacak

## 📁 Proje Yapısı

```
proje/
├── main.gd              # Ana script (bu dosya)
├── file_dialog.tscn     # Dosya dialog sahnesi
└── README.md           # Bu dokümantasyon
```

## 🔧 Kod Genel Bakış

### Anahtar Fonksiyonlar

- `_ready()`: Dosya dialogu ve bağlantıları başlatır
- `on_host_button_pressed()`: Sunucuyu kurar
- `on_client_button_pressed()`: Sunucuya bağlanır
- `send_image()`: Resim aktarımı için RPC fonksiyonu
- `texture_size_change()`: Resim ölçeklendirmeyi yönetir
- `on_file_chosen()`: Seçilen resim dosyalarını işler

### Ağ Yapılandırması

- **Port**: 1500
- **Host**: localhost (değiştirilebilir)
- **Protokol**: ENet (güvenilir UDP)

## 🎨 UI Bileşenleri

Arayüz şunları içerir:
- **VBoxContainerImage**: Ana konteyner
- **Label**: Durum göstergesi
- **TextureRect**: Resim görüntüleme alanı
- **Butonlar**: Host, Client, Send işlemleri

## ⚙️ Yapılandırma

### Ağ Ayarlarını Değiştirme

```gdscript
# Portu değiştirme
peer.create_server(SIZIN_PORTUNUZ)  # Host
peer.create_client("SIZIN_IP_ADRESINIZ", SIZIN_PORTUNUZ)  # Client
```

### Resim Boyutu Sınırlarını Ayarlama

```gdscript
# texture_size_change fonksiyonunda
var max_width := 800   # İhtiyaca göre değiştirin
var max_height := 600  # İhtiyaca göre değiştirin
```

## 🐛 Sorun Giderme

### Yaygın Sorunlar

1. **Bağlantı Başarısız**: Güvenlik duvarı ayarları ve ağ bağlantısını kontrol edin
2. **Resimler Yüklenmiyor**: Dosya formatını doğrulayın (sadece PNG/JPG)
3. **Performans Sorunları**: Maksimum resim boyutlarını azaltmayı düşünün

### Hata Ayıklama İpuçları

- Ağ durumu için Godot'un uzaktan hata ayıklayıcısını kontrol edin
- Bağlantı logları için konsol çıktısını izleyin
- Resim erişimi için dosya izinlerini doğrulayın

## 🤝 Katkıda Bulunma

1. Repository'yi fork edin
2. Özellik branch'i oluşturun
3. Değişikliklerinizi yapın
4. Pull request gönderin

## 📄 Lisans

Bu proje MIT Lisansı altında lisanslanmıştır - detaylar için [LICENSE](LICENSE) dosyasına bakın.
