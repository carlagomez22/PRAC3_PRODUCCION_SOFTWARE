Feature: Gestión de gastos
  Como estudiante
  Quiero registrar mis gastos
  Para controlar cuánto dinero gasto

  Scenario: Crear un gasto y comprobar cual es el total que llevo gastado
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    Then el total de dinero gastado debe ser 5 euros

  Scenario: Eliminar un gasto y comprobar cual es el total que llevo gastado
    Given un gestor con un gasto de 5 euros
    When elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear y eliminar un gasto y comprobar que no he gastado dinero
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And elimino el gasto con id 1
    Then debe haber 0 gastos registrados

  Scenario: Crear dos gastos diferentes y comprobar que el total que llevo gastado es la suma de ambos
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And añado un gasto de 10 euros llamado Comida
    Then el total de dinero gastado debe ser 15 euros

  Scenario: Crear tres gastos diferentes que sumen 30 euros hace que el total sean 30 euros
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And añado un gasto de 15 euros llamado Comida
    And añado un gasto de 10 euros llamado Bebida
    Then el total de dinero gastado debe ser 30 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el ultimo gasto la suma son 40 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Café
    And añado un gasto de 30 euros llamado Comida
    And añado un gasto de 30 euros llamado Bebida
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 40 euros

  Scenario: Crear tres gastos de 10, 30, 30 euros y elimino el ultimo gasto la suma son 40 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Café
    And añado un gasto de 30 euros llamado Comida
    And añado un gasto de 30 euros llamado Bebida
    And elimino el gasto con id 3
    Then el total de dinero gastado debe ser 40 euros

Scenario: Crear dos gastos de 10 y 20 euros y actualizo el último gasto para que sea de 15 euros la suma son 25 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Café
    And añado un gasto de 20 euros llamado Comida
    And actualizo el gasto con id 2 con nuevo amount de 15 euros
    Then el total de dinero gastado debe ser 25 euros

Scenario: Crear tres gastos de 10, 30, 30 euros y actualizo el penúltimo gasto para que sea de 15 euros y actualizo el último gasto para que sea de 60 euros la suma son 85 euros
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado Café
    And añado un gasto de 30 euros llamado Comida
    And añado un gasto de 30 euros llamado Bebida
    And actualizo el gasto con id 2 con nuevo amount de 15 euros
    And actualizo el gasto con id 3 con nuevo amount de 60 euros
    Then el total de dinero gastado debe ser 85 euros

Scenario: Crear dos gastos de 5 y 10 euros y elimino el primer gasto y el último lo actualizo para que sea de 0 euros la suma son 0 euros
    Given un gestor de gastos vacío
    When añado un gasto de 5 euros llamado Café
    And añado un gasto de 10 euros llamado Comida
    And elimino el gasto con id 1
    And actualizo el gasto con id 2 con nuevo amount de 0 euros
    Then el total de dinero gastado debe ser 0 euros