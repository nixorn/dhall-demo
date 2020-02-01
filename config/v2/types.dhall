let oldTypes = ../v1/types.dhall
let State = ./types/state.dhall
in oldTypes //
{ State = ./types/state.dhall
, Instance =  {hostname : Text, role : oldTypes.Role, state : State}
}
