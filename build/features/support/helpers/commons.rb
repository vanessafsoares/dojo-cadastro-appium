module Commons
  def btn_new
    @btn_new ||= find_element(xpath: '//android.widget.ImageButton')
  end
end
World(Commons) 