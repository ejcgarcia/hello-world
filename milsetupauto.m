%main
total_cases = 31; 
failure = 0;
j = 1;

for i = 1:total_cases

   %initvalues
   %constants?
   Charge_Current_MIN = [0 5];
   Battery_SoC_MAX = [0 95];
   Battery_Temp_MAX = [0 45];
   Battery_Temp_MIN = [0 -5];
   
   Charge_Charger_Plugged_In = [0 0];
   Charge_Connector_Recognised = [0 0];
   Vehicle_Ignition_Status = [0 0];
   Vehicle_Speed = [0 0];
   Vehicle_Parking_Brake = [0 0];
   Battery_SoC = [0 0];
   Battery_Temp = [0 0];
   
   Charge_Current = [0 0];
   Charge_Interruption_Limit = [0 10];
   Charge_Interruptions_Count = [0 0];
   Battery_Warnings = [0 0];
   Battery_Chargings = [0 0];
   %end initvalues
    
   %current = 'modica1';
   current = horzcat('modica',num2str(j)); %run test case
   run(current); 
   
   if exp_output == 1
       display(numcase) %%sns = numcase, prueba
   end
   if failure~=0
       break
   end
   j=j+1;
end

if failure == 0
    display('Complete Success')
else
    display(horzcat('Failed case ', num2str(failure)));
end

exit;
