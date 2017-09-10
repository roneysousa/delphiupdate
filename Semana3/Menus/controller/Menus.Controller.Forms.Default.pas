unit Menus.Controller.Forms.Default;

interface

type
  TControllerFormsDefault = class
    class procedure CreateForm(ClassName : String);
  end;

implementation

uses
  FMX.Types, System.Classes, FMX.Forms, System.SysUtils;

{ TControllerFormsDefault }

class procedure TControllerFormsDefault.CreateForm(ClassName: String);
var
    objFMX : TFMXObjectClass;
    newForm: TCustomForm;
begin
     objFMX := TFmxObjectClass( GetClass(ClassName));
     try
          newForm := (objFMX.Create(nil) as TCustomForm);
          try
               newForm.ShowModal;
          finally
               newForm.free;
          end;
     except
        raise Exception.Create('Objeto não existe');
     end;
end;

end.
