
@available(macOS 10.15, *)
class MLUpdateProgressHandlers : NSObject {
  init(forEvents interestedEvents: MLUpdateProgressEvent, progressHandler: ((MLUpdateContext) -> Void)?, completionHandler: @escaping (MLUpdateContext) -> Void)
}
