
@available(macOS 10.15, *)
protocol MLWritable : NSObjectProtocol {
  func write(to url: URL) throws
}
