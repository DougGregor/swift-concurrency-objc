
class CGDataConsumer : _CFObject {
}
typealias CGDataConsumerPutBytesCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeRawPointer, Int) -> Int
typealias CGDataConsumerReleaseInfoCallback = @convention(c) (UnsafeMutableRawPointer?) -> Void
struct CGDataConsumerCallbacks {
  var putBytes: CGDataConsumerPutBytesCallback?
  var releaseConsumer: CGDataConsumerReleaseInfoCallback?
  init()
  init(putBytes: CGDataConsumerPutBytesCallback?, releaseConsumer: CGDataConsumerReleaseInfoCallback?)
}
extension CGDataConsumer {
  @available(watchOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(info: UnsafeMutableRawPointer?, cbks: UnsafePointer<CGDataConsumerCallbacks>)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(url: CFURL)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(data: CFMutableData)
}
