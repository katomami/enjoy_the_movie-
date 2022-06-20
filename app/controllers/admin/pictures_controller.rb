class Admin::PicturesController < ApplicationController
  def search
    @pictures = []
    @title = params[:title]
    if @title.present?
      results = RakutenWebService::Books::DVD.search(
        title: @title,
      )
      results.each do |result|
        picture = Picture.new(read(result))
        @pictures << picture
      end
    end
    @pictures.each do |picture|
      unless Picture.all.include?(picture)
        picture.save
      end
    end
    if @pictures.present?
      @pictures = Kaminari.paginate_array(@pictures).page(params[:page]).per(1)
    end
  end

  def index
    @pictures = Picture.all.page(params[:page]).per(7)
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to admin_pictures_path
  end

  private

  def read(result)
    title = result["title"]
    jan = result["jan"]
    image_url = result["mediumImageUrl"].gsub('?_ex=120x120', '')
    caption = result["itemCaption"]
    {
      title: title,
      jan: jan,
      image_url: image_url,
      caption: caption,
    }
  end

  def picture_params
    params.require(:picture).permit(:caption, :jan, :title, :image_url)
  end
end
