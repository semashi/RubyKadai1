# # # Q20. 次の仕様を満たした上で，期待する出力結果になるようにコードを追加して下さい。
# # # 年齢区分は，幼児(0〜5歳)，子供(6〜12歳)，成人(13〜64歳)，シニア(65〜120歳)の4パターンとします。（この範囲外の年齢については対処しなくてOKです）
class User
  attr_accessor :name,:age
  def initialize(name:,age:)
    @name = name
    @age = age
  end
end

class Zoo 
  attr_accessor :name,:entry_fee
  def initialize(**params)
    @name = params[:name]
    @entry_fee = params[:entry_fee]
  end
  
  def info_entry_fee(user)
    age = user.age

    case age
    when 0..5 then
      fee = self.entry_fee[:infant]
    when 6..12 then
      fee = self.entry_fee[:children]
    when 13..64 then
      fee = self.entry_fee[:adult]
    else
      fee = self.entry_fee[:senior]
    end

    puts "#{user.name}の入場料金は#{fee}円です。"
  end
    
end
    
zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

users = [
  User.new(name: "たま", age: 3),
  User.new(name: "ゆたぼん", age: 10),
  User.new(name: "あじー", age: 32),
  User.new(name: "ぎん", age: 108)
]

users.each do |user|
  zoo.info_entry_fee(user)
end