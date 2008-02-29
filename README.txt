=== README

== Usage

gem 'miter'
require 'miter'

Miter::Base.auth(user, token)

Miter::Projects.find(:all)
Miter::Tasks.find(:first)
Miter::Customers.find(:all, :params => { ... })
