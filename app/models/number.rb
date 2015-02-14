class Number < ActiveRecord::Base
  belongs_to :twillio
  enum request_method: {get: 0, post: 1}
  REQUEST_METHOD_LABELS = {
    "GET" => :get,
    "POST" => :post
  }
end
