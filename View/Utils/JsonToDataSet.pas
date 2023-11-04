unit JsonToDataSet;
 {Alterada por Neto Félix  - 14/07/2020 - 20:44:55}
interface
uses
 System.JSON,Data.DB, System.SysUtils, REST.Response.Adapter;

type
 TJsonToDataSet = class  Helper for TDataSet
 private
 public
function JsonToDataset(aJson:String;aElement:string = ''):TDataSet;
 end;

implementation
{ TJsonToDelphi }


function TJsonToDataSet.JsonToDataset(aJson:String;aElement:string = ''): TDataSet;
var
FobjetoArray : TJSONArray;
FElement     : TJSONArray;
FObjeto      : TJSONObject;
lValidacao   : string;
vConv        : TCustomJSONDataSetAdapter;

begin
  if (aJson = EmptyStr) then
  begin
    Exit;
  end;
  lValidacao    := Copy(aJson,0,1);
  if lValidacao = '[' then
    begin
      FobjetoArray  := System.Json.TJSONObject.ParseJSONValue(aJson) as System.JSON.TJSONArray;
      vConv         := TCustomJSONDataSetAdapter.Create(Nil);

       try
        vConv.Dataset := self;
        vConv.UpdateDataSet(FobjetoArray);
      finally
        vConv.Free;
        FobjetoArray.Free;

      end;
     end

 else
 begin
  if aElement <> '' then
     begin
       FObjeto       := System.Json.TJSONObject.ParseJSONValue(aJson) as System.JSON.TJSONObject;
        FElement      := FObjeto.GetValue(aElement) as TJSONArray;
        vConv         := TCustomJSONDataSetAdapter.Create(Nil);
        try
        vConv.Dataset := self;
        vConv.UpdateDataSet(FElement);
      finally
        vConv.Free;
        FObjeto.Free;

      end;

     end
     else
     begin
   FObjeto := System.Json.TJSONObject.ParseJSONValue(aJson) as System.JSON.TJSONObject;
   vConv   := TCustomJSONDataSetAdapter.Create(Nil);
  try
    vConv.Dataset := self;
    vConv.UpdateDataSet(FObjeto);
  finally
    vConv.Free;
    FObjeto.Free;
  end;

 end;
end;
end;

end.
