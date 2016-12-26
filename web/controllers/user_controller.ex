defmodule Hello.UserController do
  use Hello.Web, :controller 

  def index(conn, _params) do
    users = Repo.all(Hello.User)
    render conn, "index.html", users: users
  end
end