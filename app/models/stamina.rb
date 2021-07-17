class Stamina < ActiveHash::Base
  self.data = [
    { id: 1, name: '体力度' },
    { id: 2, name: '★' },
    { id: 3, name: '★★' },
    { id: 4, name: '★★★' }
  ]

  include ActiveHash::Associations
  has_many :tweets
end