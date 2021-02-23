require_relative 'android_screens'

class AndroidScreens
  attr_reader :home
  
  def initialize
    @home = Home::Android.new
    @cadastro = Cadastro::Android.new
  end
end

