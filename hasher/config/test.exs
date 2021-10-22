import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hasher, HasherWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "+tbjMaDIdCF1DeAMl7ylrIgRtY9tO3JdNaJ8p9U5D41YW+Z1FoFHrhBuQXED2b1O",
  server: false

# In test we don't send emails.
config :hasher, Hasher.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
