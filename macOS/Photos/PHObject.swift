
@available(macOS 10.13, *)
class PHObject : NSObject, NSCopying {
  @available(macOS 10.13, *)
  var localIdentifier: String { get }
}
@available(macOS 10.15, *)
class PHObjectPlaceholder : PHObject {
}
