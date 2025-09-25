FROM joaojeronimopro/simplesystems:ubuntu20.04
RUN apt-get install -y wget gpg
RUN bash -c "wget -q -O - https://nightly.odoo.com/odoo.key | gpg --dearmor -o /usr/share/keyrings/odoo-archive-keyring.gpg"
RUN bash -c "echo 'deb [signed-by=/usr/share/keyrings/odoo-archive-keyring.gpg] https://nightly.odoo.com/19.0/nightly/deb/ ./' > /etc/apt/sources.list.d/odoo.list"
RUN apt-get update
RUN apt-get install odoo
