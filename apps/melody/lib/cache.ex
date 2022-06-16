defmodule Melody.Cache do
  use Nebulex.Cache,
    otp_app: :melody,
    adapter: Nebulex.Adapters.Local
end
