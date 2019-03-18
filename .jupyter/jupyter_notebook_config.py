c.ServerProxy.servers = {
  'syncthing': {
    'command': ['syncthing', '-no-browser', '-home="/home/jovyan/syncthing"'],
    'absolute_url': False,
    'port': 8384,
    'launcher_entry': {
      'title': "Syncthing"
    },
    'proxy_request_options': {
		'request_timeout': 600
	}
  }
}
