object DMGlobalConn: TDMGlobalConn
  OnCreate = DataModuleCreate
  Height = 187
  Width = 279
  object Conn: TADOConnection
    CommandTimeout = 5
    ConnectionTimeout = 5
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 112
    Top = 64
  end
end
