puts "------------------"
puts "手持ちのコインが無くなるまで、ポイントの最大化を目指そう！"
puts "○ルール説明"
puts " 1コイン = 10ポイント"
puts " 横に３つの数字が揃ったら、100 ポイント獲得！！！"
puts " 残りのコイン数 100"
puts " ポイント 0"
puts " 何コイン入れますか？"
puts "------------------"

coin = 100
point = 0

loop do
    
puts "1(10コイン) 2(30コイン) 3(50コイン) 4(やめとく)"

coins = [0, 10, 30, 50, 0]

coin_choice = gets.to_i

if coin_choice == 4
  puts "またの挑戦をお待ちしております。"
  break
elsif coin < coin_choice
  puts "コインが無いので、挑戦できません。"
  break
elsif coin_choice < 1 
  puts "1~4の数字を選んでください。"
  break
elsif  coin_choice > 4
  puts "1~4の数字を選んでください。"
  break
end

puts "Enterを3回押しましょう"
puts ""

value1 = rand(9)
value2 = rand(6..7)
value3 = rand(9)

# slots = [1,2,3,4,5,6,7,8,9]

puts "-------------------"
puts "|#{value1}| | |"
puts "|#{value2}| | |"
puts "|#{value3}| | |"
puts ""

puts = gets

value4 = rand(9)
value5 = rand(6..7)
value6 = rand(9)

puts "-------------------"
puts "|#{value1}|#{value4}| |"
puts "|#{value2}|#{value5}| |"
puts "|#{value3}|#{value6}| |"
puts ""

puts = gets

value7 = rand(9)
value8 = rand(6..7)
value9 = rand(9)

puts "-------------------"
puts "|#{value1}|#{value4}|#{value7}|"
puts "|#{value2}|#{value5}|#{value8}|"
puts "|#{value3}|#{value6}|#{value9}|"
puts ""

puts = gets

    if (value1 == value4) && (value4 == value7) || (value2 == value5) && (value5 == value8) || (value3 == value6) && (value6 == value9)
     puts "----------------------------------------"
     puts "スロットの値が揃いました！"
     point = point + 100
     puts "100ポイント獲得！"
     puts "合計ポイント数: #{point}ポイント"
     coin = coin - coins[coin_choice]
    #  puts "#{coin}コイン獲得！"
     puts "残り枚数 #{coin}枚"
    else
     puts "----------------------------------------"
     puts "残念！！どこも揃いませんでした。"
     coin = coin - coins[coin_choice]
     puts "残り枚数 #{coin}枚"
    end
end