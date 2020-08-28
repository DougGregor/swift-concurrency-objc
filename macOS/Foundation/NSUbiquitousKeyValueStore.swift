
@available(macOS 10.7, *)
class NSUbiquitousKeyValueStore : NSObject {
  class var `default`: NSUbiquitousKeyValueStore { get }
  func object(forKey aKey: String) -> Any?
  func set(_ anObject: Any?, forKey aKey: String)
  func removeObject(forKey aKey: String)
  func string(forKey aKey: String) -> String?
  func array(forKey aKey: String) -> [Any]?
  func dictionary(forKey aKey: String) -> [String : Any]?
  func data(forKey aKey: String) -> Data?
  func longLong(forKey aKey: String) -> Int64
  func double(forKey aKey: String) -> Double
  func bool(forKey aKey: String) -> Bool
  func set(_ aString: String?, forKey aKey: String)
  func set(_ aData: Data?, forKey aKey: String)
  func set(_ anArray: [Any]?, forKey aKey: String)
  func set(_ aDictionary: [String : Any]?, forKey aKey: String)
  func set(_ value: Int64, forKey aKey: String)
  func set(_ value: Double, forKey aKey: String)
  func set(_ value: Bool, forKey aKey: String)
  var dictionaryRepresentation: [String : Any] { get }
  func synchronize() -> Bool
}
extension NSUbiquitousKeyValueStore {
  @available(macOS 10.7, *)
  class let didChangeExternallyNotification: NSNotification.Name
}
@available(macOS 10.7, *)
let NSUbiquitousKeyValueStoreChangeReasonKey: String
@available(macOS 10.7, *)
let NSUbiquitousKeyValueStoreChangedKeysKey: String
@available(macOS 10.7, *)
var NSUbiquitousKeyValueStoreServerChange: Int { get }
@available(macOS 10.7, *)
var NSUbiquitousKeyValueStoreInitialSyncChange: Int { get }
@available(macOS 10.7, *)
var NSUbiquitousKeyValueStoreQuotaViolationChange: Int { get }
@available(macOS 10.8, *)
var NSUbiquitousKeyValueStoreAccountChange: Int { get }
