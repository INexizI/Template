json.movies do
  json.array!(@games) do |game|
    json.name game.title
    json.url game_path(game)
  end
end

json.directors do
  json.array!(@studios) do |studio|
    json.name studio.name
    json.url studio_path(studio)
  end
end
