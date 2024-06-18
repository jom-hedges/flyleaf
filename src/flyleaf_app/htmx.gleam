import nakai/html/attrs.{type Attrs}

pub fn hx_get(value: String) -> Attr(t) {
  hx("get", value)
}

pub fn hx_post(value: String) -> Attr(t) {
  hx("post", value)
}

pub fn hx_put(value: String) -> Attr(t) {
  hx("put", value)
}

pub fn hx_delete(value: String) -> Attr(t) {
  hx("delete", value)
}

pub fn hx_swap(value: String) -> Attr(t) {
  hx("swap", value)
}

pub fn hx(name: String, value: String) -> Attr(t) {
  attrs.Attr(name: "hx-" <> name, value: value)
}
