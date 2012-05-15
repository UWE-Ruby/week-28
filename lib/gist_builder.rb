
module Gister

  module GistBuilder
    extend self

    def gist(hash)
      user = user hash.delete('user')
      files = files hash.delete('files')
      Gist.new hash.merge(:user => user, :files => files)
    end

    def user(hash)
      User.new hash
    end
    
    def files(hash)
      []
    end
  end

end