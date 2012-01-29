# Producteev Api

A Ruby wrapper for the Producteev REST API 
## Ruby >=1.9.2 is needed!

Supports all the API methods. If i have missed any let me know. More information on the API can be found at http://code.google.com/p/producteev-api/wiki/methodsDescriptions#Summary

I need to write some tests i know, but if you feel like doing it just raise a merge request. 
## Installation

Install the gem by issuing

```ruby
gem install producteev
```

or put it in your Gemfile and run `bundle install`

```ruby
gem "producteev"
```

## Usage

Create a new client instance

```ruby
require 'rubygems'
require 'producteev'

#no debug
producteevclient = Producteev.new("api_key_from_producteev","api_secret_from_producteev")
#debug
producteevclient = Producteev.new("api_key_from_producteev","api_secret_from_producteev",true)
```

Login in as a user

```ruby
client1 = producteevclient.login("username","password")
client2 =  producteevclient.login("username1","password1")
```

Get the server time

```ruby
client1.time
```

Get as list of tasks

```ruby
client1.tasks.show_list
client2.tasks.show_list({:page=>1})
```

Get as list of lables

```ruby
client1.labels.show_list
client2.labels.show_list({:page=>1})
```

Dashboards, users and activities can also be used in the same way. Please note all httparty exceptions you will have to deal with. All function calls return a hash.



