
@available(iOS, introduced: 4.0, deprecated: 10.0, message: "Replaced by CXCallObserver from CallKit.framework")
class CTCallCenter : NSObject {
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Replaced by <CallKit/CXCallObserver.h>")
  var currentCalls: Set<CTCall>? { get }
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Replaced by <CallKit/CXCallObserver.h>")
  var callEventHandler: ((CTCall) -> Void)?
}
