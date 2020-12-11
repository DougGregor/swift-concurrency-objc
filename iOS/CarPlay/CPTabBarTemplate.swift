
@available(iOS 14.0, *)
class CPTabBarTemplate : CPTemplate {
  init(templates: [CPTemplate])
  weak var delegate: @sil_weak CPTabBarTemplateDelegate?
  class var maximumTabCount: Int { get }
  var templates: [CPTemplate] { get }
  var selectedTemplate: CPTemplate? { get }
  func updateTemplates(_ newTemplates: [CPTemplate])
}
@available(iOS 14.0, *)
protocol CPTabBarTemplateDelegate : NSObjectProtocol {
  func tabBarTemplate(_ tabBarTemplate: CPTabBarTemplate, didSelect selectedTemplate: CPTemplate)
}
