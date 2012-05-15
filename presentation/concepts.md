!SLIDE

# Concepts

!SLIDE quote

## Gist API v3

http://developer.github.com/v3/gists

!SLIDE commandline incremental

```bash
$ curl https://api.github.com/gists
[
  {
    "url": "https://api.github.com/gists/2702112",
    "updated_at": "2012-05-15T14:18:24Z",
    "comments": 0,
    "public": true,
    ...
  }
]
```

!SLIDE quote

## Making HTTP Requests

!SLIDE quote

## `exec`, `system`, `backticks` or `%x()`

```ruby
exec "curl https://api.github.com/gists"

`curl https://api.github.com/gists`

%x(curl https://api.github.com/gists)

system "curl https://api.github.com/gists"
```

!SLIDE quote

## More Details

http://tech.natemurray.com/2007/03/ruby-shell-commands.html

!SLIDE quote

## Open URI

```ruby
require 'open-uri'

response = open "https://api.github.com/gists"
response_data # => #<StringIO:0x007ffe53806f70>

response_string = response.read
response_string # => "{\"html_url .... \"}"
```

!SLIDE quote

## Faraday

```ruby
# Gemfile
gem 'faraday'
```

```ruby
require 'faraday'

connection = Faraday.new :url => "https://api.github.com/"
response = connection.get "/gists"
response_string = response.body
```

!SLIDE quote

## httparty

```ruby
# Gemfile
gem 'httparty'
```

```ruby
require 'httparty'

response = HTTParty.get "https://api.github.com/gists"
response_string = response.body
```

!SLIDE

## Handling the Response

!SLIDE

## JSON

```ruby
require 'json'

response_string = "{ "url" : "https://api.github.com/gists/2702112" }"

parsed_data = JSON.parse(response_string)
parsed_data.class # => Hash
```

!SLIDE quote

## XML

> Ask me about __HappyMapper__ (afterwords)

!SLIDE

## Parsing the Response

!SLIDE

## Open Struct

```ruby
require 'ostruct'

response = OpenStruct.new parsed_data

response.url
```

!SLIDE

## [Hashie](https://github.com/intridea/hashie/tree/1-1-stable)

```ruby
# Gemfile
gem 'hashie'
```

```ruby
require 'hashie'
gist = Hashie::Mash.new parsed_data

gist.url         # => "https://api.github.com/gists/1"
gist.description # => "description of gist"
gist.user.login  # => "octocat"
```

!SLIDE

## DITY Initialize

```ruby

class Gist
  
  attr_accessor :url
  attr_accessor :description
  attr_accessor :user

  def initialize(params = {})
    
    params.each do |key,value|
      send("#{key}=",value) if respond_to? "#{key}="
    end
  end

end

```

!SLIDE

## Immutable (Read Only)

```ruby

class Gist
  
  attr_reader :url
  attr_reader :description
  attr_reader :user

  def initialize(params = {})
    
    params.each do |key,value|
      instance_variable_set("@#{key}",value) if respond_to? key
    end
  end

end

```
