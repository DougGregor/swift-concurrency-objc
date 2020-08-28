
@available(tvOS 10.0, *)
enum UITextItemInteraction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invokeDefaultAction
  case presentActions
  case preview
}
