
@available(watchOS 6.0, *)
protocol MLWritable : NSObjectProtocol {
  func write(to url: URL) throws
}
