
@available(macOS 10.5, *)
let kCIFilterGeneratorExportedKey: String
@available(macOS 10.5, *)
let kCIFilterGeneratorExportedKeyTargetObject: String
@available(macOS 10.5, *)
let kCIFilterGeneratorExportedKeyName: String
@available(macOS 10.5, *)
class CIFilterGenerator : NSObject, NSSecureCoding, NSCopying, CIFilterConstructor {
  init?(contentsOf aURL: URL)
  func connect(_ sourceObject: Any, withKey sourceKey: String?, to targetObject: Any, withKey targetKey: String)
  func disconnectObject(_ sourceObject: Any, withKey sourceKey: String, to targetObject: Any, withKey targetKey: String)
  func exportKey(_ key: String, from targetObject: Any, withName exportedKeyName: String?)
  func removeExportedKey(_ exportedKeyName: String)
  var exportedKeys: [AnyHashable : Any] { get }
  func setAttributes(_ attributes: [AnyHashable : Any], forExportedKey key: String)
  var classAttributes: [AnyHashable : Any]
  func filter() -> CIFilter
  func registerFilterName(_ name: String)
  func write(to aURL: URL, atomically flag: Bool) -> Bool
}
