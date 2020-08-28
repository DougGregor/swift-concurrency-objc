
extension NSDataAsset {
  @available(macOS 10.11, *)
  typealias Name = String
}
@available(macOS 10.11, *)
class NSDataAsset : NSObject, NSCopying {
  convenience init?(name: NSDataAsset.Name)
  init?(name: NSDataAsset.Name, bundle: Bundle)
  var name: NSDataAsset.Name { get }
  var data: Data { get }
  var typeIdentifier: String { get }
}
