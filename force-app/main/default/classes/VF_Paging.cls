public class VF_Paging {
// 1ページあたりの表示件数
    private static final Integer PAGE_SIZE = 10;
    // 現在選択中のページ
    public Integer currentPage {get; private set;}
    // ページ数
    public Integer totalPage {get; private set;}
    // ページング用StandardSetController
    private ApexPages.StandardSetController ssController;

    // 前へボタンが有効か
    public Boolean getEnablePrev(){
        return ssController.getHasPrevious();
    }

    // 次へボタンが有効か
    public Boolean getEnableNext(){
        return ssController.getHasNext();
    }

    // コンストラクタ
    public VF_Paging(){
    }

    public PageReference init() {
        // ページング対象のリストをStandardSetControllerに入れる
        ssController = new ApexPages.StandardSetController([SELECT Id, Name FROM Account]);
        currentPage = ssController.getPageNumber();
        ssController.setPageSize(PAGE_SIZE);

        // ページの総数を計算
        // レコード数 / ページサイズで計算、小数部分は切り上げ
        totalPage = (Integer)Math.ceil((Decimal)ssController.getResultSize() / PAGE_SIZE);
        return null;
    }

    // 次へボタンクリックアクション
    public void next() {
        ssController.next();
        currentPage = ssController.getPageNumber();
    }

    // 前へボタンクリックアクション
    public void prev() {
        ssController.previous();
        currentPage = ssController.getPageNumber();
    }

    // 現ページのレコードを取得
    public List<Account> getAccountList(){
        return (List<Account>)ssController.getRecords();
    }
}