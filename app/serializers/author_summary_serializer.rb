class AuthorSummarySerializer < ActiveModel::Serializer
  attributes :summary

  def summary
    short_content = self.posts.map { |post| post.content }
    title = self.posts.map { |post| post.title }
    tags = self.posts.map { |post| post.tags}
   
    
    "#{title} - #{short_content[0..49]}..."
    "#{tags}"
   
       
     end
   
end
