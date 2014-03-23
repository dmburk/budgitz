root = "/home/rails/budgitz"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.budgitz.sock"
worker_processes 2
timeout 30

# Force the bundler gemfile environment variable timeout
# reference the capistrano "current" symlink
before_exec do |_|
  ENC["BUNDLE_GEMFILE"] = File.join(root, 'Gemfile')
end