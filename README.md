# HoneyShroom 🍄‍

An ActivityPub abstraction targeting elixir applications.

Named after the Honey Mushroom (Armillaria Ostoyae) known for being the largest living organism.

### Goals of this project:
- [ ] Create an otp application that is used as the core engine for implementing the ActivityPub protocol
- [ ] Create route helpers that can be added to an exsiting phoenix / plug application
- [ ] Create mechanisms for reconciling data
- [ ] Create mechanisms for addressing scale
- [ ] Create supervision for addressing fault tolearance
- [ ] Create strict encapsolation of abstraction to aid with future changes and maintenance
- [ ] Create high levels of testing to ensure quality and guard against regresions
- [ ] Create clear and conscide documentation to aid adoption

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `honey_shroom` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:honey_shroom, "~> 0.0.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/honey_shroom>.
