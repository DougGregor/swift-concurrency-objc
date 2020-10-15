
typealias MSPresentationAnchor = UIWindow
protocol MSAuthenticationPresentationContext : NSObjectProtocol {
  @available(iOS 2.0, *)
  func presentationAnchor() -> MSPresentationAnchor?
}
@available(iOS 14.0, *)
class MSSetupSession : NSObject {
  init(serviceAccount: MSServiceAccount)
  func start() throws
  weak var presentationContext: @sil_weak MSAuthenticationPresentationContext?
  var account: MSServiceAccount { get }
}
