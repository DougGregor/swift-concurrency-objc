
var ABAddRecordsError: Int { get }
var ABRemoveRecordsError: Int { get }
var ABPropertyValueValidationError: Int { get }
var ABPropertyUnsupportedBySourceError: Int { get }
var ABPropertyReadOnlyError: Int { get }
@available(macOS 10.7, *)
let ABAddressBookErrorDomain: String
@available(macOS 10.7, *)
let ABMultiValueIdentifiersErrorKey: String
class ABAddressBook : NSObject {
  class func shared() -> ABAddressBook!
  func records(matching search: ABSearchElement!) -> [Any]!
  func save() -> Bool
  @available(macOS 10.5, *)
  func saveAndReturnError() throws
  func hasUnsavedChanges() -> Bool
  func me() -> ABPerson!
  func setMe(_ moi: ABPerson!)
  func record(forUniqueId uniqueId: String!) -> ABRecord!
  @available(macOS 10.7, *)
  func add(_ record: ABRecord!, error: ()) throws
  func add(_ record: ABRecord!) -> Bool
  @available(macOS 10.7, *)
  func remove(_ record: ABRecord!, error: ()) throws
  func remove(_ record: ABRecord!) -> Bool
  func people() -> [Any]!
  func groups() -> [Any]!
  @available(macOS 10.3, *)
  func recordClass(fromUniqueId uniqueId: String!) -> String!
  @available(macOS 10.3, *)
  func formattedAddress(from address: [AnyHashable : Any]!) -> NSAttributedString!
  @available(macOS 10.3, *)
  func defaultCountryCode() -> String!
  @available(macOS 10.3, *)
  func defaultNameOrdering() -> Int
}
struct __ABBookflags {
  var hasUnsavedChanges: UInt32
  var readOnly: UInt32
  var importMe: UInt32
  var needConversion: UInt32
  var cleanedUp: UInt32
  var importTips: UInt32
  var restoreFromMetaData: UInt32
  var prefsNeedSync: UInt32
  var waitingForReset: UInt32
  var enforcesConstraints: UInt32
  var tracksAllSources: UInt32
  var _reserved: UInt32
  init()
  init(hasUnsavedChanges: UInt32, readOnly: UInt32, importMe: UInt32, needConversion: UInt32, cleanedUp: UInt32, importTips: UInt32, restoreFromMetaData: UInt32, prefsNeedSync: UInt32, waitingForReset: UInt32, enforcesConstraints: UInt32, tracksAllSources: UInt32, _reserved: UInt32)
}
