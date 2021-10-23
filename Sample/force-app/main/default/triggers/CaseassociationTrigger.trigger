trigger CaseassociationTrigger on Case (before insert,before update)
{
    
 if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
 {
     for(case cs: trigger.new)
     {
         
         if(cs.accountid==null)
             cs.AddError('Add Account Record');
         
         else if(cs.contactid==null)
             cs.AddError('Add contact Record');
     }
 }    
}