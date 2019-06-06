# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Image.delete_all
Image.reset_pk_sequence
Image.create([

                 {name: 'Grace', file: 'grace.jpg', theme_id: 2},
                 {name: 'Hollywood', file: 'HollywoodLC.jpg', theme_id: 2},
                 {name: 'The Lord of the Rings', file: 'rabstol_net_black_and_white_12.jpg', theme_id: 3},
                 {name: 'Eat', file: 'image2.jpg', theme_id: 4},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

                 {name: "-----"},      # 1 Нет темы
                 {name: "Какое из произведений художника О.Ренуара наилучшим образом характеризует его творчество?"},      # 2
                 {name: "Какое из произведений художника П.Пикассо наилучшим образом характеризует его творчество?"},      # 3
                 {name: "Какое из произведений художника А.Матисса наилучшим образом характеризует его творчество?"},      # 4
             ])

    User.delete_all
User.reset_pk_sequence
User.create([

                {name: "Example User", email: "example@railstutorial.org"},
            ])
