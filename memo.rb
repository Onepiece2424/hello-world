require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

# //続きを書いていきましょう！！(ifで条件分岐)

if memo_type == 1
    
    puts "拡張子を除いたファイルを入力してください"
    
    file_name = gets.chomp.to_s
    
    puts "メモしたい内容を入力してください"
    puts "入力したらEnterを1回押してください"
    
    CSV.open("#{file_name} .csv", "w") do |csv|
        memo_content = gets.chomp.to_s
        csv << ["#{memo_content}"]
    end

elsif memo_type == 2
    
    puts "編集したいファイルを入力してください"
    
    edit_name = gets.chomp.to_s
    
    puts "追加したい内容を入力してください"
    puts "入力したらEnterを1回押してください"

    CSV.open("#{edit_name} .csv", "a" ) do |csv|
        edit_content = gets.chomp.to_s
        csv << ["#{edit_content}"]
    end
    
else
    puts "再度入力してください。"
end
