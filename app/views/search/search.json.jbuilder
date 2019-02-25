json.games do
  json.array!(@games) do |game|
    json.name game.title
    json.url game_path(game)
  end
end

json.studios do
  json.array!(@studios) do |studio|
    json.name studio.name
    json.url studio_path(studio)
  end
end

json.news do
  json.array!(@news) do |news|
    json.name news.title
    json.url news_path(news)
  end
end

json.users do
  json.array!(@users) do |user|
    json.name user.username
    json.url user_path(user)
  end
end
