require_relative 'query'

class CloudWatchClient
  include MergeData

  def initialize
    # authenticate with CloudWatch's api
  end

  def stats(&block)
    # generate query parameters (heart of our DSL)
    queries = Query.new

    # make cloudwatch api request(s)
    get_stats(queries)
    
    # merge the regional data from MergeData module
    merge_date(results)
  end

  private
  def get_stats
    # make necessary requests to CloudWatch's api
  end
end