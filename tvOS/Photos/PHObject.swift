
@available(tvOS 10, *)
class PHObject : NSObject, NSCopying {
  @available(tvOS 10, *)
  var localIdentifier: String { get }
}
@available(tvOS 10, *)
class PHObjectPlaceholder : PHObject {
}
