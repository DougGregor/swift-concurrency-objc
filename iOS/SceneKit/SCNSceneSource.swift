
let SCNSceneSourceAssetContributorsKey: String
let SCNSceneSourceAssetCreatedDateKey: String
let SCNSceneSourceAssetModifiedDateKey: String
let SCNSceneSourceAssetUpAxisKey: String
let SCNSceneSourceAssetUnitKey: String
let SCNSceneSourceAssetAuthoringToolKey: String
let SCNSceneSourceAssetAuthorKey: String
let SCNSceneSourceAssetUnitNameKey: String
let SCNSceneSourceAssetUnitMeterKey: String
extension SCNSceneSource {
  struct LoadingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct AnimationImportPolicy : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SCNSceneSource.LoadingOption {
  static let createNormalsIfAbsent: SCNSceneSource.LoadingOption
  static let checkConsistency: SCNSceneSource.LoadingOption
  static let flattenScene: SCNSceneSource.LoadingOption
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "No longer supported")
  static let useSafeMode: SCNSceneSource.LoadingOption
  static let assetDirectoryURLs: SCNSceneSource.LoadingOption
  static let overrideAssetURLs: SCNSceneSource.LoadingOption
  static let strictConformance: SCNSceneSource.LoadingOption
  @available(iOS 11.0, *)
  static let convertUnitsToMeters: SCNSceneSource.LoadingOption
  @available(iOS 11.0, *)
  static let convertToYUp: SCNSceneSource.LoadingOption
  static let animationImportPolicy: SCNSceneSource.LoadingOption
  @available(iOS 10.0, *)
  static let preserveOriginalTopology: SCNSceneSource.LoadingOption
}
extension SCNSceneSource.AnimationImportPolicy {
  static let play: SCNSceneSource.AnimationImportPolicy
  static let playRepeatedly: SCNSceneSource.AnimationImportPolicy
  static let doNotPlay: SCNSceneSource.AnimationImportPolicy
  static let playUsingSceneTimeBase: SCNSceneSource.AnimationImportPolicy
}
let SCNDetailedErrorsKey: String
let SCNConsistencyElementIDErrorKey: String
let SCNConsistencyElementTypeErrorKey: String
let SCNConsistencyLineNumberErrorKey: String
var SCNConsistencyInvalidURIError: Int { get }
var SCNConsistencyInvalidCountError: Int { get }
var SCNConsistencyInvalidArgumentError: Int { get }
var SCNConsistencyMissingElementError: Int { get }
var SCNConsistencyMissingAttributeError: Int { get }
var SCNConsistencyXMLSchemaValidationError: Int { get }
enum SCNSceneSourceStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case error
  case parsing
  case validating
  case processing
  case complete
}
typealias SCNSceneSourceStatusHandler = (Float, SCNSceneSourceStatus, Error?, UnsafeMutablePointer<ObjCBool>) -> Void
class SCNSceneSource : NSObject {
  init?(url: URL, options: [SCNSceneSource.LoadingOption : Any]? = nil)
  init?(data: Data, options: [SCNSceneSource.LoadingOption : Any]? = nil)
  var url: URL? { get }
  var data: Data? { get }
  func scene(options: [SCNSceneSource.LoadingOption : Any]? = nil, statusHandler: SCNSceneSourceStatusHandler? = nil) -> SCNScene?
  func scene(options: [SCNSceneSource.LoadingOption : Any]? = nil) throws -> SCNScene
  func property(forKey key: String) -> Any?
  func __entry(withIdentifier uid: String, with entryClass: AnyClass) -> Any?
  func identifiersOfEntries(withClass entryClass: AnyClass) -> [String]
  func entries(passingTest predicate: (Any, String, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [Any]
}

@available(iOS 8.0, macOS 10.8, *)
extension SCNSceneSource {
  func entryWithIdentifier<T>(_ uid: String, withClass entryClass: T.Type) -> T? where T : AnyObject
}
