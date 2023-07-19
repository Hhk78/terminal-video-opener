#!/bin/bash

echo "Lütfen YouTube video linkini girin:"
read video_link

# Video formatlarını listele ve sadece "video only" olanları filtrele
ONLYVIDEO=$(yt-dlp --list-formats "$video_link" | grep "video only")
echo "Aşağıdaki formatlardan birini seçin:"
echo "$ONLYVIDEO"
read video_format

# Video için seçilen formata göre indirme bağlantısını al
ONLYVIDEO=$(yt-dlp -f "$video_format" "$video_link" -g)

# Ses formatlarını listele ve sadece "audio only" olanları filtrele
ONLYAUDIO=$(yt-dlp --list-formats "$video_link" | grep "audio only")
echo "Aşağıdaki formatlardan birini seçin:"
echo "$ONLYAUDIO"
read audio_format

# Ses için seçilen formata göre indirme bağlantısını al
ONLYAUDIO=$(yt-dlp -f "$audio_format" -g "$video_link")

# Videoyu ve sesi oynat
mpv "$ONLYVIDEO" --audio-file="$ONLYAUDIO"
