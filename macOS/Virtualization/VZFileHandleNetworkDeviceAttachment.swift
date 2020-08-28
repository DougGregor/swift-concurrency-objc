
@available(macOS 11.0, *)
class VZFileHandleNetworkDeviceAttachment : VZNetworkDeviceAttachment {
  init(fileHandle: FileHandle)
  var fileHandle: FileHandle { get }
}
