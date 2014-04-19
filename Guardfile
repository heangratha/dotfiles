# Guardfile is watching for file changes in the project
# More info at https://github.com/guard/guard#readme

guard :bundler do
  watch("Gemfile")
end

group :testing, halt_on_fail: false do
  cookbook_spec_paths = [ "spec", Dir.glob("site-cookbooks/**/spec/**/*.rb").map { |dir| File.dirname(dir) }].flatten
  guard :rspec, cmd: 'bundle exec rspec', failed_mode: :focus, :spec_paths => cookbook_spec_paths do
    # serverspec
    watch(%r{^spec/(.*)/.+_spec\.rb$})

    # chefspec

    ## Run ALL cookbook tests
    watch('spec/spec_helper.rb') { "spec" }
    watch(%r{^.+/site-cookbooks/(.+)/spec/spec_helper.rb$}) { |m|
      Dir.glob("site-cookbooks/#{m[1]}/spec")
    }

    ## Run ALL tests of the cookbook if we change a ruby file (e.g. matchers.rb)
    watch(%r{^.+/site-cookbooks/(.+)/spec/(.+)/(.+).rb$}) { |m|
      "site-cookbooks/#{m[1]}/spec"
    }

    ## Run tests for a given recipe
    watch(%r{^.+/site-cookbooks/(.+)/recipes/(.+).rb$}) { |m|
      "site-cookbooks/#{m[1]}/spec/recipes/#{m[2]}_spec.rb"
    }
  end

  guard "foodcritic", :cookbook_paths => "site-cookbooks", :all_on_start => false do
    watch(%r{^.+/site-cookbooks/(.+)/.+/(.+)\.rb$}) { |m|
      cookbook_spec_paths.delete_if { |dir| dir.include? "/spec" }
    }
  end
end
