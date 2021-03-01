# L7-010 幫信用卡號打馬賽克
def maskify(card_number)
  # len = card_number.length
  # if len < 4
  #   card_number
  # else
  #   "#{"#" * (len - 4)}#{card_number[-4, 4]}"
  # end
  card_number.gsub(/.(?=....)/, '#')
end
# L7-011 檢查是否有照順序排？
def is_sorted_and_how(arr)
  if arr == arr.sort
    "yes, ascending"
  elsif arr == arr.sort.reverse
    "yes, descending"
  else 
    "no"
  end
end

class Person
  attr_reader :last_name, :first_name
  def initialize(last_name, first_name)
    @last_name = last_name
    @first_name = first_name
  end

  def greet
    "Hello, #{last_name} #{first_name}!"
  end
end

RSpec.describe do
  it "幫信用卡號打馬賽克" do
    expect(maskify('4556364607935616')).to eq '############5616'
    expect(maskify('1')).to eq '1'
    expect(maskify('11111')).to eq '#1111'
  end
  it "檢查是否有照順序排？" do
    expect(is_sorted_and_how([1, 2])).to eq 'yes, ascending'
    expect(is_sorted_and_how([15, 7, 3, -8])).to eq 'yes, descending'
    expect(is_sorted_and_how([4, 2, 30])).to eq 'no'
  end
  it "當個有禮貌的人" do
    person = Person.new('Bob', 'Smith')
    expect(person.greet).to eq 'Hello, Bob Smith!'
  end
end