# L7-004 工廠的某台印表機只能印出 a 到 m 的字，請完成實作內容，把不應該出現的字算出來
def printer_error(s)
  # h = s.split("").reject { |x| x < "n" }.length
  # "#{h}/#{s.length}"
  #龍哥方法
    "#{s.scan(/[^a-m]/).length}/#{s.length}"
end

# L7-005 一夥人去吃飯，大家先各自付帳，待後續再計算多退少補，請根據輸出結果完成以下實作。
def split_the_bill(bill)
  avg = bill.values.sum / bill.count.to_f
  bill.transform_values {|v| v - avg }
end

# L7-006 計算有幾個母音字母(a, e, i, o, u)
def vowel_count(string)
  string.count("aeiou")
end



RSpec.describe do
it "不該出現的字" do
  expect(printer_error("aaabbbbhaijjjm")).to eq '0/14'
  expect(printer_error("aaaxbbbbyyhwawiwjjjwwm")).to eq '8/22'
  expect(printer_error("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz")).to eq '3/56'
end

it "帳單計算" do
  expect(split_the_bill('A' => 20, 'B' => 15, 'C' => 10)).to eq({'A' => 5.00, 'B' => 0.00, 'C' => -5.00})
  expect(split_the_bill('A' => 40, 'B' => 25, 'X' => 10)).to eq({'A' => 15.00, 'B' => 0.00, 'X' => -15.00})
end

it "計算有幾個母音字母" do
  expect(vowel_count("abracadabra")).to be 5
  expect(vowel_count("5xruby")).to be 1
  expect(vowel_count("iloveyou")).to be 5
end

end