# -*- encoding : utf-8 -*-
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
      @title = "Urban Playgrounds"
      galleryinfo
    end

    def people
      @photopage = true
      @title = "Human Expressions"
      galleryinfo
    end

    def nature
      @photopage = true
      @title = "Natural Environments"
      galleryinfo
    end

    def sigphi
      @photopage = true
      @title = "The Stars Reply"
      galleryinfo
    end

    def antarctica
      @photopage = true
      @title = "The Deep South"
      galleryinfo
    end

    def yosemite
      @photopage = true
      @title = "Reflections in Yosemite"
      galleryinfo
    end

    def services
      @photopage = true
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
        "Engagement Party" => "72157640764682524",
        "Hotel Interior Photoshoot" => "72157642934298005"
      }
      gon.images = @images
    end

      def faq
        @photopage = true
      end


  private

  def galleryinfo
    @galleryinfo = {
      "The Deep South" => "I recently went on an expedition to South Georgia, the Falkland Islands, & Antarctica. The entire trip I felt so… big; like a giant whose next step would be a crush. As someone who grew up immersed in environmental sustainability, this reaction surprised me. But it was easy to see why; walking physically among hundreds of thousands of penguins & seals, I could see how much they reacted to my presence from even an Olympic swimming pool's distance away. With these photographs, I wanted to show the faces of those changed forever by decisions we make everyday, from half a planet away.",
      "The Stars Reply" => "The Sigma Phi Society is the nation's oldest continually operating fraternity, yet it is also one of the smallest with only 10 chapters. Once a year, a national convention calls members together. Starting as strangers grasping at threads of commonality, these men leave as brothers woven together by a profound history and identity.",
      "Reflections in Yosemite" => "Photographs that capture the continuously changing dynamic of Yosemite National Park.",
      "Urban Playgrounds" => "A selection of my favorite photographs of cityscapes and the things we build.", 
      "Natural Environments" => "A selection of my favorite photographs of the wild outdoors (with some minor urban or human features!).", 
      "Human Expressions" => "A selection of my favorite photographs of unsuspecting friends and strangers. Here I try to really capture the fleeting masks we're constantly peeking out from behind."
    }
    @galleryset = {
      "The Deep South" => "72157640607666844",
      "The Stars Reply" => "72157640607311854",
      "Reflections in Yosemite" => "72157640607561055",
      "Urban Playgrounds" => "72157640611296255",
      "Natural Environments" => "72157640612568393",
      "Human Expressions" => "72157640610294955"
    }
    gon.galleryset = @galleryset
    gon.title = @title
  end

end
