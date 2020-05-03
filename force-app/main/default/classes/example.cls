public with sharing class example {

    @TestVisible
    private DAOCommand accountByIdDAO;
    private DAOCommand accountByStateDAO;

    public void doSomethingWithById(String accountId) {

        if (accountByIdDAO == null) {
            accountByIdDAO = new AccountDAOCommands.SelectById(accountId);
        }

        DAOSelection selectionResult = DAOSelectRecords.execute(accountByIdDAO);
        System.debug(selectionResult.recordList());
        System.debug(selectionResult.recordMap());
        System.debug(selectionResult.filter('AccountNumber', 'abc'));

    }

    public void doSomethingWithByState(String state) {
        if (accountByStateDAO == null) {
            accountByStateDAO = new AccountDAOCommands.SelectByBillingState(state);
        }

        DAOSelection selectionResult = DAOSelectRecords.execute(accountByStateDAO);
        System.debug(selectionResult.recordList());
        System.debug(selectionResult.recordMap());

        for (Account a : (List<Account>) selectionResult.recordList()) {
            System.debug(a);
        }
    }
}