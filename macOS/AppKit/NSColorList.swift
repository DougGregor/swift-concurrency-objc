
extension NSColor {
  typealias Name = String
}
class NSColorList : NSObject, NSSecureCoding {
  class var availableColorLists: [NSColorList] { get }
  /*not inherited*/ init?(named name: NSColorList.Name)
  init(name: NSColorList.Name)
  init?(name: NSColorList.Name, fromFile path: String?)
  var name: NSColorList.Name? { get }
  func setColor(_ color: NSColor, forKey key: NSColor.Name)
  func insertColor(_ color: NSColor, key: NSColor.Name, at loc: Int)
  func removeColor(withKey key: NSColor.Name)
  func color(withKey key: NSColor.Name) -> NSColor?
  var allKeys: [NSColor.Name] { get }
  var isEditable: Bool { get }
  @available(macOS 10.11, *)
  func write(to url: URL?) throws
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -writeToURL:error: instead")
  func write(toFile path: String?) -> Bool
  func removeFile()
}
extension NSColorList {
  class let didChangeNotification: NSNotification.Name
  typealias Name = String
}
