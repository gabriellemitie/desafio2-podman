# Desafio 2 - podman  

## Observações sobre o desafio

1. Criando a imagem  
Atenção com a variável de ambiente para expor a porta e também lembrar de dar o RUN na linha de comando para alterar o arquivo de configuração do Apache.

2. Iniciar em daemon  
O mesmo que iniciar em modo detached (-d)  

3. Verificação do container  
Ao verificar se o container está funcionando no endereço, tirar o https:// para poder acessar diretamente da porta  

4. Subindo no docker hub  
    1 - fazer o login no docker hub usando  
    `podman login docker.io`  
    2- criar o repositório no docker hub  
    A imagem que vai subir deve ter o mesmo nome do repositório   
    3 - Realizar o `podman buil -t nomeimagem` novamente para atualizar o nome  
    4 - Subir a imagem no docker hub usando  
    `podman push nome_imagem` 