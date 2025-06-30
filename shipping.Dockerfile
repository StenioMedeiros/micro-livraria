# Imagem base com Node.js
FROM node

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia todo o projeto para dentro do container
COPY . /app

# Instala as dependências
RUN npm install

# Inicia o microsserviço Shipping
CMD ["node", "/app/services/shipping/index.js"]
