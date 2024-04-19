class CompanyNameGenerator < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    name = Faker::Company.name
    bs = Faker::Company.bs
    <<-HTML
      <!DOCTYPE html> 
      <html>
        <body>
          <h1>#{name}</h1>
          <h2>#{bs}</h2>
        </body>
      </html>
    HTML
  end
end
