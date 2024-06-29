# Dockerfile
# Use uma imagem base do Python
FROM python:3.11-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo de requisitos e instala as dependências
COPY requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copia o conteúdo do diretório atual para o contêiner
COPY . .

# Expõe a porta 8050, que é a porta padrão do Dash
EXPOSE 8050

# Comando para rodar a aplicação
CMD ["python", "index.py"]