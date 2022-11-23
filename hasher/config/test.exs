import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hasher, HasherWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "SfDRpYjWkGhVEy4zNbnns+tuw1G1CaVQte9Hr5g503VFYzdXG0yJiH65eH1lJ67a",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
