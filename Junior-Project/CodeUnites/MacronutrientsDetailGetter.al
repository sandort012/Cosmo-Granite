codeunit 50100 MacronutrientDetailGetter
{
    [EventSubscriber(ObjectType::Page, Database::NutritionLine, 'OnInsertRecordEvent', '', true, true)]
    local procedure MacronutrientsDetails(var Rec: Record NutritionHeader)
    begin
        if Rec."No." = MacronutrientRecord."No." then begin
            Rec.Get(MacronutrientRecord.Carbohydrate);
            Rec.Get(MacronutrientRecord.Description);
            Rec.Get(MacronutrientRecord.Fat);
            Rec.Get(MacronutrientRecord.Protein);
            Rec.Get(MacronutrientRecord.Kcal);
            Rec.Get(MacronutrientRecord.KJ);
        end;
    end;

    var
        MacronutrientRecord: Record MacroNutrients;
}