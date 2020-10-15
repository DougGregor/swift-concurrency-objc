
extension NSNib {
  typealias Name = String
}
class NSNib : NSObject, NSCoding {
  init?(nibNamed nibName: NSNib.Name, bundle: Bundle?)
  @available(macOS 10.8, *)
  init(nibData: Data, bundle: Bundle?)
  @available(macOS 10.8, *)
  func instantiate(withOwner owner: Any?, topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>?) -> Bool
}
extension NSNib {
}
