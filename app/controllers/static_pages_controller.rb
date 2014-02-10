class StaticPagesController < ApplicationController

  def home
    render layout: false
  end
  
  def entrepreneur
  end

  def foodie
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
    end

    def portrait
      @photopage = true
      @gallerypage = true
    end

    def yosemite
      @photopage = true
      @gallerypage = true
    end

    def services
      @photopage = true
      @gallerypage = true
      @images = ["UC Berkeley Engagement", 
        "Crissy Field Vacation Shots", 
        "City Hall Marriage", 
        "UC Berkeley Engagement (2)", 
        "Downtown SF Headshots", 
        "San Francisco Engagement", 
        "SF & Berkeley Engagement", 
        "Palace of Fine Arts Engagement", 
        "Palace of Fine Arts Photoshoot", 
        "Engagement Party"]
    end

      def faq
        @photopage = true
      end

end
