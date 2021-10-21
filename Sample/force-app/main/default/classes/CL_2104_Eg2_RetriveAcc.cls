public class CL_2104_Eg2_RetriveAcc 
{
@AuraEnabled
    public static Account retriveaccount()
    {
        Account acc=[select id,name,phone,industry,rating from Account limit 1];
        Return acc;
    }
}