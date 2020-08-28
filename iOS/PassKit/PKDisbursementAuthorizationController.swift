
protocol PKDisbursementAuthorizationControllerDelegate : NSObjectProtocol {
  @available(iOS 12.2, *)
  func disbursementAuthorizationController(_ controller: PKDisbursementAuthorizationController, didAuthorizeWith disbursementVoucher: PKDisbursementVoucher)
  @available(iOS 12.2, *)
  func disbursementAuthorizationControllerDidFinish(_ controller: PKDisbursementAuthorizationController)
}
class PKDisbursementAuthorizationController : NSObject {
  @available(iOS 12.2, *)
  init?(disbursementRequest: PKDisbursementRequest, delegate: PKDisbursementAuthorizationControllerDelegate)
  @available(iOS 12.2, *)
  weak var delegate: @sil_weak PKDisbursementAuthorizationControllerDelegate? { get }
  @available(iOS 12.2, *)
  func authorizeDisbursement(completion: @escaping (Bool, Error?) -> Void)
  @available(iOS 12.2, *)
  func authorizeDisbursement() async throws -> Bool
  @available(iOS 12.2, *)
  class func supportsDisbursements() -> Bool
}
