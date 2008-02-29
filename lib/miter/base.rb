require 'rubygems'

gem 'activeresource'
require 'active_resource'

require 'miter/active_resource_fix'

module Miter
  
  class Base < ActiveResource::Base

    def self.auth(user, token)
      user, token = CGI.escape(user), CGI.escape(token)
      self.site =  "http://#{user}:#{token}@appmite.de/api/"
    end    

  end

  class Project < Base; end
  class Tasks < Base; end
  class Customers < Base; end

end
