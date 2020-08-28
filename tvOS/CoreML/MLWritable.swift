
@available(tvOS 14.0, *)
protocol MLWritable : NSObjectProtocol {
  func write(to url: URL) throws
}
