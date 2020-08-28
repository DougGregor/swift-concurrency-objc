
@available(tvOS 13.0, *)
struct HMHomeManagerAuthorizationStatus : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var determined: HMHomeManagerAuthorizationStatus { get }
  static var restricted: HMHomeManagerAuthorizationStatus { get }
  static var authorized: HMHomeManagerAuthorizationStatus { get }
}
@available(tvOS 10.0, *)
class HMHomeManager : NSObject {
  weak var delegate: @sil_weak HMHomeManagerDelegate?
  @available(tvOS 13.0, *)
  var authorizationStatus: HMHomeManagerAuthorizationStatus { get }
  var primaryHome: HMHome? { get }
  var homes: [HMHome] { get }
  func updatePrimaryHome(_ home: HMHome, completionHandler completion: @escaping (Error?) -> Void)
  func updatePrimaryHome(_ home: HMHome) async throws
  func addHome(withName homeName: String, completionHandler completion: @escaping (HMHome?, Error?) -> Void)
  func addHome(withName homeName: String) async throws -> HMHome?
  func removeHome(_ home: HMHome, completionHandler completion: @escaping (Error?) -> Void)
  func removeHome(_ home: HMHome) async throws
}
@available(tvOS 10.0, *)
protocol HMHomeManagerDelegate : NSObjectProtocol {
  @available(tvOS 13.0, *)
  optional func homeManager(_ manager: HMHomeManager, didUpdate status: HMHomeManagerAuthorizationStatus)
  optional func homeManagerDidUpdateHomes(_ manager: HMHomeManager)
  optional func homeManagerDidUpdatePrimaryHome(_ manager: HMHomeManager)
  optional func homeManager(_ manager: HMHomeManager, didAdd home: HMHome)
  optional func homeManager(_ manager: HMHomeManager, didRemove home: HMHome)
  @available(tvOS 13.0, *)
  optional func homeManager(_ manager: HMHomeManager, didReceiveAddAccessoryRequest request: HMAddAccessoryRequest)
}
