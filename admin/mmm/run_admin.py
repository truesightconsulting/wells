client_path='c:/Users/XinZhou/Documents/GitHub/wells/admin/mmm/'
main_path='c:/Users/XinZhou/Documents/GitHub/mmm_sim/'
# DB server info
is_staging=True
db_server="bitnami.cluster-chdidqfrg8na.us-east-1.rds.amazonaws.com"
db_server="127.0.0.1"
db_name="nviz"
port=3306
if is_staging:
    username="root"
    password="bitnami"
else:
    username="Zkdz408R6hll"
    password="XH3RoKdopf12L4BJbqXTtD2yESgwL$fGd(juW)ed"

import sys
sys.path.append(main_path)
from adm_main import adm
adm(client_path,main_path,is_staging,db_server,db_name,port,username,password)


