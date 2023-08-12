@isTest(SeeAllData=true)
public class testEmailMissionSpecialist {
    @isTest
    static void test(){
        EmailMissionSpecialist em = new EmailMissionSpecialist();
        em.sendMail('wjncet@gmail.com', 'Email-Subject', 'Email-Body');
       // system.assertEquals('22', '22');
       em.test();
    }
    
    
}