# API de adoção de lobinhos

Essa é uma API que permite o cadastro de lobinhos para adoção e a adoção de lobinhos cadastrados.


## Cadastro de Lobinhos e Adoções  
#### Lobinhos  
Para cadastrar um lobinho, é necessário fazer uma requisição do tipo POST para o link:
> https://lobinhos-api.herokuapp.com/wolves

O formato do JSON que deve ser passado é:  
```javascript
{
  "wolf": {
    "photo": "string com url de imagem",
    "age": número inteiro,
    "name": "string",
    "description": "string"
  }
}
```
#### Adoções  
Para cadastrar uma adoção, é necessário fazer uma requisição do tipo POST para o link:  
> https://lobinhos-api.herokuapp.com/adoptions

O formato do JSON que deve ser passado é:  
```javascript
{
  "adoption": {
    "age": número inteiro,
    "name": "string",
    "email": "email",
    "wolf_id": id válido de um lobo
  }
}
```
## Consulta de lista de lobinhos e adoções  
Para receber uma lista de todos os lobinhos disponíveis para adoção(ou seja, que ainda não foram adotados), deve ser feita uma requisição do tipo GET para o link:  
> https://lobinhos-api.herokuapp.com/wolves

Para receber uma lista das adoções já feitas, deve ser feita uma requisição do tipo GET para o link:  
> https://lobinhos-api.herokuapp.com/adoptions

## Consulta individual de lobinhos e adoções
Para acessar as informações de apenas um lobinho, deve ser feita uma requisição do tipo GET para o link:
> https://lobinhos-api.herokuapp.com/wolves/algum_id_valido

Para acessar as informações de apenas uma adoção, deve ser feita uma requisição do tipo GET para o link:
> https://lobinhos-api.herokuapp.com/adoptions/algum_id_valido

## Exclusão de um lobinho ou adoção

Para acessar as informações de apenas um lobinho, deve ser feita uma requisição do tipo DELETE para o link:
> https://lobinhos-api.herokuapp.com/wolves/algum_id_valido

Para acessar as informações de apenas uma adoção, deve ser feita uma requisição do tipo DELETE para o link:
> https://lobinhos-api.herokuapp.com/adoptions/algum_id_valido

