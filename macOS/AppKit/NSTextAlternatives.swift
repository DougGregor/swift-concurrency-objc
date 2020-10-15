
@available(macOS 10.8, *)
class NSTextAlternatives : NSObject, NSSecureCoding {
  init(primaryString: String, alternativeStrings: [String])
  var primaryString: String { get }
  var alternativeStrings: [String] { get }
  func noteSelectedAlternativeString(_ alternativeString: String)
}
extension NSTextAlternatives {
  @available(macOS 10.8, *)
  class let selectedAlternativeStringNotification: NSNotification.Name
}
