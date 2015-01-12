class Parcel
  define_method(:initialize) do |length, width, height|
    @length = length
    @width = width
    @height = height
  end

  define_method(:volume) do
    two_dim = @length.*(@width)
    @volume = two_dim.*(@height)
  end

  define_method(:cost_to_ship) do |weight|
    final_price = 0
    if @volume.<=(15)
      vol_price = 1000
    elsif @volume.<(41) && @volume.>(15)
      vol_price = 5000
    elsif @volume.>(41)
      vol_price = 9001
    elsif @volume == 22237440
      final_price = "We can't ship the Titanic..."
    end
    final_price = weight.*(vol_price)
  end
end
