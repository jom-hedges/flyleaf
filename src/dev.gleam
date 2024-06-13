import flyleaf
import tailwind

fn run_tailwind() {
  [
    "--config=tailwind.config.js", "--input=./src/css/app.css",
    "--output=./priv/static/css/app.css",
  ]
  |> tailwind.run()
}

pub fn main() {
  let assert Ok(_) = run_tailwind()

  flyleaf.main()
}
