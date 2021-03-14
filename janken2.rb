def janken  
  
    puts "じゃんけん..."
    puts "0:(グー) 1:(チョキ) 2:(パー) 3:(戦わない)"
    
    
    my_hand = gets.to_i
    
    enemy_hand = rand(2)
    
    jankens = ["グー", "チョキ", "パー","出さない"]
    
    puts "ホイ！"
    puts "--------------------------------------------------------------"
    puts "わたしの手:#{jankens[my_hand]}, あいての手:#{jankens[enemy_hand]}"

      
      if my_hand<3
         
    
        if (my_hand == enemy_hand) || my_hand == '3'
           
          puts 'あいこです'
          puts "--------------------------------------------------------------"
          return true
          
        
        elsif (my_hand == 0 && enemy_hand == 1) || (my_hand == 1 && enemy_hand == 2) ||(my_hand == 2 && enemy_hand == 0)
          puts 'じゃんけんは、あなたの勝ちです。'
          puts "--------------------------------------------------------------"
          puts win_pattern
          
          
        elsif (my_hand == 0 && enemy_hand == 2) || (my_hand == 1 && enemy_hand == 0) ||(my_hand == 2 && enemy_hand == 1)
          puts 'じゃんけんは、あなたの負けです。'
          puts "--------------------------------------------------------------"
          puts lose_pattern
          
        end
        
        return true
        
      else
      puts "0か1か2を選択してください"
      end
end

def win_pattern
  
  puts ""
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  
  my_finger = gets.to_i
  
  enemy_face = rand(3)
  
  faces = ["上","下","左","右"]
  
    puts "ショッ！"
    puts "--------------------------------------------------------------"
    puts "わたしの指:#{faces[my_finger]}, あいての顔:#{faces[enemy_face]}"

  if my_finger == enemy_face
    puts "あなたの勝ちです"
  else
    puts "もう1回"
  end
end

def lose_pattern
  
  puts ""
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  
  my_faces = gets.to_i
  
  enemy_finger = rand(3)
  
  faces = ["上","下","左","右"]
  
    puts "ショッ！"
    puts "--------------------------------------------------------------"
    puts "わたしの顔:#{faces[my_faces]}, あいての指:#{faces[enemy_finger]}"

  if my_faces == enemy_finger
    puts "あなたの負けです"
  else
    puts "もう1回"
  end
end


next_game = true

while next_game do
  next_game = janken
end