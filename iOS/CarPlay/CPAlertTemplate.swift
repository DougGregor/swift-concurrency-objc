
@available(iOS 12.0, *)
class CPAlertTemplate : CPTemplate {
  init(titleVariants: [String], actions: [CPAlertAction])
  var titleVariants: [String] { get }
  @available(iOS 14.0, *)
  class var maximumActionCount: Int { get }
  var actions: [CPAlertAction] { get }
}
