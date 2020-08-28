
@available(iOS 11.0, *)
enum ILMessageFilterAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case allow
  case junk
  @available(iOS, introduced: 11.0, deprecated: 14.0, renamed: "ILMessageFilterAction.junk")
  static var filter: ILMessageFilterAction { get }
  @available(iOS 14.0, *)
  case promotion
  @available(iOS 14.0, *)
  case transaction
}
