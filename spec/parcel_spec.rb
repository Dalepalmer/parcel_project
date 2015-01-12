require('rspec')
require('parcel')
require('pry')

describe(Parcel) do
  describe("#volume") do
    it("multiplies the given dimensions to compute a volume") do
      new_volume = Parcel.new(1, 2, 3)
      expect(new_volume.volume()).to(eq(6))
    end
  end

  describe("#cost_to_ship") do
    it("multiplies the given price of the volume by the weight of the user's package") do
      new_cost = Parcel.new(4, 4, 2)
      new_cost.volume()
      expect(new_cost.cost_to_ship(5.0)).to(eq(25000))
    end
  end
end
