
@available(watchOS 3.0, *)
enum PKPassLibraryAddPassesStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case didAddPasses
  case shouldReviewPasses
  case didCancelAddPasses
}
typealias PKSuppressionRequestToken = Int
@available(watchOS 3.0, *)
class PKPassLibrary : NSObject {
  @available(watchOS 3.0, *)
  class func isPassLibraryAvailable() -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -[PKPassLibrary isPaymentPassActivationAvailable] instead")
  class func isPaymentPassActivationAvailable() -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 99993, message: "Use -[PKPassLibrary isSecureElementPassActivationAvailable] instead")
  func isPaymentPassActivationAvailable() -> Bool
  @available(watchOS 6.4, *)
  var isSecureElementPassActivationAvailable: Bool { get }
  func passes() -> [PKPass]
  func pass(withPassTypeIdentifier identifier: String, serialNumber: String) -> PKPass?
  @available(watchOS 3.0, *)
  func passes(of passType: PKPassType) -> [PKPass]
  @available(watchOS, introduced: 2.0, deprecated: 99993, message: "Use -[PKPassLibrary remoteSecureElementPasses] instead")
  func remotePaymentPasses() -> [PKPaymentPass]
  @available(watchOS 6.4, *)
  var remoteSecureElementPasses: [PKSecureElementPass] { get }
  func removePass(_ pass: PKPass)
  func containsPass(_ pass: PKPass) -> Bool
  func replacePass(with pass: PKPass) -> Bool
  @available(watchOS 3.0, *)
  func addPasses(_ passes: [PKPass], withCompletionHandler completion: ((PKPassLibraryAddPassesStatus) -> Void)? = nil)
  @available(watchOS 3.0, *)
  func addPasses(_ passes: [PKPass]) async -> PKPassLibraryAddPassesStatus
  @available(watchOS, introduced: 2.0, deprecated: 99993, message: "Use -[PKPassLibrary canAddSecureElementPassWithPrimaryAccountIdentifier] instead")
  func canAddPaymentPass(withPrimaryAccountIdentifier primaryAccountIdentifier: String) -> Bool
  @available(watchOS 6.4, *)
  func canAddSecureElementPass(primaryAccountIdentifier: String) -> Bool
  @available(watchOS 3.1, *)
  func canAddFelicaPass() -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 99993, message: "Use activateSecureElementPass:withActivationData:completion: instead")
  func activate(_ paymentPass: PKPaymentPass, withActivationData activationData: Data, completion: ((Bool, Error) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 99993, message: "Use activateSecureElementPass:withActivationData:completion: instead")
  func activate(_ paymentPass: PKPaymentPass, withActivationData activationData: Data) async -> (Bool, Error)
  @available(watchOS 6.2, *)
  func sign(_ signData: Data, using secureElementPass: PKSecureElementPass, completion: @escaping (Data?, Data?, Error?) -> Void)
  @available(watchOS 6.2, *)
  func sign(_ signData: Data, using secureElementPass: PKSecureElementPass) async throws -> (Data?, Data?)
}
struct PKPassLibraryNotificationName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKPassLibraryNotificationName {
  @available(watchOS 3.0, *)
  static let PKPassLibraryDidChange: PKPassLibraryNotificationName
  @available(watchOS 3.0, *)
  static let PKPassLibraryRemotePaymentPassesDidChange: PKPassLibraryNotificationName
}
struct PKPassLibraryNotificationKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PKPassLibraryNotificationKey {
  @available(watchOS 3.0, *)
  static let addedPassesUserInfoKey: PKPassLibraryNotificationKey
  @available(watchOS 3.0, *)
  static let replacementPassesUserInfoKey: PKPassLibraryNotificationKey
  @available(watchOS 3.0, *)
  static let removedPassInfosUserInfoKey: PKPassLibraryNotificationKey
  @available(watchOS 3.0, *)
  static let passTypeIdentifierUserInfoKey: PKPassLibraryNotificationKey
  @available(watchOS 3.0, *)
  static let serialNumberUserInfoKey: PKPassLibraryNotificationKey
}
