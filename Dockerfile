FROM searxng/searxng:latest
# Bake settings into the image: Coolify does not copy relative bind-mount
# sources (./settings.yml) into the app dir, which caused directory-mount crashes.
COPY settings.yml /etc/searxng/settings.yml
