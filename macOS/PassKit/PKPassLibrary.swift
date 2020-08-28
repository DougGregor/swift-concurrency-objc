
@available(macOS 10.13, *)
enum PKPassLibraryAddPassesStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case didAddPasses
  case shouldReviewPasses
  case didCancelAddPasses
}
@available(macOS 10.13, *)
enum PKAutomaticPassPresentationSuppressionResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notSupported
  case alreadyPresenting
  case denied
  case cancelled
  case success
}
typealias PKSuppressionRequestToken = Int
@available(macOS 10.12, *)
class PKPassLibrary : NSObject {
  @available(macOS 10.12, *)
  class func isPassLibraryAvailable() -> Bool
  class func requestAutomaticPassPresentationSuppression(responseHandler: @escaping (PKAutomaticPassPresentationSuppressionResult) -> Void) -> PKSuppressionRequestToken
  class func endAutomaticPassPresentationSuppression(withRequestToken requestToken: PKSuppressionRequestToken)
  class func isSuppressingAutomaticPassPresentation() -> Bool
  class func isPaymentPassActivationAvailable() -> Bool
  func isPaymentPassActivationAvailable() -> Bool
  var isSecureElementPassActivationAvailable: Bool { get }
  func passes() -> [PKPass]
  func pass(withPassTypeIdentifier identifier: String, serialNumber: String) -> PKPass?
  @available(macOS 10.12, *)
  func passes(of passType: PKPassType) -> [PKPass]
  func remotePaymentPasses() -> [PKPaymentPass]
  var remoteSecureElementPasses: [PKSecureElementPass] { get }
  func removePass(_ pass: PKPass)
  func containsPass(_ pass: PKPass) -> Bool
  func replacePass(with pass: PKPass) -> Bool
  @available(macOS 10.12, *)
  func addPasses(_ passes: [PKPass], withCompletionHandler completion: ((PKPassLibraryAddPassesStatus) -> Void)? = nil)
  @available(macOS 10.12, *)
  func addPasses(_ passes: [PKPass]) async -> PKPassLibraryAddPassesStatus
  @available(macOS 10.12, *)
  func openPaymentSetup()
  func present(_ pass: PKPaymentPass)
  func present(_ pass: PKSecureElementPass)
  func canAddPaymentPass(withPrimaryAccountIdentifier primaryAccountIdentifier: String) -> Bool
  func canAddSecureElementPass(primaryAccountIdentifier: String) -> Bool
  func canAddFelicaPass() -> Bool
  func activate(_ paymentPass: PKPaymentPass, withActivationData activationData: Data, completion: ((Bool, Error) -> Void)? = nil)
  func activate(_ paymentPass: PKPaymentPass, withActivationData activationData: Data) async -> (Bool, Error)
  func activate(_ paymentPass: PKPaymentPass, withActivationCode activationCode: String, completion: ((Bool, Error) -> Void)? = nil)
  func activate(_ paymentPass: PKPaymentPass, withActivationCode activationCode: String) async -> (Bool, Error)
  func activate(_ secureElementPass: PKSecureElementPass, activationData: Data, completion: ((Bool, Error?) -> Void)? = nil)
  func activate(_ secureElementPass: PKSecureElementPass, activationData: Data) async throws -> Bool
  func sign(_ signData: Data, using secureElementPass: PKSecureElementPass, completion: @escaping (Data?, Data?, Error?) -> Void)
  func sign(_ signData: Data, using secureElementPass: PKSecureElementPass) async throws -> (Data?, Data?)
}
struct PKPassLibraryNotificationName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKPassLibraryNotificationName {
  @available(macOS 10.12, *)
  static let PKPassLibraryDidChange: PKPassLibraryNotificationName
  @available(macOS 10.12, *)
  static let PKPassLibraryRemotePaymentPassesDidChange: PKPassLibraryNotificationName
}
struct PKPassLibraryNotificationKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKPassLibraryNotificationKey {
  @available(macOS 10.12, *)
  static let addedPassesUserInfoKey: PKPassLibraryNotificationKey
  @available(macOS 10.12, *)
  static let replacementPassesUserInfoKey: PKPassLibraryNotificationKey
  @available(macOS 10.12, *)
  static let removedPassInfosUserInfoKey: PKPassLibraryNotificationKey
  @available(macOS 10.12, *)
  static let passTypeIdentifierUserInfoKey: PKPassLibraryNotificationKey
  @available(macOS 10.12, *)
  static let serialNumberUserInfoKey: PKPassLibraryNotificationKey
}
