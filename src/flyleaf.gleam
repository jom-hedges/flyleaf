import gleam/dynamic
import gleam/int
import gleam/list
import lustre
import lustre/attribute
import lustre/effect
import lustre/element
import lustre/element/html
import lustre/event
import lustre_http
import lustre/ui

pub fn main() 
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre,start(app, "#app", Nil)

  Nil
}
