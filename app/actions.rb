def humanized_time_ago(minute_num)
  if minute_num >= 60
    "#{minute_num / 60} hours ago"
  else
    "#{minute_num} minutes ago"
  end
end

get '/' do
  @jackie_wants_to_go_to_kz = {
    username: "jackie_wants_to_go_to_kz",
    avatar_url: "https://borgenproject.org/wp-content/uploads/24265027988_9a8af42209_k-1-530x353.jpg",
    photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKRtlX7XoEyxmV1EcLFZr5MISFj9g1xQ-JsgmJvXGd0S8I5HyRzqSRDc1iVnV8IOclwQo&usqp=CAU",
    humanized_time_ago: humanized_time_ago(15),
    like_count: 0,
    comment_count: 1,
    comments: [{
      username: "jackie_wants_to_go_to_kz",
      text: "Doesn't this picture look nice?"
    }]
  }

  @raph_wants_to_go_to_jp = {
    username: "raph_wants_to_go_to_jp",
    avatar_url: "https://www.state.gov/wp-content/uploads/2019/04/Japan-2107x1406.jpg",
    humanized_time_ago: humanized_time_ago(65),
    like_count: 0,
    comment_count: 1,
    comments: [{
      username: "raph_wants_to_go_to_jp",
      text: "Busy streets of Tokyo!"
    }]
  }

  @jo_wants_to_go_to_nz = {
    username: "jo_wants_to_go_to_nz",
    avatar_url: "https://lp-cms-production.imgix.net/2023-02/GettyImages-1172642617.jpg?auto=format&w=1440&h=810&fit=crop&q=75",
    humanized_time_ago: humanized_time_ago(190),
    like_count: 0,
    comment_count: 1,
    comments: [{
      username: "jo_wants_to_go_to_nz",
      text: "I'm going to New Zealand on Monday -- super excited! Look at these sheep!"
    }]
  }

  @finstagram_posts = [@jackie_wants_to_go_to_kz, @raph_wants_to_go_to_jp, @jo_wants_to_go_to_nz].to_s

  erb(:index)
end