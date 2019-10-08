class CreateSyougais < ActiveRecord::Migration[5.2]
  def change
    create_table :syougais do |t|
      t.integer :jichitai_cd
      t.integer :jigyou_cd
      t.text :naiyou
      t.text :jisyou
      t.text :syochi
      t.text :biko
      t.string :enduser
      t.string :motouke
      t.string :syubetu_kbn
      t.string :hosyu_kbn
      t.date :renraku_d
      t.time :renraku_t
      t.float :syanai
      t.date :genchi_d
      t.time :genchi_t
      t.date :sagyou_d
      t.time :sagyou_t
      t.float :sagyoukei
      t.float :idou
      t.integer :taiou1_cd
      t.integer :taiou2_cd
      t.integer :taiou3_cd

      t.timestamps
    end
  end
end
