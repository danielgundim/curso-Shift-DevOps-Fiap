
# API Python com Docker

Esta é uma aplicação simples em Python utilizando Flask que está containerizada usando Docker. A aplicação expõe um endpoint que recebe o nome de um aluno e retorna uma mensagem personalizada.

## Pré-requisitos

Antes de começar, certifique-se de que você tenha os seguintes itens instalados:

- [Docker](https://www.docker.com/get-started) (necessário para criar e executar o container)
- [Git](https://git-scm.com/) (para clonar o repositório)

## Como executar a aplicação

Siga os passos abaixo para subir a aplicação Python em um container Docker.

### 1. Clonar o repositório

Clone o repositório com o comando abaixo:

```bash
git clone https://github.com/danielgundim/curso-Shift-DevOps-Fiap.git
cd api-aluno
```

### 2. Construir a imagem Docker

No diretório raiz do projeto, onde o `Dockerfile` está localizado, execute o comando para construir a imagem Docker:

```bash
docker build -t api-aluno .
```

Esse comando cria uma imagem chamada `api-aluno` com base no código da API.

### 3. Executar o container

Após a construção da imagem, inicie um container a partir dessa imagem com o seguinte comando:

```bash
docker run -p 5000:5000 api-aluno
```

Explicação:
- `-p 5000:5000`: Mapeia a porta 5000 do container para a porta 5000 da sua máquina local.
- `api-aluno`: O nome da imagem que você criou no passo anterior.

### 4. Testar a aplicação

Com o container rodando, você pode acessar o endpoint da API em um navegador ou via `curl`. O formato do URL é:

```
http://localhost:5000/aluno/{nome}
```

Por exemplo, para testar o endpoint com o nome "Daniel", você pode usar:

```bash
curl http://localhost:5000/aluno/Daniel
```

A resposta será semelhante a:

```json
{
  "message": "Parabéns! Você é um aluno da Fiap. E subiu seu primeiro container."
}
```

### 5. Parar o container

Para parar o container, você pode usar o seguinte comando para listar os containers em execução:

```bash
docker ps
```

Copie o `CONTAINER ID` correspondente ao container da API e, em seguida, execute:

```bash
docker stop <CONTAINER_ID>
```

## Estrutura do Projeto

- `app.py`: Código principal da aplicação Flask.
- `Dockerfile`: Arquivo de definição da imagem Docker.
- `requirements.txt`: Arquivo de dependências Python.

## Contribuindo

Se você deseja contribuir com este projeto, sinta-se à vontade para fazer um fork e enviar um pull request.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).
