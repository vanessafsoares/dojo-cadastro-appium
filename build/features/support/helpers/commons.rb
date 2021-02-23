module Commons
  def btn_new
    @btn_new ||= find_element(xpath: '//android.widget.ImageButton')
  end

  def btn_new_register
    @btn_new_register ||= find_element(id: 'floating_novo')
  end

  def rd_basic
    @rd_basic ||= find_element(id: 'rdBasico')
  end

  def rd_completo
    @rd_completo ||= find_element(id: 'rdCompleto')
  end
end
World(Commons) 