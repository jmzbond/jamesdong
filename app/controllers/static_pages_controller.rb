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
    @images = [
  "Acorn squash stuffed with wheat berries, mushrooms, and collard greens; grilled polenta cake with spicy sweet potato puree and cheddar cheese",
  "Almond, dulce de leche, and cheddar sandwich",
  "Baby green salad with carrot, apple, dried salami, and table cheese with a lemon vinaigrette",
  "Beef sausage baked with potato, carrot, Italian peppers, dried carrot top, and homemade sauerkraut",
  "Bell peppers, asparagus, and onion sautee",
  "Cauliflower veloute with lemongrass and coconut oil",
  "Celery stir-fried with garlic and szechuan peppers",
  "Celery, apple, and almond salad with pomegranate vinaigrette",
  "Chilled soba noodles with peanut sauce and scallions",
  "Coconut & lemongrass mixed rice, candied walnuts sauteed with brussel sprouts, green tea roasted kabocha squash",
  "Cucumber and egg saute",
  "Early girl tomatos, padron peppers, and purslane baked with thick slices of bread and ricotta",
  "Eggplant, cucumber, soy sauce sautee; potato, celery, rice vinegar saute; brown rice",
  "Eggplant, tomato, and onion sauteed with soy sauce",
  "Farro, beet green and kidney bean BBQ stew with cheddar and green onion, homemade pickles",
  "Fried egg and cheese sandwich with warm kidney bean and caramelized onion salad",
  "Fried egg, monterey jack cheese, and pickled cucumber sandwich with sriracha",
  "Fried rice with tomatillos, mushrooms, and onions",
  "Green and yellow zucchini squash stir-fried with garlic, kale stems, soy and vinegar sauce",
  "Green beans, mushrooms, and onion saute",
  "Homemade strawberry and pinot jam with cheddar sandwich",
  "Homemade strawberry and pinot noir jam",
  "Kale & kidney bean salad with red onions in a lemon & honey red wine vinaigrette; Oat & adzuki bean porridge",
  "Kale stems and onions with baked egg",
  "Kale, persimmon, almond salad with lime and honey vinaigrette",
  "Kidney and navy bean, kale stem, onion saute with homemade pickles",
  "Kidney bean and celery salad with pomegranate mayonnaise",
  "Lentils, caramelized onions, and poached egg",
  "Lentils, kale and beet greens, onions, with baked rosemary egg",
  "Onion, beet, kale green and tomato baked with bread and cheese",
  "Open-faced omelet with grilled cactus pads and papaya and tamarind salsa",
  "Potato, rosemary, kidney bean soup",
  "Potatoes and beets au gratin with pepper jack cheese and corn meal",
  "Prosciutto wrapped eggs with brie and a blueberry, Zinfandel, caper sauce",
  "Purple kale and navy bean salad with sriracha mayonnaise",
  "Red cabbage and apple slaw with sriracha mayonnaise and almonds",
  "Red cabbage and farro stir fry with tomato and soy sauce",
  "Red cabbage and orange salad, lime soy sauce and sesame oil dressing",
  "Rigatoni with zucchini, onions, beet greens, and ricotta topped with a sunny side up fried egg and padron peppers",
  "Roast chicken breast with tomatoes, zucchini, onions, and sundried tomatoes in a light red wine and oregano sauce with feta cheese",
  "Roasted beets and potatoes, lime vinaigrette",
  "Roasted butternut squash, toasted walnuts, honey-flavored simple syrup",
  "Rosemary beets with onion en papillote",
  "Sauteed chayote squash with almonds and vinegar",
  "Sauteed rainbow chard with olives, pasta with homemade tomato sauce (roma tomatoes and carrot tops)",
  "Shaved butternut squash and fennel salad with lemon vinaigrette and table cheese, toasted bread with lentils and caramelized onion topped with poached egg",
  "Soba noodles with papaya, sauteed tofu and sriracha, fried eggplant and jalapeno, and lime dressing",
  "Soft tofu and cucumber salad with scallions and sesame oil",
  "Sourdough topped with mushroom, kale and beet stem saute, poached egg, and scallion mayonnaise",
  "Spiced cous cous topped with lentils and wilted swiss chard",
  "Spinach and garlic with tomato couscous",
  "Spinach, farro, and onion stirfry with cheese and soy sauce",
  "Split pea soup with onions & collard greens with sesame and rice vinegar",
  "Squash blossoms baked with ricotta, oregano, egg, and a little drizzle of honey; Pugliese bread topped with sauerkraut (homemade!) and carrot slaw and poached egg",
  "Warm cabbage salad with egg, almond, and pomegranate vinaigrette",
  "Warm cabbage salad with mushroom, almond, rosemary, and pink lady apple in a pomegranate balsamic vinaigrette; pasta with homemade spaghetti sauce",
  "Whole wheat pasta salad with zucchini, heirloom tomatos, red bell peppers, purslane, green olives, capers, red onions, feta cheese with a light red wine vinaigrette",
  "Wilted cabbage, navy bean, cheddar in pomegranate vinaigrette",
  "Wintermelon, okra, onion, sweet peppers, and tomatoes in a spicy coconut curry sauce",
  "Yellow split pea and potato soup",
  "Yellow split pea soup with tomato and merlot jam",
  "Zucchini stuffed with quinoa spiced with raisins, cardamom, paprika, cumin, onions, and sweet peppers, topped with ricotta",
  "Zucchini, potato, tomatos baked with scallions, dill, and feta cheese"
  ]
  @images.shuffle!
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
