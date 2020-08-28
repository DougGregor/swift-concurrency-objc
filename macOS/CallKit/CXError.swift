
@available(macOS 11.0, *)
let CXErrorDomain: String
@available(macOS 11.0, *)
let CXErrorDomainIncomingCall: String
@available(macOS 11.0, *)
let CXErrorDomainRequestTransaction: String
@available(macOS 11.0, *)
let CXErrorDomainCallDirectoryManager: String
@available(macOS 11.0, *)
struct CXError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknownError: CXError.Code { get }
  static var unentitled: CXError.Code { get }
  static var invalidArgument: CXError.Code { get }
}
@available(macOS 11.0, *)
struct CXErrorCodeIncomingCallError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: CXErrorCodeIncomingCallError.Code { get }
  static var unentitled: CXErrorCodeIncomingCallError.Code { get }
  static var callUUIDAlreadyExists: CXErrorCodeIncomingCallError.Code { get }
  static var filteredByDoNotDisturb: CXErrorCodeIncomingCallError.Code { get }
  static var filteredByBlockList: CXErrorCodeIncomingCallError.Code { get }
}
@available(macOS 11.0, *)
struct CXErrorCodeRequestTransactionError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: CXErrorCodeRequestTransactionError.Code { get }
  static var unentitled: CXErrorCodeRequestTransactionError.Code { get }
  static var unknownCallProvider: CXErrorCodeRequestTransactionError.Code { get }
  static var emptyTransaction: CXErrorCodeRequestTransactionError.Code { get }
  static var unknownCallUUID: CXErrorCodeRequestTransactionError.Code { get }
  static var callUUIDAlreadyExists: CXErrorCodeRequestTransactionError.Code { get }
  static var invalidAction: CXErrorCodeRequestTransactionError.Code { get }
  static var maximumCallGroupsReached: CXErrorCodeRequestTransactionError.Code { get }
}
@available(macOS 11.0, *)
struct CXErrorCodeCallDirectoryManagerError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: CXErrorCodeCallDirectoryManagerError.Code { get }
  static var noExtensionFound: CXErrorCodeCallDirectoryManagerError.Code { get }
  static var loadingInterrupted: CXErrorCodeCallDirectoryManagerError.Code { get }
  static var entriesOutOfOrder: CXErrorCodeCallDirectoryManagerError.Code { get }
  static var duplicateEntries: CXErrorCodeCallDirectoryManagerError.Code { get }
  static var maximumEntriesExceeded: CXErrorCodeCallDirectoryManagerError.Code { get }
  static var extensionDisabled: CXErrorCodeCallDirectoryManagerError.Code { get }
  static var currentlyLoading: CXErrorCodeCallDirectoryManagerError.Code { get }
  static var unexpectedIncrementalRemoval: CXErrorCodeCallDirectoryManagerError.Code { get }
}
