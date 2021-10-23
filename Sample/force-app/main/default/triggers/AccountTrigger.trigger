trigger AccountTrigger on Account (before insert) 
{
  if(trigger.isbefore && trigger.isinsert)
  {
      for(account acc:trigger.new)
      {
          if(acc.active__c !='yes' )
              acc.active__c.AddError('Please Make sure that account status as Yes..');
      }
  }
}