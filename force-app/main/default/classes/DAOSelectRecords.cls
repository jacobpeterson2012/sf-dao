public with sharing class DAOSelectRecords {

    public static DAOSelection execute(DAOCommand cmd) {
        try {
            //log request - user, command etc.
            List<SObject> records = cmd.execute();
            DAOSelection result = new DAOSelection(records);
            return result;
        } catch (Exception ex) {
            //log error
            //throw exception
        } finally {
            //flush
        }
        return null; //remove later
    }
}
