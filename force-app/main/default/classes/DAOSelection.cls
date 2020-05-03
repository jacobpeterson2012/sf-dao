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

    public Set<Id> idToSet() {
        Set<Id> ids = new Set<Id>();
        for (Id i : this.results.keySet()) {
            ids.add(i);
        }
        return ids;
    }

    public DAOSelection(Map<Id, SObject> results) {
        this.results = results;
    }
}
