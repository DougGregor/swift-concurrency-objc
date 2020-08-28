
var AMAutomatorErrorDomain: String { get }
var AMActionErrorKey: String { get }
struct AMError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var workflowNewerVersionError: AMError.Code { get }
  static var workflowPropertyListInvalidError: AMError.Code { get }
  static var workflowNewerActionVersionError: AMError.Code { get }
  static var workflowOlderActionVersionError: AMError.Code { get }
  static var workflowActionsNotLoadedError: AMError.Code { get }
  static var workflowNoEnabledActionsError: AMError.Code { get }
  static var userCanceledError: AMError.Code { get }
  static var noSuchActionError: AMError.Code { get }
  static var actionNotLoadableError: AMError.Code { get }
  static var actionArchitectureMismatchError: AMError.Code { get }
  static var actionRuntimeMismatchError: AMError.Code { get }
  static var actionLoadError: AMError.Code { get }
  static var actionLinkError: AMError.Code { get }
  static var actionApplicationResourceError: AMError.Code { get }
  static var actionApplicationVersionResourceError: AMError.Code { get }
  static var actionFileResourceError: AMError.Code { get }
  static var actionLicenseResourceError: AMError.Code { get }
  static var actionRequiredActionResourceError: AMError.Code { get }
  static var actionInitializationError: AMError.Code { get }
  static var actionExecutionError: AMError.Code { get }
  static var actionExceptionError: AMError.Code { get }
  static var actionPropertyListInvalidError: AMError.Code { get }
  static var actionInsufficientDataError: AMError.Code { get }
  static var actionIsDeprecatedError: AMError.Code { get }
  static var actionFailedGatekeeperError: AMError.Code { get }
  static var actionSignatureCorruptError: AMError.Code { get }
  static var actionQuarantineError: AMError.Code { get }
  static var actionXProtectError: AMError.Code { get }
  static var actionMalwareError: AMError.Code { get }
  static var actionThirdPartyActionsNotAllowedError: AMError.Code { get }
  static var actionXPCError: AMError.Code { get }
  static var conversionNotPossibleError: AMError.Code { get }
  static var conversionNoDataError: AMError.Code { get }
  static var conversionFailedError: AMError.Code { get }
}
