
@available(iOS 13.0, *)
protocol MLWritable : NSObjectProtocol {
  func write(to url: URL) throws
}
