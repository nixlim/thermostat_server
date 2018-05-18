class NuclearData
  attr_accessor :temp, :mode

  @@instance = nil

  def self.instance
    @@instance ||= NuclearData.new

  end

  def initialize
    @temp = 20
    @mode = 'true'
  end

end

p NuclearData.instance