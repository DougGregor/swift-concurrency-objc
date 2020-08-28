
typealias cl_char = Int8
typealias cl_uchar = UInt8
typealias cl_short = Int16
typealias cl_ushort = UInt16
typealias cl_int = Int32
typealias cl_uint = UInt32
typealias cl_long = Int64
typealias cl_ulong = UInt64
typealias cl_half = UInt16
typealias cl_float = Float
typealias cl_double = Double
var CL_CHAR_BIT: Int32 { get }
var CL_SCHAR_MAX: Int32 { get }
var CL_CHAR_MAX: Int32 { get }
var CL_UCHAR_MAX: Int32 { get }
var CL_SHRT_MAX: Int32 { get }
var CL_USHRT_MAX: Int32 { get }
var CL_INT_MAX: Int32 { get }
var CL_UINT_MAX: UInt32 { get }
var CL_LONG_MAX: cl_long { get }
var CL_ULONG_MAX: cl_ulong { get }
var CL_FLT_DIG: Int32 { get }
var CL_FLT_MANT_DIG: Int32 { get }
var CL_FLT_MAX_10_EXP: Int32 { get }
var CL_FLT_MAX_EXP: Int32 { get }
var CL_FLT_MIN_10_EXP: Int32 { get }
var CL_FLT_MIN_EXP: Int32 { get }
var CL_FLT_RADIX: Int32 { get }
var CL_FLT_MAX: Float { get }
var CL_FLT_MIN: Float { get }
var CL_FLT_EPSILON: Float { get }
var CL_DBL_DIG: Int32 { get }
var CL_DBL_MANT_DIG: Int32 { get }
var CL_DBL_MAX_10_EXP: Int32 { get }
var CL_DBL_MAX_EXP: Int32 { get }
var CL_DBL_MIN_10_EXP: Int32 { get }
var CL_DBL_MIN_EXP: Int32 { get }
var CL_DBL_RADIX: Int32 { get }
var CL_DBL_MAX: Double { get }
var CL_DBL_MIN: Double { get }
var CL_DBL_EPSILON: Double { get }
var CL_M_E: Double { get }
var CL_M_LOG2E: Double { get }
var CL_M_LOG10E: Double { get }
var CL_M_LN2: Double { get }
var CL_M_LN10: Double { get }
var CL_M_PI: Double { get }
var CL_M_PI_2: Double { get }
var CL_M_PI_4: Double { get }
var CL_M_1_PI: Double { get }
var CL_M_2_PI: Double { get }
var CL_M_2_SQRTPI: Double { get }
var CL_M_SQRT2: Double { get }
var CL_M_SQRT1_2: Double { get }
var CL_M_E_F: Float { get }
var CL_M_LOG2E_F: Float { get }
var CL_M_LOG10E_F: Float { get }
var CL_M_LN2_F: Float { get }
var CL_M_LN10_F: Float { get }
var CL_M_PI_F: Float { get }
var CL_M_PI_2_F: Float { get }
var CL_M_PI_4_F: Float { get }
var CL_M_1_PI_F: Float { get }
var CL_M_2_PI_F: Float { get }
var CL_M_2_SQRTPI_F: Float { get }
var CL_M_SQRT2_F: Float { get }
var CL_M_SQRT1_2_F: Float { get }
var CL_MAXFLOAT: Float { get }
typealias cl_GLuint = UInt32
typealias cl_GLint = Int32
typealias cl_GLenum = UInt32
typealias __cl_float4 = SIMD4<Float>
var __CL_FLOAT4__: Int32 { get }
typealias __cl_uchar16 = SIMD16<cl_uchar>
typealias __cl_char16 = SIMD16<cl_char>
typealias __cl_ushort8 = SIMD8<cl_ushort>
typealias __cl_short8 = SIMD8<cl_short>
typealias __cl_uint4 = SIMD4<cl_uint>
typealias __cl_int4 = SIMD4<cl_int>
typealias __cl_ulong2 = SIMD2<cl_ulong>
typealias __cl_long2 = SIMD2<cl_long>
typealias __cl_double2 = SIMD2<cl_double>
var __CL_UCHAR16__: Int32 { get }
var __CL_CHAR16__: Int32 { get }
var __CL_USHORT8__: Int32 { get }
var __CL_SHORT8__: Int32 { get }
var __CL_INT4__: Int32 { get }
var __CL_UINT4__: Int32 { get }
var __CL_ULONG2__: Int32 { get }
var __CL_LONG2__: Int32 { get }
var __CL_DOUBLE2__: Int32 { get }
typealias __cl_uchar8 = SIMD8<cl_uchar>
typealias __cl_char8 = SIMD8<cl_char>
typealias __cl_ushort4 = SIMD4<cl_ushort>
typealias __cl_short4 = SIMD4<cl_short>
typealias __cl_uint2 = SIMD2<cl_uint>
typealias __cl_int2 = SIMD2<cl_int>
typealias __cl_ulong1 = cl_ulong
typealias __cl_long1 = cl_long
var __CL_UCHAR8__: Int32 { get }
var __CL_CHAR8__: Int32 { get }
var __CL_USHORT4__: Int32 { get }
var __CL_SHORT4__: Int32 { get }
var __CL_INT2__: Int32 { get }
var __CL_UINT2__: Int32 { get }
var __CL_ULONG1__: Int32 { get }
var __CL_LONG1__: Int32 { get }
var CL_HAS_NAMED_VECTOR_FIELDS: Int32 { get }
var CL_HAS_HI_LO_VECTOR_FIELDS: Int32 { get }
struct cl_char2 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_char
    var y: cl_char
    init()
    init(x: cl_char, y: cl_char)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_char
    var s1: cl_char
    init()
    init(s0: cl_char, s1: cl_char)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_char
    var hi: cl_char
    init()
    init(lo: cl_char, hi: cl_char)
  }
  var s: (cl_char, cl_char)
  var __Anonymous_field1: cl_char2.__Unnamed_struct___Anonymous_field1
  var x: cl_char
  var y: cl_char
  var __Anonymous_field2: cl_char2.__Unnamed_struct___Anonymous_field2
  var s0: cl_char
  var s1: cl_char
  var __Anonymous_field3: cl_char2.__Unnamed_struct___Anonymous_field3
  var lo: cl_char
  var hi: cl_char
  init(s: (cl_char, cl_char))
  init(_ __Anonymous_field1: cl_char2.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_char2.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_char2.__Unnamed_struct___Anonymous_field3)
  init()
}
struct cl_char4 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_char
    var y: cl_char
    var z: cl_char
    var w: cl_char
    init()
    init(x: cl_char, y: cl_char, z: cl_char, w: cl_char)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_char
    var s1: cl_char
    var s2: cl_char
    var s3: cl_char
    init()
    init(s0: cl_char, s1: cl_char, s2: cl_char, s3: cl_char)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_char2
    var hi: cl_char2
    init()
    init(lo: cl_char2, hi: cl_char2)
  }
  var s: (cl_char, cl_char, cl_char, cl_char)
  var __Anonymous_field1: cl_char4.__Unnamed_struct___Anonymous_field1
  var x: cl_char
  var y: cl_char
  var z: cl_char
  var w: cl_char
  var __Anonymous_field2: cl_char4.__Unnamed_struct___Anonymous_field2
  var s0: cl_char
  var s1: cl_char
  var s2: cl_char
  var s3: cl_char
  var __Anonymous_field3: cl_char4.__Unnamed_struct___Anonymous_field3
  var lo: cl_char2
  var hi: cl_char2
  init(s: (cl_char, cl_char, cl_char, cl_char))
  init(_ __Anonymous_field1: cl_char4.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_char4.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_char4.__Unnamed_struct___Anonymous_field3)
  init()
}
typealias cl_char3 = cl_char4
struct cl_char8 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_char
    var y: cl_char
    var z: cl_char
    var w: cl_char
    init()
    init(x: cl_char, y: cl_char, z: cl_char, w: cl_char)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_char
    var s1: cl_char
    var s2: cl_char
    var s3: cl_char
    var s4: cl_char
    var s5: cl_char
    var s6: cl_char
    var s7: cl_char
    init()
    init(s0: cl_char, s1: cl_char, s2: cl_char, s3: cl_char, s4: cl_char, s5: cl_char, s6: cl_char, s7: cl_char)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_char4
    var hi: cl_char4
    init()
    init(lo: cl_char4, hi: cl_char4)
  }
  var s: (cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char)
  var __Anonymous_field1: cl_char8.__Unnamed_struct___Anonymous_field1
  var x: cl_char
  var y: cl_char
  var z: cl_char
  var w: cl_char
  var __Anonymous_field2: cl_char8.__Unnamed_struct___Anonymous_field2
  var s0: cl_char
  var s1: cl_char
  var s2: cl_char
  var s3: cl_char
  var s4: cl_char
  var s5: cl_char
  var s6: cl_char
  var s7: cl_char
  var __Anonymous_field3: cl_char8.__Unnamed_struct___Anonymous_field3
  var lo: cl_char4
  var hi: cl_char4
  var v8: __cl_char8
  init(s: (cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char))
  init(_ __Anonymous_field1: cl_char8.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_char8.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_char8.__Unnamed_struct___Anonymous_field3)
  init(v8: __cl_char8)
  init()
}
struct cl_char16 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_char
    var y: cl_char
    var z: cl_char
    var w: cl_char
    var __spacer4: cl_char
    var __spacer5: cl_char
    var __spacer6: cl_char
    var __spacer7: cl_char
    var __spacer8: cl_char
    var __spacer9: cl_char
    var sa: cl_char
    var sb: cl_char
    var sc: cl_char
    var sd: cl_char
    var se: cl_char
    var sf: cl_char
    init()
    init(x: cl_char, y: cl_char, z: cl_char, w: cl_char, __spacer4: cl_char, __spacer5: cl_char, __spacer6: cl_char, __spacer7: cl_char, __spacer8: cl_char, __spacer9: cl_char, sa: cl_char, sb: cl_char, sc: cl_char, sd: cl_char, se: cl_char, sf: cl_char)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_char
    var s1: cl_char
    var s2: cl_char
    var s3: cl_char
    var s4: cl_char
    var s5: cl_char
    var s6: cl_char
    var s7: cl_char
    var s8: cl_char
    var s9: cl_char
    var sA: cl_char
    var sB: cl_char
    var sC: cl_char
    var sD: cl_char
    var sE: cl_char
    var sF: cl_char
    init()
    init(s0: cl_char, s1: cl_char, s2: cl_char, s3: cl_char, s4: cl_char, s5: cl_char, s6: cl_char, s7: cl_char, s8: cl_char, s9: cl_char, sA: cl_char, sB: cl_char, sC: cl_char, sD: cl_char, sE: cl_char, sF: cl_char)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_char8
    var hi: cl_char8
    init()
    init(lo: cl_char8, hi: cl_char8)
  }
  var s: (cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char)
  var __Anonymous_field1: cl_char16.__Unnamed_struct___Anonymous_field1
  var x: cl_char
  var y: cl_char
  var z: cl_char
  var w: cl_char
  var __spacer4: cl_char
  var __spacer5: cl_char
  var __spacer6: cl_char
  var __spacer7: cl_char
  var __spacer8: cl_char
  var __spacer9: cl_char
  var sa: cl_char
  var sb: cl_char
  var sc: cl_char
  var sd: cl_char
  var se: cl_char
  var sf: cl_char
  var __Anonymous_field2: cl_char16.__Unnamed_struct___Anonymous_field2
  var s0: cl_char
  var s1: cl_char
  var s2: cl_char
  var s3: cl_char
  var s4: cl_char
  var s5: cl_char
  var s6: cl_char
  var s7: cl_char
  var s8: cl_char
  var s9: cl_char
  var sA: cl_char
  var sB: cl_char
  var sC: cl_char
  var sD: cl_char
  var sE: cl_char
  var sF: cl_char
  var __Anonymous_field3: cl_char16.__Unnamed_struct___Anonymous_field3
  var lo: cl_char8
  var hi: cl_char8
  var v8: (__cl_char8, __cl_char8)
  var v16: __cl_char16
  init(s: (cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char, cl_char))
  init(_ __Anonymous_field1: cl_char16.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_char16.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_char16.__Unnamed_struct___Anonymous_field3)
  init(v8: (__cl_char8, __cl_char8))
  init(v16: __cl_char16)
  init()
}
struct cl_uchar2 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_uchar
    var y: cl_uchar
    init()
    init(x: cl_uchar, y: cl_uchar)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_uchar
    var s1: cl_uchar
    init()
    init(s0: cl_uchar, s1: cl_uchar)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_uchar
    var hi: cl_uchar
    init()
    init(lo: cl_uchar, hi: cl_uchar)
  }
  var s: (cl_uchar, cl_uchar)
  var __Anonymous_field1: cl_uchar2.__Unnamed_struct___Anonymous_field1
  var x: cl_uchar
  var y: cl_uchar
  var __Anonymous_field2: cl_uchar2.__Unnamed_struct___Anonymous_field2
  var s0: cl_uchar
  var s1: cl_uchar
  var __Anonymous_field3: cl_uchar2.__Unnamed_struct___Anonymous_field3
  var lo: cl_uchar
  var hi: cl_uchar
  init(s: (cl_uchar, cl_uchar))
  init(_ __Anonymous_field1: cl_uchar2.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_uchar2.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_uchar2.__Unnamed_struct___Anonymous_field3)
  init()
}
struct cl_uchar4 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_uchar
    var y: cl_uchar
    var z: cl_uchar
    var w: cl_uchar
    init()
    init(x: cl_uchar, y: cl_uchar, z: cl_uchar, w: cl_uchar)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_uchar
    var s1: cl_uchar
    var s2: cl_uchar
    var s3: cl_uchar
    init()
    init(s0: cl_uchar, s1: cl_uchar, s2: cl_uchar, s3: cl_uchar)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_uchar2
    var hi: cl_uchar2
    init()
    init(lo: cl_uchar2, hi: cl_uchar2)
  }
  var s: (cl_uchar, cl_uchar, cl_uchar, cl_uchar)
  var __Anonymous_field1: cl_uchar4.__Unnamed_struct___Anonymous_field1
  var x: cl_uchar
  var y: cl_uchar
  var z: cl_uchar
  var w: cl_uchar
  var __Anonymous_field2: cl_uchar4.__Unnamed_struct___Anonymous_field2
  var s0: cl_uchar
  var s1: cl_uchar
  var s2: cl_uchar
  var s3: cl_uchar
  var __Anonymous_field3: cl_uchar4.__Unnamed_struct___Anonymous_field3
  var lo: cl_uchar2
  var hi: cl_uchar2
  init(s: (cl_uchar, cl_uchar, cl_uchar, cl_uchar))
  init(_ __Anonymous_field1: cl_uchar4.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_uchar4.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_uchar4.__Unnamed_struct___Anonymous_field3)
  init()
}
typealias cl_uchar3 = cl_uchar4
struct cl_uchar8 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_uchar
    var y: cl_uchar
    var z: cl_uchar
    var w: cl_uchar
    init()
    init(x: cl_uchar, y: cl_uchar, z: cl_uchar, w: cl_uchar)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_uchar
    var s1: cl_uchar
    var s2: cl_uchar
    var s3: cl_uchar
    var s4: cl_uchar
    var s5: cl_uchar
    var s6: cl_uchar
    var s7: cl_uchar
    init()
    init(s0: cl_uchar, s1: cl_uchar, s2: cl_uchar, s3: cl_uchar, s4: cl_uchar, s5: cl_uchar, s6: cl_uchar, s7: cl_uchar)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_uchar4
    var hi: cl_uchar4
    init()
    init(lo: cl_uchar4, hi: cl_uchar4)
  }
  var s: (cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar)
  var __Anonymous_field1: cl_uchar8.__Unnamed_struct___Anonymous_field1
  var x: cl_uchar
  var y: cl_uchar
  var z: cl_uchar
  var w: cl_uchar
  var __Anonymous_field2: cl_uchar8.__Unnamed_struct___Anonymous_field2
  var s0: cl_uchar
  var s1: cl_uchar
  var s2: cl_uchar
  var s3: cl_uchar
  var s4: cl_uchar
  var s5: cl_uchar
  var s6: cl_uchar
  var s7: cl_uchar
  var __Anonymous_field3: cl_uchar8.__Unnamed_struct___Anonymous_field3
  var lo: cl_uchar4
  var hi: cl_uchar4
  var v8: __cl_uchar8
  init(s: (cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar))
  init(_ __Anonymous_field1: cl_uchar8.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_uchar8.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_uchar8.__Unnamed_struct___Anonymous_field3)
  init(v8: __cl_uchar8)
  init()
}
struct cl_uchar16 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_uchar
    var y: cl_uchar
    var z: cl_uchar
    var w: cl_uchar
    var __spacer4: cl_uchar
    var __spacer5: cl_uchar
    var __spacer6: cl_uchar
    var __spacer7: cl_uchar
    var __spacer8: cl_uchar
    var __spacer9: cl_uchar
    var sa: cl_uchar
    var sb: cl_uchar
    var sc: cl_uchar
    var sd: cl_uchar
    var se: cl_uchar
    var sf: cl_uchar
    init()
    init(x: cl_uchar, y: cl_uchar, z: cl_uchar, w: cl_uchar, __spacer4: cl_uchar, __spacer5: cl_uchar, __spacer6: cl_uchar, __spacer7: cl_uchar, __spacer8: cl_uchar, __spacer9: cl_uchar, sa: cl_uchar, sb: cl_uchar, sc: cl_uchar, sd: cl_uchar, se: cl_uchar, sf: cl_uchar)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_uchar
    var s1: cl_uchar
    var s2: cl_uchar
    var s3: cl_uchar
    var s4: cl_uchar
    var s5: cl_uchar
    var s6: cl_uchar
    var s7: cl_uchar
    var s8: cl_uchar
    var s9: cl_uchar
    var sA: cl_uchar
    var sB: cl_uchar
    var sC: cl_uchar
    var sD: cl_uchar
    var sE: cl_uchar
    var sF: cl_uchar
    init()
    init(s0: cl_uchar, s1: cl_uchar, s2: cl_uchar, s3: cl_uchar, s4: cl_uchar, s5: cl_uchar, s6: cl_uchar, s7: cl_uchar, s8: cl_uchar, s9: cl_uchar, sA: cl_uchar, sB: cl_uchar, sC: cl_uchar, sD: cl_uchar, sE: cl_uchar, sF: cl_uchar)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_uchar8
    var hi: cl_uchar8
    init()
    init(lo: cl_uchar8, hi: cl_uchar8)
  }
  var s: (cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar)
  var __Anonymous_field1: cl_uchar16.__Unnamed_struct___Anonymous_field1
  var x: cl_uchar
  var y: cl_uchar
  var z: cl_uchar
  var w: cl_uchar
  var __spacer4: cl_uchar
  var __spacer5: cl_uchar
  var __spacer6: cl_uchar
  var __spacer7: cl_uchar
  var __spacer8: cl_uchar
  var __spacer9: cl_uchar
  var sa: cl_uchar
  var sb: cl_uchar
  var sc: cl_uchar
  var sd: cl_uchar
  var se: cl_uchar
  var sf: cl_uchar
  var __Anonymous_field2: cl_uchar16.__Unnamed_struct___Anonymous_field2
  var s0: cl_uchar
  var s1: cl_uchar
  var s2: cl_uchar
  var s3: cl_uchar
  var s4: cl_uchar
  var s5: cl_uchar
  var s6: cl_uchar
  var s7: cl_uchar
  var s8: cl_uchar
  var s9: cl_uchar
  var sA: cl_uchar
  var sB: cl_uchar
  var sC: cl_uchar
  var sD: cl_uchar
  var sE: cl_uchar
  var sF: cl_uchar
  var __Anonymous_field3: cl_uchar16.__Unnamed_struct___Anonymous_field3
  var lo: cl_uchar8
  var hi: cl_uchar8
  var v8: (__cl_uchar8, __cl_uchar8)
  var v16: __cl_uchar16
  init(s: (cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar, cl_uchar))
  init(_ __Anonymous_field1: cl_uchar16.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_uchar16.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_uchar16.__Unnamed_struct___Anonymous_field3)
  init(v8: (__cl_uchar8, __cl_uchar8))
  init(v16: __cl_uchar16)
  init()
}
struct cl_short2 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_short
    var y: cl_short
    init()
    init(x: cl_short, y: cl_short)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_short
    var s1: cl_short
    init()
    init(s0: cl_short, s1: cl_short)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_short
    var hi: cl_short
    init()
    init(lo: cl_short, hi: cl_short)
  }
  var s: (cl_short, cl_short)
  var __Anonymous_field1: cl_short2.__Unnamed_struct___Anonymous_field1
  var x: cl_short
  var y: cl_short
  var __Anonymous_field2: cl_short2.__Unnamed_struct___Anonymous_field2
  var s0: cl_short
  var s1: cl_short
  var __Anonymous_field3: cl_short2.__Unnamed_struct___Anonymous_field3
  var lo: cl_short
  var hi: cl_short
  init(s: (cl_short, cl_short))
  init(_ __Anonymous_field1: cl_short2.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_short2.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_short2.__Unnamed_struct___Anonymous_field3)
  init()
}
struct cl_short4 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_short
    var y: cl_short
    var z: cl_short
    var w: cl_short
    init()
    init(x: cl_short, y: cl_short, z: cl_short, w: cl_short)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_short
    var s1: cl_short
    var s2: cl_short
    var s3: cl_short
    init()
    init(s0: cl_short, s1: cl_short, s2: cl_short, s3: cl_short)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_short2
    var hi: cl_short2
    init()
    init(lo: cl_short2, hi: cl_short2)
  }
  var s: (cl_short, cl_short, cl_short, cl_short)
  var __Anonymous_field1: cl_short4.__Unnamed_struct___Anonymous_field1
  var x: cl_short
  var y: cl_short
  var z: cl_short
  var w: cl_short
  var __Anonymous_field2: cl_short4.__Unnamed_struct___Anonymous_field2
  var s0: cl_short
  var s1: cl_short
  var s2: cl_short
  var s3: cl_short
  var __Anonymous_field3: cl_short4.__Unnamed_struct___Anonymous_field3
  var lo: cl_short2
  var hi: cl_short2
  var v4: __cl_short4
  init(s: (cl_short, cl_short, cl_short, cl_short))
  init(_ __Anonymous_field1: cl_short4.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_short4.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_short4.__Unnamed_struct___Anonymous_field3)
  init(v4: __cl_short4)
  init()
}
typealias cl_short3 = cl_short4
struct cl_short8 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_short
    var y: cl_short
    var z: cl_short
    var w: cl_short
    init()
    init(x: cl_short, y: cl_short, z: cl_short, w: cl_short)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_short
    var s1: cl_short
    var s2: cl_short
    var s3: cl_short
    var s4: cl_short
    var s5: cl_short
    var s6: cl_short
    var s7: cl_short
    init()
    init(s0: cl_short, s1: cl_short, s2: cl_short, s3: cl_short, s4: cl_short, s5: cl_short, s6: cl_short, s7: cl_short)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_short4
    var hi: cl_short4
    init()
    init(lo: cl_short4, hi: cl_short4)
  }
  var s: (cl_short, cl_short, cl_short, cl_short, cl_short, cl_short, cl_short, cl_short)
  var __Anonymous_field1: cl_short8.__Unnamed_struct___Anonymous_field1
  var x: cl_short
  var y: cl_short
  var z: cl_short
  var w: cl_short
  var __Anonymous_field2: cl_short8.__Unnamed_struct___Anonymous_field2
  var s0: cl_short
  var s1: cl_short
  var s2: cl_short
  var s3: cl_short
  var s4: cl_short
  var s5: cl_short
  var s6: cl_short
  var s7: cl_short
  var __Anonymous_field3: cl_short8.__Unnamed_struct___Anonymous_field3
  var lo: cl_short4
  var hi: cl_short4
  var v4: (__cl_short4, __cl_short4)
  var v8: __cl_short8
  init(s: (cl_short, cl_short, cl_short, cl_short, cl_short, cl_short, cl_short, cl_short))
  init(_ __Anonymous_field1: cl_short8.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_short8.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_short8.__Unnamed_struct___Anonymous_field3)
  init(v4: (__cl_short4, __cl_short4))
  init(v8: __cl_short8)
  init()
}
struct cl_ushort2 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_ushort
    var y: cl_ushort
    init()
    init(x: cl_ushort, y: cl_ushort)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_ushort
    var s1: cl_ushort
    init()
    init(s0: cl_ushort, s1: cl_ushort)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_ushort
    var hi: cl_ushort
    init()
    init(lo: cl_ushort, hi: cl_ushort)
  }
  var s: (cl_ushort, cl_ushort)
  var __Anonymous_field1: cl_ushort2.__Unnamed_struct___Anonymous_field1
  var x: cl_ushort
  var y: cl_ushort
  var __Anonymous_field2: cl_ushort2.__Unnamed_struct___Anonymous_field2
  var s0: cl_ushort
  var s1: cl_ushort
  var __Anonymous_field3: cl_ushort2.__Unnamed_struct___Anonymous_field3
  var lo: cl_ushort
  var hi: cl_ushort
  init(s: (cl_ushort, cl_ushort))
  init(_ __Anonymous_field1: cl_ushort2.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_ushort2.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_ushort2.__Unnamed_struct___Anonymous_field3)
  init()
}
struct cl_ushort4 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_ushort
    var y: cl_ushort
    var z: cl_ushort
    var w: cl_ushort
    init()
    init(x: cl_ushort, y: cl_ushort, z: cl_ushort, w: cl_ushort)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_ushort
    var s1: cl_ushort
    var s2: cl_ushort
    var s3: cl_ushort
    init()
    init(s0: cl_ushort, s1: cl_ushort, s2: cl_ushort, s3: cl_ushort)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_ushort2
    var hi: cl_ushort2
    init()
    init(lo: cl_ushort2, hi: cl_ushort2)
  }
  var s: (cl_ushort, cl_ushort, cl_ushort, cl_ushort)
  var __Anonymous_field1: cl_ushort4.__Unnamed_struct___Anonymous_field1
  var x: cl_ushort
  var y: cl_ushort
  var z: cl_ushort
  var w: cl_ushort
  var __Anonymous_field2: cl_ushort4.__Unnamed_struct___Anonymous_field2
  var s0: cl_ushort
  var s1: cl_ushort
  var s2: cl_ushort
  var s3: cl_ushort
  var __Anonymous_field3: cl_ushort4.__Unnamed_struct___Anonymous_field3
  var lo: cl_ushort2
  var hi: cl_ushort2
  var v4: __cl_ushort4
  init(s: (cl_ushort, cl_ushort, cl_ushort, cl_ushort))
  init(_ __Anonymous_field1: cl_ushort4.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_ushort4.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_ushort4.__Unnamed_struct___Anonymous_field3)
  init(v4: __cl_ushort4)
  init()
}
typealias cl_ushort3 = cl_ushort4
struct cl_ushort8 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_ushort
    var y: cl_ushort
    var z: cl_ushort
    var w: cl_ushort
    init()
    init(x: cl_ushort, y: cl_ushort, z: cl_ushort, w: cl_ushort)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_ushort
    var s1: cl_ushort
    var s2: cl_ushort
    var s3: cl_ushort
    var s4: cl_ushort
    var s5: cl_ushort
    var s6: cl_ushort
    var s7: cl_ushort
    init()
    init(s0: cl_ushort, s1: cl_ushort, s2: cl_ushort, s3: cl_ushort, s4: cl_ushort, s5: cl_ushort, s6: cl_ushort, s7: cl_ushort)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_ushort4
    var hi: cl_ushort4
    init()
    init(lo: cl_ushort4, hi: cl_ushort4)
  }
  var s: (cl_ushort, cl_ushort, cl_ushort, cl_ushort, cl_ushort, cl_ushort, cl_ushort, cl_ushort)
  var __Anonymous_field1: cl_ushort8.__Unnamed_struct___Anonymous_field1
  var x: cl_ushort
  var y: cl_ushort
  var z: cl_ushort
  var w: cl_ushort
  var __Anonymous_field2: cl_ushort8.__Unnamed_struct___Anonymous_field2
  var s0: cl_ushort
  var s1: cl_ushort
  var s2: cl_ushort
  var s3: cl_ushort
  var s4: cl_ushort
  var s5: cl_ushort
  var s6: cl_ushort
  var s7: cl_ushort
  var __Anonymous_field3: cl_ushort8.__Unnamed_struct___Anonymous_field3
  var lo: cl_ushort4
  var hi: cl_ushort4
  var v4: (__cl_ushort4, __cl_ushort4)
  var v8: __cl_ushort8
  init(s: (cl_ushort, cl_ushort, cl_ushort, cl_ushort, cl_ushort, cl_ushort, cl_ushort, cl_ushort))
  init(_ __Anonymous_field1: cl_ushort8.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_ushort8.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_ushort8.__Unnamed_struct___Anonymous_field3)
  init(v4: (__cl_ushort4, __cl_ushort4))
  init(v8: __cl_ushort8)
  init()
}
struct cl_int2 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_int
    var y: cl_int
    init()
    init(x: cl_int, y: cl_int)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_int
    var s1: cl_int
    init()
    init(s0: cl_int, s1: cl_int)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_int
    var hi: cl_int
    init()
    init(lo: cl_int, hi: cl_int)
  }
  var s: (cl_int, cl_int)
  var __Anonymous_field1: cl_int2.__Unnamed_struct___Anonymous_field1
  var x: cl_int
  var y: cl_int
  var __Anonymous_field2: cl_int2.__Unnamed_struct___Anonymous_field2
  var s0: cl_int
  var s1: cl_int
  var __Anonymous_field3: cl_int2.__Unnamed_struct___Anonymous_field3
  var lo: cl_int
  var hi: cl_int
  var v2: __cl_int2
  init(s: (cl_int, cl_int))
  init(_ __Anonymous_field1: cl_int2.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_int2.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_int2.__Unnamed_struct___Anonymous_field3)
  init(v2: __cl_int2)
  init()
}
struct cl_int4 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_int
    var y: cl_int
    var z: cl_int
    var w: cl_int
    init()
    init(x: cl_int, y: cl_int, z: cl_int, w: cl_int)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_int
    var s1: cl_int
    var s2: cl_int
    var s3: cl_int
    init()
    init(s0: cl_int, s1: cl_int, s2: cl_int, s3: cl_int)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_int2
    var hi: cl_int2
    init()
    init(lo: cl_int2, hi: cl_int2)
  }
  var s: (cl_int, cl_int, cl_int, cl_int)
  var __Anonymous_field1: cl_int4.__Unnamed_struct___Anonymous_field1
  var x: cl_int
  var y: cl_int
  var z: cl_int
  var w: cl_int
  var __Anonymous_field2: cl_int4.__Unnamed_struct___Anonymous_field2
  var s0: cl_int
  var s1: cl_int
  var s2: cl_int
  var s3: cl_int
  var __Anonymous_field3: cl_int4.__Unnamed_struct___Anonymous_field3
  var lo: cl_int2
  var hi: cl_int2
  var v2: (__cl_int2, __cl_int2)
  var v4: __cl_int4
  init(s: (cl_int, cl_int, cl_int, cl_int))
  init(_ __Anonymous_field1: cl_int4.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_int4.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_int4.__Unnamed_struct___Anonymous_field3)
  init(v2: (__cl_int2, __cl_int2))
  init(v4: __cl_int4)
  init()
}
typealias cl_int3 = cl_int4
struct cl_uint2 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_uint
    var y: cl_uint
    init()
    init(x: cl_uint, y: cl_uint)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_uint
    var s1: cl_uint
    init()
    init(s0: cl_uint, s1: cl_uint)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_uint
    var hi: cl_uint
    init()
    init(lo: cl_uint, hi: cl_uint)
  }
  var s: (cl_uint, cl_uint)
  var __Anonymous_field1: cl_uint2.__Unnamed_struct___Anonymous_field1
  var x: cl_uint
  var y: cl_uint
  var __Anonymous_field2: cl_uint2.__Unnamed_struct___Anonymous_field2
  var s0: cl_uint
  var s1: cl_uint
  var __Anonymous_field3: cl_uint2.__Unnamed_struct___Anonymous_field3
  var lo: cl_uint
  var hi: cl_uint
  var v2: __cl_uint2
  init(s: (cl_uint, cl_uint))
  init(_ __Anonymous_field1: cl_uint2.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_uint2.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_uint2.__Unnamed_struct___Anonymous_field3)
  init(v2: __cl_uint2)
  init()
}
struct cl_uint4 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_uint
    var y: cl_uint
    var z: cl_uint
    var w: cl_uint
    init()
    init(x: cl_uint, y: cl_uint, z: cl_uint, w: cl_uint)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_uint
    var s1: cl_uint
    var s2: cl_uint
    var s3: cl_uint
    init()
    init(s0: cl_uint, s1: cl_uint, s2: cl_uint, s3: cl_uint)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_uint2
    var hi: cl_uint2
    init()
    init(lo: cl_uint2, hi: cl_uint2)
  }
  var s: (cl_uint, cl_uint, cl_uint, cl_uint)
  var __Anonymous_field1: cl_uint4.__Unnamed_struct___Anonymous_field1
  var x: cl_uint
  var y: cl_uint
  var z: cl_uint
  var w: cl_uint
  var __Anonymous_field2: cl_uint4.__Unnamed_struct___Anonymous_field2
  var s0: cl_uint
  var s1: cl_uint
  var s2: cl_uint
  var s3: cl_uint
  var __Anonymous_field3: cl_uint4.__Unnamed_struct___Anonymous_field3
  var lo: cl_uint2
  var hi: cl_uint2
  var v2: (__cl_uint2, __cl_uint2)
  var v4: __cl_uint4
  init(s: (cl_uint, cl_uint, cl_uint, cl_uint))
  init(_ __Anonymous_field1: cl_uint4.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_uint4.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_uint4.__Unnamed_struct___Anonymous_field3)
  init(v2: (__cl_uint2, __cl_uint2))
  init(v4: __cl_uint4)
  init()
}
typealias cl_uint3 = cl_uint4
struct cl_long2 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_long
    var y: cl_long
    init()
    init(x: cl_long, y: cl_long)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_long
    var s1: cl_long
    init()
    init(s0: cl_long, s1: cl_long)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_long
    var hi: cl_long
    init()
    init(lo: cl_long, hi: cl_long)
  }
  var s: (cl_long, cl_long)
  var __Anonymous_field1: cl_long2.__Unnamed_struct___Anonymous_field1
  var x: cl_long
  var y: cl_long
  var __Anonymous_field2: cl_long2.__Unnamed_struct___Anonymous_field2
  var s0: cl_long
  var s1: cl_long
  var __Anonymous_field3: cl_long2.__Unnamed_struct___Anonymous_field3
  var lo: cl_long
  var hi: cl_long
  var v2: __cl_long2
  init(s: (cl_long, cl_long))
  init(_ __Anonymous_field1: cl_long2.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_long2.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_long2.__Unnamed_struct___Anonymous_field3)
  init(v2: __cl_long2)
  init()
}
struct cl_ulong2 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_ulong
    var y: cl_ulong
    init()
    init(x: cl_ulong, y: cl_ulong)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_ulong
    var s1: cl_ulong
    init()
    init(s0: cl_ulong, s1: cl_ulong)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_ulong
    var hi: cl_ulong
    init()
    init(lo: cl_ulong, hi: cl_ulong)
  }
  var s: (cl_ulong, cl_ulong)
  var __Anonymous_field1: cl_ulong2.__Unnamed_struct___Anonymous_field1
  var x: cl_ulong
  var y: cl_ulong
  var __Anonymous_field2: cl_ulong2.__Unnamed_struct___Anonymous_field2
  var s0: cl_ulong
  var s1: cl_ulong
  var __Anonymous_field3: cl_ulong2.__Unnamed_struct___Anonymous_field3
  var lo: cl_ulong
  var hi: cl_ulong
  var v2: __cl_ulong2
  init(s: (cl_ulong, cl_ulong))
  init(_ __Anonymous_field1: cl_ulong2.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_ulong2.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_ulong2.__Unnamed_struct___Anonymous_field3)
  init(v2: __cl_ulong2)
  init()
}
struct cl_float2 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_float
    var y: cl_float
    init()
    init(x: cl_float, y: cl_float)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_float
    var s1: cl_float
    init()
    init(s0: cl_float, s1: cl_float)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_float
    var hi: cl_float
    init()
    init(lo: cl_float, hi: cl_float)
  }
  var s: (cl_float, cl_float)
  var __Anonymous_field1: cl_float2.__Unnamed_struct___Anonymous_field1
  var x: cl_float
  var y: cl_float
  var __Anonymous_field2: cl_float2.__Unnamed_struct___Anonymous_field2
  var s0: cl_float
  var s1: cl_float
  var __Anonymous_field3: cl_float2.__Unnamed_struct___Anonymous_field3
  var lo: cl_float
  var hi: cl_float
  init(s: (cl_float, cl_float))
  init(_ __Anonymous_field1: cl_float2.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_float2.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_float2.__Unnamed_struct___Anonymous_field3)
  init()
}
struct cl_float4 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_float
    var y: cl_float
    var z: cl_float
    var w: cl_float
    init()
    init(x: cl_float, y: cl_float, z: cl_float, w: cl_float)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_float
    var s1: cl_float
    var s2: cl_float
    var s3: cl_float
    init()
    init(s0: cl_float, s1: cl_float, s2: cl_float, s3: cl_float)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_float2
    var hi: cl_float2
    init()
    init(lo: cl_float2, hi: cl_float2)
  }
  var s: (cl_float, cl_float, cl_float, cl_float)
  var __Anonymous_field1: cl_float4.__Unnamed_struct___Anonymous_field1
  var x: cl_float
  var y: cl_float
  var z: cl_float
  var w: cl_float
  var __Anonymous_field2: cl_float4.__Unnamed_struct___Anonymous_field2
  var s0: cl_float
  var s1: cl_float
  var s2: cl_float
  var s3: cl_float
  var __Anonymous_field3: cl_float4.__Unnamed_struct___Anonymous_field3
  var lo: cl_float2
  var hi: cl_float2
  var v4: __cl_float4
  init(s: (cl_float, cl_float, cl_float, cl_float))
  init(_ __Anonymous_field1: cl_float4.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_float4.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_float4.__Unnamed_struct___Anonymous_field3)
  init(v4: __cl_float4)
  init()
}
typealias cl_float3 = cl_float4
struct cl_double2 {
  struct __Unnamed_struct___Anonymous_field1 {
    var x: cl_double
    var y: cl_double
    init()
    init(x: cl_double, y: cl_double)
  }
  struct __Unnamed_struct___Anonymous_field2 {
    var s0: cl_double
    var s1: cl_double
    init()
    init(s0: cl_double, s1: cl_double)
  }
  struct __Unnamed_struct___Anonymous_field3 {
    var lo: cl_double
    var hi: cl_double
    init()
    init(lo: cl_double, hi: cl_double)
  }
  var s: (cl_double, cl_double)
  var __Anonymous_field1: cl_double2.__Unnamed_struct___Anonymous_field1
  var x: cl_double
  var y: cl_double
  var __Anonymous_field2: cl_double2.__Unnamed_struct___Anonymous_field2
  var s0: cl_double
  var s1: cl_double
  var __Anonymous_field3: cl_double2.__Unnamed_struct___Anonymous_field3
  var lo: cl_double
  var hi: cl_double
  var v2: __cl_double2
  init(s: (cl_double, cl_double))
  init(_ __Anonymous_field1: cl_double2.__Unnamed_struct___Anonymous_field1)
  init(_ __Anonymous_field2: cl_double2.__Unnamed_struct___Anonymous_field2)
  init(_ __Anonymous_field3: cl_double2.__Unnamed_struct___Anonymous_field3)
  init(v2: __cl_double2)
  init()
}
