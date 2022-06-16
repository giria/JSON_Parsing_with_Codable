/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)

 ## CodingKeys
If your classes or structures use differnt property names than what the feed contains, you are going to have to map the keys to the class or struct property names.
*/
import UIKit
struct ColorPalette: Decodable {
    struct PaletteColor: Decodable {
        let sort_order: Int
        let description: String
        let red: Int
        let green: Int
        let blue: Int
        let alpha: Double
    }
    let palette_name: String
    let palette_info: String
    let palette_colors: [PaletteColor]
}
guard let sourcesURL = Bundle.main.url(forResource: "FlatColors", withExtension: "json") else {
    fatalError("Could not find FlatColors.json")
}
guard let colorData = try? Data(contentsOf: sourcesURL) else {
    fatalError("Could not conver data")
}

let decoder = JSONDecoder()
guard let flatColors = try? decoder.decode(ColorPalette.self, from: colorData) else {
    fatalError("There was a problem decoding the data....")
}
print(flatColors.palette_name)
for color in flatColors.palette_colors {
    print(color.description)
}
/*:

 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
