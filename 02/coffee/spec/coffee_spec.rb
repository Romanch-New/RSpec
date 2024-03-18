class Coffee
  def ingredients
    @ingredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
  end

  def price
    base_price = 1.00
    price_modifier = {
      milk: 0.25,
      sugar: 0.10
      # Add more ingredients and price adjustments here
    }

    ingredients.each do |ingredient|
      base_price += price_modifier[ingredient] if price_modifier.key?(ingredient)
    end

    base_price
  end
end

# Path: 02/coffee/spec/coffee_spec.rb
RSpec.describe "A cup of Coffee" do
  let(:coffee) { Coffee.new }

  it "costs $1" do
    expect(coffee.price).to eq(1.00)
  end

  context "with milk" do
    before { coffee.add :milk }

    it "costs $1.25" do
      expect(coffee.price).to eq(1.25)
    end

    it "has ingredients milk" do
      expect(coffee.ingredients).to include(:milk)
    end
  end

  context "with sugar" do
    before {coffee.add :sugar}

    it "cost $1.10" do
      expect(coffee.price).to eq(1.10)
    end
  end
end