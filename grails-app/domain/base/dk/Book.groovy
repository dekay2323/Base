package base.dk

class Book {
    String name
    Author author
    
    static constraints = {
        name nullable: false, blank: false
        name nullable: true, blank: true
    }

    @Override
    public String toString() {
        "${name}"
    }
}
