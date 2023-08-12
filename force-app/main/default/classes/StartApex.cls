public virtual   class StartApex {
    public List<Account> getAccountListForLimit50() {
        integer w=0;
        system.debug(System.LoggingLevel.INFO,'121212');
		List<sObject > rtnList = new List<sObject >();
		rtnList = [SELECT ID,Name,Description FROM Account Limit 50];
        return rtnList;
    }
    public void updFax(ID paramId) {
        Account actObj = [SELECT ID,Name,NumberOfEmployees,Description FROM Account WHERE ID = :paramId];
        if (actObj.NumberOfEmployees == 0) {
        	actObj.Description = '従業員数：0人';
    	}
        update actObj;
    }
}