
@available(tvOS, introduced: 9.0, deprecated: 13.0, message: "TVContentIdentifier has been replaced by TVTopShelfContentProvider")
class TVContentIdentifier : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  @NSCopying var container: TVContentIdentifier? { get }
  init(identifier: String, container: TVContentIdentifier?)
}
