#\ -w -p4000
require 'sinatra/base'
require 'rack/rewrite'
require 'rack-livereload'

use Rack::LiveReload

use Rack::Rewrite do
  rewrite %r{/de(.*)}, '$1'
end

# The project root directory
$root = File.expand_path('_site')

class SinatraStaticServer < Sinatra::Base  

  get(/.+/) do
    send_sinatra_file(request.path) { 404 }
  end

  not_found do
    send_sinatra_file('404.html') {"Sorry, I cannot find #{request.path}"}
  end

  def send_sinatra_file(path, &missing_file_block)
    file_path = File.join($root,  path)
    file_path = File.join(file_path, 'index.html') unless file_path =~ /\.[a-z]+$/i  
    File.exist?(file_path) ? send_file(file_path) : missing_file_block.call
  end

end

run SinatraStaticServer
