
extension AVAudioSession {
  @available(iOS 13.0, *)
  enum RouteSelection : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case local
    case external
  }
}
@available(iOS 13.0, *)
extension AVAudioSession {
  func prepareRouteSelectionForPlayback(completionHandler: @escaping (Bool, AVAudioSession.RouteSelection) -> Void)
}
