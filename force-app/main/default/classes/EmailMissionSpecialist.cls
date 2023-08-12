public class EmailMissionSpecialist {  
    
    @TestVisible
    private void test(){
        
    }
        public void sendMailtemplete(){
      List<Account> accounts =[select id,EmailAddress__c from Account where EmailAddress__c in ('wjncetwork@gmail.com','wjnsfdc@gmail.com')];
      // メール送信リスト
      List<Messaging.SingleEmailMessage> sendMailList = new List<Messaging.SingleEmailMessage>();
      for (Account acc : accounts){
        Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
        message.setTargetObjectId(UserInfo.getUserId());
        message.setSaveAsActivity(false);
        message.setBccSender(false); 
        message.setUseSignature(false);
message.setreplyTo('wjncet@gmail.com');
        EmailTemplate emailTemplate = [Select Id,Subject,Description,HtmlValue,DeveloperName,Body from EmailTemplate where developerName = 'PaygentCardExpirationUrl'];
        message.setTemplateID(emailTemplate.Id); 
      //  message.setWhatId(acc.Id);
        message.toAddresses = new String[] {acc.EmailAddress__c};
          
sendMailList.add(message);
      }
      Messaging.SendEmailResult[] results = Messaging.sendEmail(sendMailList);


    }
   // Public method
   public void sendMail(String address, String subject, String body) {
       system.debug('sendMail****');
      // Create an email message object
      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
      String[] toAddresses = new String[] {address};
      mail.setToAddresses(toAddresses);
      mail.setSubject(subject);
      mail.setPlainTextBody(body);
      // Pass this email message to the built-in sendEmail method
      // of the Messaging class
      Messaging.SendEmailResult[] results = Messaging.sendEmail(
                                new Messaging.SingleEmailMessage[] { mail });

      // Call a helper method to inspect the returned results
      inspectResults(results);
   }
   // Helper method
   private static Boolean inspectResults(Messaging.SendEmailResult[] results) {
      Boolean sendResult = true;
      // sendEmail returns an array of result objects.
      // Iterate through the list to inspect results.
      // In this class, the methods send only one email,
      // so we should have only one result.
      for (Messaging.SendEmailResult res : results) {
         if (res.isSuccess()) {
            System.debug('Email sent successfully');
         }
         else {
            sendResult = false;
            System.debug('The following errors occurred: ' + res.getErrors());                 
         }
      }
      return sendResult;
   }
}