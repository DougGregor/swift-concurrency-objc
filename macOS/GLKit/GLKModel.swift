
@available(macOS, introduced: 10.11, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
let kGLKModelErrorDomain: String
@available(macOS, introduced: 10.11, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
let kGLKModelErrorKey: String
@available(macOS, introduced: 10.11, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKMeshBufferAllocator : NSObject, MDLMeshBufferAllocator {
}
@available(macOS, introduced: 10.11, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKMeshBuffer : NSObject, MDLMeshBuffer {
  var glBufferName: GLuint { get }
  var offset: Int { get }
}
@available(macOS, introduced: 10.11, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKSubmesh : NSObject {
  var type: GLenum { get }
  var mode: GLenum { get }
  var elementCount: GLsizei { get }
  var elementBuffer: GLKMeshBuffer { get }
  weak var mesh: @sil_weak GLKMesh? { get }
  var name: String { get }
}
@available(macOS, introduced: 10.11, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKMesh : NSObject {
  init(mesh: MDLMesh) throws
  class func newMeshes(from asset: MDLAsset, sourceMeshes: AutoreleasingUnsafeMutablePointer<NSArray?>?) throws -> [GLKMesh]
  var vertexCount: Int { get }
  var vertexBuffers: [GLKMeshBuffer] { get }
  var vertexDescriptor: MDLVertexDescriptor { get }
  var submeshes: [GLKSubmesh] { get }
  var name: String { get }
}
struct _GLKVertexAttributeParameters {
  var type: GLenum
  var size: GLint
  var normalized: GLboolean
  init()
  init(type: GLenum, size: GLint, normalized: GLboolean)
}
typealias GLKVertexAttributeParameters = _GLKVertexAttributeParameters
func GLKVertexAttributeParametersFromModelIO(_ vertexFormat: MDLVertexFormat) -> GLKVertexAttributeParameters
