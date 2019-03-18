c.ServerProxy.servers = {
  'syncthing': {
    'command': ['/home/jovyan/syncthing-linux-amd64-v1.1.0/syncthing', '-no-browser', '-home="/home/jovyan/syncthing"'],
    'absolute_url': False,
    'port': 8384,
    'launcher_entry': {
      'title': "Syncthing"
    },
    'proxy_request_options': {
		'request_timeout': 3600
	}
  }
}
