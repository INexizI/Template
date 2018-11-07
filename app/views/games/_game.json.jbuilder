json.extract! game, :id, :title, :description, :poster, :release, :genre, :studio, :created_at, :updated_at
json.url game_url(game, format: :json)
