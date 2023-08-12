public class TestController04 {

    private final Account acct;

    public TestController04(ApexPages.StandardController stdController) {
        this.acct = (Account)stdController.getRecord();
    }
public String save() {
    return null;
}
    public String getGreeting() {
        return 'Hello ' + acct.name + ' (' + acct.id + ')';
    }
}