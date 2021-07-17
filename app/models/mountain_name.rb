class MountainName < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: '富士山' }, { id: 3, name: '北岳' },
    { id: 4, name: '奥穂高岳' }, { id: 5, name: '間ノ岳' }, { id: 6, name: '槍ヶ岳' },
    { id: 7, name: '荒川岳' }, { id: 8, name: '赤石岳' }, { id: 9, name: '御嶽山' },
    { id: 10, name: '塩見岳' }, { id: 11, name: '仙丈ヶ岳' }, { id: 12, name: '乗鞍岳' },
    { id: 13, name: '立山' }, { id: 14, name: '聖岳' }, { id: 15, name: '剱岳' },
    { id: 16, name: '水晶岳' }, { id: 17, name: '甲斐駒ヶ岳' }, { id: 18, name: '木曽駒ヶ岳' },
    { id: 19, name: '白馬岳' }, { id: 20, name: '薬師岳' }, { id: 21, name: '鷲羽岳' },
    { id: 22, name: '赤岳' }, { id: 23, name: '笠ヶ岳' }, { id: 24, name: '鹿島槍ヶ岳' },
    { id: 25, name: '空木岳' }, { id: 26, name: '常念岳' }, { id: 27, name: '鳳凰山' },
    { id: 28, name: '五竜岳' }, { id: 29, name: '白山' }, { id: 30, name: '金峰山' },
    { id: 31, name: '光岳' }, { id: 32, name: '蓼科山' }, { id: 33, name: '男体山' },
    { id: 34, name: '甲武信ヶ岳' }, { id: 35, name: '火打山' }, { id: 36, name: '焼岳' },
    { id: 37, name: '妙高山' }, { id: 38, name: '燧ヶ岳' }, { id: 39, name: '四阿山' },
    { id: 40, name: '高妻山' }, { id: 41, name: '旭岳' }, { id: 42, name: '瑞牆山' },
    { id: 43, name: '至仏山' }, { id: 44, name: '恵那山 ' }, { id: 45, name: '草津白根山' },
    { id: 46, name: '武尊山' }, { id: 47, name: '苗場山' }, { id: 48, name: '皇海山' },
    { id: 49, name: '平ヶ岳' }, { id: 50, name: 'トムラウシ山' }, { id: 51, name: '会津駒ヶ岳' },
    { id: 52, name: '飯豊山' }, { id: 53, name: '十勝岳' }, { id: 54, name: '大菩薩嶺' },
    { id: 55, name: '幌尻岳' }, { id: 56, name: '岩手山' }, { id: 57, name: '吾妻山' },
    { id: 58, name: '王ヶ頭' }, { id: 59, name: '雲取山' }, { id: 60, name: '越後駒ヶ岳' },
    { id: 61, name: '月山' }, { id: 62, name: '天狗岳' }, { id: 63, name: '石鎚山' },
    { id: 64, name: '巻機山' }, { id: 65, name: '谷川岳' }, { id: 66, name: '雨飾山' },
    { id: 67, name: '剣山' }, { id: 68, name: '宮之浦岳' }, { id: 69, name: '那須岳' },
    { id: 70, name: '八経ヶ岳' }, { id: 71, name: '早池峰山' }, { id: 72, name: '大朝日岳' },
    { id: 73, name: '蔵王山' }, { id: 74, name: '赤城山' }, { id: 75, name: '磐梯山' },
    { id: 76, name: '久住山' }, { id: 77, name: '祖母山' }, { id: 78, name: '大山' },
    { id: 79, name: '両神山' }, { id: 80, name: '利尻山' }, { id: 81, name: '安達太良山' },
    { id: 82, name: '韓国岳' }, { id: 83, name: '日出ヶ岳' }, { id: 84, name: '羅臼岳' },
    { id: 85, name: '岩木山' }, { id: 86, name: '八幡平' }, { id: 87, name: '阿蘇山' },
    { id: 88, name: '八甲田山' }, { id: 89, name: '丹沢山' }, { id: 90, name: '斜里岳' },
    { id: 91, name: '荒島岳' }, { id: 92, name: '雌阿寒岳' }, { id: 93, name: '天城山' },
    { id: 94, name: '伊吹山' }, { id: 95, name: '開聞岳' }, { id: 96, name: '筑波山' },
    { id: 97, name: '浅間山' }
  ]

  include ActiveHash::Associations
  has_many :tweets
end