
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
  @available(macOS 10.2, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.5, *)
  /*not inherited*/ init?(sequentialInfo info: UnsafeMutableRawPointer?, callbacks: UnsafePointer<CGDataProviderSequentialCallbacks>)
  @available(macOS 10.5, *)
  /*not inherited*/ init?(directInfo info: UnsafeMutableRawPointer?, size: off_t, callbacks: UnsafePointer<CGDataProviderDirectCallbacks>)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(dataInfo info: UnsafeMutableRawPointer?, data: UnsafeRawPointer, size: Int, releaseData: CGDataProviderReleaseDataCallback)
  @available(macOS 10.4, *)
  /*not inherited*/ init?(data: CFData)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(url: CFURL)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(filename: UnsafePointer<CChar>)
  @available(macOS 10.3, *)
  var data: CFData? { get }
  @available(macOS 10.13, *)
  var info: UnsafeMutableRawPointer? { get }
}
typealias CGDataProviderReleaseDataCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeRawPointer, Int) -> Void
