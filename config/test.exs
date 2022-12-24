import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :uauth, UauthWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "DfU7+ZLFSoQ3GaZ/UZFKXQ4Zfu86fqm6cUsyCI52YFcXbrJlMubXsQmZAlj3sBCN",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
