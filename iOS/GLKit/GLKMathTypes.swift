
struct _GLKMatrix2 {
  struct __Unnamed_struct___Anonymous_field0 {
    var m00: Float
    var m01: Float
    var m10: Float
    var m11: Float
    init()
    init(m00: Float, m01: Float, m10: Float, m11: Float)
  }
  var __Anonymous_field0: _GLKMatrix2.__Unnamed_struct___Anonymous_field0
  var m00: Float
  var m01: Float
  var m10: Float
  var m11: Float
  var m2: ((Float, Float), (Float, Float))
  var m: (Float, Float, Float, Float)
  init(_ __Anonymous_field0: _GLKMatrix2.__Unnamed_struct___Anonymous_field0)
  init(m2: ((Float, Float), (Float, Float)))
  init(m: (Float, Float, Float, Float))
  init()
}

extension _GLKMatrix2 {
  @inlinable subscript(i: Int) -> Float { get }
}
typealias GLKMatrix2 = _GLKMatrix2
struct _GLKMatrix3 {
  struct __Unnamed_struct___Anonymous_field0 {
    var m00: Float
    var m01: Float
    var m02: Float
    var m10: Float
    var m11: Float
    var m12: Float
    var m20: Float
    var m21: Float
    var m22: Float
    init()
    init(m00: Float, m01: Float, m02: Float, m10: Float, m11: Float, m12: Float, m20: Float, m21: Float, m22: Float)
  }
  var __Anonymous_field0: _GLKMatrix3.__Unnamed_struct___Anonymous_field0
  var m00: Float
  var m01: Float
  var m02: Float
  var m10: Float
  var m11: Float
  var m12: Float
  var m20: Float
  var m21: Float
  var m22: Float
  var m: (Float, Float, Float, Float, Float, Float, Float, Float, Float)
  init(_ __Anonymous_field0: _GLKMatrix3.__Unnamed_struct___Anonymous_field0)
  init(m: (Float, Float, Float, Float, Float, Float, Float, Float, Float))
  init()
}

extension _GLKMatrix3 {
  @inlinable subscript(i: Int) -> Float { get }
}
typealias GLKMatrix3 = _GLKMatrix3
struct _GLKMatrix4 {
  struct __Unnamed_struct___Anonymous_field0 {
    var m00: Float
    var m01: Float
    var m02: Float
    var m03: Float
    var m10: Float
    var m11: Float
    var m12: Float
    var m13: Float
    var m20: Float
    var m21: Float
    var m22: Float
    var m23: Float
    var m30: Float
    var m31: Float
    var m32: Float
    var m33: Float
    init()
    init(m00: Float, m01: Float, m02: Float, m03: Float, m10: Float, m11: Float, m12: Float, m13: Float, m20: Float, m21: Float, m22: Float, m23: Float, m30: Float, m31: Float, m32: Float, m33: Float)
  }
  var __Anonymous_field0: _GLKMatrix4.__Unnamed_struct___Anonymous_field0
  var m00: Float
  var m01: Float
  var m02: Float
  var m03: Float
  var m10: Float
  var m11: Float
  var m12: Float
  var m13: Float
  var m20: Float
  var m21: Float
  var m22: Float
  var m23: Float
  var m30: Float
  var m31: Float
  var m32: Float
  var m33: Float
  var m: (Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float)
  init(_ __Anonymous_field0: _GLKMatrix4.__Unnamed_struct___Anonymous_field0)
  init(m: (Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float, Float))
  init()
}

extension _GLKMatrix4 {
  @inlinable subscript(i: Int) -> Float { get }
}
typealias GLKMatrix4 = _GLKMatrix4
struct _GLKVector2 {
  struct __Unnamed_struct___Anonymous_field0 {
    var x: Float
    var y: Float
    init()
    init(x: Float, y: Float)
  }
  struct __Unnamed_struct___Anonymous_field1 {
    var s: Float
    var t: Float
    init()
    init(s: Float, t: Float)
  }
  var __Anonymous_field0: _GLKVector2.__Unnamed_struct___Anonymous_field0
  var x: Float
  var y: Float
  var __Anonymous_field1: _GLKVector2.__Unnamed_struct___Anonymous_field1
  var s: Float
  var t: Float
  var v: (Float, Float)
  init(_ __Anonymous_field0: _GLKVector2.__Unnamed_struct___Anonymous_field0)
  init(_ __Anonymous_field1: _GLKVector2.__Unnamed_struct___Anonymous_field1)
  init(v: (Float, Float))
  init()
}

