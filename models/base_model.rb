require_relative '../lib/format/float'

class BaseModel
  
  BASIC_TAXES = 10
  ADDITIONAL_TAXES = 5

  def format(num)
    num.to_f.abs.ceil2(2) 
  end
end
