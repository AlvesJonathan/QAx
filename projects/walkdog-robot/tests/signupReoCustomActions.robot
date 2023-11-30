*** Settings ***
Documentation        Suite de testes de cadastro de dog walker
Resource             ../resources/base.resource


*** Test Cases ***
Deve validar a tela de cadasro de um novo Dog walker
    
    #Massa de teste com super variavel
     ${dog_walker}       Create Dictionary    
    ...                  name=Jonathan Teste
    ...                  email=jonteste@teste.com
    ...                  cpf=77002758152
    ...                  cep=72914502
    ...                  street=Quadra 4 Conjunto A
    ...                  number=404
    ...                  details=apto 204
    ...                  district=Parque da Barragem Setor 06
    ...                  city_uf=Águas Lindas de Goiás/GO
    ...                  cnh=toretto.jpg

    Go to signup page
    Fill signup form    ${dog_walker}
    Submit signup form
    Popup should be     Recebemos o seu cadastro e em breve retornaremos o contato.