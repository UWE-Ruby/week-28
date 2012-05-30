!SLIDE

# Further Exercise

!SLIDE quote

## Hater Bot

Able to pull down ruby examples and crush the souls of those that created them
one gist at a time.

> Hater's going to hate! ... and I hate:
>
>  line lengths over 80, any issues found
  by _Reek_, spelling errors in your comments, ...

!SLIDE quote

Choose a different implementation method (e.g. open-uri, httparty, or faraday)

Develop an implementation that would allow you to use either implementation

!SLIDE

## URL Versioning

* Implement helper methods that are similar to what you use in Rails 
(e.g. `public_gists_url`).

!SLIDE quote

* Create an implementation that would allow you to switch out how the helper
  methods map to the real urls

### V1

`public_gists_url` = `/public_gists`

### V3

`public_gists_url` = `/gists/public`

!SLIDE

## How'd they do it

* Compare your implementation to another implementation 
  [https://github.com/pengwynn/octokit](https://github.com/pengwynn/octokit)
  
    > Now that you have some context about the API and an initial 
      implementation.
      Stop and reflect on another implementation and see how they chose to solve 
      the problem.
