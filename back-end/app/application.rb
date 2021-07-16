require 'pry'
require 'json'

class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/test/) 

      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "response success"}.to_json ]]

    elsif req.path.match(/tasks/)
      
      return [200, {'Content-Type' => 'application/json'}, [{data: Task.all}.to_json]]
    else
      resp.write "Path Not Found"

    end

    resp.finish
  end

end
