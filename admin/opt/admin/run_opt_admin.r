setwd("C:\\Users\\yuemeng1\\Desktop\\TOOL\\wells\\admin\\opt\\admin\\")
suppressMessages(suppressWarnings(library(RMySQL)))
# True generate db version files, F generates flat file version files
db.usage=T
# True is to staging DB and F is to production DB
is.staging=T
# DB server info
db.server="bitnami.cluster-chdidqfrg8na.us-east-1.rds.amazonaws.com"
db.server="127.0.0.1"
db.name="nviz"
port=3306
if (is.staging){
  username="root"
  password="bitnami"
}else{
  username="Zkdz408R6hll"
  password="XH3RoKdopf12L4BJbqXTtD2yESgwL$fGd(juW)ed"
}
main.path="C:\\Users\\yuemeng1\\Desktop\\code\\opt\\" # opt files path
season.var=0.1  # from 0 to 1


if (db.usage) conn <- dbConnect(MySQL(),user=username, password=password,dbname=db.name, host=db.server)
source(paste(main.path,"adm_main.r",sep=""),local=T)
if (db.usage) dbDisconnect(conn)

