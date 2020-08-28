
@available(iOS 14.0, *)
class MSSetupViewController : UIViewController {
  @NSCopying var serviceAccount: MSServiceAccount { get }
  init(serviceAccount: MSServiceAccount)
}
