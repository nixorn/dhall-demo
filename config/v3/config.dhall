let oldTypes = ../v2/types.dhall
let types = ./types.dhall
let prev_version = ../v2/config.dhall
in prev_version //
{ schedule =
  [ { task = types.Task.Shell
      { hostname = "penelopa"
      , user     = "root"
      , command  = "rm -rf /tmp/*"
      }
    , periodicity = types.Periodicity.Once
      { year = 2019
      , month = 11
      , day = 23
      , hour = 0
      , minute = 0
      , second = 0
      }
    }
  , { task = types.Task.Reboot
      { hostname = "alkyne" }
    , periodicity = types.Periodicity.Daily
      { hour = 0
      , minute = 0
      , second = 0
      }
    }
  ] : List types.Schedule
}
