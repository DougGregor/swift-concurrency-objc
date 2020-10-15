
var __NSDATAASSET_SHARED_SECTION__: Int32 { get }
@available(iOS 9.0, *)
typealias NSDataAssetName = String
@available(iOS 9.0, *)
class NSDataAsset : NSObject, NSCopying {
  convenience init?(name: NSDataAssetName)
  init?(name: NSDataAssetName, bundle: Bundle)
  var name: NSDataAssetName { get }
  var data: Data { get }
  var typeIdentifier: String { get }
}