extension _GLKVector2 {
  @inlinable subscript(i: Int) -> Float { get }
}
typealias GLKVector2 = _GLKVector2
struct _GLKVector3 {
  struct __Unnamed_struct___Anonymous_field0 {
    var x: Float
    var y: Float
    var z: Float
    init()
    init(x: Float, y: Float, z: Float)
  }
  struct __Unnamed_struct___Anonymous_field1 {
    var r: Float
    var g: Float
    var b: Float
    init()
    init(r: Float, g: Float, b: Float)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s: Float
    var t: Float
    var p: Float
    init()
    init(s: Float, t: Float, p: Float)
  }
  var __Anonymous_field0: _GLKVector3.__Unnamed_struct___Anonymous_field0
  var x: Float
  var y: Float
  var z: Float
  var __Anonymous_field1: _GLKVector3.__Unnamed_struct___Anonymous_field1
  var r: Float
  var g: Float
  var b: Float
  var __Anonymous_field2: _GLKVector3.__Unnamed_struct___Anonymous_field2
  var s: Float
  var t: Float
  var p: Float
  var v: (Float, Float, Float)
  init(_ __Anonymous_field0: _GLKVector3.__Unnamed_struct___Anonymous_field0)
  init(_ __Anonymous_field1: _GLKVector3.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: _GLKVector3.__Unnamed_struct___Anonymous_field2)
  init(v: (Float, Float, Float))
  init()
}

extension _GLKVector3 {
  @inlinable subscript(i: Int) -> Float { get }
}
typealias GLKVector3 = _GLKVector3
struct _GLKVector4 {
  struct __Unnamed_struct___Anonymous_field0 {
    var x: Float
    var y: Float
    var z: Float
    var w: Float
    init()
    init(x: Float, y: Float, z: Float, w: Float)
  }
  struct __Unnamed_struct___Anonymous_field1 {
    var r: Float
    var g: Float
    var b: Float
    var a: Float
    init()
    init(r: Float, g: Float, b: Float, a: Float)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s: Float
    var t: Float
    var p: Float
    var q: Float
    init()
    init(s: Float, t: Float, p: Float, q: Float)
  }
  var __Anonymous_field0: _GLKVector4.__Unnamed_struct___Anonymous_field0
  var x: Float
  var y: Float
  var z: Float
  var w: Float
  var __Anonymous_field1: _GLKVector4.__Unnamed_struct___Anonymous_field1
  var r: Float
  var g: Float
  var b: Float
  var a: Float
  var __Anonymous_field2: _GLKVector4.__Unnamed_struct___Anonymous_field2
  var s: Float
  var t: Float
  var p: Float
  var q: Float
  var v: (Float, Float, Float, Float)
  init(_ __Anonymous_field0: _GLKVector4.__Unnamed_struct___Anonymous_field0)
  init(_ __Anonymous_field1: _GLKVector4.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: _GLKVector4.__Unnamed_struct___Anonymous_field2)
  init(v: (Float, Float, Float, Float))
  init()
}

extension _GLKVector4 {
  @inlinable subscript(i: Int) -> Float { get }
}
typealias GLKVector4 = _GLKVector4
struct _GLKQuaternion {
  struct __Unnamed_struct___Anonymous_field0 {
    var x: Float
    var y: Float
    var z: Float
    var w: Float
    init()
    init(x: Float, y: Float, z: Float, w: Float)
  }
  struct __Unnamed_struct___Anonymous_field1 {
    var v: GLKVector3
    var s: Float
    init()
    init(v: GLKVector3, s: Float)
  }
  var __Anonymous_field0: _GLKQuaternion.__Unnamed_struct___Anonymous_field0
  var x: Float
  var y: Float
  var z: Float
  var w: Float
  var __Anonymous_field1: _GLKQuaternion.__Unnamed_struct___Anonymous_field1
  var v: GLKVector3
  var s: Float
  var q: (Float, Float, Float, Float)
  init(_ __Anonymous_field0: _GLKQuaternion.__Unnamed_struct___Anonymous_field0)
  init(_ __Anonymous_field1: _GLKQuaternion.__Unnamed_struct___Anonymous_field1)
  init(q: (Float, Float, Float, Float))
  init()
}

extension _GLKQuaternion {
  @inlinable subscript(i: Int) -> Float { get }
}
typealias GLKQuaternion = _GLKQuaternion
