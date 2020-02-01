let oldTypes = ../v1/types.dhall
let types = ./types.dhall
let prev_version = ../v1/config.dhall
let map = ../prelude/map.dhall
let migrate : oldTypes.Instance → types.Instance
    = \(old : oldTypes.Instance) → old.{hostname, role} //
      {state = if old.enabled then types.State.Enabled else types.State.Disabled}
in prev_version //
{ instances = map oldTypes.Instance types.Instance migrate prev_version.instances
}
