trigger ContactTrigger on Contact (before insert,before update)
{
  if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
  {
      for(contact con:trigger.new)
      {
          if(con.email == null || con.email=='')
              con.Email.AddError('please enter the Email ID');
      }
  }
    
}