module StaticPagesHelper

  def movie(opts)
    iframe = content_tag(
      :iframe,
      '', # empty body
      width: 640,
      height: 390,
      src: "https://www.youtube.com/embed/#{opts[:movie_id]}?autoplay=1",
      frameborder: 0,
      allowfullscreen: true,
    )
    content_tag(:div, iframe, class: 'youtube-container')
  end

=begin Amazon-associate

# views に
# <%= amazon_affiliate(affiliate_id: 'B00RTSCMXY') %>
# ってかくと呼び出せる

  def amazon_affiliate(opts)
    iframe = content_tag(
      :iframe,
      '', # empty body
      width: 320,
      height: 390,
      src: "http://rcm-fe.amazon-adsystem.com/e/cm?lt1=_blank&bc1=FFFFFF&IS2=1&bg1=FFFFFF&fc1=000000&lc1=0000FF&t=stskc-22&o=9&p=8&l=as1&m=amazon&f=ifr&ref=qf_sp_asin_til&asins=#{opts[:affiliate_id]}",
      frameborder: 0,
      allowfullscreen: true,
    )
    content_tag(:div, iframe, class: 'amazon-container')
  end
=end

end
