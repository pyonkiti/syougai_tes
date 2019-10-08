# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

4.times do 
    Syougai.create(
    :jichitai_cd => '100',
    :jigyou_cd => '1',
    :naiyou => '内容',
    :jisyou => '事象',
    :syochi => '処置',
    :biko => '備考',
    :enduser => '米原市',
    :motouke => '元請け',
    :syubetu_kbn => '通常',
    :hosyu_kbn => '年間保守',
    :renraku_d => '2019-08-20',
    :renraku_t => '13:01:02',
    :syanai => '2.50',
    :genchi_d => '2019-08-20',
    :genchi_t => '13:01:02',
    :sagyou_d => '2019-08-20',
    :sagyou_t => '13:01:02',
    :sagyoukei => '5.00',
    :idou => '3.00',
    :taiou1_cd => '1',
    :taiou2_cd => '2',
    :taiou3_cd => '3'
)
end



