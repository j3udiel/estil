# 🎥 Twitch 24/7 Loop Stream (Docker + FFmpeg + NVIDIA NVENC)

Emite un vídeo MP4 en bucle infinito a Twitch 24/7 utilizando Docker, FFmpeg y aceleración por GPU NVIDIA (NVENC).

Ideal para:
- Canales 24/7
- Clips en bucle
- Pantallas de espera
- Música, visuales o fondos animados

---

## 🚀 Características

- Reproducción en bucle infinito
- Auto-reconexión si Twitch corta la emisión
- Codificación por GPU (NVENC)
- Docker Compose listo para producción
- Compatible con servidores Ubuntu

---

## 📦 Requisitos

- Docker
- Docker Compose
- GPU NVIDIA con drivers instalados
- NVIDIA Container Toolkit
- Stream Key de Twitch

---

## 📁 Estructura del proyecto

```text
.
├── docker-compose.yml
├── stream.sh
├── .env
└── media/
    └── clip.mp4
