
@available(iOS 13.0, *)
class MTLRasterizationRateSampleArray : NSObject {
  func __objectAtIndexedSubscript(_ index: Int) -> NSNumber
  func __setObject(_ value: NSNumber, atIndexedSubscript index: Int)
}

@available(macOS 10.15.4, macCatalyst 13.4, iOS 13.0, *)
extension MTLRasterizationRateSampleArray {
  subscript(index: Int) -> Float
}
@available(iOS 13.0, *)
class MTLRasterizationRateLayerDescriptor : NSObject, NSCopying {
  init(sampleCount: MTLSize)
  convenience init(__sampleCount sampleCount: MTLSize, horizontal: UnsafePointer<Float>, vertical: UnsafePointer<Float>)
  var sampleCount: MTLSize { get }
  var __horizontalSampleStorage: UnsafeMutablePointer<Float> { get }
  var __verticalSampleStorage: UnsafeMutablePointer<Float> { get }
  var horizontal: MTLRasterizationRateSampleArray { get }
  var vertical: MTLRasterizationRateSampleArray { get }
}

@available(macOS 10.15.4, macCatalyst 13.4, iOS 13.0, *)
extension MTLRasterizationRateLayerDescriptor {
  convenience init(horizontal: [Float], vertical: [Float])
}
@available(iOS 13.0, *)
class MTLRasterizationRateLayerArray : NSObject {
  subscript(layerIndex: Int) -> MTLRasterizationRateLayerDescriptor?
}
@available(iOS 13.0, *)
class MTLRasterizationRateMapDescriptor : NSObject, NSCopying {
  /*not inherited*/ init(__screenSize screenSize: MTLSize)
  /*not inherited*/ init(__screenSize screenSize: MTLSize, layer: MTLRasterizationRateLayerDescriptor)
  /*not inherited*/ init(__screenSize screenSize: MTLSize, layerCount: Int, layers: UnsafePointer<MTLRasterizationRateLayerDescriptor>)
  func layer(at layerIndex: Int) -> MTLRasterizationRateLayerDescriptor?
  func setLayer(_ layer: MTLRasterizationRateLayerDescriptor?, at layerIndex: Int)
  var layers: MTLRasterizationRateLayerArray { get }
  var screenSize: MTLSize
  var label: String?
  var layerCount: Int { get }
}

@available(macOS 10.15.4, macCatalyst 13.4, iOS 13.0, *)
extension MTLRasterizationRateMapDescriptor {
  convenience init(screenSize: MTLSize, label: String? = nil)
  convenience init(screenSize: MTLSize, layer: MTLRasterizationRateLayerDescriptor, label: String? = nil)
  convenience init(screenSize: MTLSize, layers: [MTLRasterizationRateLayerDescriptor], label: String? = nil)
}
@available(iOS 13.0, *)
protocol MTLRasterizationRateMap : NSObjectProtocol {
  var device: MTLDevice { get }
  var label: String? { get }
  var screenSize: MTLSize { get }
  var physicalGranularity: MTLSize { get }
  var layerCount: Int { get }
  var parameterDataSizeAndAlign: MTLSizeAndAlign { get }
  func copyParameterData(buffer: MTLBuffer, offset: Int)
  func physicalSize(layer layerIndex: Int) -> MTLSize
  func physicalCoordinates(screenCoordinates: MTLCoordinate2D, layer layerIndex: Int) -> MTLCoordinate2D
  func screenCoordinates(physicalCoordinates: MTLCoordinate2D, layer layerIndex: Int) -> MTLCoordinate2D
}
