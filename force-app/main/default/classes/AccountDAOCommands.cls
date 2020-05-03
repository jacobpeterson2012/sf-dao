public with sharing class AccountDAOCommands {

    public class SelectById implements DAOCommand {
        public String id;

        public SelectById() {
        }

        public SelectById(String id) {
            this.id = id;
        }

        public List<SObject> execute() {
            return [SELECT id, Name
                    FROM Account
                    WHERE id =: this.id
                    ];
        }
    }

    public class SelectByBillingState implements DAOCommand {
        public String billingState;

        public SelectByBillingState() {
        }

        public SelectByBillingState(String billingState) {
            this.billingState = billingState;
        }

        public List<SObject> execute() {
            return [SELECT id, Name
                    FROM Account
                    WHERE BillingState =: this.billingState
                    ];
        }
    }
}
