@compra_passagem
Feature: Compra de Passagem Aerea
  # Descreve a compra pelo site Blazedemo.com
  # Cenário E2E = End to End = Inicio ao Fim , etc
  Scenario: De Sao Paulo a Roma
    Given que acesso o site Blazedemo
    When seleciono a cidade de origem como "São Paolo"
    And selecino a cidade de destino como "Rome"
    And clico no botao "Find Flights"
    Then sou direcionado para a pagina de selecao de voos
    When seleciono o primeiro voo
    Then sou direcionado para a pagina de pagamento
    When preencho os dados para o pagamento
    And clico no botao Purchase Flight
    Then sou direcionado para a pagina de confirmacao

  Scenario: De Boston a Berlin Compacto
    Given que acesso o site Blazedemo
    When seleciono a cidade de "Boston" para "Berlin"
    Then sou direcionado para a pagina de selecao de voos
    When seleciono o primeiro voo
    Then sou direcionado para a pagina de pagamento
    When preencho os dados para o pagamento
    And clico no botao Purchase Flight
    Then sou direcionado para a pagina de confirmacao

  Scenario Outline: De origem a destino
    Given que acesso o portal Blazedemo
    When seleciono a cidade de "<origem>" para "<destino>"
    Then sou direcionado para a pagina de selecao de voos
    When seleciono o primeiro voo
    Then sou direcionado para a pagina de pagamento
    When preencho os dados para o pagamento
    And clico no botao Purchase Flight
    Then sou direcionado para a pagina de confirmacao

    Examples:
      | origem       | destino      |
      | Philadelphia | Buenos Aires |
      | Mexico City  | Cairo        |