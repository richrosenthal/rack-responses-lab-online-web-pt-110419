class Application
 
  def call(env)
    resp = Rack::Response.new
 
    this_moment = Time.new 
    if this_moment.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end