
@available(macOS 11.0, *)
class NSTintConfiguration : NSObject, NSCopying, NSSecureCoding {
  class var `default`: NSTintConfiguration { get }
  class var monochrome: NSTintConfiguration { get }
  convenience init(preferredColor color: NSColor)
  convenience init(fixedColor color: NSColor)
  var baseTintColor: NSColor? { get }
  var equivalentContentTintColor: NSColor? { get }
  var adaptsToUserAccentColor: Bool { get }
}
