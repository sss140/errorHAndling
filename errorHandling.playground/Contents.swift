import UIKit

enum FormatError:Error{
    case notHex(Character)
    case space
}

func hex(_ c:Unicode.Scalar) throws -> Int{
    var d = 0
    switch c {
    case Unicode.Scalar("A")...Unicode.Scalar("F"): d = 0x41 - 10
    case Unicode.Scalar("a")...Unicode.Scalar("f"): d = 0x61 - 10
    case Unicode.Scalar("0")...Unicode.Scalar("9"): d = 0x30
    default:
        throw FormatError.notHex(Character(c))
    }
    return Int(c.value) - d
}




var str = "Hello, playground"
