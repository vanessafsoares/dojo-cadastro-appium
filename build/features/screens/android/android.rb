require_relative 'android_screens'

class AndroidScreens
  attr_accessor :home, :register
  
  def initialize
    @home = Android::Home.new
    @register = Android::Register.new
  end
end

