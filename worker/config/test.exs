import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :worker, WorkerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "6vjT86mxD7fnAoZEypiLOgDbW0aDAEM9wXuGABDo59Zp4GN2vTsV8mA79AONW7xs",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
