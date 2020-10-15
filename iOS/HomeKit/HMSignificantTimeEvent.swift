
@available(iOS 11.0, *)
class HMSignificantTimeEvent : HMTimeEvent, NSCopying, NSMutableCopying {
  init(significantEvent: HMSignificantEvent, offset: DateComponents?)
  var significantEvent: HMSignificantEvent { get }
  var offset: DateComponents? { get }
}
@available(iOS 11.0, *)
class HMMutableSignificantTimeEvent : HMSignificantTimeEvent {
}
