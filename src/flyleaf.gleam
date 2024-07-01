import gleam/erlang/process
import mist
import wisp
import flyleaf/router

pub fn main() {
  wisp.configure_logger()

  let secret_key_base = wisp.random_string(64)

  let assert OK(_) =
    wisp.mist_handler(router.handle_request, secret_key_base)
    |> mist.new()
    |> mist.port(8000)
    |> mist.start_http(b

  process.sleep_forever()
}
