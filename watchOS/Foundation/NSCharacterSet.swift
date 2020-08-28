
var NSOpenStepUnicodeReservedBase: Int { get }
class NSCharacterSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  class var controlCharacters: CharacterSet { get }
  class var whitespaces: CharacterSet { get }
  class var whitespacesAndNewlines: CharacterSet { get }
  class var decimalDigits: CharacterSet { get }
  class var letters: CharacterSet { get }
  class var lowercaseLetters: CharacterSet { get }
  class var uppercaseLetters: CharacterSet { get }
  class var nonBaseCharacters: CharacterSet { get }
  class var alphanumerics: CharacterSet { get }
  class var decomposables: CharacterSet { get }
  class var illegalCharacters: CharacterSet { get }
  class var punctuationCharacters: CharacterSet { get }
  class var capitalizedLetters: CharacterSet { get }
  class var symbols: CharacterSet { get }
  @available(watchOS 2.0, *)
  class var newlines: CharacterSet { get }
  /*not inherited*/ init(range aRange: NSRange)
  /*not inherited*/ init(charactersIn aString: String)
  /*not inherited*/ init(bitmapRepresentation data: Data)
  /*not inherited*/ init?(contentsOfFile fName: String)
  func characterIsMember(_ aCharacter: unichar) -> Bool
  var bitmapRepresentation: Data { get }
  var inverted: CharacterSet { get }
  func longCharacterIsMember(_ theLongChar: UTF32Char) -> Bool
  func isSuperset(of theOtherSet: CharacterSet) -> Bool
  func hasMemberInPlane(_ thePlane: UInt8) -> Bool
}

extension NSCharacterSet : _HasCustomAnyHashableRepresentation {
}
class NSMutableCharacterSet : NSCharacterSet, NSCopying, NSMutableCopying, NSSecureCoding {
  func addCharacters(in aRange: NSRange)
  func removeCharacters(in aRange: NSRange)
  func addCharacters(in aString: String)
  func removeCharacters(in aString: String)
  func formUnion(with otherSet: CharacterSet)
  func formIntersection(with otherSet: CharacterSet)
  func invert()
}
