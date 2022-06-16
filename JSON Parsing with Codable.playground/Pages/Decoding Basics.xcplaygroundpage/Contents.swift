 import UIKit
/*:
 ### Simple Objects
 */
let person1JSON = """
{
    "name": "James",
    "age": 45,
    "gender": "Male",
    "sign": "Sagitarius",
    "partner": "Emily",
    "isEmployed": true
}
"""

let person2JSON = """
{
    "name": "Mary",
    "age": 45,
    "gender": "Female",
    "sign": "Taurus",
    "isEmployed": false
}
"""

/*:
 ### Arrays
*/
let personsJSON = """
[
    {
        "name": "James",
        "age": 45,
        "gender": "Male",
        "sign": "Sagitarius",
        "partner": "Emily",
        "isEmployed": true
    },
    {
        "name": "Mary",
        "age": 45,
        "gender": "Female",
        "sign": "Taurus",
        "isEmployed": false
    }
]
"""


/*:
 #### More Complex Objects
 */
let familyJSON = """
{
    "familyName": "Smith",
    "members": [
        {
            "name": "James",
            "age": 45,
            "gender": "Male",
            "sign": "Sagitarius",
            "partner": "Emily",
            "isEmployed": true
        },
        {
            "name": "Mary",
            "age": 45,
            "gender": "Female",
            "sign": "Taurus",
            "isEmployed": false
        }
    ]
}
"""


/*:
 ## A Better model
 */

/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
