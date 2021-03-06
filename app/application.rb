class Application
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        resp.write req.path
        resp.write greeting
        resp.finish
    end

    def greeting
        Time.now.hour.to_i < 12 ? "Good Morning!" : "Good Afternoon!"
    end

end
