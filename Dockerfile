FROM odoo:17

# If you have to install from pip and using Odoo >= 11.0
USER root
ENV PATH="/var/lib/odoo/.local/bin:${PATH}"

RUN pip3 install wheel
RUN pip3 install paramiko
RUN pip3 install python-telegram-bot==13.15
RUN pip3 install bigjson
RUN pip3 install pymysql
RUN pip3 install pandas
RUN pip3 install mdb_parser
RUN pip3 install holidays
RUN pip3 install Formats
RUN pip3 install formats
RUN pip3 install py3o.formats
RUN pip3 install py3o.template
RUN pip3 install xlsxwriter
RUN pip3 install xlrd

# COPY custom_modules/asset/key/client_secrets.json /client_secrets.json
# COPY custom_modules/asset/key/mycreds.txt /mycreds.txt
# RUN chmod 777 /mycreds.txt /client_secrets.json
USER odoo
