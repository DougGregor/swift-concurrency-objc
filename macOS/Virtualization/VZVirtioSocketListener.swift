
@available(macOS 11.0, *)
class VZVirtioSocketListener : NSObject {
  weak var delegate: @sil_weak VZVirtioSocketListenerDelegate?
}
protocol VZVirtioSocketListenerDelegate : NSObjectProtocol {
  @available(macOS 11.0, *)
  optional func listener(_ listener: VZVirtioSocketListener, shouldAcceptNewConnection connection: VZVirtioSocketConnection, from socketDevice: VZVirtioSocketDevice) -> Bool
}
