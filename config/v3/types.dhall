let oldTypes = ../v2/types.dhall
in oldTypes //
{ Schedule    = ./types/schedule.dhall
, Task        = ./types/task.dhall
, Periodicity = ./types/periodicity.dhall
}
