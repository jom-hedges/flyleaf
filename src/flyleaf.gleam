import gleam/dynamic
import gleam/int
import gleam/list
import gleam/result
import gleam/string
import gleam/uri.{type Uri}
import lustre
import lustre/attribute
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/element/html
import lustre/event
import lustre/ui
import lustre/ui/layout/cluster
import lustre/ui/util/cn
import modem

// MAIN -----------------------------------------------------------------------

pub fn main() { 
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre,start(app, "#app", Nil)
}

// MODEL ----------------------------------------------------------------------

type Model {
    Model(current_route: Route, guests: List(Guest), new_guest_name: String)
}

type Route {
  Home
  About
  Welcome(value: String)
}

type Guest {
  Guest(slug: String, name: String)
}

fn init(_flags) -> #(Model, Effect(Msg)) {
  #(
    Model(
      current_route: Home,
      guests: [
        Guest(slug: "your", name:"reader"),
        Guest(slug: "anonymous", name:"viewer"),
      ],
      new_guest_name: "",
    ),
    modem.init(on_route_change),
  )
}

