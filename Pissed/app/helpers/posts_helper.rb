module PostsHelper

  def comment_distance(comment,n)
    if comment.in_reply.nil?
      return n
    end
    return comment_distance(comment.in_reply,n+1)
  end

end
