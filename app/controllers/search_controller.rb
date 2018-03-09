class SearchController < ApplicationController
  def index
    utype = params[:ptype]
    keyword = params[:keyword]

    @articles = Posta.limit(5)
    @videos = Postc.limit(1)

    if utype == '0'
      @results = Teacher.where("name like ?","%#{keyword}%")
    elsif utype == '1'
      @results =  Student.where("name like ?","%#{keyword}%")
    end

  end

  def danwei
    utype = params[:ptype]
    keyword = params[:keyword]

    @articles = Posta.limit(5)
    @videos = Postc.limit(1)
    @results = Orgnization.where("name like ?","%#{keyword}%")
  end

  def quanzhan
    utype = params[:ptype]
    @keyword = params[:keyword]

    @resultas = Posta.where("title like ?","%#{@keyword}%")
    @resultbs = Postb.where("title like ?","%#{@keyword}%")
    @resultcs = Postc.where("title like ?","%#{@keyword}%")
    @resultds = Postd.where("title like ?","%#{@keyword}%")
    @results = Mingjia.where("title like ?","%#{@keyword}%")

    @articles = Posta.limit(5)
    @videos = Postc.limit(1)

  end
end
