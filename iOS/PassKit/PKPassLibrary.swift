
@available(iOS 7.0, *)
enum PKPassLibraryAddPassesStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case didAddPasses
  case shouldReviewPasses
  case didCancelAddPasses
}
@available(iOS 9.0, *)
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
@available(iOS 6.0, *)
class PKPassLibrary : NSObject {
  @available(iOS 6.0, *)
  class func isPassLibraryAvailable() -> Bool
  @available(iOS 9.0, *)
  class func requestAutomaticPassPresentationSuppression(responseHandler: @escaping (PKAutomaticPassPresentationSuppressionResult) -> Void) -> PKSuppressionRequestToken
  @available(iOS 9.0, *)
  class func endAutomaticPassPresentationSuppression(withRequestToken requestToken: PKSuppressionRequestToken)
  @available(iOS 9.0, *)
  class func isSuppressingAutomaticPassPresentation() -> Bool
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "Use -[PKPassLibrary isPaymentPassActivationAvailable] instead")
  class func isPaymentPassActivationAvailable() -> Bool
  @available(iOS, introduced: 9.0, deprecated: 100000, message: "Use -[PKPassLibrary isSecureElementPassActivationAvailable] instead")
  func isPaymentPassActivationAvailable() -> Bool
  @available(iOS 13.4, *)
  var isSecureElementPassActivationAvailable: Bool { get }
  func passes() -> [PKPass]
  func pass(withPassTypeIdentifier identifier: String, serialNumber: String) -> PKPass?
  @available(iOS 8.0, *)
  func passes(of passType: PKPassType) -> [PKPass]
  @available(iOS, introduced: 9.0, deprecated: 100000, message: "Use -[PKPassLibrary remoteSecureElementPasses] instead")
  func remotePaymentPasses() -> [PKPaymentPass]
  @available(iOS 13.4, *)
  var remoteSecureElementPasses: [PKSecureElementPass] { get }
  func removePass(_ pass: PKPass)
  func containsPass(_ pass: PKPass) -> Bool
  func replacePass(with pass: PKPass) -> Bool
  @available(iOS 7.0, *)
  func addPasses(_ passes: [PKPass], withCompletionHandler completion: ((PKPassLibraryAddPassesStatus) -> Void)? = nil)
  @available(iOS 7.0, *)
  func addPasses(_ passes: [PKPass]) async -> PKPassLibraryAddPassesStatus
  @available(iOS 8.3, *)
  func openPaymentSetup()
  @available(iOS, introduced: 10.0, deprecated: 100000, message: "Use -[PKPassLibrary presentSecureElementPass:] instead")
  func present(_ pass: PKPaymentPass)
  @available(iOS 13.4, *)
  func present(_ pass: PKSecureElementPass)
  @available(iOS, introduced: 9.0, deprecated: 100000, message: "Use -[PKPassLibrary canAddSecureElementPassWithPrimaryAccountIdentifier] instead")
  func canAddPaymentPass(withPrimaryAccountIdentifier primaryAccountIdentifier: String) -> Bool
  @available(iOS 13.4, *)
  func canAddSecureElementPass(primaryAccountIdentifier: String) -> Bool
  @available(iOS 10.1, *)
  func canAddFelicaPass() -> Bool
  @available(iOS, introduced: 8.0, deprecated: 100000, message: "Use activateSecureElementPass:withActivationData:completion: instead")
  func activate(_ paymentPass: PKPaymentPass, withActivationData activationData: Data, completion: ((Bool, Error) -> Void)? = nil)
  @available(iOS, introduced: 8.0, deprecated: 100000, message: "Use activateSecureElementPass:withActivationData:completion: instead")
  func activate(_ paymentPass: PKPaymentPass, withActivationData activationData: Data) async -> (Bool, Error)
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "Use activatePaymentPass:withActivationData:completion: instead")
  func activate(_ paymentPass: PKPaymentPass, withActivationCode activationCode: String, completion: ((Bool, Error) -> Void)? = nil)
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "Use activatePaymentPass:withActivationData:completion: instead")
  func activate(_ paymentPass: PKPaymentPass, withActivationCode activationCode: String) async -> (Bool, Error)
  @available(iOS 13.4, *)
  func activate(_ secureElementPass: PKSecureElementPass, activationData: Data, completion: ((Bool, Error?) -> Void)? = nil)
  @available(iOS 13.4, *)
  func activate(_ secureElementPass: PKSecureElementPass, activationData: Data) async throws -> Bool
  @available(iOS 13.4, *)
  func sign(_ signData: Data, using secureElementPass: PKSecureElementPass, completion: @escaping (Data?, Data?, Error?) -> Void)
  @available(iOS 13.4, *)
  func sign(_ signData: Data, using secureElementPass: PKSecureElementPass) async throws -> (Data, Data)
}
struct PKPassLibraryNotificationName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKPassLibraryNotificationName {
  @available(iOS 6.0, *)
  static let PKPassLibraryDidChange: PKPassLibraryNotificationName
  @available(iOS 9.0, *)
  static let PKPassLibraryRemotePaymentPassesDidChange: PKPassLibraryNotificationName
}
struct PKPassLibraryNotificationKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKPassLibraryNotificationKey {
  @available(iOS 6.0, *)
  static let addedPassesUserInfoKey: PKPassLibraryNotificationKey
  @available(iOS 6.0, *)
  static let replacementPassesUserInfoKey: PKPassLibraryNotificationKey
  @available(iOS 6.0, *)
  static let removedPassInfosUserInfoKey: PKPassLibraryNotificationKey
  @available(iOS 6.0, *)
  static let passTypeIdentifierUserInfoKey: PKPassLibraryNotificationKey
  @available(iOS 6.0, *)
  static let serialNumberUserInfoKey: PKPassLibraryNotificationKey
}
