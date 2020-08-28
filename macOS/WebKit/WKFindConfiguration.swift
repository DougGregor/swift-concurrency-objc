
@available(macOS 11.0, *)
class WKFindConfiguration : NSObject, NSCopying {
  var backwards: Bool
  var caseSensitive: Bool
  var wraps: Bool
}
