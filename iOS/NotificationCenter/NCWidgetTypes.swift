
@available(iOS, introduced: 10.0, deprecated: 14.0, message: "Use WidgetKit instead. Today View extensions have been deprecated.")
enum NCWidgetDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case compact
  case expanded
}
