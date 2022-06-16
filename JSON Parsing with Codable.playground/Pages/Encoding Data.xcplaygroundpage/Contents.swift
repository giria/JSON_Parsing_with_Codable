/*:
 [< Previous](@previous)           [Home](Introduction)

 ## Encoding Data
Encoding data is the opposite of Decoding. In this section we will look at how you can encode your data into JSON

*/
/*:
 ## Basic
 */
import UIKit

struct Person: Decodable {
    var name: String
    var age: Int
    var gender: String
    var partner: String?
    var isEmployed: Bool
}

var people = [
    Person(name: "James", age: 45, gender: "Male", partner: "Emily", isEmployed: true),
    Person(name: "Elizabeth", age: 45, gender: "Other", isEmployed: false)
]

/*:
 ### More Complex Example
 */
struct Family: Decodable {
    enum Gender: String, Decodable {
        case Male, Female, Other
    }
    struct Person: Decodable{
        var name: String
        var age: Int
        var gender: Gender
        var partner: String?
        var isEmployed: Bool
        
    }
    var familyName: String
    var members: [Person]
    
}

let myFamily = Family(familyName: "Smith",
                      members: [
                        Family.Person(name: "James", age: 45, gender: .Male, partner: "Emily", isEmployed: true),
                        Family.Person(name: "Elizabeth", age: 45, gender: .Other, isEmployed: false)
])


/*:
 ### Encoding Dates
 */

struct Event: Decodable {
    var name: String
    var date: Date
    var website: URL
}
let myEvents = [
    Event(name: "Vancouver Envent", date: Date(), website: URL(string: "https://www.vancouverconventioncentre.com")!),
    Event(name: "Los Angelas", date: Date() + 30, website: URL(string: "https://www.staplescenter.com")!)
]

/*:
 ### Encoding with CodingKeys
 */
class User: Decodable, ObservableObject {
    enum CodingKeys: String, CodingKey {
        case name, age_in_years
    }
    @Published var name = "Aidan Lynch"
    var age = 27
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    required init (from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        age = try container.decode(Int.self, forKey: .age_in_years)
    }
}
 
/*:

 [< Previous](@previous)           [Home](Introduction)
 */
