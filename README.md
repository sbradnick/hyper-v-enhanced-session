# These are files for getting 'Enhanced session' working in Hyper-V:

- **91-default-xrdp.preset**: Used to control which systemd services are enabled at startup.
- **hv_sock.conf**: Ensures the "hv_conf" module is loaded.
- **sesman.ini**: Provides default settings for the 'xrdp-sesman' service.
- **startwm.sh**: Simple startup session script to check for preferred session and base binary available to start it.
- **xrdp.ini**: Provides default settings for the 'xrdp' service.
- **xrdp.service**: Used to control which systemd services are enabled at startup (currently controlled by 91-default-xrdp.preset).
- **xrdp-sesman.service**: Used to control which systemd services are enabled at startup (currently controlled by 91-default-xrdp.preset).
- **Xwrapper.config**: Controls 'allowed_users' for X11.
