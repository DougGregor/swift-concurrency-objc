
@available(watchOS 3.2, *)
class INIntentResolutionResult : NSObject {
  class func needsValue() -> Self
  class func notRequired() -> Self
  class func unsupported() -> Self
}
