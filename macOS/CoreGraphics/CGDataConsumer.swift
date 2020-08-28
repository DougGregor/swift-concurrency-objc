
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
  @available(macOS 10.2, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.0, *)
  /*not inherited*/ init?(info: UnsafeMutableRawPointer?, cbks: UnsafePointer<CGDataConsumerCallbacks>)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(url: CFURL)
  @available(macOS 10.4, *)
  /*not inherited*/ init?(data: CFMutableData)
}
