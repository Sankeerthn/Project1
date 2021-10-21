public class CL_0104_eg1_CreateAccount 
{
    @AuraEnabled
public static string Createacc(string nm,string ph,string ind,string rat)
{
 string result;
    try
    {
        Account A=new Account();
        A.Name=nm;
        A.Phone=ph;
        A.Industry=ind;
        A.Rating=rat;
        
        insert A;
        result='Insertion successfull id:'+A.Id;
    }
    catch(exception e)
    {
        result='Insertion failed error:'+e.getMessage();
    }
    return result;    
}
}