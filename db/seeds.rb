# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Tag.create([
  { name: '家族' },
  { name: '友人' },
  { name: '恋人' },
  { name: '学校や仕事の関係者' },
  { name: '誕生日' },
  { name: 'お祝い' },
  { name: 'お礼' },
  { name: 'お土産' },
  { name: 'イベント' },
  { name: '謝罪' },
  { name: '季節の挨拶' },
  { name: '女性宛て' },
  { name: '男性宛て' },
  { name: 'その他の方宛て' }
])