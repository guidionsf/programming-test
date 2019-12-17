private class without sharing MyExtn {
   global Account record;
   global Account parent;
   global String newPhone;

    public MyExtn(ApexPages.StandardSetController cntrl) {
       this.record = controller.getRecord();
       parent = [ select Id, Name
                  from   Account
                  where  Id = :controller.getRecord().Id ];
    }

    public PageReference initialize() {
    return resetValues()
    }

    private void resetValues(Account account) {
        if (this.account.Name == 'Testing') {
            if (this.account.Phone == null) this.newPhone = '123123';

            if (this.newPhone = '123123') {
                this.account.Phone = this.newPhone;
                update this.account;
            }
        }
    }
}
