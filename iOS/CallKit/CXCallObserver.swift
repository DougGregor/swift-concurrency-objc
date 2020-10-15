
@available(iOS 10.0, *)
protocol CXCallObserverDelegate : NSObjectProtocol {
  func callObserver(_ callObserver: CXCallObserver, callChanged call: CXCall)
}
@available(iOS 10.0, *)
class CXCallObserver : NSObject {
  var calls: [CXCall] { get }
  func setDelegate(_ delegate: CXCallObserverDelegate?, queue: DispatchQueue?)
}
