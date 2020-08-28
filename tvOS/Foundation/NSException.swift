
extension NSExceptionName {
  static let genericException: NSExceptionName
  static let rangeException: NSExceptionName
  static let invalidArgumentException: NSExceptionName
  static let internalInconsistencyException: NSExceptionName
  static let mallocException: NSExceptionName
  static let objectInaccessibleException: NSExceptionName
  static let objectNotAvailableException: NSExceptionName
  static let destinationInvalidException: NSExceptionName
  static let portTimeoutException: NSExceptionName
  static let invalidSendPortException: NSExceptionName
  static let invalidReceivePortException: NSExceptionName
  static let portSendException: NSExceptionName
  static let portReceiveException: NSExceptionName
  static let oldStyleException: NSExceptionName
  static let inconsistentArchiveException: NSExceptionName
}
class NSException : NSObject, NSCopying, NSSecureCoding {
  init(name aName: NSExceptionName, reason aReason: String?, userInfo aUserInfo: [AnyHashable : Any]? = nil)
  var name: NSExceptionName { get }
  var reason: String? { get }
  var userInfo: [AnyHashable : Any]? { get }
  @available(tvOS 9.0, *)
  var callStackReturnAddresses: [NSNumber] { get }
  @available(tvOS 9.0, *)
  var callStackSymbols: [String] { get }
  func raise()
}
extension NSException {
  class func raise(_ name: NSExceptionName, format: String, arguments argList: CVaListPointer)
}
typealias NSUncaughtExceptionHandler = (NSException) -> Void
func NSGetUncaughtExceptionHandler() -> (@convention(c) (NSException) -> Void)?
func NSSetUncaughtExceptionHandler(_: (@convention(c) (NSException) -> Void)?)
@available(tvOS 9.0, *)
let NSAssertionHandlerKey: String
class NSAssertionHandler : NSObject {
  class var current: NSAssertionHandler { get }
}
