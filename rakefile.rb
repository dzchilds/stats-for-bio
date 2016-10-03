# Rquire jekyll to compile the site.
require "jekyll"

# Github pages publishing.
namespace :stats_for_bio do
  #
  # Because we are using not using jekyll we have to process the site
  # localy before pushing it to the branch to publish.

  # Usaage:
  # bundle exec rake blog:publish
  desc "Publish course book to gh-pages"
  task :publish do

    # Get the origin to which we are going to push the site.
    origin = `git config --get remote.origin.url`

    # Make a temporary directory for the build before production release.
    # This will be torn down once the task is complete.
    Dir.mktmpdir do |tmp|
      # Copy accross our compiled _site directory.
      cp_r "_book/.", tmp

      # Switch in to the tmp dir.
      Dir.chdir tmp

      # Prepare all the content in the repo for deployment.
      system "git init" # Init the repo.
      system "git add . && git commit -m 'Site updated at #{Time.now.utc}'" # Add and commit all the files.

      # Add the origin remote for the parent repo to the tmp folder.
      system "git remote add origin #{origin}"

      # Push the files to the gh-pages branch, forcing an overwrite.
      system "git push origin master:refs/heads/gh-pages --force"
    end

    # Done.
  end
end
