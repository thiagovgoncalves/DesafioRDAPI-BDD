#language: pt

@consulta_cep
Funcionalidade: Consulta CEP

    @cep_valido
    Cenário: CEP válido
        Quando consulto o CEP "84020420"
        Então vejo o status "200"
        E vejo o código IBGE do endereço

    @cep_invalido    
    Esquema do Cenário: CEP inválido
        Quando consulto um <CEP> inválido
        Então vejo o status "400"
            Exemplos:
            | CEP         |
            | "999999999" |
            | "95010A10"  |