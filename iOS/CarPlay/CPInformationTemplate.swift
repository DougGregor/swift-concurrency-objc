
@available(iOS 14.0, *)
enum CPInformationTemplateLayout : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leading
  case twoColumn
}
@available(iOS 14.0, *)
class CPInformationTemplate : CPTemplate {
  init(title: String, layout: CPInformationTemplateLayout, items: [CPInformationItem], actions: [CPTextButton])
  var layout: CPInformationTemplateLayout { get }
  var title: String
  var items: [CPInformationItem]
  var actions: [CPTextButton]
}
