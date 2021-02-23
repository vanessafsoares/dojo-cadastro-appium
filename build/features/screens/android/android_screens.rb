module Android
  class Home
    include Commons

    def tittle_home?
      find_element(:xpath, "//*[contains(@text, 'Cadastro de Clientes)]'")
      btn_new.displayed
    end
  end
end
