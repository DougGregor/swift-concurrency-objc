
@available(iOS 10.0, *)
let CKCurrentUserDefaultName: String
@available(iOS, introduced: 8.0, deprecated: 10.0, renamed: "CKCurrentUserDefaultName")
let CKOwnerDefaultName: String
@available(iOS 8.0, *)
class CKContainer : NSObject {
  class func `default`() -> CKContainer
  /*not inherited*/ init(identifier containerIdentifier: String)
  var containerIdentifier: String? { get }
  func add(_ operation: CKOperation)
}

@available(macOS 10.12, iOS 9.3, tvOS 9.2, watchOS 3.0, *)
@nonobjc extension CKContainer {
  @available(swift 4.2)
  func fetchAllLongLivedOperationIDs(completionHandler: @escaping ([CKOperation.ID]?, Error?) -> Void)
  @available(swift 4.2)
  func fetchLongLivedOperation(withID operationID: CKOperation.ID, completionHandler: @escaping (CKOperation?, Error?) -> Void)
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKContainer {
  @available(swift 4.2)
  enum Application {
    typealias Permissions = CKContainer_Application_Permissions
    typealias PermissionStatus = CKContainer_Application_PermissionStatus
    typealias PermissionBlock = CKContainer_Application_PermissionBlock
  }
}
extension CKContainer {
  var privateCloudDatabase: CKDatabase { get }
  var publicCloudDatabase: CKDatabase { get }
  @available(iOS 10.0, *)
  var sharedCloudDatabase: CKDatabase { get }
  @available(iOS 10.0, *)
  func database(with databaseScope: CKDatabase.Scope) -> CKDatabase
}
@available(iOS 8.0, *)
enum CKAccountStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case couldNotDetermine
  case available
  case restricted
  case noAccount
}
extension NSNotification.Name {
  @available(iOS 9.0, *)
  static let CKAccountChanged: NSNotification.Name
}
extension CKContainer {
  func accountStatus(completionHandler: @escaping (CKAccountStatus, Error?) -> Void)
  func accountStatus() async throws -> CKAccountStatus
}
@available(iOS 8.0, *)
struct CKContainer_Application_Permissions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var userDiscoverability: CKContainer_Application_Permissions { get }
}
@available(iOS 8.0, *)
enum CKContainer_Application_PermissionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case initialState
  case couldNotComplete
  case denied
  case granted
}
typealias CKContainer_Application_PermissionBlock = (CKContainer_Application_PermissionStatus, Error?) -> Void
extension CKContainer {
  func status(forApplicationPermission applicationPermission: CKContainer_Application_Permissions, completionHandler: @escaping CKContainer_Application_PermissionBlock)
  func status(forApplicationPermission applicationPermission: CKContainer_Application_Permissions) async throws -> CKContainer_Application_PermissionStatus
  func requestApplicationPermission(_ applicationPermission: CKContainer_Application_Permissions, completionHandler: @escaping CKContainer_Application_PermissionBlock)
  func requestApplicationPermission(_ applicationPermission: CKContainer_Application_Permissions) async throws -> CKContainer_Application_PermissionStatus
}
extension CKContainer {
  func fetchUserRecordID(completionHandler: @escaping (CKRecord.ID?, Error?) -> Void)
  func fetchUserRecordID() async throws -> CKRecord.ID
  @available(iOS 10.0, *)
  func discoverAllIdentities(completionHandler: @escaping ([CKUserIdentity]?, Error?) -> Void)
  @available(iOS 10.0, *)
  func discoverAllIdentities() async throws -> [CKUserIdentity]
  @available(iOS 10.0, *)
  func discoverUserIdentity(withEmailAddress email: String, completionHandler: @escaping (CKUserIdentity?, Error?) -> Void)
  @available(iOS 10.0, *)
  func discoverUserIdentity(withEmailAddress email: String) async throws -> CKUserIdentity
  @available(iOS 10.0, *)
  func discoverUserIdentity(withPhoneNumber phoneNumber: String, completionHandler: @escaping (CKUserIdentity?, Error?) -> Void)
  @available(iOS 10.0, *)
  func discoverUserIdentity(withPhoneNumber phoneNumber: String) async throws -> CKUserIdentity
  @available(iOS 10.0, *)
  func discoverUserIdentity(withUserRecordID userRecordID: CKRecord.ID, completionHandler: @escaping (CKUserIdentity?, Error?) -> Void)
  @available(iOS 10.0, *)
  func discoverUserIdentity(withUserRecordID userRecordID: CKRecord.ID) async throws -> CKUserIdentity
}
extension CKContainer {
  @available(iOS 10.0, *)
  func fetchShareParticipant(withEmailAddress emailAddress: String, completionHandler: @escaping (CKShare.Participant?, Error?) -> Void)
  @available(iOS 10.0, *)
  func fetchShareParticipant(withEmailAddress emailAddress: String) async throws -> CKShare.Participant
  @available(iOS 10.0, *)
  func fetchShareParticipant(withPhoneNumber phoneNumber: String, completionHandler: @escaping (CKShare.Participant?, Error?) -> Void)
  @available(iOS 10.0, *)
  func fetchShareParticipant(withPhoneNumber phoneNumber: String) async throws -> CKShare.Participant
  @available(iOS 10.0, *)
  func fetchShareParticipant(withUserRecordID userRecordID: CKRecord.ID, completionHandler: @escaping (CKShare.Participant?, Error?) -> Void)
  @available(iOS 10.0, *)
  func fetchShareParticipant(withUserRecordID userRecordID: CKRecord.ID) async throws -> CKShare.Participant
  @available(iOS 10.0, *)
  func fetchShareMetadata(with url: URL, completionHandler: @escaping (CKShare.Metadata?, Error?) -> Void)
  @available(iOS 10.0, *)
  func fetchShareMetadata(with url: URL) async throws -> CKShare.Metadata
  @available(iOS 10.0, *)
  func accept(_ metadata: CKShare.Metadata, completionHandler: @escaping (CKShare?, Error?) -> Void)
  @available(iOS 10.0, *)
  func accept(_ metadata: CKShare.Metadata) async throws -> CKShare
}
extension CKContainer {
  @available(iOS 9.3, *)
  func __fetchAllLongLivedOperationIDs(completionHandler: @escaping ([String]?, Error?) -> Void)
  @available(iOS 9.3, *)
  func __fetchAllLongLivedOperationIDs() async throws -> [String]
  @available(iOS 9.3, *)
  func __fetchLongLivedOperation(withID operationID: String, completionHandler: @escaping (CKOperation?, Error?) -> Void)
  @available(iOS 9.3, *)
  func __fetchLongLivedOperation(withID operationID: String) async throws -> CKOperation
}
