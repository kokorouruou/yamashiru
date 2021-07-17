class ClimbingTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '登山時間' },
    { id: 2, name: '2:00' },
    { id: 3, name: '2:30' },
    { id: 4, name: '3:00' },
    { id: 5, name: '3:30' },
    { id: 6, name: '4:00' },
    { id: 7, name: '4:30' },
    { id: 8, name: '5:00' },
    { id: 9, name: '5:30' },
    { id: 10, name: '6:00' },
    { id: 11, name: '6:30' },
    { id: 12, name: '7:00' },
    { id: 13, name: '7:30' },
    { id: 14, name: '8:00' }
  ]

  include ActiveHash::Associations
  has_many :tweets
end