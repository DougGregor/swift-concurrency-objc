
@available(iOS 10.0, *)
class CXCallUpdate : NSObject, NSCopying {
  @NSCopying var remoteHandle: CXHandle?
  var localizedCallerName: String?
  var supportsHolding: Bool
  var supportsGrouping: Bool
  var supportsUngrouping: Bool
  var supportsDTMF: Bool
  var hasVideo: Bool
}
