###Alguns comandos do terraform 
####Download do provider e módulos definidos
    terraform init

#### Gerar um um plano de execução
Gera um plano de execução especulativo, mostrando quais ações o Terraform
irá aplicar a configuração atual. Este comando não vai realmente executar as ações planejadas.

Você pode opcionalmente salvar o plano em um arquivo, que você pode então passar para
o comando "apply" para executar exatamente as ações descritas no plano.

    terraform apply