root = "/home/ubuntu/apps/doorkeeper-provider-app/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.doorkeeper-provider-app.sock"
worker_processes 2
timeout 30