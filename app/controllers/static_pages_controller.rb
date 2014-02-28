class StaticPagesController < ApplicationController

  def home
    render layout: false
  end
  
  def entrepreneur
    @entrepage = true
  end

  def foodie
    @foodpage = true
  end

  def photographer
    @photopage = true
    @favimages = ["Natural Environments", "Urban Playgrounds", "Human Expressions"]
    @seriesimages = ["The Deep South", "The Stars Reply", "Reflections in Yosemite"]
  end

    def urban
      @photopage = true
      @gallerypage = true
    end

    def people
      @photopage = true
      @gallerypage = true
    end

    def nature
      @photopage = true
      @gallerypage = true
    end

    def sigphi
      @photopage = true
      @gallerypage = true
    end

    def antarctica
      @photopage = true
      @gallerypage = true
      @test = 72157640607666844
      gon.test = @test
    end

    def services
      @photopage = true
      @gallerypage = true
      @images = {
        "UC Berkeley Engagement" => "72157640765167734", 
        "Crissy Field Vacation Shots" => "72157640763199093", 
        "City Hall Marriage" => "72157640763032343", 
        "UC Berkeley Engagement (2)" => "72157640764173323", 
        "Downtown SF Headshots" => "72157640763289263", 
        "San Francisco Engagement" => "72157640760546905", 
        "SF & Berkeley Engagement" => "72157640761489075", 
        "Palace of Fine Arts Engagement" => "72157640761383585", 
        "Palace of Fine Arts Photoshoot" => "72157640764253653", 
        "Engagement Party" => "72157640764682524"
      }
      gon.images = @images
    end

    def yosemite
      @photopage = true
      @gallerypage = true
    end

      def faq
        @photopage = true
      end

end
