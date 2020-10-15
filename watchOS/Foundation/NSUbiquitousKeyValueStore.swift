
extension NSUbiquitousKeyValueStore {
  @available(watchOS 2.0, *)
  class let didChangeExternallyNotification: NSNotification.Name
}
@available(watchOS 2.0, *)
let NSUbiquitousKeyValueStoreChangeReasonKey: String
@available(watchOS 2.0, *)
let NSUbiquitousKeyValueStoreChangedKeysKey: String
@available(watchOS 2.0, *)
var NSUbiquitousKeyValueStoreServerChange: Int { get }
@available(watchOS 2.0, *)
var NSUbiquitousKeyValueStoreInitialSyncChange: Int { get }
@available(watchOS 2.0, *)
var NSUbiquitousKeyValueStoreQuotaViolationChange: Int { get }
@available(watchOS 2.0, *)
var NSUbiquitousKeyValueStoreAccountChange: Int { get }
