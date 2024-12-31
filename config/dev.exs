import Config

config :ex_money,
  auto_start_exchange_rate_service: false,
  open_exchange_rates_app_id: {:system, "OPEN_EXCHANGE_RATES_APP_ID"},
  exchange_rates_retrieve_every: 300_000,
  callback_module: Money.ExchangeRates.Callback,
  # preload_historic_rates: {~D[2017-01-01], ~D[2017-01-02]},
  log_failure: :warning,
  log_info: :info,
  log_success: :info,
  # json_library: Jason,
  exchange_rates_cache: Money.ExchangeRates.Cache.Dets,
  default_cldr_backend: Money.Cldr

config :ex_cldr,
  default_backend: Money.Cldr
