class MountainView < ActiveHash::Base
  self.data = [
    { id: 1, name: '眺望度' },
    { id: 2, name: '★' },
    { id: 3, name: '★★' },
    { id: 4, name: '★★★' }
  ]

  include ActiveHash::Associations
  has_many :tweets
end