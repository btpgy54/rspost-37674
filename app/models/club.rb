class Club < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '英語講座' },
    { id: 3, name: 'オカリナクラブ' },
    { id: 4, name: '合唱クラブ' },
    { id: 5, name: '手芸クラブ' }
  ]

  include ActiveHash::Associations
  has_many :posts
end