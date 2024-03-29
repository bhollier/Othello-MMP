# Generated by Boost 1.72.0

# address-model=32

if(CMAKE_SIZEOF_VOID_P EQUAL 8)
  _BOOST_SKIPPED("libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a" "32 bit, need 64")
  return()
endif()

# layout=versioned

# toolset=mgw81

if(Boost_COMPILER)
  if(NOT Boost_COMPILER STREQUAL "mgw81" AND NOT Boost_COMPILER STREQUAL "-mgw81")
    _BOOST_SKIPPED("libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a" "mgw81, Boost_COMPILER=${Boost_COMPILER}")
    return()
  endif()
else()
  if(BOOST_DETECTED_TOOLSET AND NOT BOOST_DETECTED_TOOLSET STREQUAL "mgw81")
    _BOOST_SKIPPED("libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a" "mgw81, detected ${BOOST_DETECTED_TOOLSET}, set Boost_COMPILER to override")
    return()
  endif()
endif()

# link=static

if(DEFINED Boost_USE_STATIC_LIBS)
  if(NOT Boost_USE_STATIC_LIBS)
    _BOOST_SKIPPED("libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a" "static, Boost_USE_STATIC_LIBS=${Boost_USE_STATIC_LIBS}")
    return()
  endif()
else()
  if(NOT WIN32)
    _BOOST_SKIPPED("libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a" "static, default is shared, set Boost_USE_STATIC_LIBS=ON to override")
    return()
  endif()
endif()

# runtime-link=shared

if(Boost_USE_STATIC_RUNTIME)
  _BOOST_SKIPPED("libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a" "shared runtime, Boost_USE_STATIC_RUNTIME=${Boost_USE_STATIC_RUNTIME}")
  return()
endif()

# runtime-debugging=on

if(NOT "${Boost_USE_DEBUG_RUNTIME}" STREQUAL "" AND NOT Boost_USE_DEBUG_RUNTIME)
  _BOOST_SKIPPED("libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a" "debug runtime, Boost_USE_DEBUG_RUNTIME=${Boost_USE_DEBUG_RUNTIME}")
  return()
endif()

# threading=multi

if(NOT "${Boost_USE_MULTITHREADED}" STREQUAL "" AND NOT Boost_USE_MULTITHREADED)
  _BOOST_SKIPPED("libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a" "multithreaded, Boost_USE_MULTITHREADED=${Boost_USE_MULTITHREADED}")
  return()
endif()

# variant=debug

if(NOT "${Boost_USE_DEBUG_LIBS}" STREQUAL "" AND NOT Boost_USE_DEBUG_LIBS)
  _BOOST_SKIPPED("libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a" "debug, Boost_USE_DEBUG_LIBS=${Boost_USE_DEBUG_LIBS}")
  return()
endif()

if(Boost_VERBOSE OR Boost_DEBUG)
  message(STATUS "  [x] libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a")
endif()

# Target file name: libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a

get_target_property(__boost_imploc Boost::stacktrace_noop IMPORTED_LOCATION_DEBUG)
if(__boost_imploc)
  message(WARNING "Target Boost::stacktrace_noop already has an imported location '${__boost_imploc}', which will be overwritten with '${_BOOST_LIBDIR}/libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a'")
endif()
unset(__boost_imploc)

set_property(TARGET Boost::stacktrace_noop APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)

set_target_properties(Boost::stacktrace_noop PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG CXX
  IMPORTED_LOCATION_DEBUG "${_BOOST_LIBDIR}/libboost_stacktrace_noop-mgw81-mt-d-x32-1_72.a"
  )

list(APPEND _BOOST_STACKTRACE_NOOP_DEPS headers)
