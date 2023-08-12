public class TestController01 {
    String[] checkbox = new String[]{};
    String radio = null;
    String[] selectlist = new String[]{};
  String selectlist2 = 'blue';
    Account act01 = [select id,name,phone,type,Tradestyle,SicDesc,DunsNumber from Account limit 1];
    String inputString { get; set; }

    public PageReference test() {
        return null;
    }

 public void init() {
        Id id = ApexPages.currentPage().getParameters().get('id');
 }

    public List<SelectOption> getCheckboxItems() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('Checkbox01','Checkbox01'));
        options.add(new SelectOption('Checkbox02','Checkbox01'));
        options.add(new SelectOption('Checkbox03','Checkbox03'));

        return options;
    }

    public List<SelectOption> getRadioItems() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('Radio01','Radio01'));
        options.add(new SelectOption('Radio02','Radio02'));
        options.add(new SelectOption('Radio03','Radio03'));
        return options;
    }

    public List<SelectOption> getSelectlistItems() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('Selectlist01','Selectlist01'));
        options.add(new SelectOption('Selectlist02','Selectlist02'));
        options.add(new SelectOption('Selectlist03','Selectlist03'));
        return options;
    }

    public String[] getCheckbox() {
        return checkbox;
    }

    public void setCheckbox(String[] checkbox) {
        this.checkbox = checkbox;
    }

    public String getRadio() {
        return radio;
    }

    public void setRadio(String radio) {
        this.radio = radio;
    }

    public String[] getSelectlist() {
        return selectlist;
    }

    public void setSelectlist(String[] selectlist) {
        this.selectlist = selectlist;
    }

    public String getSelectlist2() {
        return selectlist2;
    }

    public void setSelectlist2(String selectlist2) {
        this.selectlist2 = selectlist2;
    }

    public Account getAccount01() {
        return act01;
    }

    public void setAccount01(Account act01) {
        this.act01 = act01;
    }
}