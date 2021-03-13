class Profession < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '自営業' },
    { id: 3, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :users

end