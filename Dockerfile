# Usando uma imagem base de Python
FROM python:3.14-rc-slim

# Configurando o diretório de trabalho dentro do container
WORKDIR /app

# Copiando o arquivo de requisitos (opcional)
COPY requirements.txt .

# Instalando as dependências necessárias
RUN pip install --no-cache-dir -r requirements.txt

# Copiando o código da aplicação para o diretório de trabalho
COPY . .

# Expondo a porta que a aplicação irá utilizar
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "api.py"]
