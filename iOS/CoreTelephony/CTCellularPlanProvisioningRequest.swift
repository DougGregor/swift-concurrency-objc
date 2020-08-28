
@available(iOS 12.0, iOS 12.0, *)
enum CTCellularPlanProvisioningAddPlanResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS 12.0, *)
  case unknown
  @available(iOS 12.0, *)
  case fail
  @available(iOS 12.0, *)
  case success
}
@available(iOS 12.0, *)
class CTCellularPlanProvisioningRequest : NSObject, NSSecureCoding {
  @available(iOS 12.0, *)
  var address: String
  @available(iOS 12.0, *)
  var matchingID: String?
  @available(iOS 12.0, *)
  var oid: String?
  @available(iOS 12.0, *)
  var confirmationCode: String?
  @available(iOS 12.0, *)
  var iccid: String?
  @available(iOS 12.0, *)
  var eid: String?
}
