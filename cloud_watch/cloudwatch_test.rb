require_relative 'query'

Query.new do
  elb           "my-app-server"
  regions       :us_east_1, :us_west_1
  metrics       :request_count, :other_metric
  units         :count
  aggregation   :sum
  start_time    Time.now
  period        1
end