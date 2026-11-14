set( CMAKE_CXX_STANDARD 23 )
set( CMAKE_CXX_STANDARD_REQUIRED ON )
set( CMAKE_CXX_EXTENSIONS OFF )
set( CMAKE_CXX_MODULE_STD ON )

set( MO20_FACE_FILES impl/face/core-del.ixx )
set( MO20_IMPL_FILES impl/core-del.mxx )

set_source_files_properties( ${MO20_FACE_FILES} PROPERTIES LANGUAGE CXX )
set_source_files_properties( ${MO20_IMPL_FILES} PROPERTIES LANGUAGE CXX )

add_library( ${MO20_LIB} )
target_sources( ${MO20_LIB}
  PUBLIC FILE_SET CXX_MODULES FILES ${MO20_FACE_FILES}
  PRIVATE ${MO20_IMPL_FILES}
)
# NOTE: temporary
add_executable( ${MO20_APP} main.cxx )
target_link_libraries( ${MO20_APP} PRIVATE ${MO20_LIB} )
