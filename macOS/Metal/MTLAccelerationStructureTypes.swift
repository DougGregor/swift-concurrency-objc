
struct _MTLPackedFloat3 {
  struct __Unnamed_union___Anonymous_field0 {
    struct __Unnamed_struct___Anonymous_field0 {
      var x: Float
      var y: Float
      var z: Float
      init()
      init(x: Float, y: Float, z: Float)
    }
    var __Anonymous_field0: _MTLPackedFloat3.__Unnamed_union___Anonymous_field0.__Unnamed_struct___Anonymous_field0
    var x: Float
    var y: Float
    var z: Float
    var elements: (Float, Float, Float)
    init(_ __Anonymous_field0: _MTLPackedFloat3.__Unnamed_union___Anonymous_field0.__Unnamed_struct___Anonymous_field0)
    init(elements: (Float, Float, Float))
    init()
  }
  var __Anonymous_field0: _MTLPackedFloat3.__Unnamed_union___Anonymous_field0
  var x: Float
  var y: Float
  var z: Float
  var elements: (Float, Float, Float)
  init()
  init(_ __Anonymous_field0: _MTLPackedFloat3.__Unnamed_union___Anonymous_field0)
}
typealias MTLPackedFloat3 = _MTLPackedFloat3
struct _MTLPackedFloat4x3 {
  var columns: (MTLPackedFloat3, MTLPackedFloat3, MTLPackedFloat3, MTLPackedFloat3)
  init()
  init(columns: (MTLPackedFloat3, MTLPackedFloat3, MTLPackedFloat3, MTLPackedFloat3))
}
typealias MTLPackedFloat4x3 = _MTLPackedFloat4x3
struct _MTLAxisAlignedBoundingBox {
  var min: MTLPackedFloat3
  var max: MTLPackedFloat3
  init()
  init(min: MTLPackedFloat3, max: MTLPackedFloat3)
}
typealias MTLAxisAlignedBoundingBox = _MTLAxisAlignedBoundingBox
