# 開発用

## イメージ作成

```
docker build -t dotfile -f dev/Dockerfile .
```

## コンテナ生成

```
docker run --rm -it \
    -v ${PWD}:/root/.local/share/chezmoi:ro \
    -w /root \
    --name dotfile_dev \
    dotfile
```

## WSLg対応

```
docker run --rm -it \
    -v ${PWD}:/root/.local/share/chezmoi:ro \
    -v /mnt/wslg:/mnt/wslg \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=${DISPLAY} \
    -e PULSE_SERVER=${PULSE_SERVER} \
    -e WAYLAND_DISPLAY=${WAYLAND_DISPLAY} \
    -e XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR} \
    -w /root \
    --name dotfile_dev \
    dotfile
```

