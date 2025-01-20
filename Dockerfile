#FROM sphinxdoc/sphinx:8.1.3
FROM sphinxdoc/sphinx:latest

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"
LABEL "maintainer"="Wes Turner <@westurner>"

RUN apt update && apt install -y git && apt clean && rm -rf /var/lib/apt/cache

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
