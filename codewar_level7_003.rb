# L7-007 觀察輸出結果，實作相對應的程式
def accum(s)
  s.split("").map.with_index do |x, index|
   (x * (index +1)).capitalize 
  end.join("-")
end
# L7-008 找出中間的字
def get_middle(string)
  l = string.chars.length
  if l % 2 == 0
    "#{string[l/2 - 1]}#{string[l/2]}"
  else 
    "#{string[l/2.to_i]}"
  end
end
# L7-009 這是個三角形嗎？
def is_triangle?(a, b, c)
  # array = [a, b, c].sort
  # array[0] + array[1] >= array[2]
  [a, b, c].min(2).sum > [a, b, c].max
end

RSpec.describe do
  it "觀察輸出結果，實作相對應的程式" do
    expect(accum("ZpglnRxqenU")).to eq 'Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu'
    expect(accum("NyffsGeyylB")).to eq 'N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb'
    expect(accum("MjtkuBovqrU")).to eq 'M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu'
    expect(accum("EvidjUnokmM")).to eq 'E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm'
    expect(accum("HbideVbxncC")).to eq 'H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc'
  end

  it "找出中間的字" do
    expect(get_middle("test")).to eq 'es'
    expect(get_middle("testing")).to eq 't'
    expect(get_middle("middle")).to eq 'dd'
    expect(get_middle("A")).to eq 'A'
    expect(get_middle("of")).to eq 'of'
  end
  it "這是個三角形嗎？" do
    expect(is_triangle?(1,2,2)).to be true
    expect(is_triangle?(7,2,2)).to be false
  end
end