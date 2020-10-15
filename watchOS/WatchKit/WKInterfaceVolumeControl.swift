
@available(watchOS 5.0, *)
class WKInterfaceVolumeControl : WKInterfaceObject {
  @available(watchOS 6.0, *)
  init(origin: WKInterfaceVolumeControl.Origin)
  func setTintColor(_ tintColor: UIColor?)
  @available(watchOS 6.0, *)
  func focus()
  @available(watchOS 6.0, *)
  func resignFocus()
}
extension WKInterfaceVolumeControl {
  @available(watchOS 6.0, *)
  enum Origin : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case local
    case companion
  }
}
