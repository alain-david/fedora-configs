# Fedora configs

## Perzonalizar

### Fuentes

    sudo rpm install nerd-fonts-meta

Para listar todas las fuentes disponibles:

    fc-list

### Tema Grub

Ruta donde copiar los temas:

    /boot/grub/themes

Modifique /etc/default/grub:

```ini
GRUB_THEME="/boot/grub/themes/NombreDeTema/theme.txt"
```

Regenere grub.cfg para aplicar los cambios:

    sudo grub-mkconfig -o /boot/grub/grub.cfg

Aparecerá el mensaje Found theme: /boot/grub/themes/starfield/theme.txt.
