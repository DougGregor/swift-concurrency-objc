
@available(iOS 8.0, *)
class SLComposeServiceViewController : UIViewController, UITextViewDelegate {
  func presentationAnimationDidFinish()
  var textView: UITextView! { get }
  var contentText: String! { get }
  var placeholder: String!
  func didSelectPost()
  func didSelectCancel()
  func cancel()
  func isContentValid() -> Bool
  func validateContent()
  var charactersRemaining: NSNumber!
  func configurationItems() -> [Any]!
  func reloadConfigurationItems()
  func pushConfigurationViewController(_ viewController: UIViewController!)
  func popConfigurationViewController()
  func loadPreviewView() -> UIView!
  var autoCompletionViewController: UIViewController!
}
