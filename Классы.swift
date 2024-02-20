class Person{
 
    var name: String
    var age: Int
     
    init(name: String, age: Int){
         
        self.age = age
        self.name = name
    }
}
 
class User : Person{
     
    var username: String
    var password: String
    init(name: String, age: Int, username: String, password: String){
        self.username = username
        self.password = password
        super.init(name: name, age: age)
    }
}

class Admin : User {
    var id : Int
    init(name: String, age: Int, username: String, password: String, id: Int) {
        self.id = id
        super.init(name: name, age: age, username: username, password: password)
    }
}

class House {
    var width : Int
    var height : Int
    
    init (width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    func create () -> Int {
        return width*height
    }
    
    func destroy() -> Void {
        print("Дом уничтожен")
    }
}

class Student {
    var student : [String]
    
    init(student: [String]) {
        self.student = student
    }
    
    func sordBySymbolsADS() -> [String] {
        return student.sorted()
    }
    
    func sordBySymbolsDESC() -> [String] {
        return student.sorted { (str1: String, str2: String) -> Bool in return str1 > str2}
    }
    
    func sordByCountSymbolsADS() -> [String] {
        return student.sorted { (str1: String, str2: String) -> Bool in return str1.count < str2.count}
    }
    
    func sordByCountSymbolsDESC() -> [String] {
        return student.sorted { (str1: String, str2: String) -> Bool in return str1.count > str2.count}
    }
}

struct House {
    var width = 0
    var height = 0
}

// Структуры имеют меньшую функционалность, не поддерживают наследование, это устаревший тип данных, их использование бессмыслено при наличии классов.