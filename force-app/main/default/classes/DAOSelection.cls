public with sharing class DAOSelection {
    private Map<Id, SObject> results;

    public DAOSelection(List<SObject> records) {
        this.results = new Map<Id, SObject>(records);
    }

    public List<SObject> recordList() {
        return results.values();
    }

    public Map<Id, SObject> recordMap() {
        return results;
    }

    public Set<Id> ids() {
        return this.results.keySet();
    }

    public List<SObject> filter(String fieldName, Object filterValue) {
        List<SObject> results = new List<SObject>();

        for (SObject o : this.results.values()){
            if (o.get(fieldName) == filterValue) {
                results.add(o);
            }
        }

        return results;
    }

    public DAOSelection(Map<Id, SObject> results) {
        this.results = results;
    }
}