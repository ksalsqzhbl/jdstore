# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.email = "ksalsqzhbl@aliyun.com"           # 可以改成自己的 email

u.password = "123456"                # 最少要六码

u.password_confirmation = "123456"   # 最少要六码

u.is_admin = true
u.save

puts "1 admin created"

categories_name = ["instruments", "books","online", "offline"]

create_categories = for i in 1..4 do
Category.create!([name: categories_name[i - 1]])
end

puts"4 categories created"

products_title = ["古琴－普通款", "古琴－专家级","钢弦", "丝弦","琴桌","琴凳","琴鉴","琴套"]
products_description = ["谨循古训，斫木成器，琴匠之道，尽物之性。职业化音色，演奏级别，每一张琴都经我们的老师挑选，检验，请放心购买。有混沌式、仲尼式、蕉叶式，款式随机发。",
  "琴音圆润，古清静透，经斫琴师筛选，并由我们的老师鉴定，具有一定收藏价值。", "常规练习和演奏，结实耐用，无需养护。",
   "丝木之音，更合琴音、琴德，是钢弦无法比拟的，但需要养护，耐用度不如钢弦，建议有一定基础的爱好者使用。",
   "长120cm，宽40cm，高70cm，桐木材质，有共振效果，使音量、音色更稳定。","长43cm，宽30cm，高48cm，杉木材质。",
   "沙袋式古琴垫，半沙版，成对出售，于雁足及琴轸内侧各放置一个，可修正古琴雁足不平，特别是解决老琴变形放不平的问题，同时消除不谐震动，出音颗粒感更好更实，让你听到更真实的古琴声音。","外出随身携带古琴时使用，做工精细，内加缓冲垫，结实耐用。"]
products_quantity = [10,2,100,10,30,30,100,10]
products_price = [3000,20000,200,3000,200,100,20,50]

create_products = for i in 1..8 do
Product.create!([title: products_title[i - 1],
 description: products_description[i - 1],
 quantity: products_quantity[i - 1],
 price: products_price[i - 1],
 category_id: 1])
end

puts "8 products created."

products_title = ["琴学备要", "神奇秘谱","梅庵琴谱", "松弦馆琴谱"]
products_description = ["顾梅羹著，推荐入门爱好者购买，线上课及线下课都将围绕此书开展。",
  "《神奇秘谱》是明太祖之子朱权编纂的古琴谱集，成书于明初洪熙乙巳(公元1425年)，是现存最早的琴曲专集。书中所收六十四首琴曲是编者从当时『琴谱数家所裁者千有馀曲』中精选出来的，以《神奇秘谱》中保存的古代音乐作品史料价值最高。",
  "《梅庵琴谱》的前身是《龙吟观琴谱》，《龙吟观琴谱》是古琴大师王宾鲁（字燕卿）先生未完成之遗梅庵琴谱的写作，后经其弟子徐立孙重新整改修订，并易其名为《梅庵琴谱》。",
  "《松弦馆琴谱》在严澂主持下编订成集。是《四库全书》收录的唯一明代琴谱。原书刻于明万历甲寅，原板藏在常熟严家。因遭明末兵燹，“极阙其半”，严澂之孙严炳，于清顺治丙申间“简家藏原稿，手录锁阙，订成全书”（文见上海及南京图书馆所藏善本《松弦馆琴谱》中的严炳跋文）。《松弦馆琴谱》从1614年初版到1656年曾多次再版，一度被琴界奉为正宗。"]
products_quantity = [100,30,20,10]
products_price = [100,300,200,300]

create_products = for i in 1..4 do
Product.create!([title: products_title[i - 1],
 description: products_description[i - 1],
 quantity: products_quantity[i - 1],
 price: products_price[i - 1],
 category_id: 2])
end

puts "4 products created."

products_title = ["古琴常识介绍", "古琴入门课","古琴初级课", "古琴入门小套路"]
products_description = ["本课简单介绍古琴的历史演变过程、文化内涵、流派；古琴结构、斫琴过程、古琴指谱；著名琴曲、琴家等。",
  "介绍古琴上弦、调弦及基本指法，结合简单的练习曲教会大家识谱。提供在线指导、答疑服务，通过线上沟通反馈大大提高学习效率，较普通视频课教学效果更优。提供在线指导、答疑服务，通过线上沟通反馈大大提高学习效率，较普通视频课教学效果更优。",
  "通过一些简单琴曲的教学，进一步巩固基本功跟常见指谱，并结合一些特殊的指谱增加指法难度。提供在线指导、答疑服务，通过线上沟通反馈大大提高学习效率，较普通视频课教学效果更优。",
  "推荐购买，介绍快速掌握入门技巧的学习方法，并指导在入门后如何学习中高难度的琴曲"]
products_quantity = [1,1,1,1]
products_price = [1,800,1200,600]

create_products = for i in 1..4 do
Product.create!([title: products_title[i - 1],
 description: products_description[i - 1],
 quantity: products_quantity[i - 1],
 price: products_price[i - 1],
 category_id: 3])
end

puts "4 products created."

products_title = ["古琴入门", "古琴初级课程","古琴中级课程", "高难琴曲教学"]
products_description = ["介绍古琴上弦、调弦及基本指法，结合简单的练习曲教会大家识谱。不定期请古琴名家现场讲课指导，可参加雅集活动。",
  "通过一些简单琴曲的教学，进一步巩固基本功跟常见指谱，并结合一些特殊的指谱增加指法难度。不定期请古琴名家现场讲课指导，可参加雅集活动。",
  "中等难度琴曲教学，同时指导自学琴曲的技巧。不定期请古琴名家现场讲课指导，可参加雅集活动。",
  "高难度琴曲教学，不定期请古琴名家现场讲课指导，可参加雅集活动。"]
products_quantity = [1,1,1,1]
products_price = [1000,1500,2500,4000]

create_products = for i in 1..4 do
Product.create!([title: products_title[i - 1],
 description: products_description[i - 1],
 quantity: products_quantity[i - 1],
 price: products_price[i - 1],
 category_id: 4])
end

puts "4 products created."
