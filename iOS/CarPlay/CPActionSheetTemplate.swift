
@available(iOS 12.0, *)
class CPActionSheetTemplate : CPTemplate {
  init(title: String?, message: String?, actions: [CPAlertAction])
  var title: String? { get }
  var message: String? { get }
  var actions: [CPAlertAction] { get }
}
