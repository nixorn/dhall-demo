let types = ./types.dhall
in
{ instances =
  [ { hostname = "penelopa"
    , role = types.Role.ProductServer
      { postgresHost = "gefest" }
    , enabled = True
    }
  , { hostname = "alkyne"
    , role = types.Role.ProductServer
      { postgresHost = "gefest" }
    , enabled = False
    }
  , { hostname = "odysseys"
    , role = types.Role.Nginx
      { configPath = "/etc/nginx/nginx.conf"
      , productServerHost = "penelopa"
      }
    , enabled = True
    }
  , { hostname = "kalipso"
    , role = types.Role.Postgres
      { user = "admin"
      , database = "admin"
      , password = "admin"
      , port = 5432
      }
    , enabled = True
    }
  ] : List types.Instance
}
