with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure Flight_Controller is
   Current_Altitude : Float := 0.0;
   Goal_Altitude    : Float := 1000.0;
   Current_Pitch    : Float := 0.0;
   Altitude_Step    : Float := 0.5;


   procedure Update_Altitude is
   begin
      Current_Altitude := Current_Altitude + Altitude_Step;
      if Current_Altitude > Goal_Altitude then
         Current_Altitude := Goal_Altitude;
      end if;

      Current_Pitch := Current_Pitch + Altitude_Step;
   end Update_Altitude;

begin

   Ada.Text_IO.Put_Line("Enter current altitude (meters):");
   Ada.Float_Text_IO.Get(Item => Current_Altitude);

   Ada.Text_IO.Put_Line("Enter goal altitude (meters):");
   Ada.Float_Text_IO.Get(Item => Goal_Altitude);


   loop

      Update_Altitude;


      Ada.Text_IO.Put_Line("Current Altitude: " & Float'Image(Current_Altitude));
      Ada.Text_IO.Put_Line("Current Pitch: " & Float'Image(Current_Pitch));


      if Current_Altitude >= Goal_Altitude then
         Ada.Text_IO.Put_Line("Goal altitude reached.");
         exit;  -- Exit the loop
      end if;


      delay 3.0;
   end loop;
end Flight_Controller;
