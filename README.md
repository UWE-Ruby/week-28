## Consuming an API

Often times your application will need to retrieve data from other sources.
While most services are already *gemified*, there are times when you will be
blazing new trails or simply interested in creating your own client (You know your implementation would be better).

### Exercise

This week we are going to create a tool that will consume an existing API.

#### Goal

Create a simple client, library that allows you to iterate through the public 
Github gists.

```bash
$ irb
```

```ruby
require './lib/gister.rb'

Gister.public_gists # => [ Gist<Gist#1213145>, Gist<Gist#1213122> ]

Gister.public_gists.each do |gist|
  # grab the code from each gist ...
end
```

### Retrospective

* What did you find easier than you had initially imagined?
  
* What did you find more difficult?

* What method did you choose to request the data?

* How adaptable is your implementation to changing the request method?

* How adaptable is your implementation to URL scheme changes? 
  version changes?

* What method did you choose to parse the data?

* How adaptable is your implementation to changes?

### Further Exercise

#### Expanding on Your Success

* Using your client that you created, use that data to make an evaluation about
  the gist.

**Hater Bot** - able to pull down ruby examples and crush the souls of those 
that created them one gist at a time.

> Hater's going to hate! ... and I hate:
>
>  line lengths over 80, any issues found
>  by _Reek_, spelling errors in your comments, ...

#### HTTP Libraries

* Choose a different implementation method (e.g. open-uri, httparty, or faraday)

* Develop an implementation that would allow you to use either implementation

#### Different Modeling

* Choose a different implementation method (e.g. Classes, OpenStruct, Mash)

#### URLs and Versioning

* Implement helper methods that are similar to what you use in Rails 
(e.g. `public_gists_url`).

* Create an implementation that would allow you to switch out how the helper
  methods map to the real urls
  
  > For example:
  >
  > Version 1 `public_gists_url` might return `/public_gists`
  >
  > Version 3 `public_gists_url` might return `/gists/public`

#### How'd they do it

* Compare your implementation to another implementation 
  [https://github.com/pengwynn/octokit](https://github.com/pengwynn/octokit)
  
> Now that you have some context about the API and an initial implementation.
  Stop and reflect on another implementation and see how they chose to solve the
  problem.
