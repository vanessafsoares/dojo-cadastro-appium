module Android
  class Home
    attr_reader :home
    include Commons

    def title_home?
      find_element(:xpath, "//*[contains(@text, 'Cadastro de Clientes')]").displayed?
      btn_new.displayed?
    end
  end
  
  class Register
    attr_reader :register
    include Commons

    def start_new_register
      btn_new.click
      btn_new_register.click
    end

    def register(type)
      if type == 'Básico'
        rd_basic.click

        basic_register
        btn_save
       else type == 'Completo'
        complete_register
        btn_save
      end
    end

    def basic_register
    end

    def complete_register
    end
  end
end
