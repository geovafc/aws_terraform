### Alguns comandos do terraform 
#### Download do provider e módulos definidos
    terraform init

#### Gerar um plano de execução
Gera um plano de execução especulativo, mostrando quais ações o Terraform
irá aplicar a configuração atual. Este comando não vai realmente executar as ações planejadas.

Você pode opcionalmente salvar o plano em um arquivo, que você pode então passar para
o comando "apply" para executar exatamente as ações descritas no plano.

    terraform plan

#### Gerar um plano de execução
Cria ou atualiza a infraestrutura de acordo com a configuração do Terraform
    
    terraform apply

#### Validação 
Valida os arquivos de configuração para saber se nossas configurações estão de acordo 
com as especificações. 

    terraform validate

#### Formatação
Deixa o código no padrão que o terraform recomenda

    terraform fmt

#### Alteração
Quando eu passo a flag -out, estou dizendo para o terraform escrever no arquivo "tfplan.out"
com o output do comando terraform plan e em seguida peço para aplicar as atualizações

    terraform plan -out="tfplan.out"

    terraform apply "tfplan.out"

#### Destruir
    
    terraform destroy


### EC2 AWS

#### Instancias 

É uma máquina virtual, que pode ser linux ou windoes, onde você pode subir e instalar nela o que você quiser como servidores, 
banco de dados, tudo que é possível instalar em um servidor normal.  