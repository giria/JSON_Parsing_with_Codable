/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## Custom CodingKeys

Some JSON does not immediately conform to the Decodable protocol so you may have to do some extra work with CodingKeys to may the JSON comply.

*/
import UIKit
let booksJSON = """
[
  {
    "feed": {
      "publisher": "Penguin",
      "country": "ca"
    },
    "entry": [
      {
        "author": "Margaret Atwood",
        "nationality": "Canadian"
      },
      {
        "author": "Dan Brown",
        "nationality": "American"
      }
    ]
  },
  {
    "feed": {
      "publisher": "Penguin",
      "country": "ca"
    },
    "entry": {
      "author": "Pierre Burton",
      "nationality": "Canadian"
    }
  }
]
"""

/*:
 ### Adding Decodable conformance for Property Wrappers
Property wrappers such as @Published, do not conform to codable
 */
class User: Decodable {
    var name = "Aidan Lynch"
    var age = 27
    
}

/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
