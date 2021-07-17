class Theme < ActiveHash::Base
  self.data = [
    { id: 1, name: 'テーマ' },
    { id: 2, name: 'The Best Mountain ' },
    { id: 3, name: 'これが俺の山ごはん' },
    { id: 4, name: 'Mountain Wear' },
    { id: 5, name: 'これを見たら行きたくなる絶景スポット' }
  ]

  include ActiveHash::Associations
  has_many :tweets
end