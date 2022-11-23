import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rng, RngWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "KO+RGc54xpU8DQye+7d8idi7dWS6tBhQXG5/RPwriHXR1qDlsNixxGWbuVk/rF6w",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
