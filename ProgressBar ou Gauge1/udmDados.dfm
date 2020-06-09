object dmDados: TdmDados
  OldCreateOrder = False
  Height = 129
  Width = 391
  object sqlconn: TFDConnection
    Params.Strings = (
      'Database=C:\Base teste\Teste.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object QueryCliente: TFDQuery
    Connection = sqlconn
    SQL.Strings = (
      'select * from cliente')
    Left = 152
    Top = 32
  end
  object dsCliente: TDataSource
    DataSet = QueryCliente
    Left = 224
    Top = 32
  end
end
