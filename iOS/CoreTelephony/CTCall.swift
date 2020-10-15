
@available(iOS, introduced: 4.0, deprecated: 10.0, message: "Replaced by <CallKit/CXCall.h> properties")
let CTCallStateDialing: String
@available(iOS, introduced: 4.0, deprecated: 10.0, message: "Replaced by <CallKit/CXCall.h> properties")
let CTCallStateIncoming: String
@available(iOS, introduced: 4.0, deprecated: 10.0, message: "Replaced by <CallKit/CXCall.h> properties")
let CTCallStateConnected: String
@available(iOS, introduced: 4.0, deprecated: 10.0, message: "Replaced by <CallKit/CXCall.h> properties")
let CTCallStateDisconnected: String
@available(iOS 4.0, *)
class CTCall : NSObject {
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Replaced by <CallKit/CXCall.h> properties")
  var callState: String { get }
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Replaced by <CallKit/CXCall.h> properties")
  var callID: String { get }
}
