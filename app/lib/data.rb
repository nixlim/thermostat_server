class NuclearData
  attr_accessor :temp, :mode
  @@instance = NuclearData.new

  def initialize
    @temp = 20
    @mode = 'on'
  end

  def self.instance
    @@instance
  end

  private_class_method :new
end
