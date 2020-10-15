
@available(macOS 10.12, *)
class NSFilePromiseReceiver : NSObject, NSPasteboardReading {
  class var readableDraggedTypes: [String] { get }
  var fileTypes: [String] { get }
  var fileNames: [String] { get }
  func receivePromisedFiles(atDestination destinationDir: URL, options: [AnyHashable : Any] = [:], operationQueue: OperationQueue, reader: @escaping (URL, Error?) -> Void)
}
