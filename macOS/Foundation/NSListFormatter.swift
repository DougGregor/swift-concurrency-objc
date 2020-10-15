
@available(macOS 10.15, *)
class ListFormatter : Formatter {
  var locale: Locale!
  @NSCopying var itemFormatter: Formatter?
  class func localizedString(byJoining strings: [String]) -> String
  func string(from items: [Any]) -> String?
}
