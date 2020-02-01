< Postgres :
  { user : Text
  , database : Text
  , password : Text
  , port : Natural
  }
| Nginx :
  { configPath : Text
  , productServerHost : Text
  }
| ProductServer :
  { postgresHost : Text
  }
>
