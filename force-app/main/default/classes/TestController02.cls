public class TestController02 {

    public String fileName {get; set;}
    public String header {get; set;}
    public transient List<List<String>> receivedDataList {get; set;}

    public void init(){

        //改行記号
        String rn = '\r\n';

        //パラメータを取得
        ID optId = ApexPages.currentPage().getParameters().get('optId');

        //CSVデータリスト
        receivedDataList = new List<List<String>>();

        fileName = '取引先CSV出力' + String.valueOf(Date.today()).substring(0,10);

        //ヘッドを取得
        header = '取引先ID,取引先名,種別,所有者' + rn;

        //取引先データを取得
        String strSql = 'SELECT Id,Name,Type,Owner.Alias FROM Account';
        List<Account> actList = Database.query(strSql);

        List<String> reDataList = new List<String> ();
        for (Account act : actList) {
            List<String> dataList = new List<String> ();
            dataList.add(act.Id);
            dataList.add(act.Name);
            dataList.add(act.Type);
            dataList.add(act.Owner.Alias);
            reDataList.add('"' + String.join(dataList,'","') + '"');
        }

        //CSVデータを作成する
        if (reDataList != null && !reDataList.isEmpty()) {
            //CSV用データを作成する
            for(String reData : reDataList){
                List<String> dataList = new List<String>();
                dataList.add(reData + rn);
                receivedDataList.add(dataList);
            }
        }
    }
}