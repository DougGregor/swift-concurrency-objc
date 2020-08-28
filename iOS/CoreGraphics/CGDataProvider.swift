
class CGDataProvider : _CFObject {
}
typealias CGDataProviderGetBytesCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer, Int) -> Int
typealias CGDataProviderSkipForwardCallback = @convention(c) (UnsafeMutableRawPointer?, off_t) -> off_t
typealias CGDataProviderRewindCallback = @convention(c) (UnsafeMutableRawPointer?) -> Void
typealias CGDataProviderReleaseInfoCallback = @convention(c) (UnsafeMutableRawPointer?) -> Void
struct CGDataProviderSequentialCallbacks {
  var version: UInt32
  var getBytes: CGDataProviderGetBytesCallback?
  var skipForward: CGDataProviderSkipForwardCallback?
  var rewind: CGDataProviderRewindCallback?
  var releaseInfo: CGDataProviderReleaseInfoCallback?
  init()
  init(version: UInt32, getBytes: CGDataProviderGetBytesCallback?, skipForward: CGDataProviderSkipForwardCallback?, rewind: CGDataProviderRewindCallback?, releaseInfo: CGDataProviderReleaseInfoCallback?)
}
typealias CGDataProviderGetBytePointerCallback = @convention(c) (UnsafeMutableRawPointer?) -> UnsafeRawPointer?
typealias CGDataProviderReleaseBytePointerCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeRawPointer) -> Void
typealias CGDataProviderGetBytesAtPositionCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer, off_t, Int) -> Int
struct CGDataProviderDirectCallbacks {
  var version: UInt32
  var getBytePointer: CGDataProviderGetBytePointerCallback?
  var releaseBytePointer: CGDataProviderReleaseBytePointerCallback?
  var getBytesAtPosition: CGDataProviderGetBytesAtPositionCallback?
  var releaseInfo: CGDataProviderReleaseInfoCallback?
  init()
  init(version: UInt32, getBytePointer: CGDataProviderGetBytePointerCallback?, releaseBytePointer: CGDataProviderReleaseBytePointerCallback?, getBytesAtPosition: CGDataProviderGetBytesAtPositionCallback?, releaseInfo: CGDataProviderReleaseInfoCallback?)
}
extension CGDataProvider {
  @available(iOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(iOS 2.0, *)
  /*not inherited*/ init?(sequentialInfo info: UnsafeMutableRawPointer?, callbacks: UnsafePointer<CGDataProviderSequentialCallbacks>)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(directInfo info: UnsafeMutableRawPointer?, size: off_t, callbacks: UnsafePointer<CGDataProviderDirectCallbacks>)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(dataInfo info: UnsafeMutableRawPointer?, data: UnsafeRawPointer, size: Int, releaseData: CGDataProviderReleaseDataCallback)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(data: CFData)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(url: CFURL)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(filename: UnsafePointer<CChar>)
  @available(iOS 2.0, *)
  var data: CFData? { get }
  @available(iOS 11.0, *)
  var info: UnsafeMutableRawPointer? { get }
}
typealias CGDataProviderReleaseDataCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeRawPointer, Int) -> Void
