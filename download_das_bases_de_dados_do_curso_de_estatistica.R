#--------------------------------------------------------------------
#
# Codigo para facilitar o download das bases de dados 
# do curso de estatistica da UNIRIO
#
# prof. Steven Dutt Ross
#--------------------------------------------------------------------



#--------------------------------------------------------------------
# local com as bases de dados
#--------------------------------------------------------------------

bases_curso_estatistica<-"https://github.com/DATAUNIRIO/Base_de_dados/archive/master.zip"

#--------------------------------------------------------------------
# criacao do diretorio
#--------------------------------------------------------------------

dir.create(paste0(getwd(),"/bases_curso_estatistica"))
setwd(paste0(getwd(),"/bases_curso_estatistica"))

#--------------------------------------------------------------------
# inicio da funcao de download
#--------------------------------------------------------------------

LOCAL<-paste0(getwd(),"/bases_curso_estatistica.zip")
download.file(bases_curso_estatistica, LOCAL, mode="wb")

#list.files(getwd())


#--------------------------------------------------------------------
# inicio da funcao unzip
#--------------------------------------------------------------------
unzip("bases_curso_estatistica.zip",exdir = paste0(getwd()))


#--------------------------------------------------------------------
# removendo arquivos desnecessarios
#--------------------------------------------------------------------
file.remove("bases_curso_estatistica.zip")
remove(LOCAL,bases_curso_estatistica)

#--------------------------------------------------------------------
# local com as bases de dados
#--------------------------------------------------------------------

print("Local dos bancos de dados...")
print(getwd())