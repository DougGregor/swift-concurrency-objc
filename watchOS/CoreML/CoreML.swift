
@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension MLModel {
  class func load(contentsOf url: URL, configuration: MLModelConfiguration = MLModelConfiguration(), completionHandler handler: @escaping (Result<MLModel, Error>) -> ())
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension MLMultiArray {
  @inlinable convenience init<C>(_ data: C) throws where C : Collection, C.Element : FixedWidthInteger
  @inlinable convenience init<C>(_ data: C) throws where C : Collection, C.Element == Float
  @inlinable convenience init<C>(_ data: C) throws where C : Collection, C.Element == Double
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension UnsafeBufferPointer {
  init(_ multiArray: MLMultiArray) throws
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension UnsafeMutableBufferPointer {
  init(_ multiArray: MLMultiArray) throws
}

