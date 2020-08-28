
@available(iOS 12.0, *)
enum ILClassificationAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case reportNotJunk
  case reportJunk
  case reportJunkAndBlockSender
}
