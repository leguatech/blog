    require 'rubygems'
    require 'rake'
    require 'rdoc'
    require 'date'
    require 'yaml'
    require 'tmpdir'
    require 'jekyll'
    require 'shellwords'

    desc "Generate blog files"
    task :generate do
      system "bundle exec jekyll build"
    end

    desc "Generate and publish blog to gh-pages"
    task :publish => [:generate] do
      Dir.mktmpdir do |tmp|
        #reset the temp dir
        system "rm -rf /Users/cinlo/Desktop/GitHub/site_built"
        system "mkdir /Users/cinlo/Desktop/GitHub/site_built"
        system "rm -rf /Users/cinlo/Desktop/GitHub/site_dev"
        system "mkdir /Users/cinlo/Desktop/GitHub/site_dev"

        #move into 2 different dir
        system "mv _site /Users/cinlo/Desktop/GitHub/site_built"
        system "mv /Users/cinlo/Desktop/GitHub/leguatech-blog/* /Users/cinlo/Desktop/GitHub/site_dev"

        #checkout gh-pages
        system "git checkout gh-pages"
        system "mv /Users/cinlo/Desktop/GitHub/site_built/_site/* /Users/cinlo/Desktop/GitHub/leguatech-blog"
        message = "Site updated at #{Time.now.utc}"
        system "git add ."
        system "git commit -am #{message.shellescape}"
        system "git push origin gh-pages --force"


        #checkout master
        system "git checkout master -f"
        system "mv /Users/cinlo/Desktop/GitHub/site_dev/ /Users/cinlo/Desktop/GitHub/leguatech-blog"
        system "git add ."
        system "git commit -am #{message.shellescape}"
        system "git push origin"
        system "echo yolo"
      end
    end