Monologue.config do |config|
  config.site_name = "James Dong"
  config.site_subtitle = "Earning my stripes as an entrepreneur"
  config.site_url = "http://www.jamesdong.com"

  config.meta_description = "Personal site about my start-up journey, and my other life's passions, photography, food, traveling, etc."
  config.meta_keyword = "entrepreneurship, james dong, sharing economy, photography"

  config.admin_force_ssl = false
  config.posts_per_page = 10

  config.disqus_shortname = "jamesdong"

  # LOCALE
  config.twitter_locale = "en" # "fr"
  config.facebook_like_locale = "en_US" # "fr_CA"
  #config.google_plusone_locale = "en"

  # config.layout               = "layouts/application"

  # ANALYTICS
  # config.gauge_analytics_site_id = "YOUR COGE FROM GAUG.ES"
  config.google_analytics_id = 'UA-47062117-2'

  config.sidebar = ["latest_posts", "latest_tweets", "categories", "tag_cloud"]


  #SOCIAL
  config.twitter_username = "bsemaj"
  config.facebook_url = "https://www.facebook.com/profile.php?id=1242224"
  config.facebook_logo = 'logo.png'
  #config.google_plus_account_url = "https://plus.google.com/u/1/115273180419164295760/posts"
  config.linkedin_url = "http://www.linkedin.com/in/jmzbond"
  #config.github_username = "jmzbond"
  config.show_rss_icon = true

end

#Monologue::PageCache.enabled = true, says uninitialized constant Monologue, because cache support removed in master branch