# L7-013 實作以下內容
class Block
  attr_reader :length, :width, :height
  def initialize(quadrilateral)
    # @quadrilateral = quadrilateral
    @length, @width, @height = quadrilateral
  end  

  def volume
    width * length * height
  end

  def surface_area
    width * length * 6
  end
end
# L7-014 調整以下實作，讓程式可順利執行
class Human
attr_reader :name
  def initialize(name)
    @name = name
  end
  def greet(your_name)
    "Hello #{your_name}, my name is #{name}"
  end
end

def non_repeat_sum(arr)
  arr.select { |item| arr.count(item) == 1 }.sum
end

RSpec.describe do
  it "實作內容" do
    cube = Block.new([2,2,2])

    expect(cube.width).to be 2
    expect(cube.length).to be 2
    expect(cube.height).to be 2
    expect(cube.volume).to be 8
    expect(cube.surface_area).to be 24
  end
  it "打招呼！" do
    jack = Human.new("Jack")
    jill = Human.new("Jill")

    expect(jack.greet("Jill")).to eq "Hello Jill, my name is Jack"
    expect(jack.greet("Mary")).to eq "Hello Mary, my name is Jack"
    expect(jill.greet("Jack")).to eq "Hello Jack, my name is Jill"
    expect(jill.name).to eq 'Jill'
  end
  it "計算不重複元素的總合" do
    expect(non_repeat_sum([4,5,7,5,4,8])).to be 15
    expect(non_repeat_sum([9, 10, 19, 13, 19, 13])).to be 19
    expect(non_repeat_sum([16, 0, 11, 4, 8, 16, 0, 11])).to be 12
    expect(non_repeat_sum([5, 17, 18, 11, 13, 18, 11, 13])).to be 22
    expect(non_repeat_sum([5, 10, 19, 13, 10, 13])).to be 24
  end
end