xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Gavin Ching's Journey Blog Posts"
    xml.description "The blog posts from Gavin Ching's blog"
    
    for post in @posts
      xml.item do
        xml.title post.title
        xml.description post.content
        xml.pubDate post.created_at.to_s(:rfc822)
      end
    end
  end
end