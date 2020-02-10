class Application
 
  def call(env)
    resp = Rack::Response.new
 
    this_moment = Time.new 
    if this_moment.hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
 
    resp.finish
  end
 
end