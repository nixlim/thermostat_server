class Data
  attr_accessor :temp, :mode



  def self.instance
    @instance
  end

  def self.create
  @instance = Data.new  if @instance == nil
  end

  private_class_method :new


end
