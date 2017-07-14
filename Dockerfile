FROM netflixoss/hubcommander:0.2.0

# set up the auth control mechanism
RUN mkdir -p /rtmbot/hubcommander/auth_plugins/rollcontrol
RUN touch /rtmbot/hubcommander/auth_plugins/rollcontrol/__init__.py
COPY  rollcontrol_plugin.py /rtmbot/hubcommander/auth_plugins/rollcontrol/plugin.py
COPY  enabled_auth_plugins.py /rtmbot/hubcommander/auth_plugins/enabled_plugins.py
RUN touch /rtmbot/hubcommander/auth_plugins/__init__.py

# copy in the environment variable based config
COPY  github_plugin_config.py /rtmbot/hubcommander/github/config.py