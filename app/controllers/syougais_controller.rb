class SyougaisController < ApplicationController
  def index
    @search = Syougai.ransack(params[:q])
    @syougais = @search.result(distinct: true)
                       .order(jichitai_cd: :asc, jigyou_cd: :asc)
                       
  end

  def edit
    @syougai = Syougai.find(params[:id])
  end
  
  def update
    @syougai = Syougai.find(params[:id])
    if @syougai.update(syougai_params)
        respond_to do |f|
            # どっちで記述してもOK
            #redirect_to action: 'index', notice: '更新できました！'
            f.html { redirect_to syougais_path, notice: '更新できました！' }
        end
    else
        redirect_to action: 'edit'
    end
  end

  def new
    @syougai = Syougai.new
  end
  
  def create
    @syougai = Syougai.new(syougai_params)
    if @syougai.save
        redirect_to action: 'index', notice: '登録できました！'
    else
        redirect_to action: 'new'
    end
  end

  def destroy
    @syougai = Syougai.find(params[:id])
    @syougai.destroy
    respond_to do |f|
        f.html { redirect_to syougais_url, notice: '削除できました！' }
    end
  end

  private

  def syougai_params
    params.require(:syougai).permit(:jichitai_cd, 
                                    :jigyou_cd, 
                                    :naiyou, 
                                    :jisyou, 
                                    :syochi, 
                                    :biko, 
                                    :enduser, 
                                    :motouke, 
                                    :syubetu_kbn, 
                                    :hosyu_kbn, 
                                    :renraku_d, 
                                    :renraku_t, 
                                    :syanai, 
                                    :genchi_d, 
                                    :genchi_t, 
                                    :sagyou_d, 
                                    :sagyou_t, 
                                    :sagyoukei, 
                                    :idou, 
                                    :taiou1_cd, 
                                    :taiou2_cd, 
                                    :taiou3_cd)
  end
end
