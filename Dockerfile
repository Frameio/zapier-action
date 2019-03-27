FROM node:10

LABEL "com.github.actions.name"="GitHub Action for zapier"
LABEL "com.github.actions.description"="Wraps the zapier CLI to enable zapier cli commands."
LABEL "com.github.actions.icon" = "box"
LABEL "com.github.actions.color" = "orange"

LABEL "repository" = "https://github.com/Frameio/zapier-action"
LABEL "homepage" = "https://github.com/Frameio/zapier-action"

RUN npm install -g zapier-platform-cli

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
