# Tomcat
FROM tomcat:9.0.64-jre17

# Remove os apps padrão do Tomcat para ficar mais leve
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia o .war gerado pelo Maven para dentro da imagem
COPY target/*.war /usr/local/tomcat/webapps/api.war

# Disponibiliza a porta 8080
EXPOSE 8080