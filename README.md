# Producteev Api

A Ruby wrapper for the Producteev REST API 

Supports all the API methods. If i have missed any let me know. 

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
producteevclient.login("username","password")
```

Get the server time
```ruby
producteevclient.time
```

Get as list of tasks
```ruby
producteevclient.tasks.show_list
```

Get as list of lables
```ruby
producteevclient.labels.show_list
```

Dashboards, users and activities can also be used in the same way. Please note all httparty exceptions you will have to deal with. All function calls return a hash.



