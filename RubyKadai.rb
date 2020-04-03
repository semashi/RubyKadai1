# Q1. 次の配列の最後に "斎藤" を追加し，出力して下さい。
names = ["田中", "佐藤", "佐々木", "高橋"]
names << "斎藤"
p names

# Q2. 次の二つの配列を合体させた新しい配列 array を作成し，出力して下さい。
array1 = %w(dog cat fish)
array2 = %w(bird bat tiger)
array = array1+array2
p array

# Q3. 次の配列の中に 3 がいくつあるかを出力するコードを書き，出力して下さい。
numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
p numbers.count(3)

# Q4. 次の配列から nil の要素を削除し，出力して下さい。（新しい配列を作成せずに実現して下さい）
sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
sports.delete(nil)
p sports

# Q5. 配列が空であれば true，1つ以上の要素があれば false を出力するコードを書いて下さい。
a = [ ]
p a.empty?

# Q6. 次の配列から，期待された結果の配列 numbers2 を作成し，出力して下さい。
numbers1 = [1, 2, 3, 4, 5]
mapped = numbers1.map do |n|
  n*10
end
p mapped

# Q7. 次の配列の要素を 文字列 から 数字 に変換し，出力して下さい。（新しい配列を作成せずに実現して下さい）
array = ["1", "2", "3", "4", "5"]
p array.map(&:to_i)

# Q8. 期待する出力結果になるようにコードを書き加えて下さい。
programming_languages = %w(ruby php python javascript)
programming_languages  = programming_languages.map{
  |item| item.capitalize
}
upper_case_programming_languages  = programming_languages.map{
  |item| item.upcase
}

p programming_languages
p upper_case_programming_languages

# Q9. 次の配列を用いて，期待通りの出力結果になるようにコードを書いて下さい。
names = ["田中", "佐藤", "佐々木", "高橋"]

names.each.with_index(1) do |name,i|
  puts "会員No.#{i} #{name}さん"
end

# Q10. 次の配列の各要素について， うに という文字列が含まれていれば「好物です」と表示し，そうでなければ「まぁまぁ好きです」と出力するコードを書いて下さい。
foods = %w(いか たこ うに　しゃけ ぎり うに軍艦 うに丼)

uni = foods.select{|food| food.include?("うに")}
if uni.empty?
  puts 'まぁまぁ好きです'
else
  puts '好物です'
end

# # Q11. 次の配列を用いて，期待する出力結果になるようにコードを書いて下さい。
sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

sports.flatten!
sports.uniq!

puts"ユーザーの趣味一覧" 
sports.each.with_index(1) do |sport,i|
  puts "No#{i} #{sport}"
end

# Q12. 次のハッシュから name の値を出力して下さい。
data = { user: { name: "satou", age: 33 } }
p data.dig(:user,:name)

# Q13. 次の user_data に，update_data の内容を反映させ，user_data の内容を書き換え，出力して下さい。
user_data = { name: "神里", age: 31, address: "埼玉" }
update_data = { age: 32, address: "沖縄" }
new_data = user_data.merge!(update_data)
p new_data

# Q14. 次の配列から全てのキーを取り出した配列を作成し，出力して下さい。
data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }
p data.keys

# Q15. age というキーが含まれている場合は OK ，含まれていない場合は NG という文字列が出力されるコードを書いて下さい。
data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
if data1.key?(:age)
  p "OK"
else
  p "NG"
end

data2 = { name: "yamada", hobby: "baseball", role: "normal" }
if data2.key?(:age)
  p "OK"
else
  p "NG"
end

# Q16. 次の配列の各要素について，「私の名前は〜です。年齢は〜歳です。」と表示して下さい。
users = [
  { name: "satou", age: 22 },
  { name: "yamada", age: 12 },
  { name: "takahashi", age: 32 },
  { name: "nakamura", age: 41 }
]

name_age = users.each{|user|
  puts  "「私の名前は#{user.fetch(:name)}です。年齢は#{user.fetch(:age)}歳です。」"
}

#  Q17. 次の Userクラス 内にコードを追加し，期待する出力結果になるようにして下さい。

class User
  def initialize(name:,age:,gender:,admin:)
    @name = name
    @age = age
    @gender = gender
    @admin = admin
    if @admin == true
      @admin = "有り"
    else
      @admin = "無し"
    end
  end

  def info
    puts "名前:#{@name}"
    puts "年齢:#{@age}"
    puts "性別:#{@gender}"
    puts "管理者権限:#{@admin}"
  end
  
end

user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
user2 = User.new(name: "あじー", age: 32, gender: "男", admin: false)

user1.info
puts "-------------"
user2.info

# Q18. 年齢を用いた場合分けを利用して，期待する出力結果になるようなUserクラスを作成して下さい。

class User
  def initialize(name:,age:)
    @name = name
    @age = age
  end

  def introduce
    if @age == 32
      return "こんにちは#{@name}と申します。宜しくお願いいたします。  "
    else
      return "はいさいまいど〜,#{@name}です!!!"
    end
  end
end

user1 = User.new(name: "あじー", age: 32)
user2 = User.new(name: "ゆたぼん", age: 10)

puts user1.introduce
puts user2.introduce

# Q19. 次のコードはエラーが出ます。期待する出力結果となるようにコードを修正して下さい。
class Item
  def initialize(name:)
    @name = name
  end

  def name
    return @name
  end
end

book = Item.new(name: "ゼロ秒思考")
puts book.name

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