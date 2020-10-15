
@available(iOS 12.0, *)
class CPWindow : UIWindow {
  var mapButtonSafeAreaLayoutGuide: UILayoutGuide { get }
  weak var templateApplicationScene: @sil_weak CPTemplateApplicationScene?
}
