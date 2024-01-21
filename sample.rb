while true
  puts "実施したい処理を選択してください"
  puts "1:評価ポイントとコメントを入力する"
  puts "2:今までの結果を確認する"
  puts "3:やめる"
  num = gets.to_i

def input_valuation_point
  puts "1から5で評価を入力してください"
  point = gets.to_i

  loop do
    if point <= 0 || point > 5
      puts "1から5で入力してください"
      point = gets.to_i
    else
      break
    end
  end

  puts "コメントを入力してください"
  comment = gets

  post = "ポイント：#{point}　コメント：#{comment}"
  File.open("data.txt", "a") do |file|
    file.puts(post)
  end
end

def output_results
  puts "これまでの結果"
  File.open("data.txt", "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
end

  case num
  when 1
    input_valuation_point
  when 2
    output_results
  when 3
    puts "終了します"
    break
  else
    puts "1から3で入力してください"
  end
end