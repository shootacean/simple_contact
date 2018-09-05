# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :simple_contact,
  ecto_repos: [SimpleContact.Repo]

# Configures the endpoint
config :simple_contact, SimpleContact.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "y2gwl5+MI9BTUJtWXGDGok9ZSHv9v2Ze0buC5o1himgnzIz0a61qe2+/SUVzA78l",
  render_errors: [view: SimpleContact.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SimpleContact.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
