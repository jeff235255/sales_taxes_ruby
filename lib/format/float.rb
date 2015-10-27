class Float
  def ceil2(exp = 0)
    (self * (10 ** exp)).ceil.to_f/(10 ** exp).to_f
  end
end
