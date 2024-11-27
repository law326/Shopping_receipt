class Float
  def round_to_nearest
    (self * 20.0).ceil / 20.0
  end
end
