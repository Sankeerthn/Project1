public class CL_2004_Eg1_AccCreateSobject
{
    @AuraEnabled
    public static string CallAccount(Account acc)
    {
        string Result;
        Try
        {
            insert acc;
            Result='Insertion Successfull' +acc.id;
        }
        Catch(exception e)
        {
            Result='Insertion Failed' +e.getMessage();
        }
        Return Result;
    }
}