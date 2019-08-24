; ModuleID = 'main.bc'
source_filename = "main.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%"struct.std::piecewise_construct_t" = type { i8 }
%struct.Params = type { i32, i32, i32, i32, i32, i32, float, i8*, i8* }
%"struct.std::__atomic_base" = type { i32 }
%struct.OpenCLSetup = type { %struct._cl_context*, %struct._cl_command_queue*, %struct._cl_program*, %struct._cl_kernel*, %struct._cl_kernel*, %struct._cl_kernel*, %struct._cl_kernel*, %struct._cl_device_id* }
%struct._cl_context = type opaque
%struct._cl_command_queue = type opaque
%struct._cl_program = type opaque
%struct._cl_kernel = type opaque
%struct._cl_device_id = type opaque
%struct.Timer = type { %"class.std::map", %"class.std::map", %"class.std::map" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl" = type { %"struct.std::less", %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.0" = type { i8 }
%struct._cl_mem = type opaque
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl" }
%"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl" = type { %"class.std::thread"*, %"class.std::thread"*, %"class.std::thread"* }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%class.anon = type { i32, i32*, [2 x i8*]*, i8***, i32*, %struct.Timer*, i32*, %struct.OpenCLSetup*, %struct._cl_mem**, %struct.Params*, i32*, i32*, %struct._cl_mem**, i32*, %struct._cl_mem**, i32*, i32*, i32*, i8*** }
%"class.__gnu_cxx::__normal_iterator" = type { %"class.std::thread"* }
%class.anon.6 = type { i8 }
%struct._cl_platform_id = type opaque
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { %"struct.std::thread::_Impl_base"*, %"class.std::__shared_count" }
%"struct.std::thread::_Impl_base" = type { i32 (...)**, %"class.std::shared_ptr" }
%"class.std::__shared_count" = type { %"class.std::_Sp_counted_base"* }
%"class.std::_Sp_counted_base" = type { i32 (...)**, i32, i32 }
%"class.std::shared_ptr.10" = type { %"class.std::__shared_ptr.11" }
%"class.std::__shared_ptr.11" = type { %"struct.std::thread::_Impl"*, %"class.std::__shared_count" }
%"struct.std::thread::_Impl" = type { %"struct.std::thread::_Impl_base", %"struct.std::_Bind_simple" }
%"struct.std::_Bind_simple" = type { %"class.std::tuple.12" }
%"class.std::tuple.12" = type { %"struct.std::_Tuple_impl.13" }
%"struct.std::_Tuple_impl.13" = type { %"struct.std::_Head_base.14" }
%"struct.std::_Head_base.14" = type { %class.anon }
%"class.std::allocator.3" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %"class.std::__cxx11::basic_string"* }
%"class.std::tuple.7" = type { i8 }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", double }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [40 x i8] }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::pair.8" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Index_tuple" = type { i8 }
%"struct.std::_Index_tuple.9" = type { i8 }
%"class.__gnu_cxx::new_allocator.4" = type { i8 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%"class.std::allocator.15" = type { i8 }
%"struct.std::_Sp_make_shared_tag" = type { i8 }
%"class.__gnu_cxx::new_allocator.16" = type { i8 }
%"class.std::type_info" = type { i32 (...)**, i8* }
%"class.std::allocator.18" = type { i8 }
%"struct.std::__allocated_ptr" = type { %"class.std::allocator.18"*, %"class.std::_Sp_counted_ptr_inplace"* }
%"class.std::_Sp_counted_ptr_inplace" = type { %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl" }
%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl" = type { %"struct.__gnu_cxx::__aligned_buffer" }
%"struct.__gnu_cxx::__aligned_buffer" = type { %"union.std::aligned_storage<176, 8>::type" }
%"union.std::aligned_storage<176, 8>::type" = type { [176 x i8] }
%"class.__gnu_cxx::new_allocator.19" = type { i8 }
%"class.std::_Mutex_base" = type { i8 }
%"struct.std::_Sp_ebo_helper" = type { i8 }
%struct._cl_event = type opaque
%"class.std::move_iterator" = type { %"class.std::thread"* }

$_ZN6ParamsC2EiPPc = comdat any

$_ZN11OpenCLSetupC2Eii = comdat any

$_ZN5TimerC2Ev = comdat any

$_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN11OpenCLSetup14max_work_itemsEP10_cl_kernel = comdat any

$_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi = comdat any

$_ZNSt6vectorISt6threadSaIS0_EEC2Ev = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_ = comdat any

$_ZNSt6threadD2Ev = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE5beginEv = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE3endEv = comdat any

$_Z6verifyPPhiPKciiiii = comdat any

$_ZN11OpenCLSetup7releaseEv = comdat any

$_ZNSt6vectorISt6threadSaIS0_EED2Ev = comdat any

$_ZN5TimerD2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEC2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEC2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EE13_M_initializeEv = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEED2Ev = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE5countERS9_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEixERS9_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_ = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEeqERKS9_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_ESI_RS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv = comdat any

$_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEclERKS8_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_valueEPKSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE7_M_addrEv = comdat any

$_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_valueEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE11lower_boundERS9_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEeqERKS9_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE3endEv = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE8key_compEv = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEdeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2ERKSt17_Rb_tree_iteratorIS8_E = comdat any

$_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11lower_boundERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_ESH_RS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8key_compEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE7_M_addrEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE = comdat any

$_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE8allocateERSB_m = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESH_IJEEEEEvRSB_PT_DpOT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESH_IJEEEEEvPT_DpOT0_ = comdat any

$_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE = comdat any

$_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_ = comdat any

$_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE = comdat any

$_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_ = comdat any

$_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_ = comdat any

$_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE = comdat any

$_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_ = comdat any

$_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE10deallocateERSB_PSA_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE10deallocateEPSB_m = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE13_M_const_castEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4sizeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEmmEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEppEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_ = comdat any

$_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEESF_vEEOT_OT0_ = comdat any

$_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEOT_RNSt16remove_referenceISD_E4typeE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE7destroyIS9_EEvRSB_PT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE7destroyISA_EEvPT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdED2Ev = comdat any

$_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_ = comdat any

$_ZNKSt6thread8joinableEv = comdat any

$_ZSteqNSt6thread2idES0_ = comdat any

$_ZNSt6thread2idC2Ev = comdat any

$_Z14compare_outputPPhiPKciiiii = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev = comdat any

$_ZStanSt12memory_orderSt23__memory_order_modifier = comdat any

$_ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaISt6threadEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev = comdat any

$_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIPSt6threadEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_ = comdat any

$_ZSt8_DestroyISt6threadEvPT_ = comdat any

$_ZSt11__addressofISt6threadEPT_RS1_ = comdat any

$_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m = comdat any

$_ZNSaISt6threadED2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6threadED2Ev = comdat any

$_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev = comdat any

$_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZSt32__enable_shared_from_this_helperILN9__gnu_cxx12_Lock_policyE2EEvRKSt14__shared_countIXT_EEz = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt6thread10_Impl_baseC2Ev = comdat any

$_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2Ev = comdat any

$_ZNSt6thread10_Impl_baseD2Ev = comdat any

$_ZNSt6thread10_Impl_baseD0Ev = comdat any

$_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev = comdat any

$_ZNKSt9type_infoeqERKS_ = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_ = comdat any

$_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEEvDpOT_ = comdat any

$_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZNSt6threadC2EOS_ = comdat any

$_ZNSt6thread4swapERS_ = comdat any

$_ZSt4swapINSt6thread2idEEvRT_S3_ = comdat any

$_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_ = comdat any

$_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm = comdat any

$_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_ = comdat any

$_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6threadES2_S1_ET0_T_S5_S4_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIPSt6threadSt13move_iteratorIS1_EET0_T_ = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPSt6threadES2_ET0_T_S5_S4_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6threadES4_EET0_T_S7_S6_ = comdat any

$_ZStneIPSt6threadEbRKSt13move_iteratorIT_ES6_ = comdat any

$_ZSt10_ConstructISt6threadJS0_EEvPT_DpOT0_ = comdat any

$_ZNKSt13move_iteratorIPSt6threadEdeEv = comdat any

$_ZNSt13move_iteratorIPSt6threadEppEv = comdat any

$_ZSteqIPSt6threadEbRKSt13move_iteratorIT_ES6_ = comdat any

$_ZNKSt13move_iteratorIPSt6threadE4baseEv = comdat any

$_ZNSt13move_iteratorIPSt6threadEC2ES1_ = comdat any

$_ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZTISt19_Sp_make_shared_tag = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSNSt6thread10_Impl_baseE = comdat any

$_ZTINSt6thread10_Impl_baseE = comdat any

$_ZTVNSt6thread10_Impl_baseE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [9 x i8] c"%s%d.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Initialization\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Allocation\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"Allocation error at %s, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"main.cpp\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"OpenCL error: %d\0A at %s, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Total Proxies\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Copy To Device\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Kernel-FPGA\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"stage1\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"stage2\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"stage3\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"stage4\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Copy Back\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Deallocation\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Test Passed\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"input/peppa/\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"output/peppa/\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Intel(R) FPGA\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"ERROR: Unable to find Intel(R) FPGA OpenCL platform.\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"./support/ocl.h\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Platform: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Using %d device(s)\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"baseline_2\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"\0AUsing AOCX:%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"-I.\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"gaussian_kernel\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"sobel_kernel\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"non_max_supp_kernel\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"hyst_kernel\00", align 1
@_ZStL19piecewise_construct = internal constant %"struct.std::piecewise_construct_t" undef, align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"\0A%s Time (ms): %0.3f\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"Error Reading output file\0A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"%*[^\0A]\0A\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"error: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"Test failed\0A\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZTISt19_Sp_make_shared_tag = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @_ZTSSt19_Sp_make_shared_tag, i32 0, i32 0) }, comdat, align 8
@"_ZTVSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE" = internal unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @"_ZTISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE" to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EED2Ev" to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EED0Ev" to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv" to i8*), i8* bitcast (void (%"class.std::_Sp_counted_ptr_inplace"*)* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv" to i8*), i8* bitcast (i8* (%"class.std::_Sp_counted_ptr_inplace"*, %"class.std::type_info"*)* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info" to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@"_ZTSSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE" = internal constant [117 x i8] c"St23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0) }, comdat, align 8
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE to i8*) }, comdat, align 8
@"_ZTISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE" = internal constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([117 x i8], [117 x i8]* @"_ZTSSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE", i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE to i8*) }, align 8
@_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE to i8*), i8* bitcast (void (%"class.std::_Sp_counted_base"*)* @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev to i8*), i8* bitcast (void (%"class.std::_Sp_counted_base"*)* @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%"class.std::_Sp_counted_base"*)* @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@"_ZTVNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEE" = internal unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @"_ZTINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEE" to i8*), i8* bitcast (void (%"struct.std::thread::_Impl"*)* @"_ZNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEED2Ev" to i8*), i8* bitcast (void (%"struct.std::thread::_Impl"*)* @"_ZNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEED0Ev" to i8*), i8* bitcast (void (%"struct.std::thread::_Impl"*)* @"_ZNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEE6_M_runEv" to i8*)] }, align 8
@"_ZTSNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEE" = internal constant [52 x i8] c"NSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEE\00", align 1
@_ZTSNSt6thread10_Impl_baseE = linkonce_odr dso_local constant [24 x i8] c"NSt6thread10_Impl_baseE\00", comdat, align 1
@_ZTINSt6thread10_Impl_baseE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @_ZTSNSt6thread10_Impl_baseE, i32 0, i32 0) }, comdat, align 8
@"_ZTINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEE" = internal constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @"_ZTSNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEE", i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTINSt6thread10_Impl_baseE to i8*) }, align 8
@_ZTVNSt6thread10_Impl_baseE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTINSt6thread10_Impl_baseE to i8*), i8* bitcast (void (%"struct.std::thread::_Impl_base"*)* @_ZNSt6thread10_Impl_baseD2Ev to i8*), i8* bitcast (void (%"struct.std::thread::_Impl_base"*)* @_ZNSt6thread10_Impl_baseD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.43 = private unnamed_addr constant [141 x i8] c"ls[0]*ls[1] <= max_wi_gauss && \22The work-group size is greater than the maximum work-group size that can be used to execute gaussian kernel\22\00", align 1
@"__PRETTY_FUNCTION__._ZZ4mainENK3$_0clEv" = private unnamed_addr constant [63 x i8] c"auto main(int, char **)::(anonymous class)::operator()() const\00", align 1
@.str.44 = private unnamed_addr constant [138 x i8] c"ls[0]*ls[1] <= max_wi_sobel && \22The work-group size is greater than the maximum work-group size that can be used to execute sobel kernel\22\00", align 1
@.str.45 = private unnamed_addr constant [157 x i8] c"ls[0]*ls[1] <= max_wi_nonmax && \22The work-group size is greater than the maximum work-group size that can be used to execute non-maximum suppression kernel\22\00", align 1
@.str.46 = private unnamed_addr constant [142 x i8] c"ls[0]*ls[1] <= max_wi_hyst && \22The work-group size is greater than the maximum work-group size that can be used to execute hysteresis kernel\22\00", align 1
@_ZZL18__gthread_active_pvE20__gthread_active_ptr = internal constant i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), align 8
@.str.47 = private unnamed_addr constant [28 x i8] c"vector::_M_emplace_back_aux\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z10read_inputPPhRiS1_S1_RK6Params(i8** %all_gray_frames, i32* dereferenceable(4) %rowsc, i32* dereferenceable(4) %colsc, i32* dereferenceable(4) %in_size, %struct.Params* dereferenceable(48) %p) #4 {
entry:
  %all_gray_frames.addr = alloca i8**, align 8
  %rowsc.addr = alloca i32*, align 8
  %colsc.addr = alloca i32*, align 8
  %in_size.addr = alloca i32*, align 8
  %p.addr = alloca %struct.Params*, align 8
  %task_id = alloca i32, align 4
  %FileName = alloca [100 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8** %all_gray_frames, i8*** %all_gray_frames.addr, align 8
  store i32* %rowsc, i32** %rowsc.addr, align 8
  store i32* %colsc, i32** %colsc.addr, align 8
  store i32* %in_size, i32** %in_size.addr, align 8
  store %struct.Params* %p, %struct.Params** %p.addr, align 8
  store i32 0, i32* %task_id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %0 = load i32, i32* %task_id, align 4
  %1 = load %struct.Params*, %struct.Params** %p.addr, align 8
  %n_warmup = getelementptr inbounds %struct.Params, %struct.Params* %1, i32 0, i32 4
  %2 = load i32, i32* %n_warmup, align 8
  %3 = load %struct.Params*, %struct.Params** %p.addr, align 8
  %n_reps = getelementptr inbounds %struct.Params, %struct.Params* %3, i32 0, i32 5
  %4 = load i32, i32* %n_reps, align 4
  %add = add nsw i32 %2, %4
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %FileName, i64 0, i64 0
  %5 = load %struct.Params*, %struct.Params** %p.addr, align 8
  %file_name = getelementptr inbounds %struct.Params, %struct.Params* %5, i32 0, i32 7
  %6 = load i8*, i8** %file_name, align 8
  %7 = load i32, i32* %task_id, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %6, i32 %7) #3
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %FileName, i64 0, i64 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp3 = icmp eq %struct._IO_FILE* %8, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @exit(i32 1) #16
  unreachable

if.end:                                           ; preds = %for.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %10 = load i32*, i32** %rowsc.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %12 = load i32*, i32** %colsc.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  %13 = load i32*, i32** %rowsc.addr, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %colsc.addr, align 8
  %16 = load i32, i32* %15, align 4
  %mul = mul nsw i32 %14, %16
  %conv = sext i32 %mul to i64
  %mul6 = mul i64 %conv, 1
  %conv7 = trunc i64 %mul6 to i32
  %17 = load i32*, i32** %in_size.addr, align 8
  store i32 %conv7, i32* %17, align 4
  %18 = load i32*, i32** %in_size.addr, align 8
  %19 = load i32, i32* %18, align 4
  %conv8 = sext i32 %19 to i64
  %call9 = call noalias i8* @malloc(i64 %conv8) #3
  %20 = load i8**, i8*** %all_gray_frames.addr, align 8
  %21 = load i32, i32* %task_id, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 %idxprom
  store i8* %call9, i8** %arrayidx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc23, %if.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32*, i32** %rowsc.addr, align 8
  %24 = load i32, i32* %23, align 4
  %cmp11 = icmp slt i32 %22, %24
  br i1 %cmp11, label %for.body12, label %for.end25

for.body12:                                       ; preds = %for.cond10
  store i32 0, i32* %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %for.body12
  %25 = load i32, i32* %j, align 4
  %26 = load i32*, i32** %colsc.addr, align 8
  %27 = load i32, i32* %26, align 4
  %cmp14 = icmp slt i32 %25, %27
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %29 = load i8**, i8*** %all_gray_frames.addr, align 8
  %30 = load i32, i32* %task_id, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds i8*, i8** %29, i64 %idxprom16
  %31 = load i8*, i8** %arrayidx17, align 8
  %32 = load i32, i32* %i, align 4
  %33 = load i32*, i32** %colsc.addr, align 8
  %34 = load i32, i32* %33, align 4
  %mul18 = mul nsw i32 %32, %34
  %35 = load i32, i32* %j, align 4
  %add19 = add nsw i32 %mul18, %35
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %31, i64 %idxprom20
  %36 = bitcast i8* %arrayidx21 to i32*
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %36)
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %37 = load i32, i32* %j, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %38 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %38, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond10

for.end25:                                        ; preds = %for.cond10
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i32 @fclose(%struct._IO_FILE* %39)
  br label %for.inc27

for.inc27:                                        ; preds = %for.end25
  %40 = load i32, i32* %task_id, align 4
  %inc28 = add nsw i32 %40, 1
  store i32 %inc28, i32* %task_id, align 4
  br label %for.cond

for.end29:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

declare dso_local i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr.i = alloca i32, align 4
  %__m.addr.i = alloca i32, align 4
  %__b.i = alloca i32, align 4
  %.atomictmp.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca %struct.Params, align 8
  %ocl = alloca %struct.OpenCLSetup, align 8
  %clStatus = alloca i32, align 4
  %timer = alloca %struct.Timer, align 8
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %max_wi_gauss = alloca i32, align 4
  %max_wi_sobel = alloca i32, align 4
  %max_wi_nonmax = alloca i32, align 4
  %max_wi_hyst = alloca i32, align 4
  %n_frames = alloca i32, align 4
  %all_gray_frames = alloca i8**, align 8
  %rowsc = alloca i32, align 4
  %colsc = alloca i32, align 4
  %in_size = alloca i32, align 4
  %agg.tmp17 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp18 = alloca %"class.std::allocator.0", align 1
  %agg.tmp25 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp26 = alloca %"class.std::allocator.0", align 1
  %h_in_out = alloca [2 x i8*], align 16
  %d_in_out = alloca %struct._cl_mem*, align 8
  %h_interm_cpu_proxy = alloca i8*, align 8
  %h_theta_cpu_proxy = alloca i8*, align 8
  %d_interm_gpu_proxy = alloca %struct._cl_mem*, align 8
  %d_theta_gpu_proxy = alloca %struct._cl_mem*, align 8
  %next_frame = alloca %"struct.std::atomic", align 4
  %agg.tmp79 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp80 = alloca %"class.std::allocator.0", align 1
  %agg.tmp87 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp88 = alloca %"class.std::allocator.0", align 1
  %agg.tmp95 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp96 = alloca %"class.std::allocator.0", align 1
  %all_out_frames = alloca i8**, align 8
  %i = alloca i32, align 4
  %agg.tmp110 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp111 = alloca %"class.std::allocator.0", align 1
  %agg.tmp118 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp119 = alloca %"class.std::allocator.0", align 1
  %agg.tmp126 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp127 = alloca %"class.std::allocator.0", align 1
  %proxy_threads = alloca %"class.std::vector", align 8
  %proxy_tid = alloca i32, align 4
  %ref.tmp134 = alloca %"class.std::thread", align 8
  %ref.tmp135 = alloca %class.anon, align 8
  %agg.tmp141 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp143 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %agg.tmp146 = alloca %class.anon.6, align 1
  %undef.agg.tmp = alloca %class.anon.6, align 1
  %agg.tmp153 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp154 = alloca %"class.std::allocator.0", align 1
  %agg.tmp161 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp162 = alloca %"class.std::allocator.0", align 1
  %agg.tmp169 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp170 = alloca %"class.std::allocator.0", align 1
  %agg.tmp179 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp180 = alloca %"class.std::allocator.0", align 1
  %agg.tmp189 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp190 = alloca %"class.std::allocator.0", align 1
  %agg.tmp199 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp200 = alloca %"class.std::allocator.0", align 1
  %agg.tmp209 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp210 = alloca %"class.std::allocator.0", align 1
  %agg.tmp219 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp220 = alloca %"class.std::allocator.0", align 1
  %agg.tmp229 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp230 = alloca %"class.std::allocator.0", align 1
  %agg.tmp241 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp242 = alloca %"class.std::allocator.0", align 1
  %i253 = alloca i32, align 4
  %i262 = alloca i32, align 4
  %agg.tmp281 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp282 = alloca %"class.std::allocator.0", align 1
  %agg.tmp289 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp290 = alloca %"class.std::allocator.0", align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @_ZN6ParamsC2EiPPc(%struct.Params* %p, i32 %0, i8** %1)
  %platform = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 0
  %2 = load i32, i32* %platform, align 8
  %device = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 1
  %3 = load i32, i32* %device, align 4
  call void @_ZN11OpenCLSetupC2Eii(%struct.OpenCLSetup* %ocl, i32 %2, i32 %3)
  call void @_ZN5TimerC2Ev(%struct.Timer* %timer) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  %clKernel_gauss = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 3
  %4 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_gauss, align 8
  %call = invoke i64 @_ZN11OpenCLSetup14max_work_itemsEP10_cl_kernel(%struct.OpenCLSetup* %ocl, %struct._cl_kernel* %4)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont2
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %max_wi_gauss, align 4
  %clKernel_sobel = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 4
  %5 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_sobel, align 8
  %call6 = invoke i64 @_ZN11OpenCLSetup14max_work_itemsEP10_cl_kernel(%struct.OpenCLSetup* %ocl, %struct._cl_kernel* %5)
          to label %invoke.cont5 unwind label %lpad3

invoke.cont5:                                     ; preds = %invoke.cont4
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, i32* %max_wi_sobel, align 4
  %clKernel_nonmax = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 5
  %6 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_nonmax, align 8
  %call9 = invoke i64 @_ZN11OpenCLSetup14max_work_itemsEP10_cl_kernel(%struct.OpenCLSetup* %ocl, %struct._cl_kernel* %6)
          to label %invoke.cont8 unwind label %lpad3

invoke.cont8:                                     ; preds = %invoke.cont5
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, i32* %max_wi_nonmax, align 4
  %clKernel_hyst = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 6
  %7 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_hyst, align 8
  %call12 = invoke i64 @_ZN11OpenCLSetup14max_work_itemsEP10_cl_kernel(%struct.OpenCLSetup* %ocl, %struct._cl_kernel* %7)
          to label %invoke.cont11 unwind label %lpad3

invoke.cont11:                                    ; preds = %invoke.cont8
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, i32* %max_wi_hyst, align 4
  %n_warmup = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 4
  %8 = load i32, i32* %n_warmup, align 8
  %n_reps = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %9 = load i32, i32* %n_reps, align 4
  %add = add nsw i32 %8, %9
  store i32 %add, i32* %n_frames, align 4
  %10 = load i32, i32* %n_frames, align 4
  %conv14 = sext i32 %10 to i64
  %mul = mul i64 %conv14, 8
  %call15 = call noalias i8* @malloc(i64 %mul) #3
  %11 = bitcast i8* %call15 to i8**
  store i8** %11, i8*** %all_gray_frames, align 8
  %12 = load i8**, i8*** %all_gray_frames, align 8
  invoke void @_Z10read_inputPPhRiS1_S1_RK6Params(i8** %12, i32* dereferenceable(4) %rowsc, i32* dereferenceable(4) %colsc, i32* dereferenceable(4) %in_size, %struct.Params* dereferenceable(48) %p)
          to label %invoke.cont16 unwind label %lpad3

invoke.cont16:                                    ; preds = %invoke.cont11
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp18) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp18)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %invoke.cont16
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp17)
          to label %invoke.cont22 unwind label %lpad21

invoke.cont22:                                    ; preds = %invoke.cont20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp17) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp18) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp26) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp26)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %invoke.cont22
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp25)
          to label %invoke.cont30 unwind label %lpad29

invoke.cont30:                                    ; preds = %invoke.cont28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp25) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp26) #3
  %13 = load i32, i32* %in_size, align 4
  %conv33 = sext i32 %13 to i64
  %call34 = call noalias i8* @malloc(i64 %conv33) #3
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %h_in_out, i64 0, i64 0
  store i8* %call34, i8** %arrayidx, align 16
  %14 = load i32, i32* %in_size, align 4
  %conv35 = sext i32 %14 to i64
  %call36 = call noalias i8* @malloc(i64 %conv35) #3
  %arrayidx37 = getelementptr inbounds [2 x i8*], [2 x i8*]* %h_in_out, i64 0, i64 1
  store i8* %call36, i8** %arrayidx37, align 8
  %clContext = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 0
  %15 = load %struct._cl_context*, %struct._cl_context** %clContext, align 8
  %16 = load i32, i32* %in_size, align 4
  %conv38 = sext i32 %16 to i64
  %call40 = invoke %struct._cl_mem* @clCreateBuffer(%struct._cl_context* %15, i64 1, i64 %conv38, i8* null, i32* %clStatus)
          to label %invoke.cont39 unwind label %lpad3

invoke.cont39:                                    ; preds = %invoke.cont30
  store %struct._cl_mem* %call40, %struct._cl_mem** %d_in_out, align 8
  %17 = load i32, i32* %in_size, align 4
  %conv41 = sext i32 %17 to i64
  %call42 = call noalias i8* @malloc(i64 %conv41) #3
  store i8* %call42, i8** %h_interm_cpu_proxy, align 8
  %18 = load i32, i32* %in_size, align 4
  %conv43 = sext i32 %18 to i64
  %call44 = call noalias i8* @malloc(i64 %conv43) #3
  store i8* %call44, i8** %h_theta_cpu_proxy, align 8
  %clContext45 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 0
  %19 = load %struct._cl_context*, %struct._cl_context** %clContext45, align 8
  %20 = load i32, i32* %in_size, align 4
  %conv46 = sext i32 %20 to i64
  %call48 = invoke %struct._cl_mem* @clCreateBuffer(%struct._cl_context* %19, i64 1, i64 %conv46, i8* null, i32* %clStatus)
          to label %invoke.cont47 unwind label %lpad3

invoke.cont47:                                    ; preds = %invoke.cont39
  store %struct._cl_mem* %call48, %struct._cl_mem** %d_interm_gpu_proxy, align 8
  %clContext49 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 0
  %21 = load %struct._cl_context*, %struct._cl_context** %clContext49, align 8
  %22 = load i32, i32* %in_size, align 4
  %conv50 = sext i32 %22 to i64
  %call52 = invoke %struct._cl_mem* @clCreateBuffer(%struct._cl_context* %21, i64 1, i64 %conv50, i8* null, i32* %clStatus)
          to label %invoke.cont51 unwind label %lpad3

invoke.cont51:                                    ; preds = %invoke.cont47
  store %struct._cl_mem* %call52, %struct._cl_mem** %d_theta_gpu_proxy, align 8
  %clCommandQueue = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %23 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue, align 8
  %call54 = invoke i32 @clFinish(%struct._cl_command_queue* %23)
          to label %invoke.cont53 unwind label %lpad3

invoke.cont53:                                    ; preds = %invoke.cont51
  %arrayidx55 = getelementptr inbounds [2 x i8*], [2 x i8*]* %h_in_out, i64 0, i64 0
  %24 = load i8*, i8** %arrayidx55, align 16
  %cmp = icmp eq i8* %24, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont53
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call57 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 103)
          to label %invoke.cont56 unwind label %lpad3

invoke.cont56:                                    ; preds = %if.then
  call void @exit(i32 -1) #16
  unreachable

lpad:                                             ; preds = %entry
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %exn.slot, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad1:                                            ; preds = %invoke.cont
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %exn.slot, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad1, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  br label %ehcleanup300

lpad3:                                            ; preds = %if.then75, %if.then70, %if.then65, %if.then60, %if.then, %invoke.cont51, %invoke.cont47, %invoke.cont39, %invoke.cont30, %invoke.cont11, %invoke.cont8, %invoke.cont5, %invoke.cont4, %invoke.cont2
  %32 = landingpad { i8*, i32 }
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  store i8* %33, i8** %exn.slot, align 8
  %34 = extractvalue { i8*, i32 } %32, 1
  store i32 %34, i32* %ehselector.slot, align 4
  br label %ehcleanup300

lpad19:                                           ; preds = %invoke.cont16
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = extractvalue { i8*, i32 } %35, 0
  store i8* %36, i8** %exn.slot, align 8
  %37 = extractvalue { i8*, i32 } %35, 1
  store i32 %37, i32* %ehselector.slot, align 4
  br label %ehcleanup24

lpad21:                                           ; preds = %invoke.cont20
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  store i8* %39, i8** %exn.slot, align 8
  %40 = extractvalue { i8*, i32 } %38, 1
  store i32 %40, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp17) #3
  br label %ehcleanup24

ehcleanup24:                                      ; preds = %lpad21, %lpad19
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp18) #3
  br label %ehcleanup300

lpad27:                                           ; preds = %invoke.cont22
  %41 = landingpad { i8*, i32 }
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %exn.slot, align 8
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %ehselector.slot, align 4
  br label %ehcleanup32

lpad29:                                           ; preds = %invoke.cont28
  %44 = landingpad { i8*, i32 }
          cleanup
  %45 = extractvalue { i8*, i32 } %44, 0
  store i8* %45, i8** %exn.slot, align 8
  %46 = extractvalue { i8*, i32 } %44, 1
  store i32 %46, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp25) #3
  br label %ehcleanup32

ehcleanup32:                                      ; preds = %lpad29, %lpad27
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp26) #3
  br label %ehcleanup300

if.end:                                           ; preds = %invoke.cont53
  %arrayidx58 = getelementptr inbounds [2 x i8*], [2 x i8*]* %h_in_out, i64 0, i64 1
  %47 = load i8*, i8** %arrayidx58, align 8
  %cmp59 = icmp eq i8* %47, null
  br i1 %cmp59, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call62 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 103)
          to label %invoke.cont61 unwind label %lpad3

invoke.cont61:                                    ; preds = %if.then60
  call void @exit(i32 -1) #16
  unreachable

if.end63:                                         ; preds = %if.end
  %49 = load i8*, i8** %h_interm_cpu_proxy, align 8
  %cmp64 = icmp eq i8* %49, null
  br i1 %cmp64, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end63
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call67 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 103)
          to label %invoke.cont66 unwind label %lpad3

invoke.cont66:                                    ; preds = %if.then65
  call void @exit(i32 -1) #16
  unreachable

if.end68:                                         ; preds = %if.end63
  %51 = load i8*, i8** %h_theta_cpu_proxy, align 8
  %cmp69 = icmp eq i8* %51, null
  br i1 %cmp69, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end68
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call72 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 103)
          to label %invoke.cont71 unwind label %lpad3

invoke.cont71:                                    ; preds = %if.then70
  call void @exit(i32 -1) #16
  unreachable

if.end73:                                         ; preds = %if.end68
  %53 = load i32, i32* %clStatus, align 4
  %cmp74 = icmp ne i32 %53, 0
  br i1 %cmp74, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end73
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i32, i32* %clStatus, align 4
  %call77 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 104)
          to label %invoke.cont76 unwind label %lpad3

invoke.cont76:                                    ; preds = %if.then75
  call void @exit(i32 -1) #16
  unreachable

if.end78:                                         ; preds = %if.end73
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp80) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp80)
          to label %invoke.cont82 unwind label %lpad81

invoke.cont82:                                    ; preds = %if.end78
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp79)
          to label %invoke.cont84 unwind label %lpad83

invoke.cont84:                                    ; preds = %invoke.cont82
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp79) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp80) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp88) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp88)
          to label %invoke.cont90 unwind label %lpad89

invoke.cont90:                                    ; preds = %invoke.cont84
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp87, i32 1)
          to label %invoke.cont92 unwind label %lpad91

invoke.cont92:                                    ; preds = %invoke.cont90
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp87) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp88) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp96) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp96)
          to label %invoke.cont98 unwind label %lpad97

invoke.cont98:                                    ; preds = %invoke.cont92
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp95)
          to label %invoke.cont100 unwind label %lpad99

invoke.cont100:                                   ; preds = %invoke.cont98
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp95) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp96) #3
  %56 = load i32, i32* %n_frames, align 4
  %conv103 = sext i32 %56 to i64
  %mul104 = mul i64 %conv103, 8
  %call105 = call noalias i8* @malloc(i64 %mul104) #3
  %57 = bitcast i8* %call105 to i8**
  store i8** %57, i8*** %all_out_frames, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont100
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %n_frames, align 4
  %cmp106 = icmp slt i32 %58, %59
  br i1 %cmp106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i32, i32* %in_size, align 4
  %conv107 = sext i32 %60 to i64
  %call108 = call noalias i8* @malloc(i64 %conv107) #3
  %61 = load i8**, i8*** %all_out_frames, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom = sext i32 %62 to i64
  %arrayidx109 = getelementptr inbounds i8*, i8** %61, i64 %idxprom
  store i8* %call108, i8** %arrayidx109, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %63 = load i32, i32* %i, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad81:                                           ; preds = %if.end78
  %64 = landingpad { i8*, i32 }
          cleanup
  %65 = extractvalue { i8*, i32 } %64, 0
  store i8* %65, i8** %exn.slot, align 8
  %66 = extractvalue { i8*, i32 } %64, 1
  store i32 %66, i32* %ehselector.slot, align 4
  br label %ehcleanup86

lpad83:                                           ; preds = %invoke.cont82
  %67 = landingpad { i8*, i32 }
          cleanup
  %68 = extractvalue { i8*, i32 } %67, 0
  store i8* %68, i8** %exn.slot, align 8
  %69 = extractvalue { i8*, i32 } %67, 1
  store i32 %69, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp79) #3
  br label %ehcleanup86

ehcleanup86:                                      ; preds = %lpad83, %lpad81
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp80) #3
  br label %ehcleanup300

lpad89:                                           ; preds = %invoke.cont84
  %70 = landingpad { i8*, i32 }
          cleanup
  %71 = extractvalue { i8*, i32 } %70, 0
  store i8* %71, i8** %exn.slot, align 8
  %72 = extractvalue { i8*, i32 } %70, 1
  store i32 %72, i32* %ehselector.slot, align 4
  br label %ehcleanup94

lpad91:                                           ; preds = %invoke.cont90
  %73 = landingpad { i8*, i32 }
          cleanup
  %74 = extractvalue { i8*, i32 } %73, 0
  store i8* %74, i8** %exn.slot, align 8
  %75 = extractvalue { i8*, i32 } %73, 1
  store i32 %75, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp87) #3
  br label %ehcleanup94

ehcleanup94:                                      ; preds = %lpad91, %lpad89
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp88) #3
  br label %ehcleanup300

lpad97:                                           ; preds = %invoke.cont92
  %76 = landingpad { i8*, i32 }
          cleanup
  %77 = extractvalue { i8*, i32 } %76, 0
  store i8* %77, i8** %exn.slot, align 8
  %78 = extractvalue { i8*, i32 } %76, 1
  store i32 %78, i32* %ehselector.slot, align 4
  br label %ehcleanup102

lpad99:                                           ; preds = %invoke.cont98
  %79 = landingpad { i8*, i32 }
          cleanup
  %80 = extractvalue { i8*, i32 } %79, 0
  store i8* %80, i8** %exn.slot, align 8
  %81 = extractvalue { i8*, i32 } %79, 1
  store i32 %81, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp95) #3
  br label %ehcleanup102

ehcleanup102:                                     ; preds = %lpad99, %lpad97
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp96) #3
  br label %ehcleanup300

for.end:                                          ; preds = %for.cond
  %82 = bitcast %"struct.std::atomic"* %next_frame to %"struct.std::__atomic_base"*
  store %"struct.std::__atomic_base"* %82, %"struct.std::__atomic_base"** %this.addr.i, align 8
  store i32 0, i32* %__i.addr.i, align 4
  store i32 5, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %83 = load i32, i32* %__m.addr.i, align 4
  %call.i = invoke i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 %83, i32 65535)
          to label %invoke.cont.i unwind label %terminate.lpad.i

invoke.cont.i:                                    ; preds = %for.end
  store i32 %call.i, i32* %__b.i, align 4
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0
  %84 = load i32, i32* %__m.addr.i, align 4
  %85 = load i32, i32* %__i.addr.i, align 4
  store i32 %85, i32* %.atomictmp.i, align 4
  switch i32 %84, label %monotonic.i [
    i32 3, label %release.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %invoke.cont.i
  %86 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %86, i32* %_M_i.i monotonic, align 4
  br label %_ZNSt13__atomic_baseIiE5storeEiSt12memory_order.exit

release.i:                                        ; preds = %invoke.cont.i
  %87 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %87, i32* %_M_i.i release, align 4
  br label %_ZNSt13__atomic_baseIiE5storeEiSt12memory_order.exit

seqcst.i:                                         ; preds = %invoke.cont.i
  %88 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %88, i32* %_M_i.i seq_cst, align 4
  br label %_ZNSt13__atomic_baseIiE5storeEiSt12memory_order.exit

terminate.lpad.i:                                 ; preds = %for.end
  %89 = landingpad { i8*, i32 }
          catch i8* null
  %90 = extractvalue { i8*, i32 } %89, 0
  call void @__clang_call_terminate(i8* %90) #16
  unreachable

_ZNSt13__atomic_baseIiE5storeEiSt12memory_order.exit: ; preds = %monotonic.i, %release.i, %seqcst.i
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp111) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp111)
          to label %invoke.cont113 unwind label %lpad112

invoke.cont113:                                   ; preds = %_ZNSt13__atomic_baseIiE5storeEiSt12memory_order.exit
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp110)
          to label %invoke.cont115 unwind label %lpad114

invoke.cont115:                                   ; preds = %invoke.cont113
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp110) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp111) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp119) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp119)
          to label %invoke.cont121 unwind label %lpad120

invoke.cont121:                                   ; preds = %invoke.cont115
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp118, i32 1)
          to label %invoke.cont123 unwind label %lpad122

invoke.cont123:                                   ; preds = %invoke.cont121
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp118) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp119) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp127) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp127)
          to label %invoke.cont129 unwind label %lpad128

invoke.cont129:                                   ; preds = %invoke.cont123
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp126)
          to label %invoke.cont131 unwind label %lpad130

invoke.cont131:                                   ; preds = %invoke.cont129
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp126) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp127) #3
  call void @_ZNSt6vectorISt6threadSaIS0_EEC2Ev(%"class.std::vector"* %proxy_threads) #3
  store i32 1, i32* %proxy_tid, align 4
  %91 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 0
  %92 = load i32, i32* %proxy_tid, align 4
  store i32 %92, i32* %91, align 8
  %93 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 1
  store i32* %n_frames, i32** %93, align 8
  %94 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 2
  store [2 x i8*]* %h_in_out, [2 x i8*]** %94, align 8
  %95 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 3
  store i8*** %all_gray_frames, i8**** %95, align 8
  %96 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 4
  store i32* %in_size, i32** %96, align 8
  %97 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 5
  store %struct.Timer* %timer, %struct.Timer** %97, align 8
  %98 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 6
  store i32* %clStatus, i32** %98, align 8
  %99 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 7
  store %struct.OpenCLSetup* %ocl, %struct.OpenCLSetup** %99, align 8
  %100 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 8
  store %struct._cl_mem** %d_in_out, %struct._cl_mem*** %100, align 8
  %101 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 9
  store %struct.Params* %p, %struct.Params** %101, align 8
  %102 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 10
  store i32* %colsc, i32** %102, align 8
  %103 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 11
  store i32* %rowsc, i32** %103, align 8
  %104 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 12
  store %struct._cl_mem** %d_interm_gpu_proxy, %struct._cl_mem*** %104, align 8
  %105 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 13
  store i32* %max_wi_gauss, i32** %105, align 8
  %106 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 14
  store %struct._cl_mem** %d_theta_gpu_proxy, %struct._cl_mem*** %106, align 8
  %107 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 15
  store i32* %max_wi_sobel, i32** %107, align 8
  %108 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 16
  store i32* %max_wi_nonmax, i32** %108, align 8
  %109 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 17
  store i32* %max_wi_hyst, i32** %109, align 8
  %110 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp135, i32 0, i32 18
  store i8*** %all_out_frames, i8**** %110, align 8
  invoke void @"_ZNSt6threadC2IZ4mainE3$_0JEEEOT_DpOT0_"(%"class.std::thread"* %ref.tmp134, %class.anon* dereferenceable(152) %ref.tmp135)
          to label %invoke.cont137 unwind label %lpad136

invoke.cont137:                                   ; preds = %invoke.cont131
  invoke void @_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_(%"class.std::vector"* %proxy_threads, %"class.std::thread"* dereferenceable(8) %ref.tmp134)
          to label %invoke.cont139 unwind label %lpad138

invoke.cont139:                                   ; preds = %invoke.cont137
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* %ref.tmp134) #3
  %call142 = call %"class.std::thread"* @_ZNSt6vectorISt6threadSaIS0_EE5beginEv(%"class.std::vector"* %proxy_threads) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp141, i32 0, i32 0
  store %"class.std::thread"* %call142, %"class.std::thread"** %coerce.dive, align 8
  %call144 = call %"class.std::thread"* @_ZNSt6vectorISt6threadSaIS0_EE3endEv(%"class.std::vector"* %proxy_threads) #3
  %coerce.dive145 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp143, i32 0, i32 0
  store %"class.std::thread"* %call144, %"class.std::thread"** %coerce.dive145, align 8
  %coerce.dive147 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp141, i32 0, i32 0
  %111 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive147, align 8
  %coerce.dive148 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %agg.tmp143, i32 0, i32 0
  %112 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive148, align 8
  invoke void @"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS2_SaIS2_EEEEZ4mainE3$_1ET0_T_SA_S9_"(%"class.std::thread"* %111, %"class.std::thread"* %112)
          to label %invoke.cont149 unwind label %lpad136

invoke.cont149:                                   ; preds = %invoke.cont139
  %clCommandQueue150 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %113 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue150, align 8
  %call152 = invoke i32 @clFinish(%struct._cl_command_queue* %113)
          to label %invoke.cont151 unwind label %lpad136

invoke.cont151:                                   ; preds = %invoke.cont149
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp154) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp154)
          to label %invoke.cont156 unwind label %lpad155

invoke.cont156:                                   ; preds = %invoke.cont151
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp153)
          to label %invoke.cont158 unwind label %lpad157

invoke.cont158:                                   ; preds = %invoke.cont156
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp153) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp154) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp162) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp161, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp162)
          to label %invoke.cont164 unwind label %lpad163

invoke.cont164:                                   ; preds = %invoke.cont158
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp161, i32 1)
          to label %invoke.cont166 unwind label %lpad165

invoke.cont166:                                   ; preds = %invoke.cont164
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp161) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp162) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp170) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp170)
          to label %invoke.cont172 unwind label %lpad171

invoke.cont172:                                   ; preds = %invoke.cont166
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp169, i32 1)
          to label %invoke.cont174 unwind label %lpad173

invoke.cont174:                                   ; preds = %invoke.cont172
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp169) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp170) #3
  %call178 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
          to label %invoke.cont177 unwind label %lpad136

invoke.cont177:                                   ; preds = %invoke.cont174
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp180) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp179, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp180)
          to label %invoke.cont182 unwind label %lpad181

invoke.cont182:                                   ; preds = %invoke.cont177
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp179, i32 1)
          to label %invoke.cont184 unwind label %lpad183

invoke.cont184:                                   ; preds = %invoke.cont182
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp179) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp180) #3
  %call188 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
          to label %invoke.cont187 unwind label %lpad136

invoke.cont187:                                   ; preds = %invoke.cont184
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp190) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp190)
          to label %invoke.cont192 unwind label %lpad191

invoke.cont192:                                   ; preds = %invoke.cont187
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp189, i32 1)
          to label %invoke.cont194 unwind label %lpad193

invoke.cont194:                                   ; preds = %invoke.cont192
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp189) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp190) #3
  %call198 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
          to label %invoke.cont197 unwind label %lpad136

invoke.cont197:                                   ; preds = %invoke.cont194
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp200) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp200)
          to label %invoke.cont202 unwind label %lpad201

invoke.cont202:                                   ; preds = %invoke.cont197
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp199, i32 1)
          to label %invoke.cont204 unwind label %lpad203

invoke.cont204:                                   ; preds = %invoke.cont202
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp199) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp200) #3
  %call208 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
          to label %invoke.cont207 unwind label %lpad136

invoke.cont207:                                   ; preds = %invoke.cont204
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp210) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp209, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp210)
          to label %invoke.cont212 unwind label %lpad211

invoke.cont212:                                   ; preds = %invoke.cont207
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp209, i32 1)
          to label %invoke.cont214 unwind label %lpad213

invoke.cont214:                                   ; preds = %invoke.cont212
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp209) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp210) #3
  %call218 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
          to label %invoke.cont217 unwind label %lpad136

invoke.cont217:                                   ; preds = %invoke.cont214
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp220) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp219, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp220)
          to label %invoke.cont222 unwind label %lpad221

invoke.cont222:                                   ; preds = %invoke.cont217
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp219, i32 1)
          to label %invoke.cont224 unwind label %lpad223

invoke.cont224:                                   ; preds = %invoke.cont222
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp219) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp220) #3
  %call228 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
          to label %invoke.cont227 unwind label %lpad136

invoke.cont227:                                   ; preds = %invoke.cont224
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp230) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp229, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp230)
          to label %invoke.cont232 unwind label %lpad231

invoke.cont232:                                   ; preds = %invoke.cont227
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp229, i32 1)
          to label %invoke.cont234 unwind label %lpad233

invoke.cont234:                                   ; preds = %invoke.cont232
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp229) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp230) #3
  %114 = load i8**, i8*** %all_out_frames, align 8
  %115 = load i32, i32* %in_size, align 4
  %comparison_file = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 8
  %116 = load i8*, i8** %comparison_file, align 8
  %n_warmup237 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 4
  %117 = load i32, i32* %n_warmup237, align 8
  %n_reps238 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %118 = load i32, i32* %n_reps238, align 4
  %add239 = add nsw i32 %117, %118
  %119 = load i32, i32* %rowsc, align 4
  %120 = load i32, i32* %colsc, align 4
  %121 = load i32, i32* %rowsc, align 4
  %122 = load i32, i32* %colsc, align 4
  invoke void @_Z6verifyPPhiPKciiiii(i8** %114, i32 %115, i8* %116, i32 %add239, i32 %119, i32 %120, i32 %121, i32 %122)
          to label %invoke.cont240 unwind label %lpad136

invoke.cont240:                                   ; preds = %invoke.cont234
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp242) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp241, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp242)
          to label %invoke.cont244 unwind label %lpad243

invoke.cont244:                                   ; preds = %invoke.cont240
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp241)
          to label %invoke.cont246 unwind label %lpad245

invoke.cont246:                                   ; preds = %invoke.cont244
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp241) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp242) #3
  %arrayidx249 = getelementptr inbounds [2 x i8*], [2 x i8*]* %h_in_out, i64 0, i64 1
  %123 = load i8*, i8** %arrayidx249, align 8
  call void @free(i8* %123) #3
  %124 = load %struct._cl_mem*, %struct._cl_mem** %d_in_out, align 8
  %call251 = invoke i32 @clReleaseMemObject(%struct._cl_mem* %124)
          to label %invoke.cont250 unwind label %lpad136

invoke.cont250:                                   ; preds = %invoke.cont246
  store i32 %call251, i32* %clStatus, align 4
  %arrayidx252 = getelementptr inbounds [2 x i8*], [2 x i8*]* %h_in_out, i64 0, i64 0
  %125 = load i8*, i8** %arrayidx252, align 16
  call void @free(i8* %125) #3
  %126 = load i8*, i8** %h_interm_cpu_proxy, align 8
  call void @free(i8* %126) #3
  %127 = load i8*, i8** %h_theta_cpu_proxy, align 8
  call void @free(i8* %127) #3
  store i32 0, i32* %i253, align 4
  br label %for.cond254

for.cond254:                                      ; preds = %for.inc259, %invoke.cont250
  %128 = load i32, i32* %i253, align 4
  %129 = load i32, i32* %n_frames, align 4
  %cmp255 = icmp slt i32 %128, %129
  br i1 %cmp255, label %for.body256, label %for.end261

for.body256:                                      ; preds = %for.cond254
  %130 = load i8**, i8*** %all_gray_frames, align 8
  %131 = load i32, i32* %i253, align 4
  %idxprom257 = sext i32 %131 to i64
  %arrayidx258 = getelementptr inbounds i8*, i8** %130, i64 %idxprom257
  %132 = load i8*, i8** %arrayidx258, align 8
  call void @free(i8* %132) #3
  br label %for.inc259

for.inc259:                                       ; preds = %for.body256
  %133 = load i32, i32* %i253, align 4
  %inc260 = add nsw i32 %133, 1
  store i32 %inc260, i32* %i253, align 4
  br label %for.cond254

lpad112:                                          ; preds = %_ZNSt13__atomic_baseIiE5storeEiSt12memory_order.exit
  %134 = landingpad { i8*, i32 }
          cleanup
  %135 = extractvalue { i8*, i32 } %134, 0
  store i8* %135, i8** %exn.slot, align 8
  %136 = extractvalue { i8*, i32 } %134, 1
  store i32 %136, i32* %ehselector.slot, align 4
  br label %ehcleanup117

lpad114:                                          ; preds = %invoke.cont113
  %137 = landingpad { i8*, i32 }
          cleanup
  %138 = extractvalue { i8*, i32 } %137, 0
  store i8* %138, i8** %exn.slot, align 8
  %139 = extractvalue { i8*, i32 } %137, 1
  store i32 %139, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp110) #3
  br label %ehcleanup117

ehcleanup117:                                     ; preds = %lpad114, %lpad112
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp111) #3
  br label %ehcleanup300

lpad120:                                          ; preds = %invoke.cont115
  %140 = landingpad { i8*, i32 }
          cleanup
  %141 = extractvalue { i8*, i32 } %140, 0
  store i8* %141, i8** %exn.slot, align 8
  %142 = extractvalue { i8*, i32 } %140, 1
  store i32 %142, i32* %ehselector.slot, align 4
  br label %ehcleanup125

lpad122:                                          ; preds = %invoke.cont121
  %143 = landingpad { i8*, i32 }
          cleanup
  %144 = extractvalue { i8*, i32 } %143, 0
  store i8* %144, i8** %exn.slot, align 8
  %145 = extractvalue { i8*, i32 } %143, 1
  store i32 %145, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp118) #3
  br label %ehcleanup125

ehcleanup125:                                     ; preds = %lpad122, %lpad120
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp119) #3
  br label %ehcleanup300

lpad128:                                          ; preds = %invoke.cont123
  %146 = landingpad { i8*, i32 }
          cleanup
  %147 = extractvalue { i8*, i32 } %146, 0
  store i8* %147, i8** %exn.slot, align 8
  %148 = extractvalue { i8*, i32 } %146, 1
  store i32 %148, i32* %ehselector.slot, align 4
  br label %ehcleanup133

lpad130:                                          ; preds = %invoke.cont129
  %149 = landingpad { i8*, i32 }
          cleanup
  %150 = extractvalue { i8*, i32 } %149, 0
  store i8* %150, i8** %exn.slot, align 8
  %151 = extractvalue { i8*, i32 } %149, 1
  store i32 %151, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp126) #3
  br label %ehcleanup133

ehcleanup133:                                     ; preds = %lpad130, %lpad128
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp127) #3
  br label %ehcleanup300

lpad136:                                          ; preds = %invoke.cont294, %if.end279, %if.then276, %invoke.cont271, %for.end270, %invoke.cont246, %invoke.cont234, %invoke.cont224, %invoke.cont214, %invoke.cont204, %invoke.cont194, %invoke.cont184, %invoke.cont174, %invoke.cont149, %invoke.cont139, %invoke.cont131
  %152 = landingpad { i8*, i32 }
          cleanup
  %153 = extractvalue { i8*, i32 } %152, 0
  store i8* %153, i8** %exn.slot, align 8
  %154 = extractvalue { i8*, i32 } %152, 1
  store i32 %154, i32* %ehselector.slot, align 4
  br label %ehcleanup299

lpad138:                                          ; preds = %invoke.cont137
  %155 = landingpad { i8*, i32 }
          cleanup
  %156 = extractvalue { i8*, i32 } %155, 0
  store i8* %156, i8** %exn.slot, align 8
  %157 = extractvalue { i8*, i32 } %155, 1
  store i32 %157, i32* %ehselector.slot, align 4
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* %ref.tmp134) #3
  br label %ehcleanup299

lpad155:                                          ; preds = %invoke.cont151
  %158 = landingpad { i8*, i32 }
          cleanup
  %159 = extractvalue { i8*, i32 } %158, 0
  store i8* %159, i8** %exn.slot, align 8
  %160 = extractvalue { i8*, i32 } %158, 1
  store i32 %160, i32* %ehselector.slot, align 4
  br label %ehcleanup160

lpad157:                                          ; preds = %invoke.cont156
  %161 = landingpad { i8*, i32 }
          cleanup
  %162 = extractvalue { i8*, i32 } %161, 0
  store i8* %162, i8** %exn.slot, align 8
  %163 = extractvalue { i8*, i32 } %161, 1
  store i32 %163, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp153) #3
  br label %ehcleanup160

ehcleanup160:                                     ; preds = %lpad157, %lpad155
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp154) #3
  br label %ehcleanup299

lpad163:                                          ; preds = %invoke.cont158
  %164 = landingpad { i8*, i32 }
          cleanup
  %165 = extractvalue { i8*, i32 } %164, 0
  store i8* %165, i8** %exn.slot, align 8
  %166 = extractvalue { i8*, i32 } %164, 1
  store i32 %166, i32* %ehselector.slot, align 4
  br label %ehcleanup168

lpad165:                                          ; preds = %invoke.cont164
  %167 = landingpad { i8*, i32 }
          cleanup
  %168 = extractvalue { i8*, i32 } %167, 0
  store i8* %168, i8** %exn.slot, align 8
  %169 = extractvalue { i8*, i32 } %167, 1
  store i32 %169, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp161) #3
  br label %ehcleanup168

ehcleanup168:                                     ; preds = %lpad165, %lpad163
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp162) #3
  br label %ehcleanup299

lpad171:                                          ; preds = %invoke.cont166
  %170 = landingpad { i8*, i32 }
          cleanup
  %171 = extractvalue { i8*, i32 } %170, 0
  store i8* %171, i8** %exn.slot, align 8
  %172 = extractvalue { i8*, i32 } %170, 1
  store i32 %172, i32* %ehselector.slot, align 4
  br label %ehcleanup176

lpad173:                                          ; preds = %invoke.cont172
  %173 = landingpad { i8*, i32 }
          cleanup
  %174 = extractvalue { i8*, i32 } %173, 0
  store i8* %174, i8** %exn.slot, align 8
  %175 = extractvalue { i8*, i32 } %173, 1
  store i32 %175, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp169) #3
  br label %ehcleanup176

ehcleanup176:                                     ; preds = %lpad173, %lpad171
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp170) #3
  br label %ehcleanup299

lpad181:                                          ; preds = %invoke.cont177
  %176 = landingpad { i8*, i32 }
          cleanup
  %177 = extractvalue { i8*, i32 } %176, 0
  store i8* %177, i8** %exn.slot, align 8
  %178 = extractvalue { i8*, i32 } %176, 1
  store i32 %178, i32* %ehselector.slot, align 4
  br label %ehcleanup186

lpad183:                                          ; preds = %invoke.cont182
  %179 = landingpad { i8*, i32 }
          cleanup
  %180 = extractvalue { i8*, i32 } %179, 0
  store i8* %180, i8** %exn.slot, align 8
  %181 = extractvalue { i8*, i32 } %179, 1
  store i32 %181, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp179) #3
  br label %ehcleanup186

ehcleanup186:                                     ; preds = %lpad183, %lpad181
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp180) #3
  br label %ehcleanup299

lpad191:                                          ; preds = %invoke.cont187
  %182 = landingpad { i8*, i32 }
          cleanup
  %183 = extractvalue { i8*, i32 } %182, 0
  store i8* %183, i8** %exn.slot, align 8
  %184 = extractvalue { i8*, i32 } %182, 1
  store i32 %184, i32* %ehselector.slot, align 4
  br label %ehcleanup196

lpad193:                                          ; preds = %invoke.cont192
  %185 = landingpad { i8*, i32 }
          cleanup
  %186 = extractvalue { i8*, i32 } %185, 0
  store i8* %186, i8** %exn.slot, align 8
  %187 = extractvalue { i8*, i32 } %185, 1
  store i32 %187, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp189) #3
  br label %ehcleanup196

ehcleanup196:                                     ; preds = %lpad193, %lpad191
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp190) #3
  br label %ehcleanup299

lpad201:                                          ; preds = %invoke.cont197
  %188 = landingpad { i8*, i32 }
          cleanup
  %189 = extractvalue { i8*, i32 } %188, 0
  store i8* %189, i8** %exn.slot, align 8
  %190 = extractvalue { i8*, i32 } %188, 1
  store i32 %190, i32* %ehselector.slot, align 4
  br label %ehcleanup206

lpad203:                                          ; preds = %invoke.cont202
  %191 = landingpad { i8*, i32 }
          cleanup
  %192 = extractvalue { i8*, i32 } %191, 0
  store i8* %192, i8** %exn.slot, align 8
  %193 = extractvalue { i8*, i32 } %191, 1
  store i32 %193, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp199) #3
  br label %ehcleanup206

ehcleanup206:                                     ; preds = %lpad203, %lpad201
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp200) #3
  br label %ehcleanup299

lpad211:                                          ; preds = %invoke.cont207
  %194 = landingpad { i8*, i32 }
          cleanup
  %195 = extractvalue { i8*, i32 } %194, 0
  store i8* %195, i8** %exn.slot, align 8
  %196 = extractvalue { i8*, i32 } %194, 1
  store i32 %196, i32* %ehselector.slot, align 4
  br label %ehcleanup216

lpad213:                                          ; preds = %invoke.cont212
  %197 = landingpad { i8*, i32 }
          cleanup
  %198 = extractvalue { i8*, i32 } %197, 0
  store i8* %198, i8** %exn.slot, align 8
  %199 = extractvalue { i8*, i32 } %197, 1
  store i32 %199, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp209) #3
  br label %ehcleanup216

ehcleanup216:                                     ; preds = %lpad213, %lpad211
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp210) #3
  br label %ehcleanup299

lpad221:                                          ; preds = %invoke.cont217
  %200 = landingpad { i8*, i32 }
          cleanup
  %201 = extractvalue { i8*, i32 } %200, 0
  store i8* %201, i8** %exn.slot, align 8
  %202 = extractvalue { i8*, i32 } %200, 1
  store i32 %202, i32* %ehselector.slot, align 4
  br label %ehcleanup226

lpad223:                                          ; preds = %invoke.cont222
  %203 = landingpad { i8*, i32 }
          cleanup
  %204 = extractvalue { i8*, i32 } %203, 0
  store i8* %204, i8** %exn.slot, align 8
  %205 = extractvalue { i8*, i32 } %203, 1
  store i32 %205, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp219) #3
  br label %ehcleanup226

ehcleanup226:                                     ; preds = %lpad223, %lpad221
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp220) #3
  br label %ehcleanup299

lpad231:                                          ; preds = %invoke.cont227
  %206 = landingpad { i8*, i32 }
          cleanup
  %207 = extractvalue { i8*, i32 } %206, 0
  store i8* %207, i8** %exn.slot, align 8
  %208 = extractvalue { i8*, i32 } %206, 1
  store i32 %208, i32* %ehselector.slot, align 4
  br label %ehcleanup236

lpad233:                                          ; preds = %invoke.cont232
  %209 = landingpad { i8*, i32 }
          cleanup
  %210 = extractvalue { i8*, i32 } %209, 0
  store i8* %210, i8** %exn.slot, align 8
  %211 = extractvalue { i8*, i32 } %209, 1
  store i32 %211, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp229) #3
  br label %ehcleanup236

ehcleanup236:                                     ; preds = %lpad233, %lpad231
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp230) #3
  br label %ehcleanup299

lpad243:                                          ; preds = %invoke.cont240
  %212 = landingpad { i8*, i32 }
          cleanup
  %213 = extractvalue { i8*, i32 } %212, 0
  store i8* %213, i8** %exn.slot, align 8
  %214 = extractvalue { i8*, i32 } %212, 1
  store i32 %214, i32* %ehselector.slot, align 4
  br label %ehcleanup248

lpad245:                                          ; preds = %invoke.cont244
  %215 = landingpad { i8*, i32 }
          cleanup
  %216 = extractvalue { i8*, i32 } %215, 0
  store i8* %216, i8** %exn.slot, align 8
  %217 = extractvalue { i8*, i32 } %215, 1
  store i32 %217, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp241) #3
  br label %ehcleanup248

ehcleanup248:                                     ; preds = %lpad245, %lpad243
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp242) #3
  br label %ehcleanup299

for.end261:                                       ; preds = %for.cond254
  %218 = load i8**, i8*** %all_gray_frames, align 8
  %219 = bitcast i8** %218 to i8*
  call void @free(i8* %219) #3
  store i32 0, i32* %i262, align 4
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc268, %for.end261
  %220 = load i32, i32* %i262, align 4
  %221 = load i32, i32* %n_frames, align 4
  %cmp264 = icmp slt i32 %220, %221
  br i1 %cmp264, label %for.body265, label %for.end270

for.body265:                                      ; preds = %for.cond263
  %222 = load i8**, i8*** %all_out_frames, align 8
  %223 = load i32, i32* %i262, align 4
  %idxprom266 = sext i32 %223 to i64
  %arrayidx267 = getelementptr inbounds i8*, i8** %222, i64 %idxprom266
  %224 = load i8*, i8** %arrayidx267, align 8
  call void @free(i8* %224) #3
  br label %for.inc268

for.inc268:                                       ; preds = %for.body265
  %225 = load i32, i32* %i262, align 4
  %inc269 = add nsw i32 %225, 1
  store i32 %inc269, i32* %i262, align 4
  br label %for.cond263

for.end270:                                       ; preds = %for.cond263
  %226 = load i8**, i8*** %all_out_frames, align 8
  %227 = bitcast i8** %226 to i8*
  call void @free(i8* %227) #3
  %228 = load %struct._cl_mem*, %struct._cl_mem** %d_interm_gpu_proxy, align 8
  %call272 = invoke i32 @clReleaseMemObject(%struct._cl_mem* %228)
          to label %invoke.cont271 unwind label %lpad136

invoke.cont271:                                   ; preds = %for.end270
  store i32 %call272, i32* %clStatus, align 4
  %229 = load %struct._cl_mem*, %struct._cl_mem** %d_theta_gpu_proxy, align 8
  %call274 = invoke i32 @clReleaseMemObject(%struct._cl_mem* %229)
          to label %invoke.cont273 unwind label %lpad136

invoke.cont273:                                   ; preds = %invoke.cont271
  store i32 %call274, i32* %clStatus, align 4
  %230 = load i32, i32* %clStatus, align 4
  %cmp275 = icmp ne i32 %230, 0
  br i1 %cmp275, label %if.then276, label %if.end279

if.then276:                                       ; preds = %invoke.cont273
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %232 = load i32, i32* %clStatus, align 4
  %call278 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %232, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 276)
          to label %invoke.cont277 unwind label %lpad136

invoke.cont277:                                   ; preds = %if.then276
  call void @exit(i32 -1) #16
  unreachable

if.end279:                                        ; preds = %invoke.cont273
  invoke void @_ZN11OpenCLSetup7releaseEv(%struct.OpenCLSetup* %ocl)
          to label %invoke.cont280 unwind label %lpad136

invoke.cont280:                                   ; preds = %if.end279
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp282) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp281, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp282)
          to label %invoke.cont284 unwind label %lpad283

invoke.cont284:                                   ; preds = %invoke.cont280
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp281)
          to label %invoke.cont286 unwind label %lpad285

invoke.cont286:                                   ; preds = %invoke.cont284
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp281) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp282) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp290) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp289, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp290)
          to label %invoke.cont292 unwind label %lpad291

invoke.cont292:                                   ; preds = %invoke.cont286
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp289, i32 1)
          to label %invoke.cont294 unwind label %lpad293

invoke.cont294:                                   ; preds = %invoke.cont292
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp289) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp290) #3
  %call298 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
          to label %invoke.cont297 unwind label %lpad136

invoke.cont297:                                   ; preds = %invoke.cont294
  store i32 0, i32* %retval, align 4
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(%"class.std::vector"* %proxy_threads) #3
  call void @_ZN5TimerD2Ev(%struct.Timer* %timer) #3
  %233 = load i32, i32* %retval, align 4
  ret i32 %233

lpad283:                                          ; preds = %invoke.cont280
  %234 = landingpad { i8*, i32 }
          cleanup
  %235 = extractvalue { i8*, i32 } %234, 0
  store i8* %235, i8** %exn.slot, align 8
  %236 = extractvalue { i8*, i32 } %234, 1
  store i32 %236, i32* %ehselector.slot, align 4
  br label %ehcleanup288

lpad285:                                          ; preds = %invoke.cont284
  %237 = landingpad { i8*, i32 }
          cleanup
  %238 = extractvalue { i8*, i32 } %237, 0
  store i8* %238, i8** %exn.slot, align 8
  %239 = extractvalue { i8*, i32 } %237, 1
  store i32 %239, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp281) #3
  br label %ehcleanup288

ehcleanup288:                                     ; preds = %lpad285, %lpad283
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp282) #3
  br label %ehcleanup299

lpad291:                                          ; preds = %invoke.cont286
  %240 = landingpad { i8*, i32 }
          cleanup
  %241 = extractvalue { i8*, i32 } %240, 0
  store i8* %241, i8** %exn.slot, align 8
  %242 = extractvalue { i8*, i32 } %240, 1
  store i32 %242, i32* %ehselector.slot, align 4
  br label %ehcleanup296

lpad293:                                          ; preds = %invoke.cont292
  %243 = landingpad { i8*, i32 }
          cleanup
  %244 = extractvalue { i8*, i32 } %243, 0
  store i8* %244, i8** %exn.slot, align 8
  %245 = extractvalue { i8*, i32 } %243, 1
  store i32 %245, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp289) #3
  br label %ehcleanup296

ehcleanup296:                                     ; preds = %lpad293, %lpad291
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp290) #3
  br label %ehcleanup299

ehcleanup299:                                     ; preds = %ehcleanup296, %ehcleanup288, %ehcleanup248, %ehcleanup236, %ehcleanup226, %ehcleanup216, %ehcleanup206, %ehcleanup196, %ehcleanup186, %ehcleanup176, %ehcleanup168, %ehcleanup160, %lpad138, %lpad136
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(%"class.std::vector"* %proxy_threads) #3
  br label %ehcleanup300

ehcleanup300:                                     ; preds = %ehcleanup299, %ehcleanup133, %ehcleanup125, %ehcleanup117, %ehcleanup102, %ehcleanup94, %ehcleanup86, %ehcleanup32, %ehcleanup24, %lpad3, %ehcleanup
  call void @_ZN5TimerD2Ev(%struct.Timer* %timer) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup300
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val301 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val301
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN6ParamsC2EiPPc(%struct.Params* %this, i32 %argc, i8** %argv) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %struct.Params*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store %struct.Params* %this, %struct.Params** %this.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %this1 = load %struct.Params*, %struct.Params** %this.addr, align 8
  %platform = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 0
  store i32 0, i32* %platform, align 8
  %device = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 1
  store i32 0, i32* %device, align 4
  %n_work_items = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 2
  store i32 16, i32* %n_work_items, align 8
  %n_threads = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 3
  store i32 7, i32* %n_threads, align 4
  %n_warmup = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 4
  store i32 10, i32* %n_warmup, align 8
  %n_reps = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 5
  store i32 100, i32* %n_reps, align 4
  %alpha = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 6
  store float 0.000000e+00, float* %alpha, align 8
  %file_name = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 7
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8** %file_name, align 8
  %comparison_file = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8** %comparison_file, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN11OpenCLSetupC2Eii(%struct.OpenCLSetup* %this, i32 %platform, i32 %device) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %struct.OpenCLSetup*, align 8
  %platform.addr = alloca i32, align 4
  %device.addr = alloca i32, align 4
  %clStatus = alloca i32, align 4
  %clPlatform = alloca %struct._cl_platform_id*, align 8
  %clNumDevices = alloca i32, align 4
  %clDevices = alloca %struct._cl_device_id**, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %i = alloca i32, align 4
  %ref.tmp18 = alloca %"class.std::__cxx11::basic_string", align 8
  %device_name_ = alloca [100 x i8], align 16
  %binary_file = alloca %"class.std::__cxx11::basic_string", align 8
  %clOptions = alloca [50 x i8], align 16
  %log_size = alloca i64, align 8
  %log = alloca i8*, align 8
  store %struct.OpenCLSetup* %this, %struct.OpenCLSetup** %this.addr, align 8
  store i32 %platform, i32* %platform.addr, align 4
  store i32 %device, i32* %device.addr, align 4
  %this1 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %this.addr, align 8
  store %struct._cl_platform_id* null, %struct._cl_platform_id** %clPlatform, align 8
  %call = call %struct._cl_platform_id* @_ZN10aocl_utils12findPlatformEPKc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  store %struct._cl_platform_id* %call, %struct._cl_platform_id** %clPlatform, align 8
  %0 = load %struct._cl_platform_id*, %struct._cl_platform_id** %clPlatform, align 8
  %cmp = icmp eq %struct._cl_platform_id* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._cl_platform_id*, %struct._cl_platform_id** %clPlatform, align 8
  %call3 = call i32 @clGetDeviceIDs(%struct._cl_platform_id* %1, i64 4294967295, i32 0, %struct._cl_device_id** null, i32* %clNumDevices)
  store i32 %call3, i32* %clStatus, align 4
  %2 = load i32, i32* %clStatus, align 4
  %cmp4 = icmp ne i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %clStatus, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 57)
  call void @exit(i32 -1) #16
  unreachable

if.end7:                                          ; preds = %if.end
  %5 = load i32, i32* %clNumDevices, align 4
  %conv = zext i32 %5 to i64
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  %9 = select i1 %7, i64 -1, i64 %8
  %call8 = call i8* @_Znam(i64 %9) #17
  %10 = bitcast i8* %call8 to %struct._cl_device_id**
  store %struct._cl_device_id** %10, %struct._cl_device_id*** %clDevices, align 8
  %11 = load %struct._cl_platform_id*, %struct._cl_platform_id** %clPlatform, align 8
  %12 = load i32, i32* %clNumDevices, align 4
  %13 = load %struct._cl_device_id**, %struct._cl_device_id*** %clDevices, align 8
  %call9 = call i32 @clGetDeviceIDs(%struct._cl_platform_id* %11, i64 4294967295, i32 %12, %struct._cl_device_id** %13, i32* null)
  store i32 %call9, i32* %clStatus, align 4
  %14 = load i32, i32* %clStatus, align 4
  %cmp10 = icmp ne i32 %14, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i32, i32* %clStatus, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 60)
  call void @exit(i32 -1) #16
  unreachable

if.end13:                                         ; preds = %if.end7
  %17 = load %struct._cl_platform_id*, %struct._cl_platform_id** %clPlatform, align 8
  call void @_ZN10aocl_utils15getPlatformNameB5cxx11EP15_cl_platform_id(%"class.std::__cxx11::basic_string"* sret %ref.tmp, %struct._cl_platform_id* %17)
  %call14 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %ref.tmp) #3
  %call15 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* %call14)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #3
  %18 = load i32, i32* %clNumDevices, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 %18)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %clNumDevices, align 4
  %cmp17 = icmp ult i32 %19, %20
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._cl_device_id**, %struct._cl_device_id*** %clDevices, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds %struct._cl_device_id*, %struct._cl_device_id** %21, i64 %idxprom
  %23 = load %struct._cl_device_id*, %struct._cl_device_id** %arrayidx, align 8
  call void @_ZN10aocl_utils13getDeviceNameB5cxx11EP13_cl_device_id(%"class.std::__cxx11::basic_string"* sret %ref.tmp18, %struct._cl_device_id* %23)
  %call19 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %ref.tmp18) #3
  %call22 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* %call19)
          to label %invoke.cont21 unwind label %lpad20

invoke.cont21:                                    ; preds = %for.body
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp18) #3
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont21
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %if.end13
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %exn.slot, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #3
  br label %eh.resume

lpad20:                                           ; preds = %for.body
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  store i8* %29, i8** %exn.slot, align 8
  %30 = extractvalue { i8*, i32 } %28, 1
  store i32 %30, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp18) #3
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %clNumDevices, align 4
  %32 = load %struct._cl_device_id**, %struct._cl_device_id*** %clDevices, align 8
  %call23 = call %struct._cl_context* @clCreateContext(i64* null, i32 %31, %struct._cl_device_id** %32, void (i8*, i8*, i64, i8*)* @_ZN10aocl_utils18oclContextCallbackEPKcPKvmPv, i8* null, i32* %clStatus)
  %clContext = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 0
  store %struct._cl_context* %call23, %struct._cl_context** %clContext, align 8
  %33 = load i32, i32* %clStatus, align 4
  %cmp24 = icmp ne i32 %33, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.end
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i32, i32* %clStatus, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 70)
  call void @exit(i32 -1) #16
  unreachable

if.end27:                                         ; preds = %for.end
  %36 = load %struct._cl_device_id**, %struct._cl_device_id*** %clDevices, align 8
  %37 = load i32, i32* %device.addr, align 4
  %idxprom28 = sext i32 %37 to i64
  %arrayidx29 = getelementptr inbounds %struct._cl_device_id*, %struct._cl_device_id** %36, i64 %idxprom28
  %38 = load %struct._cl_device_id*, %struct._cl_device_id** %arrayidx29, align 8
  %39 = bitcast [100 x i8]* %device_name_ to i8*
  %call30 = call i32 @clGetDeviceInfo(%struct._cl_device_id* %38, i32 4139, i64 100, i8* %39, i64* null)
  %40 = load %struct._cl_device_id**, %struct._cl_device_id*** %clDevices, align 8
  %41 = load i32, i32* %device.addr, align 4
  %idxprom31 = sext i32 %41 to i64
  %arrayidx32 = getelementptr inbounds %struct._cl_device_id*, %struct._cl_device_id** %40, i64 %idxprom31
  %42 = load %struct._cl_device_id*, %struct._cl_device_id** %arrayidx32, align 8
  %clDeviceID = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 7
  store %struct._cl_device_id* %42, %struct._cl_device_id** %clDeviceID, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %device_name_, i64 0, i64 0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* %arraydecay)
  %clContext34 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 0
  %44 = load %struct._cl_context*, %struct._cl_context** %clContext34, align 8
  %45 = load %struct._cl_device_id**, %struct._cl_device_id*** %clDevices, align 8
  %46 = load i32, i32* %device.addr, align 4
  %idxprom35 = sext i32 %46 to i64
  %arrayidx36 = getelementptr inbounds %struct._cl_device_id*, %struct._cl_device_id** %45, i64 %idxprom35
  %47 = load %struct._cl_device_id*, %struct._cl_device_id** %arrayidx36, align 8
  %call37 = call %struct._cl_command_queue* @clCreateCommandQueue(%struct._cl_context* %44, %struct._cl_device_id* %47, i64 0, i32* %clStatus)
  %clCommandQueue = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 1
  store %struct._cl_command_queue* %call37, %struct._cl_command_queue** %clCommandQueue, align 8
  %48 = load i32, i32* %clStatus, align 4
  %cmp38 = icmp ne i32 %48, 0
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end27
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = load i32, i32* %clStatus, align 4
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 79)
  call void @exit(i32 -1) #16
  unreachable

if.end41:                                         ; preds = %if.end27
  %clDeviceID42 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 7
  %51 = load %struct._cl_device_id*, %struct._cl_device_id** %clDeviceID42, align 8
  call void @_ZN10aocl_utils18getBoardBinaryFileB5cxx11EPKcP13_cl_device_id(%"class.std::__cxx11::basic_string"* sret %binary_file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), %struct._cl_device_id* %51)
  %call43 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %binary_file) #3
  %call46 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* %call43)
          to label %invoke.cont45 unwind label %lpad44

invoke.cont45:                                    ; preds = %if.end41
  %clContext47 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 0
  %52 = load %struct._cl_context*, %struct._cl_context** %clContext47, align 8
  %call48 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %binary_file) #3
  %clDeviceID49 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 7
  %call51 = invoke %struct._cl_program* @_ZN10aocl_utils23createProgramFromBinaryEP11_cl_contextPKcPKP13_cl_device_idj(%struct._cl_context* %52, i8* %call48, %struct._cl_device_id** %clDeviceID49, i32 1)
          to label %invoke.cont50 unwind label %lpad44

invoke.cont50:                                    ; preds = %invoke.cont45
  %clProgram = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  store %struct._cl_program* %call51, %struct._cl_program** %clProgram, align 8
  %53 = load i32, i32* %clStatus, align 4
  %cmp52 = icmp ne i32 %53, 0
  br i1 %cmp52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %invoke.cont50
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i32, i32* %clStatus, align 4
  %call55 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 88)
          to label %invoke.cont54 unwind label %lpad44

invoke.cont54:                                    ; preds = %if.then53
  call void @exit(i32 -1) #16
  unreachable

lpad44:                                           ; preds = %if.then96, %invoke.cont90, %invoke.cont87, %invoke.cont84, %if.end82, %if.then79, %invoke.cont73, %invoke.cont67, %if.then63, %if.end56, %if.then53, %invoke.cont45, %if.end41
  %56 = landingpad { i8*, i32 }
          cleanup
  %57 = extractvalue { i8*, i32 } %56, 0
  store i8* %57, i8** %exn.slot, align 8
  %58 = extractvalue { i8*, i32 } %56, 1
  store i32 %58, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %binary_file) #3
  br label %eh.resume

if.end56:                                         ; preds = %invoke.cont50
  %arraydecay57 = getelementptr inbounds [50 x i8], [50 x i8]* %clOptions, i64 0, i64 0
  %call58 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)) #3
  %clProgram59 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %59 = load %struct._cl_program*, %struct._cl_program** %clProgram59, align 8
  %call61 = invoke i32 @clBuildProgram(%struct._cl_program* %59, i32 0, %struct._cl_device_id** null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0), void (%struct._cl_program*, i8*)* null, i8* null)
          to label %invoke.cont60 unwind label %lpad44

invoke.cont60:                                    ; preds = %if.end56
  store i32 %call61, i32* %clStatus, align 4
  %60 = load i32, i32* %clStatus, align 4
  %cmp62 = icmp eq i32 %60, -11
  br i1 %cmp62, label %if.then63, label %if.end77

if.then63:                                        ; preds = %invoke.cont60
  %clProgram64 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %61 = load %struct._cl_program*, %struct._cl_program** %clProgram64, align 8
  %62 = load %struct._cl_device_id**, %struct._cl_device_id*** %clDevices, align 8
  %63 = load i32, i32* %device.addr, align 4
  %idxprom65 = sext i32 %63 to i64
  %arrayidx66 = getelementptr inbounds %struct._cl_device_id*, %struct._cl_device_id** %62, i64 %idxprom65
  %64 = load %struct._cl_device_id*, %struct._cl_device_id** %arrayidx66, align 8
  %call68 = invoke i32 @clGetProgramBuildInfo(%struct._cl_program* %61, %struct._cl_device_id* %64, i32 4483, i64 0, i8* null, i64* %log_size)
          to label %invoke.cont67 unwind label %lpad44

invoke.cont67:                                    ; preds = %if.then63
  %65 = load i64, i64* %log_size, align 8
  %call69 = call noalias i8* @malloc(i64 %65) #3
  store i8* %call69, i8** %log, align 8
  %clProgram70 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %66 = load %struct._cl_program*, %struct._cl_program** %clProgram70, align 8
  %67 = load %struct._cl_device_id**, %struct._cl_device_id*** %clDevices, align 8
  %68 = load i32, i32* %device.addr, align 4
  %idxprom71 = sext i32 %68 to i64
  %arrayidx72 = getelementptr inbounds %struct._cl_device_id*, %struct._cl_device_id** %67, i64 %idxprom71
  %69 = load %struct._cl_device_id*, %struct._cl_device_id** %arrayidx72, align 8
  %70 = load i64, i64* %log_size, align 8
  %71 = load i8*, i8** %log, align 8
  %call74 = invoke i32 @clGetProgramBuildInfo(%struct._cl_program* %66, %struct._cl_device_id* %69, i32 4483, i64 %70, i8* %71, i64* null)
          to label %invoke.cont73 unwind label %lpad44

invoke.cont73:                                    ; preds = %invoke.cont67
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = load i8*, i8** %log, align 8
  %call76 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* %73)
          to label %invoke.cont75 unwind label %lpad44

invoke.cont75:                                    ; preds = %invoke.cont73
  br label %if.end77

if.end77:                                         ; preds = %invoke.cont75, %invoke.cont60
  %74 = load i32, i32* %clStatus, align 4
  %cmp78 = icmp ne i32 %74, 0
  br i1 %cmp78, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end77
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = load i32, i32* %clStatus, align 4
  %call81 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 107)
          to label %invoke.cont80 unwind label %lpad44

invoke.cont80:                                    ; preds = %if.then79
  call void @exit(i32 -1) #16
  unreachable

if.end82:                                         ; preds = %if.end77
  %clProgram83 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %77 = load %struct._cl_program*, %struct._cl_program** %clProgram83, align 8
  %call85 = invoke %struct._cl_kernel* @clCreateKernel(%struct._cl_program* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32* %clStatus)
          to label %invoke.cont84 unwind label %lpad44

invoke.cont84:                                    ; preds = %if.end82
  %clKernel_gauss = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 3
  store %struct._cl_kernel* %call85, %struct._cl_kernel** %clKernel_gauss, align 8
  %clProgram86 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %78 = load %struct._cl_program*, %struct._cl_program** %clProgram86, align 8
  %call88 = invoke %struct._cl_kernel* @clCreateKernel(%struct._cl_program* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i32* %clStatus)
          to label %invoke.cont87 unwind label %lpad44

invoke.cont87:                                    ; preds = %invoke.cont84
  %clKernel_sobel = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 4
  store %struct._cl_kernel* %call88, %struct._cl_kernel** %clKernel_sobel, align 8
  %clProgram89 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %79 = load %struct._cl_program*, %struct._cl_program** %clProgram89, align 8
  %call91 = invoke %struct._cl_kernel* @clCreateKernel(%struct._cl_program* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i32* %clStatus)
          to label %invoke.cont90 unwind label %lpad44

invoke.cont90:                                    ; preds = %invoke.cont87
  %clKernel_nonmax = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 5
  store %struct._cl_kernel* %call91, %struct._cl_kernel** %clKernel_nonmax, align 8
  %clProgram92 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %80 = load %struct._cl_program*, %struct._cl_program** %clProgram92, align 8
  %call94 = invoke %struct._cl_kernel* @clCreateKernel(%struct._cl_program* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i32* %clStatus)
          to label %invoke.cont93 unwind label %lpad44

invoke.cont93:                                    ; preds = %invoke.cont90
  %clKernel_hyst = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 6
  store %struct._cl_kernel* %call94, %struct._cl_kernel** %clKernel_hyst, align 8
  %81 = load i32, i32* %clStatus, align 4
  %cmp95 = icmp ne i32 %81, 0
  br i1 %cmp95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %invoke.cont93
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %83 = load i32, i32* %clStatus, align 4
  %call98 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 115)
          to label %invoke.cont97 unwind label %lpad44

invoke.cont97:                                    ; preds = %if.then96
  call void @exit(i32 -1) #16
  unreachable

if.end99:                                         ; preds = %invoke.cont93
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %binary_file) #3
  ret void

eh.resume:                                        ; preds = %lpad44, %lpad20, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val100 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val100
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5TimerC2Ev(%struct.Timer* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %struct.Timer*, align 8
  store %struct.Timer* %this, %struct.Timer** %this.addr, align 8
  %this1 = load %struct.Timer*, %struct.Timer** %this.addr, align 8
  %startTime = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 0
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEC2Ev(%"class.std::map"* %startTime) #3
  %stopTime = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 1
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEC2Ev(%"class.std::map"* %stopTime) #3
  %time = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 2
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEC2Ev(%"class.std::map"* %time) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %this, %"class.std::__cxx11::basic_string"* %name) #4 comdat align 2 {
entry:
  %this.addr = alloca %struct.Timer*, align 8
  store %struct.Timer* %this, %struct.Timer** %this.addr, align 8
  %this1 = load %struct.Timer*, %struct.Timer** %this.addr, align 8
  %time = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 2
  %call = call i64 @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE5countERS9_(%"class.std::map"* %time, %"class.std::__cxx11::basic_string"* dereferenceable(32) %name)
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %time2 = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 2
  %call3 = call dereferenceable(8) double* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEixERS9_(%"class.std::map"* %time2, %"class.std::__cxx11::basic_string"* dereferenceable(32) %name)
  store double 0.000000e+00, double* %call3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call double @_ZN10aocl_utils19getCurrentTimestampEv()
  %startTime = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 0
  %call5 = call dereferenceable(8) double* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEixERS9_(%"class.std::map"* %startTime, %"class.std::__cxx11::basic_string"* dereferenceable(32) %name)
  store double %call4, double* %call5, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::allocator.0"*) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::allocator.0"* dereferenceable(1)) unnamed_addr #1

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator.0"*) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZN11OpenCLSetup14max_work_itemsEP10_cl_kernel(%struct.OpenCLSetup* %this, %struct._cl_kernel* %clKernel) #4 comdat align 2 {
entry:
  %this.addr = alloca %struct.OpenCLSetup*, align 8
  %clKernel.addr = alloca %struct._cl_kernel*, align 8
  %max_work_items = alloca i64, align 8
  %clStatus = alloca i32, align 4
  store %struct.OpenCLSetup* %this, %struct.OpenCLSetup** %this.addr, align 8
  store %struct._cl_kernel* %clKernel, %struct._cl_kernel** %clKernel.addr, align 8
  %this1 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %this.addr, align 8
  %0 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel.addr, align 8
  %clDeviceID = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 7
  %1 = load %struct._cl_device_id*, %struct._cl_device_id** %clDeviceID, align 8
  %2 = bitcast i64* %max_work_items to i8*
  %call = call i32 @clGetKernelWorkGroupInfo(%struct._cl_kernel* %0, %struct._cl_device_id* %1, i32 4528, i64 8, i8* %2, i64* null)
  store i32 %call, i32* %clStatus, align 4
  %3 = load i32, i32* %clStatus, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %clStatus, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 122)
  call void @exit(i32 -1) #16
  unreachable

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %max_work_items, align 8
  ret i64 %6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %this, %"class.std::__cxx11::basic_string"* %name) #4 comdat align 2 {
entry:
  %this.addr = alloca %struct.Timer*, align 8
  store %struct.Timer* %this, %struct.Timer** %this.addr, align 8
  %this1 = load %struct.Timer*, %struct.Timer** %this.addr, align 8
  %call = call double @_ZN10aocl_utils19getCurrentTimestampEv()
  %stopTime = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 1
  %call2 = call dereferenceable(8) double* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEixERS9_(%"class.std::map"* %stopTime, %"class.std::__cxx11::basic_string"* dereferenceable(32) %name)
  store double %call, double* %call2, align 8
  %stopTime3 = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 1
  %call4 = call dereferenceable(8) double* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEixERS9_(%"class.std::map"* %stopTime3, %"class.std::__cxx11::basic_string"* dereferenceable(32) %name)
  %0 = load double, double* %call4, align 8
  %startTime = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 0
  %call5 = call dereferenceable(8) double* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEixERS9_(%"class.std::map"* %startTime, %"class.std::__cxx11::basic_string"* dereferenceable(32) %name)
  %1 = load double, double* %call5, align 8
  %sub = fsub double %0, %1
  %time = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 2
  %call6 = call dereferenceable(8) double* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEixERS9_(%"class.std::map"* %time, %"class.std::__cxx11::basic_string"* dereferenceable(32) %name)
  %2 = load double, double* %call6, align 8
  %add = fadd double %2, %sub
  store double %add, double* %call6, align 8
  ret void
}

declare dso_local %struct._cl_mem* @clCreateBuffer(%struct._cl_context*, i64, i64, i8*, i32*) #1

declare dso_local i32 @clFinish(%struct._cl_command_queue*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %this, %"class.std::__cxx11::basic_string"* %name, i32 %REP) #4 comdat align 2 {
entry:
  %this.addr = alloca %struct.Timer*, align 8
  %REP.addr = alloca i32, align 4
  store %struct.Timer* %this, %struct.Timer** %this.addr, align 8
  store i32 %REP, i32* %REP.addr, align 4
  %this1 = load %struct.Timer*, %struct.Timer** %this.addr, align 8
  %call = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %name) #3
  %time = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 2
  %call2 = call dereferenceable(8) double* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEixERS9_(%"class.std::map"* %time, %"class.std::__cxx11::basic_string"* dereferenceable(32) %name)
  %0 = load double, double* %call2, align 8
  %mul = fmul double %0, 1.000000e+03
  %1 = load i32, i32* %REP.addr, align 4
  %conv = sitofp i32 %1 to double
  %div = fdiv double %mul, %conv
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i8* %call, double %div)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EEC2Ev(%"class.std::vector"* %this) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE9push_backEOS0_(%"class.std::vector"* %this, %"class.std::thread"* dereferenceable(8) %__x) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__x.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"class.std::thread"* %__x, %"class.std::thread"** %__x.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__x.addr, align 8
  %call = call dereferenceable(8) %"class.std::thread"* @_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_(%"class.std::thread"* dereferenceable(8) %0) #3
  call void @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %this1, %"class.std::thread"* dereferenceable(8) %call)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt6threadC2IZ4mainE3$_0JEEEOT_DpOT0_"(%"class.std::thread"* %this, %class.anon* dereferenceable(152) %__f) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  %agg.tmp = alloca %"class.std::shared_ptr", align 8
  %ref.tmp = alloca %"class.std::shared_ptr.10", align 8
  %ref.tmp2 = alloca %"struct.std::_Bind_simple", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* %_M_id) #3
  %0 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call = call dereferenceable(152) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* dereferenceable(152) %0) #3
  call void @"_ZSt13__bind_simpleIZ4mainE3$_0JEENSt19_Bind_simple_helperIT_JDpT0_EE6__typeEOS2_DpOS3_"(%"struct.std::_Bind_simple"* sret %ref.tmp2, %class.anon* dereferenceable(152) %call)
  call void @"_ZNSt6thread15_M_make_routineISt12_Bind_simpleIFZ4mainE3$_0vEEEESt10shared_ptrINS_5_ImplIT_EEEOS7_"(%"class.std::shared_ptr.10"* sret %ref.tmp, %"class.std::thread"* %this1, %"struct.std::_Bind_simple"* dereferenceable(152) %ref.tmp2)
  call void @"_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2INS0_5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEvEEOS_IT_E"(%"class.std::shared_ptr"* %agg.tmp, %"class.std::shared_ptr.10"* dereferenceable(16) %ref.tmp) #3
  invoke void @_ZNSt6thread15_M_start_threadESt10shared_ptrINS_10_Impl_baseEEPFvvE(%"class.std::thread"* %this1, %"class.std::shared_ptr"* %agg.tmp, void ()* bitcast (i32 (i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*)* @pthread_create to void ()*))
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev(%"class.std::shared_ptr"* %agg.tmp) #3
  call void @"_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.std::shared_ptr.10"* %ref.tmp) #3
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev(%"class.std::shared_ptr"* %agg.tmp) #3
  call void @"_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.std::shared_ptr.10"* %ref.tmp) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadD2Ev(%"class.std::thread"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %call = call zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* %this1) #3
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt9terminatev() #16
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS2_SaIS2_EEEEZ4mainE3$_1ET0_T_SA_S9_"(%"class.std::thread"* %__first.coerce, %"class.std::thread"* %__last.coerce) #4 {
entry:
  %retval = alloca %class.anon.6, align 1
  %__first = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__last = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__f = alloca %class.anon.6, align 1
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__first, i32 0, i32 0
  store %"class.std::thread"* %__first.coerce, %"class.std::thread"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %__last, i32 0, i32 0
  store %"class.std::thread"* %__last.coerce, %"class.std::thread"** %coerce.dive1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call zeroext i1 @_ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__first, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__last) #3
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call dereferenceable(8) %"class.std::thread"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  call void @"_ZZ4mainENK3$_1clERSt6thread"(%class.anon.6* %__f, %"class.std::thread"* dereferenceable(8) %call2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call3 = call dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %__first) #3
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = call dereferenceable(1) %class.anon.6* @"_ZSt4moveIRZ4mainE3$_1EONSt16remove_referenceIT_E4typeEOS3_"(%class.anon.6* dereferenceable(1) %__f) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZNSt6vectorISt6threadSaIS0_EE5beginEv(%"class.std::vector"* %this) #7 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"class.std::thread"** dereferenceable(8) %_M_start) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive, align 8
  ret %"class.std::thread"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZNSt6vectorISt6threadSaIS0_EE3endEv(%"class.std::vector"* %this) #7 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %retval, %"class.std::thread"** dereferenceable(8) %_M_finish) #3
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %retval, i32 0, i32 0
  %1 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive, align 8
  ret %"class.std::thread"* %1
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_Z6verifyPPhiPKciiiii(i8** %all_out_frames, i32 %image_size, i8* %file_name, i32 %num_frames, i32 %rowsc, i32 %colsc, i32 %rowsc_, i32 %colsc_) #4 comdat {
entry:
  %all_out_frames.addr = alloca i8**, align 8
  %image_size.addr = alloca i32, align 4
  %file_name.addr = alloca i8*, align 8
  %num_frames.addr = alloca i32, align 4
  %rowsc.addr = alloca i32, align 4
  %colsc.addr = alloca i32, align 4
  %rowsc_.addr = alloca i32, align 4
  %colsc_.addr = alloca i32, align 4
  store i8** %all_out_frames, i8*** %all_out_frames.addr, align 8
  store i32 %image_size, i32* %image_size.addr, align 4
  store i8* %file_name, i8** %file_name.addr, align 8
  store i32 %num_frames, i32* %num_frames.addr, align 4
  store i32 %rowsc, i32* %rowsc.addr, align 4
  store i32 %colsc, i32* %colsc.addr, align 4
  store i32 %rowsc_, i32* %rowsc_.addr, align 4
  store i32 %colsc_, i32* %colsc_.addr, align 4
  %0 = load i8**, i8*** %all_out_frames.addr, align 8
  %1 = load i32, i32* %image_size.addr, align 4
  %2 = load i8*, i8** %file_name.addr, align 8
  %3 = load i32, i32* %num_frames.addr, align 4
  %4 = load i32, i32* %rowsc.addr, align 4
  %5 = load i32, i32* %colsc.addr, align 4
  %6 = load i32, i32* %rowsc_.addr, align 4
  %7 = load i32, i32* %colsc_.addr, align 4
  %call = call i32 @_Z14compare_outputPPhiPKciiiii(i8** %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

declare dso_local i32 @clReleaseMemObject(%struct._cl_mem*) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN11OpenCLSetup7releaseEv(%struct.OpenCLSetup* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %struct.OpenCLSetup*, align 8
  store %struct.OpenCLSetup* %this, %struct.OpenCLSetup** %this.addr, align 8
  %this1 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %this.addr, align 8
  %clKernel_gauss = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 3
  %0 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_gauss, align 8
  %call = call i32 @clReleaseKernel(%struct._cl_kernel* %0)
  %clKernel_sobel = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 4
  %1 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_sobel, align 8
  %call2 = call i32 @clReleaseKernel(%struct._cl_kernel* %1)
  %clKernel_nonmax = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 5
  %2 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_nonmax, align 8
  %call3 = call i32 @clReleaseKernel(%struct._cl_kernel* %2)
  %clKernel_hyst = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 6
  %3 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_hyst, align 8
  %call4 = call i32 @clReleaseKernel(%struct._cl_kernel* %3)
  %clProgram = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %4 = load %struct._cl_program*, %struct._cl_program** %clProgram, align 8
  %call5 = call i32 @clReleaseProgram(%struct._cl_program* %4)
  %clCommandQueue = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 1
  %5 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue, align 8
  %call6 = call i32 @clReleaseCommandQueue(%struct._cl_command_queue* %5)
  %clContext = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 0
  %6 = load %struct._cl_context*, %struct._cl_context** %clContext, align 8
  %call7 = call i32 @clReleaseContext(%struct._cl_context* %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(%"class.std::vector"* %this) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.std::thread"*, %"class.std::thread"** %_M_start, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load %"class.std::thread"*, %"class.std::thread"** %_M_finish, align 8
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator.3"* @_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #3
  invoke void @_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E(%"class.std::thread"* %1, %"class.std::thread"* %3, %"class.std::allocator.3"* dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev(%"struct.std::_Vector_base"* %5) #3
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev(%"struct.std::_Vector_base"* %9) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN5TimerD2Ev(%struct.Timer* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %struct.Timer*, align 8
  store %struct.Timer* %this, %struct.Timer** %this.addr, align 8
  %this1 = load %struct.Timer*, %struct.Timer** %this.addr, align 8
  %time = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 2
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEED2Ev(%"class.std::map"* %time) #3
  %stopTime = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 1
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEED2Ev(%"class.std::map"* %stopTime) #3
  %startTime = getelementptr inbounds %struct.Timer, %struct.Timer* %this1, i32 0, i32 0
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEED2Ev(%"class.std::map"* %startTime) #3
  ret void
}

declare dso_local %struct._cl_platform_id* @_ZN10aocl_utils12findPlatformEPKc(i8*) #1

declare dso_local i32 @clGetDeviceIDs(%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*) #1

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #9

declare dso_local void @_ZN10aocl_utils15getPlatformNameB5cxx11EP15_cl_platform_id(%"class.std::__cxx11::basic_string"* sret, %struct._cl_platform_id*) #1

; Function Attrs: nounwind
declare dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"*) #2

declare dso_local void @_ZN10aocl_utils13getDeviceNameB5cxx11EP13_cl_device_id(%"class.std::__cxx11::basic_string"* sret, %struct._cl_device_id*) #1

declare dso_local %struct._cl_context* @clCreateContext(i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*) #1

declare dso_local void @_ZN10aocl_utils18oclContextCallbackEPKcPKvmPv(i8*, i8*, i64, i8*) #1

declare dso_local i32 @clGetDeviceInfo(%struct._cl_device_id*, i32, i64, i8*, i64*) #1

declare dso_local %struct._cl_command_queue* @clCreateCommandQueue(%struct._cl_context*, %struct._cl_device_id*, i64, i32*) #1

declare dso_local void @_ZN10aocl_utils18getBoardBinaryFileB5cxx11EPKcP13_cl_device_id(%"class.std::__cxx11::basic_string"* sret, i8*, %struct._cl_device_id*) #1

declare dso_local %struct._cl_program* @_ZN10aocl_utils23createProgramFromBinaryEP11_cl_contextPKcPKP13_cl_device_idj(%struct._cl_context*, i8*, %struct._cl_device_id**, i32) #1

declare dso_local i32 @clBuildProgram(%struct._cl_program*, i32, %struct._cl_device_id**, i8*, void (%struct._cl_program*, i8*)*, i8*) #1

declare dso_local i32 @clGetProgramBuildInfo(%struct._cl_program*, %struct._cl_device_id*, i32, i64, i8*, i64*) #1

declare dso_local %struct._cl_kernel* @clCreateKernel(%struct._cl_program*, i8*, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEC2Ev(%"class.std::map"* %this) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev(%"class.std::_Rb_tree"* %_M_t)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #10 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #16
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEC2Ev(%"class.std::allocator"* %0) #3
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 32, i1 false)
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1, i32 0, i32 2
  store i64 0, i64* %_M_node_count, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EE13_M_initializeEv(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  store i8* %3, i8** %exn.slot, align 8
  %4 = extractvalue { i8*, i32 } %2, 1
  store i32 %4, i32* %ehselector.slot, align 4
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEED2Ev(%"class.std::allocator"* %5) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEC2Ev(%"class.std::allocator"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EE13_M_initializeEv(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"** %this.addr, align 8
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_color = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 0
  store i32 0, i32* %_M_color, align 8
  %_M_header2 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header2, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %_M_header3 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header4 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header4, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %_M_header3, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %_M_header5 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_header6 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1, i32 0, i32 1
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header6, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %_M_header5, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEED2Ev(%"class.std::allocator"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %this, %"class.std::allocator"** %this.addr, align 8
  %this1 = load %"class.std::allocator"*, %"class.std::allocator"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator"* %this1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEED2Ev(%"class.__gnu_cxx::new_allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEC2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEED2Ev(%"class.__gnu_cxx::new_allocator"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE5countERS9_(%"class.std::map"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__x) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__x, %"class.std::__cxx11::basic_string"** %__x.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__x.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(%"class.std::_Rb_tree"* %_M_t, %"class.std::__cxx11::basic_string"* dereferenceable(32) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %_M_t3 = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  %call4 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(%"class.std::_Rb_tree"* %_M_t3) #3
  %coerce.dive5 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %ref.tmp2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call4, %"struct.std::_Rb_tree_node_base"** %coerce.dive5, align 8
  %call6 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEeqERKS9_(%"struct.std::_Rb_tree_const_iterator"* %ref.tmp, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %ref.tmp2) #3
  %1 = zext i1 %call6 to i64
  %cond = select i1 %call6, i32 0, i32 1
  %conv = sext i32 %cond to i64
  ret i64 %conv
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local dereferenceable(8) double* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEEixERS9_(%"class.std::map"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__k) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  %__k.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__i = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp5 = alloca %"struct.std::less", align 1
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  %ref.tmp8 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp9 = alloca %"class.std::tuple", align 8
  %ref.tmp10 = alloca %"class.std::tuple.7", align 1
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__k, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE11lower_boundERS9_(%"class.std::map"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__i, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %call2 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE3endEv(%"class.std::map"* %this1) #3
  %coerce.dive3 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call2, %"struct.std::_Rb_tree_node_base"** %coerce.dive3, align 8
  %call4 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEeqERKS9_(%"struct.std::_Rb_tree_iterator"* %__i, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %ref.tmp) #3
  br i1 %call4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  call void @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE8key_compEv(%"class.std::map"* %this1)
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call6 = call dereferenceable(40) %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i) #3
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %call6, i32 0, i32 0
  %call7 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %ref.tmp5, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %first)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call7, %lor.rhs ]
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2ERKSt17_Rb_tree_iteratorIS8_E(%"struct.std::_Rb_tree_const_iterator"* %agg.tmp, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %__i) #3
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  call void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_(%"class.std::tuple"* %ref.tmp9, %"class.std::__cxx11::basic_string"* dereferenceable(32) %3)
  %coerce.dive11 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive11, align 8
  %call12 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(%"class.std::_Rb_tree"* %_M_t, %"struct.std::_Rb_tree_node_base"* %4, %"struct.std::piecewise_construct_t"* dereferenceable(1) @_ZStL19piecewise_construct, %"class.std::tuple"* dereferenceable(8) %ref.tmp9, %"class.std::tuple.7"* dereferenceable(1) %ref.tmp10)
  %coerce.dive13 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %ref.tmp8, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call12, %"struct.std::_Rb_tree_node_base"** %coerce.dive13, align 8
  %5 = bitcast %"struct.std::_Rb_tree_iterator"* %__i to i8*
  %6 = bitcast %"struct.std::_Rb_tree_iterator"* %ref.tmp8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %call14 = call dereferenceable(40) %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEdeEv(%"struct.std::_Rb_tree_iterator"* %__i) #3
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %call14, i32 0, i32 1
  ret double* %second
}

declare dso_local double @_ZN10aocl_utils19getCurrentTimestampEv() #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(%"class.std::_Rb_tree"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__k) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__j = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__k, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1) #3
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(%"class.std::_Rb_tree"* %this1) #3
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_ESI_RS7_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"* %call2, %"class.std::__cxx11::basic_string"* dereferenceable(32) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %call4 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(%"class.std::_Rb_tree"* %this1) #3
  %coerce.dive5 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call4, %"struct.std::_Rb_tree_node_base"** %coerce.dive5, align 8
  %call6 = call zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEeqERKS9_(%"struct.std::_Rb_tree_const_iterator"* %__j, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %ref.tmp) #3
  br i1 %call6, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__j, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call7 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  %call8 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call7)
  br i1 %call8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %call9 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(%"class.std::_Rb_tree"* %this1) #3
  %coerce.dive10 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call9, %"struct.std::_Rb_tree_node_base"** %coerce.dive10, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = bitcast %"struct.std::_Rb_tree_const_iterator"* %retval to i8*
  %4 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__j to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %coerce.dive11 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive11, align 8
  ret %"struct.std::_Rb_tree_node_base"* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEeqERKS9_(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"* dereferenceable(8) %__x) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %__x, %"struct.std::_Rb_tree_const_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %_M_header) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_ESI_RS7_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"* %__y, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__k) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__k.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__y, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__k, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(%"struct.std::_Rb_tree_node"* %1)
  %2 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call2 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call, %"class.std::__cxx11::basic_string"* dereferenceable(32) %2)
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"* %3, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node"* %4 to %"struct.std::_Rb_tree_node_base"*
  %call3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %5) #3
  store %"struct.std::_Rb_tree_node"* %call3, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to %"struct.std::_Rb_tree_node_base"*
  %call4 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %7) #3
  store %"struct.std::_Rb_tree_node"* %call4, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %9) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %retval, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %0 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__x, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__y) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::less"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__y.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"struct.std::less"* %this, %"struct.std::less"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__x, %"class.std::__cxx11::basic_string"** %__x.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__y, %"class.std::__cxx11::basic_string"** %__y.addr, align 8
  %this1 = load %"struct.std::less"*, %"struct.std::less"** %this.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__x.addr, align 8
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__y.addr, align 8
  %call = call zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1)
  ret i1 %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #4 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %call = call dereferenceable(40) %"struct.std::pair"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0)
  %call1 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEclERKS8_(%"struct.std::_Select1st"* %ref.tmp, %"struct.std::pair"* dereferenceable(40) %call)
  ret %"class.std::__cxx11::basic_string"* %call1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #11

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(%"struct.std::_Rb_tree_node"* %__x) #4 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %ref.tmp = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call dereferenceable(40) %"struct.std::pair"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_valueEPKSt13_Rb_tree_nodeIS8_E(%"struct.std::_Rb_tree_node"* %0)
  %call1 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEclERKS8_(%"struct.std::_Select1st"* %ref.tmp, %"struct.std::pair"* dereferenceable(40) %call)
  ret %"class.std::__cxx11::basic_string"* %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #7 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 2
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #7 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 3
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_node_base"* %__x) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEclERKS8_(%"struct.std::_Select1st"* %this, %"struct.std::pair"* dereferenceable(40) %__x) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Select1st"*, align 8
  %__x.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::_Select1st"* %this, %"struct.std::_Select1st"** %this.addr, align 8
  store %"struct.std::pair"* %__x, %"struct.std::pair"** %__x.addr, align 8
  %this1 = load %"struct.std::_Select1st"*, %"struct.std::_Select1st"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__x.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %0, i32 0, i32 0
  ret %"class.std::__cxx11::basic_string"* %first
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local dereferenceable(40) %"struct.std::pair"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_valueEPKSt13_Rb_tree_nodeIS8_E(%"struct.std::_Rb_tree_node"* %__x) #4 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call %"struct.std::pair"* @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %0)
  ret %"struct.std::pair"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %_M_storage = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %this1, i32 0, i32 1
  %call = call %"struct.std::pair"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %_M_storage) #3
  ret %"struct.std::pair"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %call = call i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this1) #3
  %0 = bitcast i8* %call to %"struct.std::pair"*
  ret %"struct.std::pair"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %_M_storage = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %this1, i32 0, i32 0
  %0 = bitcast [40 x i8]* %_M_storage to i8*
  ret i8* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(%"class.std::__cxx11::basic_string"* dereferenceable(32) %__lhs, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__rhs) #4 comdat {
entry:
  %__lhs.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__rhs.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %__lhs, %"class.std::__cxx11::basic_string"** %__lhs.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__rhs, %"class.std::__cxx11::basic_string"** %__rhs.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__lhs.addr, align 8
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__rhs.addr, align 8
  %call = call i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(%"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1)
  %cmp = icmp slt i32 %call, 0
  ret i1 %cmp
}

declare dso_local i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(40) %"struct.std::pair"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_valueEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #7 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %call = call %"struct.std::pair"* @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
  ret %"struct.std::pair"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE11lower_boundERS9_(%"class.std::map"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__x) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  %__x.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__x, %"class.std::__cxx11::basic_string"** %__x.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__x.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11lower_boundERS7_(%"class.std::_Rb_tree"* %_M_t, %"class.std::__cxx11::basic_string"* dereferenceable(32) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEeqERKS9_(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %__x) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__x, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__x.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %1, i32 0, i32 0
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE3endEv(%"class.std::map"* %this) #7 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(%"class.std::_Rb_tree"* %_M_t) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEE8key_compEv(%"class.std::map"* %this) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::less", align 1
  %this.addr = alloca %"class.std::map"*, align 8
  %undef.agg.tmp = alloca %"struct.std::less", align 1
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8key_compEv(%"class.std::_Rb_tree"* %_M_t)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(40) %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEdeEv(%"struct.std::_Rb_tree_iterator"* %this) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  %call = invoke %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret %"struct.std::pair"* %call

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__pos.coerce, %"struct.std::piecewise_construct_t"* dereferenceable(1) %__args, %"class.std::tuple"* dereferenceable(8) %__args1, %"class.std::tuple.7"* dereferenceable(1) %__args3) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__pos = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__args.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  %__args.addr2 = alloca %"class.std::tuple"*, align 8
  %__args.addr4 = alloca %"class.std::tuple.7"*, align 8
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__res = alloca %"struct.std::pair.8", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__pos.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %__args.addr2, align 8
  store %"class.std::tuple.7"* %__args3, %"class.std::tuple.7"** %__args.addr4, align 8
  %this5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  %call = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %0) #3
  %1 = load %"class.std::tuple"*, %"class.std::tuple"** %__args.addr2, align 8
  %call6 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::tuple"* dereferenceable(8) %1) #3
  %2 = load %"class.std::tuple.7"*, %"class.std::tuple.7"** %__args.addr4, align 8
  %call7 = call dereferenceable(1) %"class.std::tuple.7"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.7"* dereferenceable(1) %2) #3
  %call8 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_(%"class.std::_Rb_tree"* %this5, %"struct.std::piecewise_construct_t"* dereferenceable(1) %call, %"class.std::tuple"* dereferenceable(8) %call6, %"class.std::tuple.7"* dereferenceable(1) %call7)
  store %"struct.std::_Rb_tree_node"* %call8, %"struct.std::_Rb_tree_node"** %__z, align 8
  %3 = bitcast %"struct.std::_Rb_tree_const_iterator"* %agg.tmp to i8*
  %4 = bitcast %"struct.std::_Rb_tree_const_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  %call9 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(%"struct.std::_Rb_tree_node"* %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %coerce.dive10 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive10, align 8
  %call12 = invoke { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(%"class.std::_Rb_tree"* %this5, %"struct.std::_Rb_tree_node_base"* %6, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call9)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  %7 = bitcast %"struct.std::pair.8"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %8 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %7, i32 0, i32 0
  %9 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call12, 0
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %10 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %7, i32 0, i32 1
  %11 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call12, 1
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %10, align 8
  %second = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %__res, i32 0, i32 1
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second, align 8
  %tobool = icmp ne %"struct.std::_Rb_tree_node_base"* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont11
  %first = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %__res, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second13 = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %__res, i32 0, i32 1
  %14 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second13, align 8
  %15 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  %call15 = invoke %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this5, %"struct.std::_Rb_tree_node_base"* %13, %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node"* %15)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %if.then
  %coerce.dive16 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call15, %"struct.std::_Rb_tree_node_base"** %coerce.dive16, align 8
  br label %return

lpad:                                             ; preds = %if.then, %invoke.cont, %entry
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %exn.slot, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %19 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %20 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this5, %"struct.std::_Rb_tree_node"* %20) #3
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad18

if.end:                                           ; preds = %invoke.cont11
  %21 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this5, %"struct.std::_Rb_tree_node"* %21) #3
  %first17 = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %__res, i32 0, i32 0
  %22 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %first17, align 8
  %23 = bitcast %"struct.std::_Rb_tree_node_base"* %22 to %"struct.std::_Rb_tree_node"*
  %24 = bitcast %"struct.std::_Rb_tree_node"* %23 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %24) #3
  br label %return

lpad18:                                           ; preds = %catch
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %exn.slot, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont19 unwind label %terminate.lpad

invoke.cont19:                                    ; preds = %lpad18
  br label %eh.resume

try.cont:                                         ; No predecessors!
  call void @llvm.trap()
  unreachable

return:                                           ; preds = %if.end, %invoke.cont14
  %coerce.dive20 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %28 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive20, align 8
  ret %"struct.std::_Rb_tree_node_base"* %28

eh.resume:                                        ; preds = %invoke.cont19
  %exn21 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn21, 0
  %lpad.val22 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val22

terminate.lpad:                                   ; preds = %lpad18
  %29 = landingpad { i8*, i32 }
          catch i8* null
  %30 = extractvalue { i8*, i32 } %29, 0
  call void @__clang_call_terminate(i8* %30) #16
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2ERKSt17_Rb_tree_iteratorIS8_E(%"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %__it) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %__it.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_iterator"* %__it, %"struct.std::_Rb_tree_iterator"** %__it.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %__it.addr, align 8
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %0, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_(%"class.std::tuple"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__elements) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  %__elements.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__elements, %"class.std::__cxx11::basic_string"** %__elements.addr, align 8
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__elements.addr, align 8
  call void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_(%"struct.std::_Tuple_impl"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11lower_boundERS7_(%"class.std::_Rb_tree"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__k) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__k, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1) #3
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(%"class.std::_Rb_tree"* %this1) #3
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call3 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_ESH_RS7_(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"* %call2, %"class.std::__cxx11::basic_string"* dereferenceable(32) %0)
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call3, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %coerce.dive4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive4, align 8
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_ESH_RS7_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"* %__y, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__k) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__k.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__y, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__k, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %call = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(%"struct.std::_Rb_tree_node"* %1)
  %2 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call2 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call, %"class.std::__cxx11::basic_string"* dereferenceable(32) %2)
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"* %3, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node"* %4 to %"struct.std::_Rb_tree_node_base"*
  %call3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %5) #3
  store %"struct.std::_Rb_tree_node"* %call3, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %7 = bitcast %"struct.std::_Rb_tree_node"* %6 to %"struct.std::_Rb_tree_node_base"*
  %call4 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %7) #3
  store %"struct.std::_Rb_tree_node"* %call4, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__y.addr, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %9) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_parent = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 1
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_parent, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node_base"* %0 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %0 = bitcast %"struct.std::_Rb_tree_node_base"* %_M_header to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #7 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 2
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %__x) #7 comdat align 2 {
entry:
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %0, i32 0, i32 3
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_right, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node_base"* %1 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_node_base"* %__x) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %_M_header) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8key_compEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %retval = alloca %"struct.std::less", align 1
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %this, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %this.addr, align 8
  %_M_storage = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %this1, i32 0, i32 1
  %call = call %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %_M_storage) #3
  ret %"struct.std::pair"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %call = call i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this1) #3
  %0 = bitcast i8* %call to %"struct.std::pair"*
  ret %"struct.std::pair"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %this, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %this.addr, align 8
  %_M_storage = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %this1, i32 0, i32 0
  %0 = bitcast [40 x i8]* %_M_storage to i8*
  ret i8* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::piecewise_construct_t"* dereferenceable(1) %__args, %"class.std::tuple"* dereferenceable(8) %__args1, %"class.std::tuple.7"* dereferenceable(1) %__args3) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__args.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  %__args.addr2 = alloca %"class.std::tuple"*, align 8
  %__args.addr4 = alloca %"class.std::tuple.7"*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %__args.addr2, align 8
  store %"class.std::tuple.7"* %__args3, %"class.std::tuple.7"** %__args.addr4, align 8
  %this5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this5)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %1 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  %call6 = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %1) #3
  %2 = load %"class.std::tuple"*, %"class.std::tuple"** %__args.addr2, align 8
  %call7 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::tuple"* dereferenceable(8) %2) #3
  %3 = load %"class.std::tuple.7"*, %"class.std::tuple.7"** %__args.addr4, align 8
  %call8 = call dereferenceable(1) %"class.std::tuple.7"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.7"* dereferenceable(1) %3) #3
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(%"class.std::_Rb_tree"* %this5, %"struct.std::_Rb_tree_node"* %0, %"struct.std::piecewise_construct_t"* dereferenceable(1) %call6, %"class.std::tuple"* dereferenceable(8) %call7, %"class.std::tuple.7"* dereferenceable(1) %call8)
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  ret %"struct.std::_Rb_tree_node"* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  store %"struct.std::piecewise_construct_t"* %__t, %"struct.std::piecewise_construct_t"** %__t.addr, align 8
  %0 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %__t.addr, align 8
  ret %"struct.std::piecewise_construct_t"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::tuple"* dereferenceable(8) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  ret %"class.std::tuple"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::tuple.7"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.7"* dereferenceable(1) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple.7"*, align 8
  store %"class.std::tuple.7"* %__t, %"class.std::tuple.7"** %__t.addr, align 8
  %0 = load %"class.std::tuple.7"*, %"class.std::tuple.7"** %__t.addr, align 8
  ret %"class.std::tuple.7"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__k) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair.8", align 8
  %__position = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__pos = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__before = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp37 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__after = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp55 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp69 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %ref.tmp78 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__position, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__k, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %__position) #3
  %coerce.dive2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %coerce.dive2, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call3 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(%"class.std::_Rb_tree"* %this1) #3
  %1 = bitcast %"struct.std::_Rb_tree_node"* %call3 to %"struct.std::_Rb_tree_node_base"*
  %cmp = icmp eq %"struct.std::_Rb_tree_node_base"* %0, %1
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %call4 = call i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4sizeEv(%"class.std::_Rb_tree"* %this1) #3
  %cmp5 = icmp ugt i64 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %call6 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1) #3
  %2 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call6, align 8
  %call7 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2)
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call8 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call7, %"class.std::__cxx11::basic_string"* dereferenceable(32) %3)
  br i1 %call8, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp, align 8
  %call10 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1) #3
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call10)
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %4 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call11 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %4)
  %5 = bitcast %"struct.std::pair.8"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %6 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 0
  %7 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 0
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %5, i32 0, i32 1
  %9 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call11, 1
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %8, align 8
  br label %return

if.else12:                                        ; preds = %entry
  %_M_impl13 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare14 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl13, i32 0, i32 0
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %_M_node15 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node15, align 8
  %call16 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %11)
  %call17 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare14, %"class.std::__cxx11::basic_string"* dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call16)
  br i1 %call17, label %if.then18, label %if.else44

if.then18:                                        ; preds = %if.else12
  %12 = bitcast %"struct.std::_Rb_tree_iterator"* %__before to i8*
  %13 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false)
  %_M_node19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %14 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node19, align 8
  %call20 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1) #3
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call20, align 8
  %cmp21 = icmp eq %"struct.std::_Rb_tree_node_base"* %14, %15
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.then18
  %call23 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1) #3
  %call24 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this1) #3
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call23, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call24)
  br label %return

if.else25:                                        ; preds = %if.then18
  %_M_impl26 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare27 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl26, i32 0, i32 0
  %call28 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEmmEv(%"struct.std::_Rb_tree_iterator"* %__before) #3
  %_M_node29 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %call28, i32 0, i32 0
  %16 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node29, align 8
  %call30 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %16)
  %17 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call31 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare27, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call30, %"class.std::__cxx11::basic_string"* dereferenceable(32) %17)
  br i1 %call31, label %if.then32, label %if.else42

if.then32:                                        ; preds = %if.else25
  %_M_node33 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  %18 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node33, align 8
  %call34 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %18) #3
  %cmp35 = icmp eq %"struct.std::_Rb_tree_node"* %call34, null
  br i1 %cmp35, label %if.then36, label %if.else39

if.then36:                                        ; preds = %if.then32
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp37, align 8
  %_M_node38 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__before, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp37, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node38)
  br label %return

if.else39:                                        ; preds = %if.then32
  %_M_node40 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %_M_node41 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node40, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node41)
  br label %return

if.else42:                                        ; preds = %if.else25
  %19 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call43 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %19)
  %20 = bitcast %"struct.std::pair.8"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %21 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %20, i32 0, i32 0
  %22 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 0
  store %"struct.std::_Rb_tree_node_base"* %22, %"struct.std::_Rb_tree_node_base"** %21, align 8
  %23 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %20, i32 0, i32 1
  %24 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call43, 1
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %23, align 8
  br label %return

if.else44:                                        ; preds = %if.else12
  %_M_impl45 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare46 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl45, i32 0, i32 0
  %_M_node47 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %25 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node47, align 8
  %call48 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %25)
  %26 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call49 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare46, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call48, %"class.std::__cxx11::basic_string"* dereferenceable(32) %26)
  br i1 %call49, label %if.then50, label %if.else76

if.then50:                                        ; preds = %if.else44
  %27 = bitcast %"struct.std::_Rb_tree_iterator"* %__after to i8*
  %28 = bitcast %"struct.std::_Rb_tree_iterator"* %__pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %_M_node51 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %29 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node51, align 8
  %call52 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1) #3
  %30 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call52, align 8
  %cmp53 = icmp eq %"struct.std::_Rb_tree_node_base"* %29, %30
  br i1 %cmp53, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.then50
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp55, align 8
  %call56 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this1) #3
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp55, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call56)
  br label %return

if.else57:                                        ; preds = %if.then50
  %_M_impl58 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare59 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl58, i32 0, i32 0
  %31 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call60 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEppEv(%"struct.std::_Rb_tree_iterator"* %__after) #3
  %_M_node61 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %call60, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node61, align 8
  %call62 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %32)
  %call63 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare59, %"class.std::__cxx11::basic_string"* dereferenceable(32) %31, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call62)
  br i1 %call63, label %if.then64, label %if.else74

if.then64:                                        ; preds = %if.else57
  %_M_node65 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %33 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node65, align 8
  %call66 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %33) #3
  %cmp67 = icmp eq %"struct.std::_Rb_tree_node"* %call66, null
  br i1 %cmp67, label %if.then68, label %if.else71

if.then68:                                        ; preds = %if.then64
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp69, align 8
  %_M_node70 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp69, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node70)
  br label %return

if.else71:                                        ; preds = %if.then64
  %_M_node72 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  %_M_node73 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node72, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node73)
  br label %return

if.else74:                                        ; preds = %if.else57
  %34 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call75 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %34)
  %35 = bitcast %"struct.std::pair.8"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %36 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, i32 0, i32 0
  %37 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call75, 0
  store %"struct.std::_Rb_tree_node_base"* %37, %"struct.std::_Rb_tree_node_base"** %36, align 8
  %38 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %35, i32 0, i32 1
  %39 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call75, 1
  store %"struct.std::_Rb_tree_node_base"* %39, %"struct.std::_Rb_tree_node_base"** %38, align 8
  br label %return

if.else76:                                        ; preds = %if.else44
  %_M_node77 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp78, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node77, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp78)
  br label %return

return:                                           ; preds = %if.else76, %if.else74, %if.else71, %if.then68, %if.then54, %if.else42, %if.else39, %if.then36, %if.then22, %if.else, %if.then9
  %40 = bitcast %"struct.std::pair.8"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %41 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %40, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %41
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node"* %__z) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %__z.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__insert_left = alloca i8, align 1
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__x, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"* %__p, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__z, %"struct.std::_Rb_tree_node"** %__z.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node_base"* %0, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(%"class.std::_Rb_tree"* %this1) #3
  %2 = bitcast %"struct.std::_Rb_tree_node"* %call to %"struct.std::_Rb_tree_node_base"*
  %cmp2 = icmp eq %"struct.std::_Rb_tree_node_base"* %1, %2
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z.addr, align 8
  %call3 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(%"struct.std::_Rb_tree_node"* %3)
  %4 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %call4 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4)
  %call5 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call3, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call4)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %call5, %lor.rhs ]
  %frombool = zext i1 %5 to i8
  store i8 %frombool, i8* %__insert_left, align 1
  %6 = load i8, i8* %__insert_left, align 1
  %tobool = trunc i8 %6 to i1
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z.addr, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node"* %7 to %"struct.std::_Rb_tree_node_base"*
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %__p.addr, align 8
  %_M_impl6 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl6, i32 0, i32 1
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext %tobool, %"struct.std::_Rb_tree_node_base"* %8, %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"* dereferenceable(32) %_M_header) #3
  %_M_impl7 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl7, i32 0, i32 2
  %10 = load i64, i64* %_M_node_count, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %_M_node_count, align 8
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__z.addr, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %12) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %0) #3
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %1) #3
  ret void
}

declare dso_local void @__cxa_rethrow()

declare dso_local void @__cxa_end_catch()

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #12

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1) #3
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE8allocateERSB_m(%"class.std::allocator"* dereferenceable(1) %call, i64 1)
  ret %"struct.std::_Rb_tree_node"* %call2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__node, %"struct.std::piecewise_construct_t"* dereferenceable(1) %__args, %"class.std::tuple"* dereferenceable(8) %__args1, %"class.std::tuple.7"* dereferenceable(1) %__args3) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__node.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__args.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  %__args.addr2 = alloca %"class.std::tuple"*, align 8
  %__args.addr4 = alloca %"class.std::tuple.7"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__node, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %__args.addr2, align 8
  store %"class.std::tuple.7"* %__args3, %"class.std::tuple.7"** %__args.addr4, align 8
  %this5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  %1 = bitcast %"struct.std::_Rb_tree_node"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::_Rb_tree_node"*
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this5) #3
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  %call6 = invoke %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %4 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  %call7 = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %4) #3
  %5 = load %"class.std::tuple"*, %"class.std::tuple"** %__args.addr2, align 8
  %call8 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::tuple"* dereferenceable(8) %5) #3
  %6 = load %"class.std::tuple.7"*, %"class.std::tuple.7"** %__args.addr4, align 8
  %call9 = call dereferenceable(1) %"class.std::tuple.7"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.7"* dereferenceable(1) %6) #3
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESH_IJEEEEEvRSB_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %call, %"struct.std::pair"* %call6, %"struct.std::piecewise_construct_t"* dereferenceable(1) %call7, %"class.std::tuple"* dereferenceable(8) %call8, %"class.std::tuple.7"* dereferenceable(1) %call9)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont
  br label %try.cont

lpad:                                             ; preds = %invoke.cont, %entry
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  store i8* %8, i8** %exn.slot, align 8
  %9 = extractvalue { i8*, i32 } %7, 1
  store i32 %9, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %10 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  %12 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this5, %"struct.std::_Rb_tree_node"* %12) #3
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad11

lpad11:                                           ; preds = %catch
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont12 unwind label %terminate.lpad

invoke.cont12:                                    ; preds = %lpad11
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont10
  ret void

eh.resume:                                        ; preds = %invoke.cont12
  %exn13 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn13, 0
  %lpad.val14 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val14

terminate.lpad:                                   ; preds = %lpad11
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  call void @__clang_call_terminate(i8* %17) #16
  unreachable

unreachable:                                      ; preds = %catch
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE8allocateERSB_m(%"class.std::allocator"* dereferenceable(1) %__a, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %1, i64 %2, i8* null)
  ret %"struct.std::_Rb_tree_node"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl to %"class.std::allocator"*
  ret %"class.std::allocator"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %this, i64 %__n, i8*) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 72
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  ret i64 256204778801521550
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #13

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #9

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESH_IJEEEEEvRSB_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::pair"* %__p, %"struct.std::piecewise_construct_t"* dereferenceable(1) %__args, %"class.std::tuple"* dereferenceable(8) %__args1, %"class.std::tuple.7"* dereferenceable(1) %__args3) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__args.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  %__args.addr2 = alloca %"class.std::tuple"*, align 8
  %__args.addr4 = alloca %"class.std::tuple.7"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %__args.addr2, align 8
  store %"class.std::tuple.7"* %__args3, %"class.std::tuple.7"** %__args.addr4, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %3 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  %call = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %3) #3
  %4 = load %"class.std::tuple"*, %"class.std::tuple"** %__args.addr2, align 8
  %call5 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::tuple"* dereferenceable(8) %4) #3
  %5 = load %"class.std::tuple.7"*, %"class.std::tuple.7"** %__args.addr4, align 8
  %call6 = call dereferenceable(1) %"class.std::tuple.7"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.7"* dereferenceable(1) %5) #3
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESH_IJEEEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::pair"* %2, %"struct.std::piecewise_construct_t"* dereferenceable(1) %call, %"class.std::tuple"* dereferenceable(8) %call5, %"class.std::tuple.7"* dereferenceable(1) %call6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1) #3
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE10deallocateERSB_PSA_m(%"class.std::allocator"* dereferenceable(1) %call, %"struct.std::_Rb_tree_node"* %0, i64 1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESH_IJEEEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::pair"* %__p, %"struct.std::piecewise_construct_t"* dereferenceable(1) %__args, %"class.std::tuple"* dereferenceable(8) %__args1, %"class.std::tuple.7"* dereferenceable(1) %__args3) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__args.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  %__args.addr2 = alloca %"class.std::tuple"*, align 8
  %__args.addr4 = alloca %"class.std::tuple.7"*, align 8
  %agg.tmp = alloca %"struct.std::piecewise_construct_t", align 1
  %agg.tmp6 = alloca %"class.std::tuple", align 8
  %agg.tmp8 = alloca %"class.std::tuple.7", align 1
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %__args.addr2, align 8
  store %"class.std::tuple.7"* %__args3, %"class.std::tuple.7"** %__args.addr4, align 8
  %this5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %1 = bitcast %"struct.std::pair"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair"*
  %3 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  %call = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %3) #3
  %4 = load %"class.std::tuple"*, %"class.std::tuple"** %__args.addr2, align 8
  %call7 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::tuple"* dereferenceable(8) %4) #3
  call void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(%"class.std::tuple"* %agg.tmp6, %"class.std::tuple"* dereferenceable(8) %call7) #3
  %5 = load %"class.std::tuple.7"*, %"class.std::tuple.7"** %__args.addr4, align 8
  %call9 = call dereferenceable(1) %"class.std::tuple.7"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.7"* dereferenceable(1) %5) #3
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE(%"struct.std::pair"* %2, %"class.std::tuple"* %agg.tmp6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(%"class.std::tuple"* %this, %"class.std::tuple"* dereferenceable(8)) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::tuple"*, align 8
  %.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %this, %"class.std::tuple"** %this.addr, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %.addr, align 8
  %this1 = load %"class.std::tuple"*, %"class.std::tuple"** %this.addr, align 8
  %1 = bitcast %"class.std::tuple"* %this1 to %"struct.std::_Tuple_impl"*
  %2 = load %"class.std::tuple"*, %"class.std::tuple"** %.addr, align 8
  %3 = bitcast %"class.std::tuple"* %2 to %"struct.std::_Tuple_impl"*
  call void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(%"struct.std::_Tuple_impl"* %1, %"struct.std::_Tuple_impl"* dereferenceable(8) %3) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESB_IJDpT0_EE(%"struct.std::pair"* %this, %"class.std::tuple"* %__first) unnamed_addr #4 comdat align 2 {
entry:
  %0 = alloca %"struct.std::piecewise_construct_t", align 1
  %__second = alloca %"class.std::tuple.7", align 1
  %this.addr = alloca %"struct.std::pair"*, align 8
  %agg.tmp = alloca %"struct.std::_Index_tuple", align 1
  %agg.tmp3 = alloca %"struct.std::_Index_tuple.9", align 1
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  %this2 = load %"struct.std::pair"*, %"struct.std::pair"** %this.addr, align 8
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE(%"struct.std::pair"* %this2, %"class.std::tuple"* dereferenceable(8) %__first, %"class.std::tuple.7"* dereferenceable(1) %__second)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(%"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"* dereferenceable(8) %__in) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  %__in.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  store %"struct.std::_Tuple_impl"* %__in, %"struct.std::_Tuple_impl"** %__in.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Head_base"*
  %1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__in.addr, align 8
  %call = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_(%"struct.std::_Tuple_impl"* dereferenceable(8) %1) #3
  %call2 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %call) #3
  invoke void @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_(%"struct.std::_Head_base"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %__t, %"class.std::__cxx11::basic_string"** %__t.addr, align 8
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__t.addr, align 8
  ret %"class.std::__cxx11::basic_string"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_(%"struct.std::_Tuple_impl"* dereferenceable(8) %__t) #7 comdat align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl"* %0 to %"struct.std::_Head_base"*
  %call = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_(%"struct.std::_Head_base"* dereferenceable(8) %1) #3
  ret %"class.std::__cxx11::basic_string"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_(%"struct.std::_Head_base"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__h) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base"*, align 8
  %__h.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"struct.std::_Head_base"* %this, %"struct.std::_Head_base"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__h, %"class.std::__cxx11::basic_string"** %__h.addr, align 8
  %this1 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %this1, i32 0, i32 0
  %0 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__h.addr, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %_M_head_impl, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_(%"struct.std::_Head_base"* dereferenceable(8) %__b) #7 comdat align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %__b, %"struct.std::_Head_base"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base", %"struct.std::_Head_base"* %0, i32 0, i32 0
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %_M_head_impl, align 8
  ret %"class.std::__cxx11::basic_string"* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE(%"struct.std::pair"* %this, %"class.std::tuple"* dereferenceable(8) %__tuple1, %"class.std::tuple.7"* dereferenceable(1) %__tuple2) unnamed_addr #4 comdat align 2 {
entry:
  %0 = alloca %"struct.std::_Index_tuple", align 1
  %1 = alloca %"struct.std::_Index_tuple.9", align 1
  %this.addr = alloca %"struct.std::pair"*, align 8
  %__tuple1.addr = alloca %"class.std::tuple"*, align 8
  %__tuple2.addr = alloca %"class.std::tuple.7"*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store %"class.std::tuple"* %__tuple1, %"class.std::tuple"** %__tuple1.addr, align 8
  store %"class.std::tuple.7"* %__tuple2, %"class.std::tuple.7"** %__tuple2.addr, align 8
  %this2 = load %"struct.std::pair"*, %"struct.std::pair"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this2, i32 0, i32 0
  %2 = load %"class.std::tuple"*, %"class.std::tuple"** %__tuple1.addr, align 8
  %call = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_(%"class.std::tuple"* dereferenceable(8) %2) #3
  %call3 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt7forwardIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS8_E4typeE(%"class.std::__cxx11::basic_string"* dereferenceable(32) %call) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %first, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call3)
  %second = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this2, i32 0, i32 1
  store double 0.000000e+00, double* %second, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_(%"class.std::tuple"* dereferenceable(8) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %__t, %"class.std::tuple"** %__t.addr, align 8
  %0 = load %"class.std::tuple"*, %"class.std::tuple"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple"* %0 to %"struct.std::_Tuple_impl"*
  %call = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE(%"struct.std::_Tuple_impl"* dereferenceable(8) %1) #3
  ret %"class.std::__cxx11::basic_string"* %call
}

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE(%"struct.std::_Tuple_impl"* dereferenceable(8) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %__t, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %__t.addr, align 8
  %call = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_(%"struct.std::_Tuple_impl"* dereferenceable(8) %0) #3
  ret %"class.std::__cxx11::basic_string"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE10deallocateERSB_PSA_m(%"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::_Rb_tree_node"* %__p, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE10deallocateEPSB_m(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::_Rb_tree_node"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE10deallocateEPSB_m(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::_Rb_tree_node"* %__p, i64) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #14

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* %this) #7 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %this, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %0) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4sizeEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_node_count = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 2
  %0 = load i64, i64* %_M_node_count, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_right = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 3
  ret %"struct.std::_Rb_tree_node_base"** %_M_right
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.8"* %this, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.8"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.8"* %this, %"struct.std::pair.8"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %this1 = load %"struct.std::pair.8"*, %"struct.std::pair.8"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %0, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %2) #3
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call, align 8
  store %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__k) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair.8", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__k.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  %__x = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__comp = alloca i8, align 1
  %__j = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Rb_tree_iterator", align 8
  %ref.tmp20 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__k, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1) #3
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(%"class.std::_Rb_tree"* %this1) #3
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  store i8 1, i8* %__comp, align 1
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %__y, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 0
  %2 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %call3 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(%"struct.std::_Rb_tree_node"* %3)
  %call4 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare, %"class.std::__cxx11::basic_string"* dereferenceable(32) %2, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call3)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, i8* %__comp, align 1
  %4 = load i8, i8* %__comp, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node"* %5 to %"struct.std::_Rb_tree_node_base"*
  %call5 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %6) #3
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x, align 8
  %8 = bitcast %"struct.std::_Rb_tree_node"* %7 to %"struct.std::_Rb_tree_node_base"*
  %call6 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %8) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"struct.std::_Rb_tree_node"* [ %call5, %cond.true ], [ %call6, %cond.false ]
  store %"struct.std::_Rb_tree_node"* %cond, %"struct.std::_Rb_tree_node"** %__x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__y, align 8
  %10 = bitcast %"struct.std::_Rb_tree_node"* %9 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_node_base"* %10) #3
  %11 = load i8, i8* %__comp, align 1
  %tobool7 = trunc i8 %11 to i1
  br i1 %tobool7, label %if.then, label %if.end12

if.then:                                          ; preds = %while.end
  %call8 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv(%"class.std::_Rb_tree"* %this1) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %ref.tmp, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call8, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  %call9 = call zeroext i1 @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEeqERKS9_(%"struct.std::_Rb_tree_iterator"* %__j, %"struct.std::_Rb_tree_iterator"* dereferenceable(8) %ref.tmp) #3
  br i1 %call9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEESF_vEEOT_OT0_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__y)
  br label %return

if.else:                                          ; preds = %if.then
  %call11 = call dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEmmEv(%"struct.std::_Rb_tree_iterator"* %__j) #3
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %while.end
  %_M_impl13 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_key_compare14 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl13, i32 0, i32 0
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call15 = call dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %12)
  %13 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call16 = call zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* %_M_key_compare14, %"class.std::__cxx11::basic_string"* dereferenceable(32) %call15, %"class.std::__cxx11::basic_string"* dereferenceable(32) %13)
  br i1 %call16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEESF_vEEOT_OT0_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__y)
  br label %return

if.end18:                                         ; preds = %if.end12
  %_M_node19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp20, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.8"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node19, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp20)
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %if.then10
  %14 = bitcast %"struct.std::pair.8"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %15 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %14, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %15
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  ret %"struct.std::_Rb_tree_node_base"** %_M_left
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.8"* %this, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.8"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.8"* %this, %"struct.std::pair.8"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %this1 = load %"struct.std::pair.8"*, %"struct.std::pair.8"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %0) #3
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %call2 = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %2) #3
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call2, align 8
  store %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEmmEv(%"struct.std::_Rb_tree_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #19
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEppEv(%"struct.std::_Rb_tree_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %this, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %this.addr, align 8
  %_M_node = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_node, align 8
  %call = call %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %0) #19
  %_M_node2 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %this1, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %call, %"struct.std::_Rb_tree_node_base"** %_M_node2, align 8
  ret %"struct.std::_Rb_tree_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.8"* %this, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.8"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.8"* %this, %"struct.std::pair.8"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %this1 = load %"struct.std::pair.8"*, %"struct.std::pair.8"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %0) #3
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  store %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::_Rb_tree_node_base"** %__t, %"struct.std::_Rb_tree_node_base"*** %__t.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__t.addr, align 8
  ret %"struct.std::_Rb_tree_node_base"** %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE5beginEv(%"class.std::_Rb_tree"* %this) #7 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  %_M_header = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl, i32 0, i32 1
  %_M_left = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %_M_header, i32 0, i32 2
  %0 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %_M_left, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* %retval, %"struct.std::_Rb_tree_node_base"* %0) #3
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %retval, i32 0, i32 0
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  ret %"struct.std::_Rb_tree_node_base"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEESF_vEEOT_OT0_(%"struct.std::pair.8"* %this, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__y) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.8"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"**, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::pair.8"* %this, %"struct.std::pair.8"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"*** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"** %__y, %"struct.std::_Rb_tree_node"*** %__y.addr, align 8
  %this1 = load %"struct.std::pair.8"*, %"struct.std::pair.8"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %__x.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEOT_RNSt16remove_referenceISD_E4typeE(%"struct.std::_Rb_tree_node"** dereferenceable(8) %0) #3
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %call, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.8", %"struct.std::pair.8"* %this1, i32 0, i32 1
  %3 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %__y.addr, align 8
  %call2 = call dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEOT_RNSt16remove_referenceISD_E4typeE(%"struct.std::_Rb_tree_node"** dereferenceable(8) %3) #3
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %call2, align 8
  %5 = bitcast %"struct.std::_Rb_tree_node"* %4 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %5, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEOT_RNSt16remove_referenceISD_E4typeE(%"struct.std::_Rb_tree_node"** dereferenceable(8) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::_Rb_tree_node"** %__t, %"struct.std::_Rb_tree_node"*** %__t.addr, align 8
  %0 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %__t.addr, align 8
  ret %"struct.std::_Rb_tree_node"** %0
}

; Function Attrs: nounwind readonly
declare dso_local %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #15

; Function Attrs: nounwind readonly
declare dso_local %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"*) #15

; Function Attrs: nounwind
declare dso_local void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 zeroext, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* dereferenceable(32)) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__p) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__p.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__p, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call dereferenceable(1) %"class.std::allocator"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* %this1) #3
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  %call2 = invoke %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE7destroyIS9_EEvRSB_PT_(%"class.std::allocator"* dereferenceable(1) %call, %"struct.std::pair"* %call2)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__p.addr, align 8
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE7destroyIS9_EEvRSB_PT_(%"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::pair"* %__p) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE7destroyISA_EEvPT_(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::pair"* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE7destroyISA_EEvPT_(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::pair"* %__p) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdED2Ev(%"struct.std::pair"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdED2Ev(%"struct.std::pair"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  %this1 = load %"struct.std::pair"*, %"struct.std::pair"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %this1, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %first) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_(%"struct.std::_Tuple_impl"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__head) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl"*, align 8
  %__head.addr = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"struct.std::_Tuple_impl"* %this, %"struct.std::_Tuple_impl"** %this.addr, align 8
  store %"class.std::__cxx11::basic_string"* %__head, %"class.std::__cxx11::basic_string"** %__head.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl"* %this1 to %"struct.std::_Head_base"*
  %1 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__head.addr, align 8
  call void @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_(%"struct.std::_Head_base"* %0, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1)
  ret void
}

declare dso_local i32 @clGetKernelWorkGroupInfo(%struct._cl_kernel*, %struct._cl_device_id*, i32, i64, i8*, i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt6thread8joinableEv(%"class.std::thread"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %agg.tmp = alloca %"class.std::thread::id", align 8
  %agg.tmp2 = alloca %"class.std::thread::id", align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0
  %0 = bitcast %"class.std::thread::id"* %agg.tmp to i8*
  %1 = bitcast %"class.std::thread::id"* %_M_id to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* %agg.tmp2) #3
  %coerce.dive = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp, i32 0, i32 0
  %2 = load i64, i64* %coerce.dive, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %agg.tmp2, i32 0, i32 0
  %3 = load i64, i64* %coerce.dive3, align 8
  %call = call zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %2, i64 %3) #3
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZSteqNSt6thread2idES0_(i64 %__x.coerce, i64 %__y.coerce) #7 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__x = alloca %"class.std::thread::id", align 8
  %__y = alloca %"class.std::thread::id", align 8
  %coerce.dive = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0
  store i64 %__x.coerce, i64* %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0
  store i64 %__y.coerce, i64* %coerce.dive1, align 8
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__x, i32 0, i32 0
  %0 = load i64, i64* %_M_thread, align 8
  %_M_thread2 = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %__y, i32 0, i32 0
  %1 = load i64, i64* %_M_thread2, align 8
  %call = invoke i32 @_ZL15__gthread_equalmm(i64 %0, i64 %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread::id"*, align 8
  store %"class.std::thread::id"* %this, %"class.std::thread::id"** %this.addr, align 8
  %this1 = load %"class.std::thread::id"*, %"class.std::thread::id"** %this.addr, align 8
  %_M_thread = getelementptr inbounds %"class.std::thread::id", %"class.std::thread::id"* %this1, i32 0, i32 0
  store i64 0, i64* %_M_thread, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ZL15__gthread_equalmm(i64 %__t1, i64 %__t2) #7 {
entry:
  %__t1.addr = alloca i64, align 8
  %__t2.addr = alloca i64, align 8
  store i64 %__t1, i64* %__t1.addr, align 8
  store i64 %__t2, i64* %__t2.addr, align 8
  %0 = load i64, i64* %__t1.addr, align 8
  %1 = load i64, i64* %__t2.addr, align 8
  %call = call i32 @pthread_equal(i64 %0, i64 %1) #3
  ret i32 %call
}

; Function Attrs: nounwind
declare extern_weak dso_local i32 @pthread_equal(i64, i64) #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_Z14compare_outputPPhiPKciiiii(i8** %all_out_frames, i32 %image_size, i8* %file_name, i32 %num_frames, i32 %rowsc, i32 %colsc, i32 %rowsc_, i32 %colsc_) #4 comdat {
entry:
  %retval = alloca i32, align 4
  %all_out_frames.addr = alloca i8**, align 8
  %image_size.addr = alloca i32, align 4
  %file_name.addr = alloca i8*, align 8
  %num_frames.addr = alloca i32, align 4
  %rowsc.addr = alloca i32, align 4
  %colsc.addr = alloca i32, align 4
  %rowsc_.addr = alloca i32, align 4
  %colsc_.addr = alloca i32, align 4
  %count_error = alloca i32, align 4
  %i = alloca i32, align 4
  %FileName = alloca [100 x i8], align 16
  %out_file = alloca %struct._IO_FILE*, align 8
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %pix = alloca i32, align 4
  %rr = alloca i32, align 4
  store i8** %all_out_frames, i8*** %all_out_frames.addr, align 8
  store i32 %image_size, i32* %image_size.addr, align 4
  store i8* %file_name, i8** %file_name.addr, align 8
  store i32 %num_frames, i32* %num_frames.addr, align 4
  store i32 %rowsc, i32* %rowsc.addr, align 4
  store i32 %colsc, i32* %colsc.addr, align 4
  store i32 %rowsc_, i32* %rowsc_.addr, align 4
  store i32 %colsc_, i32* %colsc_.addr, align 4
  store i32 0, i32* %count_error, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_frames.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %FileName, i64 0, i64 0
  %2 = load i8*, i8** %file_name.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %2, i32 %3) #3
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %FileName, i64 0, i64 0
  %call2 = call %struct._IO_FILE* @fopen(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %out_file, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  store i32 0, i32* %r, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc30, %if.end
  %5 = load i32, i32* %r, align 4
  %6 = load i32, i32* %rowsc.addr, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end32

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %c, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %7 = load i32, i32* %c, align 4
  %8 = load i32, i32* %colsc.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32* %pix)
  %10 = load i8**, i8*** %all_out_frames.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %13 = load i32, i32* %r, align 4
  %14 = load i32, i32* %colsc.addr, align 4
  %mul = mul nsw i32 %13, %14
  %15 = load i32, i32* %c, align 4
  %add = add nsw i32 %mul, %15
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 %idxprom11
  %16 = load i8, i8* %arrayidx12, align 1
  %conv = zext i8 %16 to i32
  %17 = load i32, i32* %pix, align 4
  %cmp13 = icmp ne i32 %conv, %17
  br i1 %cmp13, label %if.then14, label %if.end24

if.then14:                                        ; preds = %for.body9
  %18 = load i32, i32* %r, align 4
  %cmp15 = icmp sgt i32 %18, 3
  br i1 %cmp15, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.then14
  %19 = load i32, i32* %r, align 4
  %20 = load i32, i32* %rowsc.addr, align 4
  %sub = sub nsw i32 %20, 32
  %cmp16 = icmp slt i32 %19, %sub
  br i1 %cmp16, label %land.lhs.true17, label %if.end23

land.lhs.true17:                                  ; preds = %land.lhs.true
  %21 = load i32, i32* %c, align 4
  %cmp18 = icmp sgt i32 %21, 3
  br i1 %cmp18, label %land.lhs.true19, label %if.end23

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* %colsc.addr, align 4
  %sub20 = sub nsw i32 %23, 32
  %cmp21 = icmp slt i32 %22, %sub20
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true19
  %24 = load i32, i32* %count_error, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %count_error, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true19, %land.lhs.true17, %land.lhs.true, %if.then14
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %for.body9
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %25 = load i32, i32* %c, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, i32* %c, align 4
  br label %for.cond7

for.end:                                          ; preds = %for.cond7
  %26 = load i32, i32* %colsc.addr, align 4
  %27 = load i32, i32* %colsc_.addr, align 4
  %cmp26 = icmp slt i32 %26, %27
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0))
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.end
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %29 = load i32, i32* %r, align 4
  %inc31 = add nsw i32 %29, 1
  store i32 %inc31, i32* %r, align 4
  br label %for.cond4

for.end32:                                        ; preds = %for.cond4
  %30 = load i32, i32* %rowsc.addr, align 4
  store i32 %30, i32* %rr, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc37, %for.end32
  %31 = load i32, i32* %rr, align 4
  %32 = load i32, i32* %rowsc_.addr, align 4
  %cmp34 = icmp slt i32 %31, %32
  br i1 %cmp34, label %for.body35, label %for.end39

for.body35:                                       ; preds = %for.cond33
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0))
  br label %for.inc37

for.inc37:                                        ; preds = %for.body35
  %34 = load i32, i32* %rr, align 4
  %inc38 = add nsw i32 %34, 1
  store i32 %inc38, i32* %rr, align 4
  br label %for.cond33

for.end39:                                        ; preds = %for.cond33
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %out_file, align 8
  %call40 = call i32 @fclose(%struct._IO_FILE* %35)
  br label %for.inc41

for.inc41:                                        ; preds = %for.end39
  %36 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %36, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond

for.end43:                                        ; preds = %for.cond
  %37 = load i32, i32* %count_error, align 4
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i32 %37)
  %38 = load i32, i32* %count_error, align 4
  %conv45 = sitofp i32 %38 to float
  %39 = load i32, i32* %image_size.addr, align 4
  %40 = load i32, i32* %num_frames.addr, align 4
  %mul46 = mul nsw i32 %39, %40
  %conv47 = sitofp i32 %mul46 to float
  %div = fdiv float %conv45, %conv47
  %conv48 = fpext float %div to double
  %cmp49 = fcmp oge double %conv48, 0x3EB0C6F7A0B5ED8D
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.end43
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0))
  call void @exit(i32 1) #16
  unreachable

if.end52:                                         ; preds = %for.end43
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end52, %if.then
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
}

declare dso_local i32 @clReleaseKernel(%struct._cl_kernel*) #1

declare dso_local i32 @clReleaseProgram(%struct._cl_program*) #1

declare dso_local i32 @clReleaseCommandQueue(%struct._cl_command_queue*) #1

declare dso_local i32 @clReleaseContext(%struct._cl_context*) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEED2Ev(%"class.std::map"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %this, %"class.std::map"** %this.addr, align 8
  %this1 = load %"class.std::map"*, %"class.std::map"** %this.addr, align 8
  %_M_t = getelementptr inbounds %"class.std::map", %"class.std::map"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(%"class.std::_Rb_tree"* %_M_t) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(%"class.std::_Rb_tree"* %this) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(%"class.std::_Rb_tree"* %this1) #3
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl) #3
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  %_M_impl2 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %this1, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %_M_impl2) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__x) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__y = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__x, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %this1 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %cmp = icmp ne %"struct.std::_Rb_tree_node"* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to %"struct.std::_Rb_tree_node_base"*
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %2) #3
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %call)
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node"* %3 to %"struct.std::_Rb_tree_node_base"*
  %call2 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* %4) #3
  store %"struct.std::_Rb_tree_node"* %call2, %"struct.std::_Rb_tree_node"** %__y, align 8
  %5 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(%"class.std::_Rb_tree"* %this1, %"struct.std::_Rb_tree_node"* %5) #3
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__y, align 8
  store %"struct.std::_Rb_tree_node"* %6, %"struct.std::_Rb_tree_node"** %__x.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, double>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, double> >, std::less<std::__cxx11::basic_string<char> >, std::allocator<std::pair<const std::__cxx11::basic_string<char>, double> > >::_Rb_tree_impl"* %this1 to %"class.std::allocator"*
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEED2Ev(%"class.std::allocator"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 %__m, i32 %__mod) #7 comdat {
entry:
  %__m.addr = alloca i32, align 4
  %__mod.addr = alloca i32, align 4
  store i32 %__m, i32* %__m.addr, align 4
  store i32 %__mod, i32* %__mod.addr, align 4
  %0 = load i32, i32* %__m.addr, align 4
  %1 = load i32, i32* %__mod.addr, align 4
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6threadSaIS0_EEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"*, %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %this1 to %"class.std::allocator.3"*
  call void @_ZNSaISt6threadEC2Ev(%"class.std::allocator.3"* %0) #3
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %this1, i32 0, i32 0
  store %"class.std::thread"* null, %"class.std::thread"** %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %this1, i32 0, i32 1
  store %"class.std::thread"* null, %"class.std::thread"** %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %this1, i32 0, i32 2
  store %"class.std::thread"* null, %"class.std::thread"** %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt6threadEC2Ev(%"class.std::allocator.3"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.3"*, align 8
  store %"class.std::allocator.3"* %this, %"class.std::allocator.3"** %this.addr, align 8
  %this1 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.3"* %this1 to %"class.__gnu_cxx::new_allocator.4"*
  call void @_ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev(%"class.__gnu_cxx::new_allocator.4"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt6threadEC2Ev(%"class.__gnu_cxx::new_allocator.4"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %this, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E(%"class.std::thread"* %__first, %"class.std::thread"* %__last, %"class.std::allocator.3"* dereferenceable(1)) #4 comdat {
entry:
  %__first.addr = alloca %"class.std::thread"*, align 8
  %__last.addr = alloca %"class.std::thread"*, align 8
  %.addr = alloca %"class.std::allocator.3"*, align 8
  store %"class.std::thread"* %__first, %"class.std::thread"** %__first.addr, align 8
  store %"class.std::thread"* %__last, %"class.std::thread"** %__last.addr, align 8
  store %"class.std::allocator.3"* %0, %"class.std::allocator.3"** %.addr, align 8
  %1 = load %"class.std::thread"*, %"class.std::thread"** %__first.addr, align 8
  %2 = load %"class.std::thread"*, %"class.std::thread"** %__last.addr, align 8
  call void @_ZSt8_DestroyIPSt6threadEvT_S2_(%"class.std::thread"* %1, %"class.std::thread"* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator.3"* @_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl to %"class.std::allocator.3"*
  ret %"class.std::allocator.3"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load %"class.std::thread"*, %"class.std::thread"** %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load %"class.std::thread"*, %"class.std::thread"** %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load %"class.std::thread"*, %"class.std::thread"** %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.std::thread"* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.std::thread"* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %this1, %"class.std::thread"* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl5) #3
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl6) #3
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6threadEvT_S2_(%"class.std::thread"* %__first, %"class.std::thread"* %__last) #4 comdat {
entry:
  %__first.addr = alloca %"class.std::thread"*, align 8
  %__last.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %__first, %"class.std::thread"** %__first.addr, align 8
  store %"class.std::thread"* %__last, %"class.std::thread"** %__last.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__first.addr, align 8
  %1 = load %"class.std::thread"*, %"class.std::thread"** %__last.addr, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_(%"class.std::thread"* %0, %"class.std::thread"* %1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6threadEEvT_S4_(%"class.std::thread"* %__first, %"class.std::thread"* %__last) #4 comdat align 2 {
entry:
  %__first.addr = alloca %"class.std::thread"*, align 8
  %__last.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %__first, %"class.std::thread"** %__first.addr, align 8
  store %"class.std::thread"* %__last, %"class.std::thread"** %__last.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__first.addr, align 8
  %1 = load %"class.std::thread"*, %"class.std::thread"** %__last.addr, align 8
  %cmp = icmp ne %"class.std::thread"* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %"class.std::thread"*, %"class.std::thread"** %__first.addr, align 8
  %call = call %"class.std::thread"* @_ZSt11__addressofISt6threadEPT_RS1_(%"class.std::thread"* dereferenceable(8) %2) #3
  call void @_ZSt8_DestroyISt6threadEvPT_(%"class.std::thread"* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %"class.std::thread"*, %"class.std::thread"** %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %3, i32 1
  store %"class.std::thread"* %incdec.ptr, %"class.std::thread"** %__first.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyISt6threadEvPT_(%"class.std::thread"* %__pointer) #7 comdat {
entry:
  %__pointer.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %__pointer, %"class.std::thread"** %__pointer.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__pointer.addr, align 8
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZSt11__addressofISt6threadEPT_RS1_(%"class.std::thread"* dereferenceable(8) %__r) #7 comdat {
entry:
  %__r.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %__r, %"class.std::thread"** %__r.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__r.addr, align 8
  %1 = bitcast %"class.std::thread"* %0 to i8*
  %2 = bitcast i8* %1 to %"class.std::thread"*
  ret %"class.std::thread"* %2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %this, %"class.std::thread"* %__p, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__p.addr = alloca %"class.std::thread"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store %"class.std::thread"* %__p, %"class.std::thread"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__p.addr, align 8
  %tobool = icmp ne %"class.std::thread"* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl to %"class.std::allocator.3"*
  %2 = load %"class.std::thread"*, %"class.std::thread"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m(%"class.std::allocator.3"* dereferenceable(1) %1, %"class.std::thread"* %2, i64 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %this, %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"*, %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %this1 to %"class.std::allocator.3"*
  call void @_ZNSaISt6threadED2Ev(%"class.std::allocator.3"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6threadEE10deallocateERS1_PS0_m(%"class.std::allocator.3"* dereferenceable(1) %__a, %"class.std::thread"* %__p, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.3"*, align 8
  %__p.addr = alloca %"class.std::thread"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.3"* %__a, %"class.std::allocator.3"** %__a.addr, align 8
  store %"class.std::thread"* %__p, %"class.std::thread"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.3"* %0 to %"class.__gnu_cxx::new_allocator.4"*
  %2 = load %"class.std::thread"*, %"class.std::thread"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.4"* %1, %"class.std::thread"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt6threadE10deallocateEPS1_m(%"class.__gnu_cxx::new_allocator.4"* %this, %"class.std::thread"* %__p, i64) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  %__p.addr = alloca %"class.std::thread"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %this, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  store %"class.std::thread"* %__p, %"class.std::thread"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  %1 = load %"class.std::thread"*, %"class.std::thread"** %__p.addr, align 8
  %2 = bitcast %"class.std::thread"* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaISt6threadED2Ev(%"class.std::allocator.3"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.3"*, align 8
  store %"class.std::allocator.3"* %this, %"class.std::allocator.3"** %this.addr, align 8
  %this1 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.3"* %this1 to %"class.__gnu_cxx::new_allocator.4"*
  call void @_ZN9__gnu_cxx13new_allocatorISt6threadED2Ev(%"class.__gnu_cxx::new_allocator.4"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt6threadED2Ev(%"class.__gnu_cxx::new_allocator.4"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %this, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  ret void
}

declare dso_local void @_ZNSt6thread15_M_start_threadESt10shared_ptrINS_10_Impl_baseEEPFvvE(%"class.std::thread"*, %"class.std::shared_ptr"*, void ()*) #1

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt6thread15_M_make_routineISt12_Bind_simpleIFZ4mainE3$_0vEEEESt10shared_ptrINS_5_ImplIT_EEEOS7_"(%"class.std::shared_ptr.10"* noalias sret %agg.result, %"class.std::thread"* %this, %"struct.std::_Bind_simple"* dereferenceable(152) %__f) #4 align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__f.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  store %"struct.std::_Bind_simple"* %__f, %"struct.std::_Bind_simple"** %__f.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %0 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__f.addr, align 8
  %call = call dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %0) #3
  call void @"_ZSt11make_sharedINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEJS5_EESt10shared_ptrIT_EDpOT0_"(%"class.std::shared_ptr.10"* sret %agg.result, %"struct.std::_Bind_simple"* dereferenceable(152) %call)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZSt13__bind_simpleIZ4mainE3$_0JEENSt19_Bind_simple_helperIT_JDpT0_EE6__typeEOS2_DpOS3_"(%"struct.std::_Bind_simple"* noalias sret %agg.result, %class.anon* dereferenceable(152) %__callable) #4 {
entry:
  %__callable.addr = alloca %class.anon*, align 8
  store %class.anon* %__callable, %class.anon** %__callable.addr, align 8
  %0 = load %class.anon*, %class.anon** %__callable.addr, align 8
  %call = call dereferenceable(152) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* dereferenceable(152) %0) #3
  %call1 = call dereferenceable(152) %class.anon* @"_ZNSt26_Maybe_wrap_member_pointerIZ4mainE3$_0E9__do_wrapEOS0_"(%class.anon* dereferenceable(152) %call)
  call void @"_ZNSt12_Bind_simpleIFZ4mainE3$_0vEEC2IS0_JEEEOT_DpOT0_"(%"struct.std::_Bind_simple"* %agg.result, %class.anon* dereferenceable(152) %call1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(152) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* dereferenceable(152) %__t) #7 {
entry:
  %__t.addr = alloca %class.anon*, align 8
  store %class.anon* %__t, %class.anon** %__t.addr, align 8
  %0 = load %class.anon*, %class.anon** %__t.addr, align 8
  ret %class.anon* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2INS0_5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEvEEOS_IT_E"(%"class.std::shared_ptr"* %this, %"class.std::shared_ptr.10"* dereferenceable(16) %__r) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::shared_ptr"*, align 8
  %__r.addr = alloca %"class.std::shared_ptr.10"*, align 8
  store %"class.std::shared_ptr"* %this, %"class.std::shared_ptr"** %this.addr, align 8
  store %"class.std::shared_ptr.10"* %__r, %"class.std::shared_ptr.10"** %__r.addr, align 8
  %this1 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %this.addr, align 8
  %0 = bitcast %"class.std::shared_ptr"* %this1 to %"class.std::__shared_ptr"*
  %1 = load %"class.std::shared_ptr.10"*, %"class.std::shared_ptr.10"** %__r.addr, align 8
  %call = call dereferenceable(16) %"class.std::shared_ptr.10"* @"_ZSt4moveIRSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEEONSt16remove_referenceIT_E4typeEOSB_"(%"class.std::shared_ptr.10"* dereferenceable(16) %1) #3
  %2 = bitcast %"class.std::shared_ptr.10"* %call to %"class.std::__shared_ptr.11"*
  call void @"_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2INS0_5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEvEEOS_IT_LS3_2EE"(%"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr.11"* dereferenceable(16) %2) #3
  ret void
}

; Function Attrs: nounwind
declare !callback !2 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev(%"class.std::shared_ptr"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %this, %"class.std::shared_ptr"** %this.addr, align 8
  %this1 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %this.addr, align 8
  %0 = bitcast %"class.std::shared_ptr"* %this1 to %"class.std::__shared_ptr"*
  call void @_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.std::shared_ptr.10"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::shared_ptr.10"*, align 8
  store %"class.std::shared_ptr.10"* %this, %"class.std::shared_ptr.10"** %this.addr, align 8
  %this1 = load %"class.std::shared_ptr.10"*, %"class.std::shared_ptr.10"** %this.addr, align 8
  %0 = bitcast %"class.std::shared_ptr.10"* %this1 to %"class.std::__shared_ptr.11"*
  call void @"_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev"(%"class.std::__shared_ptr.11"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZSt11make_sharedINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEJS5_EESt10shared_ptrIT_EDpOT0_"(%"class.std::shared_ptr.10"* noalias sret %agg.result, %"struct.std::_Bind_simple"* dereferenceable(152) %__args) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %ref.tmp = alloca %"class.std::allocator.15", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  call void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2Ev"(%"class.std::allocator.15"* %ref.tmp) #3
  %0 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %0) #3
  invoke void @"_ZSt15allocate_sharedINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_EJS5_EESt10shared_ptrIT_ERKT0_DpOT1_"(%"class.std::shared_ptr.10"* sret %agg.result, %"class.std::allocator.15"* dereferenceable(1) %ref.tmp, %"struct.std::_Bind_simple"* dereferenceable(152) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.std::allocator.15"* %ref.tmp) #3
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  call void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.std::allocator.15"* %ref.tmp) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %__t) #7 {
entry:
  %__t.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"struct.std::_Bind_simple"* %__t, %"struct.std::_Bind_simple"** %__t.addr, align 8
  %0 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__t.addr, align 8
  ret %"struct.std::_Bind_simple"* %0
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZSt15allocate_sharedINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_EJS5_EESt10shared_ptrIT_ERKT0_DpOT1_"(%"class.std::shared_ptr.10"* noalias sret %agg.result, %"class.std::allocator.15"* dereferenceable(1) %__a, %"struct.std::_Bind_simple"* dereferenceable(152) %__args) #4 {
entry:
  %__a.addr = alloca %"class.std::allocator.15"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"struct.std::_Sp_make_shared_tag", align 1
  store %"class.std::allocator.15"* %__a, %"class.std::allocator.15"** %__a.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %0 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %__a.addr, align 8
  %1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %1) #3
  call void @"_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2ISaIS6_EJS5_EEESt19_Sp_make_shared_tagRKT_DpOT0_"(%"class.std::shared_ptr.10"* %agg.result, %"class.std::allocator.15"* dereferenceable(1) %0, %"struct.std::_Bind_simple"* dereferenceable(152) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2Ev"(%"class.std::allocator.15"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.15"*, align 8
  store %"class.std::allocator.15"* %this, %"class.std::allocator.15"** %this.addr, align 8
  %this1 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.15"* %this1 to %"class.__gnu_cxx::new_allocator.16"*
  call void @"_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2Ev"(%"class.__gnu_cxx::new_allocator.16"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.std::allocator.15"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.15"*, align 8
  store %"class.std::allocator.15"* %this, %"class.std::allocator.15"** %this.addr, align 8
  %this1 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.15"* %this1 to %"class.__gnu_cxx::new_allocator.16"*
  call void @"_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.__gnu_cxx::new_allocator.16"* %0) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2ISaIS6_EJS5_EEESt19_Sp_make_shared_tagRKT_DpOT0_"(%"class.std::shared_ptr.10"* %this, %"class.std::allocator.15"* dereferenceable(1) %__a, %"struct.std::_Bind_simple"* dereferenceable(152) %__args) unnamed_addr #4 align 2 {
entry:
  %__tag = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %this.addr = alloca %"class.std::shared_ptr.10"*, align 8
  %__a.addr = alloca %"class.std::allocator.15"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"struct.std::_Sp_make_shared_tag", align 1
  store %"class.std::shared_ptr.10"* %this, %"class.std::shared_ptr.10"** %this.addr, align 8
  store %"class.std::allocator.15"* %__a, %"class.std::allocator.15"** %__a.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %this1 = load %"class.std::shared_ptr.10"*, %"class.std::shared_ptr.10"** %this.addr, align 8
  %0 = bitcast %"class.std::shared_ptr.10"* %this1 to %"class.std::__shared_ptr.11"*
  %1 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %__a.addr, align 8
  %2 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %2) #3
  call void @"_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS6_EJS5_EEESt19_Sp_make_shared_tagRKT_DpOT0_"(%"class.std::__shared_ptr.11"* %0, %"class.std::allocator.15"* dereferenceable(1) %1, %"struct.std::_Bind_simple"* dereferenceable(152) %call)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEELN9__gnu_cxx12_Lock_policyE2EEC2ISaIS6_EJS5_EEESt19_Sp_make_shared_tagRKT_DpOT0_"(%"class.std::__shared_ptr.11"* %this, %"class.std::allocator.15"* dereferenceable(1) %__a, %"struct.std::_Bind_simple"* dereferenceable(152) %__args) unnamed_addr #4 align 2 {
entry:
  %__tag = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %this.addr = alloca %"class.std::__shared_ptr.11"*, align 8
  %__a.addr = alloca %"class.std::allocator.15"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %__p = alloca i8*, align 8
  store %"class.std::__shared_ptr.11"* %this, %"class.std::__shared_ptr.11"** %this.addr, align 8
  store %"class.std::allocator.15"* %__a, %"class.std::allocator.15"** %__a.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %this1 = load %"class.std::__shared_ptr.11"*, %"class.std::__shared_ptr.11"** %this.addr, align 8
  %_M_ptr = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %this1, i32 0, i32 0
  store %"struct.std::thread::_Impl"* null, %"struct.std::thread::_Impl"** %_M_ptr, align 8
  %_M_refcount = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %this1, i32 0, i32 1
  %0 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %__a.addr, align 8
  %1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %1) #3
  call void @"_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaISA_EJS9_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_"(%"class.std::__shared_count"* %_M_refcount, %"struct.std::thread::_Impl"* null, %"class.std::allocator.15"* dereferenceable(1) %0, %"struct.std::_Bind_simple"* dereferenceable(152) %call)
  %_M_refcount2 = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %this1, i32 0, i32 1
  %call3 = call i8* @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(%"class.std::__shared_count"* %_M_refcount2, %"class.std::type_info"* dereferenceable(16) bitcast ({ i8*, i8* }* @_ZTISt19_Sp_make_shared_tag to %"class.std::type_info"*)) #3
  store i8* %call3, i8** %__p, align 8
  %2 = load i8*, i8** %__p, align 8
  %3 = bitcast i8* %2 to %"struct.std::thread::_Impl"*
  %_M_ptr4 = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %this1, i32 0, i32 0
  store %"struct.std::thread::_Impl"* %3, %"struct.std::thread::_Impl"** %_M_ptr4, align 8
  %_M_refcount5 = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %this1, i32 0, i32 1
  %_M_ptr6 = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %this1, i32 0, i32 0
  %4 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %_M_ptr6, align 8
  %_M_ptr7 = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %this1, i32 0, i32 0
  %5 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %_M_ptr7, align 8
  call void (%"class.std::__shared_count"*, ...) @_ZSt32__enable_shared_from_this_helperILN9__gnu_cxx12_Lock_policyE2EEvRKSt14__shared_countIXT_EEz(%"class.std::__shared_count"* dereferenceable(8) %_M_refcount5, %"struct.std::thread::_Impl"* %4, %"struct.std::thread::_Impl"* %5) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaISA_EJS9_EEESt19_Sp_make_shared_tagPT_RKT0_DpOT1_"(%"class.std::__shared_count"* %this, %"struct.std::thread::_Impl"*, %"class.std::allocator.15"* dereferenceable(1) %__a, %"struct.std::_Bind_simple"* dereferenceable(152) %__args) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %1 = alloca %"struct.std::_Sp_make_shared_tag", align 1
  %this.addr = alloca %"class.std::__shared_count"*, align 8
  %.addr = alloca %"struct.std::thread::_Impl"*, align 8
  %__a.addr = alloca %"class.std::allocator.15"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %__a2 = alloca %"class.std::allocator.18", align 1
  %__guard = alloca %"struct.std::__allocated_ptr", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %__mem = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %agg.tmp = alloca %"class.std::allocator.15", align 1
  store %"class.std::__shared_count"* %this, %"class.std::__shared_count"** %this.addr, align 8
  store %"struct.std::thread::_Impl"* %0, %"struct.std::thread::_Impl"** %.addr, align 8
  store %"class.std::allocator.15"* %__a, %"class.std::allocator.15"** %__a.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %this1 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %this.addr, align 8
  %_M_pi = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* null, %"class.std::_Sp_counted_base"** %_M_pi, align 8
  %2 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %__a.addr, align 8
  call void @"_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS6_EERKSaIT_E"(%"class.std::allocator.18"* %__a2, %"class.std::allocator.15"* dereferenceable(1) %2) #3
  invoke void @"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSE_"(%"struct.std::__allocated_ptr"* sret %__guard, %"class.std::allocator.18"* dereferenceable(1) %__a2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke %"class.std::_Sp_counted_ptr_inplace"* @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv"(%"struct.std::__allocated_ptr"* %__guard)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  store %"class.std::_Sp_counted_ptr_inplace"* %call, %"class.std::_Sp_counted_ptr_inplace"** %__mem, align 8
  %3 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__mem, align 8
  %4 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %3 to i8*
  %5 = bitcast i8* %4 to %"class.std::_Sp_counted_ptr_inplace"*
  %6 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %__a.addr, align 8
  %call4 = call dereferenceable(1) %"class.std::allocator.15"* @"_ZSt4moveIRKSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEEONSt16remove_referenceIT_E4typeEOSB_"(%"class.std::allocator.15"* dereferenceable(1) %6) #3
  call void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2ERKS6_"(%"class.std::allocator.15"* %agg.tmp, %"class.std::allocator.15"* dereferenceable(1) %call4) #3
  %7 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call5 = call dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %7) #3
  invoke void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS5_EEES7_DpOT_"(%"class.std::_Sp_counted_ptr_inplace"* %5, %"class.std::allocator.15"* %agg.tmp, %"struct.std::_Bind_simple"* dereferenceable(152) %call5)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont3
  call void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.std::allocator.15"* %agg.tmp) #3
  %8 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__mem, align 8
  %9 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %8 to %"class.std::_Sp_counted_base"*
  %_M_pi8 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* %9, %"class.std::_Sp_counted_base"** %_M_pi8, align 8
  %call9 = call dereferenceable(16) %"struct.std::__allocated_ptr"* @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn"(%"struct.std::__allocated_ptr"* %__guard, i8* null) #3
  call void @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev"(%"struct.std::__allocated_ptr"* %__guard) #3
  call void @"_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev"(%"class.std::allocator.18"* %__a2) #3
  ret void

lpad:                                             ; preds = %entry
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  br label %ehcleanup10

lpad2:                                            ; preds = %invoke.cont
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %exn.slot, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %ehselector.slot, align 4
  call void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.std::allocator.15"* %agg.tmp) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad6, %lpad2
  call void @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev"(%"struct.std::__allocated_ptr"* %__guard) #3
  br label %ehcleanup10

ehcleanup10:                                      ; preds = %ehcleanup, %lpad
  call void @"_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev"(%"class.std::allocator.18"* %__a2) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup10
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val11 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(%"class.std::__shared_count"* %this, %"class.std::type_info"* dereferenceable(16) %__ti) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_count"*, align 8
  %__ti.addr = alloca %"class.std::type_info"*, align 8
  store %"class.std::__shared_count"* %this, %"class.std::__shared_count"** %this.addr, align 8
  store %"class.std::type_info"* %__ti, %"class.std::type_info"** %__ti.addr, align 8
  %this1 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %this.addr, align 8
  %_M_pi = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  %0 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi, align 8
  %tobool = icmp ne %"class.std::_Sp_counted_base"* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_pi2 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  %1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi2, align 8
  %2 = load %"class.std::type_info"*, %"class.std::type_info"** %__ti.addr, align 8
  %3 = bitcast %"class.std::_Sp_counted_base"* %1 to i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)***
  %vtable = load i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)**, i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)*** %3, align 8
  %vfn = getelementptr inbounds i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)*, i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)** %vtable, i64 4
  %4 = load i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)*, i8* (%"class.std::_Sp_counted_base"*, %"class.std::type_info"*)** %vfn, align 8
  %call = call i8* %4(%"class.std::_Sp_counted_base"* %1, %"class.std::type_info"* dereferenceable(16) %2) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt32__enable_shared_from_this_helperILN9__gnu_cxx12_Lock_policyE2EEvRKSt14__shared_countIXT_EEz(%"class.std::__shared_count"* dereferenceable(8), ...) #7 comdat {
entry:
  %.addr = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS6_EERKSaIT_E"(%"class.std::allocator.18"* %this, %"class.std::allocator.15"* dereferenceable(1)) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.18"*, align 8
  %.addr = alloca %"class.std::allocator.15"*, align 8
  store %"class.std::allocator.18"* %this, %"class.std::allocator.18"** %this.addr, align 8
  store %"class.std::allocator.15"* %0, %"class.std::allocator.15"** %.addr, align 8
  %this1 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %this.addr, align 8
  %1 = bitcast %"class.std::allocator.18"* %this1 to %"class.__gnu_cxx::new_allocator.19"*
  call void @"_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS8_ELNS_12_Lock_policyE2EEEC2Ev"(%"class.__gnu_cxx::new_allocator.19"* %1) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSE_"(%"struct.std::__allocated_ptr"* noalias sret %agg.result, %"class.std::allocator.18"* dereferenceable(1) %__a) #4 {
entry:
  %__a.addr = alloca %"class.std::allocator.18"*, align 8
  store %"class.std::allocator.18"* %__a, %"class.std::allocator.18"** %__a.addr, align 8
  %0 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %__a.addr, align 8
  %1 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %__a.addr, align 8
  %call = call %"class.std::_Sp_counted_ptr_inplace"* @"_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSC_m"(%"class.std::allocator.18"* dereferenceable(1) %1, i64 1)
  call void @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERSC_PSB_"(%"struct.std::__allocated_ptr"* %agg.result, %"class.std::allocator.18"* dereferenceable(1) %0, %"class.std::_Sp_counted_ptr_inplace"* %call) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal %"class.std::_Sp_counted_ptr_inplace"* @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEE3getEv"(%"struct.std::__allocated_ptr"* %this) #4 align 2 {
entry:
  %this.addr = alloca %"struct.std::__allocated_ptr"*, align 8
  store %"struct.std::__allocated_ptr"* %this, %"struct.std::__allocated_ptr"** %this.addr, align 8
  %this1 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %this.addr, align 8
  %_M_ptr = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this1, i32 0, i32 1
  %0 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %_M_ptr, align 8
  %call = call %"class.std::_Sp_counted_ptr_inplace"* @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_raw_ptrEPSB_"(%"struct.std::__allocated_ptr"* %this1, %"class.std::_Sp_counted_ptr_inplace"* %0)
  ret %"class.std::_Sp_counted_ptr_inplace"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(1) %"class.std::allocator.15"* @"_ZSt4moveIRKSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEEONSt16remove_referenceIT_E4typeEOSB_"(%"class.std::allocator.15"* dereferenceable(1) %__t) #7 {
entry:
  %__t.addr = alloca %"class.std::allocator.15"*, align 8
  store %"class.std::allocator.15"* %__t, %"class.std::allocator.15"** %__t.addr, align 8
  %0 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %__t.addr, align 8
  ret %"class.std::allocator.15"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2ERKS6_"(%"class.std::allocator.15"* %this, %"class.std::allocator.15"* dereferenceable(1) %__a) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.15"*, align 8
  %__a.addr = alloca %"class.std::allocator.15"*, align 8
  store %"class.std::allocator.15"* %this, %"class.std::allocator.15"** %this.addr, align 8
  store %"class.std::allocator.15"* %__a, %"class.std::allocator.15"** %__a.addr, align 8
  %this1 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.15"* %this1 to %"class.__gnu_cxx::new_allocator.16"*
  %1 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %__a.addr, align 8
  %2 = bitcast %"class.std::allocator.15"* %1 to %"class.__gnu_cxx::new_allocator.16"*
  call void @"_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2ERKS8_"(%"class.__gnu_cxx::new_allocator.16"* %0, %"class.__gnu_cxx::new_allocator.16"* dereferenceable(1) %2) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEC2IJS5_EEES7_DpOT_"(%"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::allocator.15"* %__a, %"struct.std::_Bind_simple"* dereferenceable(152) %__args) unnamed_addr #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"class.std::allocator.15", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %this1 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::_Sp_counted_base"* %0) #3
  %1 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @"_ZTVSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE", i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %this1, i32 0, i32 1
  call void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2ERKS6_"(%"class.std::allocator.15"* %agg.tmp, %"class.std::allocator.15"* dereferenceable(1) %__a) #3
  call void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES7_"(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %_M_impl, %"class.std::allocator.15"* %agg.tmp) #3
  call void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.std::allocator.15"* %agg.tmp) #3
  %call = call %"struct.std::thread::_Impl"* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv"(%"class.std::_Sp_counted_ptr_inplace"* %this1) #3
  %2 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call2 = call dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %2) #3
  invoke void @"_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEE9constructIS6_JS5_EEEvRS7_PT_DpOT0_"(%"class.std::allocator.15"* dereferenceable(1) %__a, %"struct.std::thread::_Impl"* %call, %"struct.std::_Bind_simple"* dereferenceable(152) %call2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev"(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %_M_impl) #3
  %6 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %this1 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* %6) #3
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(16) %"struct.std::__allocated_ptr"* @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEEaSEDn"(%"struct.std::__allocated_ptr"* %this, i8*) #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::__allocated_ptr"*, align 8
  %.addr = alloca i8*, align 8
  store %"struct.std::__allocated_ptr"* %this, %"struct.std::__allocated_ptr"** %this.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %this.addr, align 8
  %_M_ptr = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this1, i32 0, i32 1
  store %"class.std::_Sp_counted_ptr_inplace"* null, %"class.std::_Sp_counted_ptr_inplace"** %_M_ptr, align 8
  ret %"struct.std::__allocated_ptr"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev"(%"struct.std::__allocated_ptr"* %this) unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::__allocated_ptr"*, align 8
  store %"struct.std::__allocated_ptr"* %this, %"struct.std::__allocated_ptr"** %this.addr, align 8
  %this1 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %this.addr, align 8
  %_M_ptr = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this1, i32 0, i32 1
  %0 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %_M_ptr, align 8
  %cmp = icmp ne %"class.std::_Sp_counted_ptr_inplace"* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_alloc = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this1, i32 0, i32 0
  %1 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %_M_alloc, align 8
  %_M_ptr2 = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this1, i32 0, i32 1
  %2 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %_M_ptr2, align 8
  invoke void @"_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSC_PSB_m"(%"class.std::allocator.18"* dereferenceable(1) %1, %"class.std::_Sp_counted_ptr_inplace"* %2, i64 1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  ret void

terminate.lpad:                                   ; preds = %if.then
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  call void @__clang_call_terminate(i8* %4) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev"(%"class.std::allocator.18"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::allocator.18"*, align 8
  store %"class.std::allocator.18"* %this, %"class.std::allocator.18"** %this.addr, align 8
  %this1 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %this.addr, align 8
  %0 = bitcast %"class.std::allocator.18"* %this1 to %"class.__gnu_cxx::new_allocator.19"*
  call void @"_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS8_ELNS_12_Lock_policyE2EEED2Ev"(%"class.__gnu_cxx::new_allocator.19"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS8_ELNS_12_Lock_policyE2EEEC2Ev"(%"class.__gnu_cxx::new_allocator.19"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.19"*, %"class.__gnu_cxx::new_allocator.19"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal %"class.std::_Sp_counted_ptr_inplace"* @"_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEE8allocateERSC_m"(%"class.std::allocator.18"* dereferenceable(1) %__a, i64 %__n) #4 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.18"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.18"* %__a, %"class.std::allocator.18"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.18"* %0 to %"class.__gnu_cxx::new_allocator.19"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"class.std::_Sp_counted_ptr_inplace"* @"_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS8_ELNS_12_Lock_policyE2EEE8allocateEmPKv"(%"class.__gnu_cxx::new_allocator.19"* %1, i64 %2, i8* null)
  ret %"class.std::_Sp_counted_ptr_inplace"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERSC_PSB_"(%"struct.std::__allocated_ptr"* %this, %"class.std::allocator.18"* dereferenceable(1) %__a, %"class.std::_Sp_counted_ptr_inplace"* %__ptr) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::__allocated_ptr"*, align 8
  %__a.addr = alloca %"class.std::allocator.18"*, align 8
  %__ptr.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"struct.std::__allocated_ptr"* %this, %"struct.std::__allocated_ptr"** %this.addr, align 8
  store %"class.std::allocator.18"* %__a, %"class.std::allocator.18"** %__a.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__ptr, %"class.std::_Sp_counted_ptr_inplace"** %__ptr.addr, align 8
  %this1 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %this.addr, align 8
  %_M_alloc = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this1, i32 0, i32 0
  %0 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %__a.addr, align 8
  store %"class.std::allocator.18"* %0, %"class.std::allocator.18"** %_M_alloc, align 8
  %_M_ptr = getelementptr inbounds %"struct.std::__allocated_ptr", %"struct.std::__allocated_ptr"* %this1, i32 0, i32 1
  %1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__ptr.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %1, %"class.std::_Sp_counted_ptr_inplace"** %_M_ptr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal %"class.std::_Sp_counted_ptr_inplace"* @"_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS8_ELNS_12_Lock_policyE2EEE8allocateEmPKv"(%"class.__gnu_cxx::new_allocator.19"* %this, i64 %__n, i8*) #4 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.19"*, %"class.__gnu_cxx::new_allocator.19"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @"_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS8_ELNS_12_Lock_policyE2EEE8max_sizeEv"(%"class.__gnu_cxx::new_allocator.19"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 192
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"class.std::_Sp_counted_ptr_inplace"*
  ret %"class.std::_Sp_counted_ptr_inplace"* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @"_ZNK9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS8_ELNS_12_Lock_policyE2EEE8max_sizeEv"(%"class.__gnu_cxx::new_allocator.19"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.19"*, %"class.__gnu_cxx::new_allocator.19"** %this.addr, align 8
  ret i64 96076792050570581
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %"class.std::_Sp_counted_ptr_inplace"* @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEE10_S_raw_ptrEPSB_"(%"struct.std::__allocated_ptr"* %this, %"class.std::_Sp_counted_ptr_inplace"* %__ptr) #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::__allocated_ptr"*, align 8
  %__ptr.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"struct.std::__allocated_ptr"* %this, %"struct.std::__allocated_ptr"** %this.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__ptr, %"class.std::_Sp_counted_ptr_inplace"** %__ptr.addr, align 8
  %this1 = load %"struct.std::__allocated_ptr"*, %"struct.std::__allocated_ptr"** %this.addr, align 8
  %0 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__ptr.addr, align 8
  ret %"class.std::_Sp_counted_ptr_inplace"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2ERKS8_"(%"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"* dereferenceable(1)) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  %.addr = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"** %this.addr, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %0, %"class.__gnu_cxx::new_allocator.16"** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.16"*, %"class.__gnu_cxx::new_allocator.16"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::_Sp_counted_base"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %this, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %0 = bitcast %"class.std::_Sp_counted_base"* %this1 to %"class.std::_Mutex_base"*
  %1 = bitcast %"class.std::_Sp_counted_base"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTVSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %_M_use_count = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %this1, i32 0, i32 1
  store i32 1, i32* %_M_use_count, align 8
  %_M_weak_count = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %this1, i32 0, i32 2
  store i32 1, i32* %_M_weak_count, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplC2ES7_"(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %this, %"class.std::allocator.15"* %__a) unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %this, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"** %this.addr, align 8
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %this1 to %"struct.std::_Sp_ebo_helper"*
  invoke void @"_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEELb1EEC2ERKS7_"(%"struct.std::_Sp_ebo_helper"* %0, %"class.std::allocator.15"* dereferenceable(1) %__a)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_storage = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl", %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %this1, i32 0, i32 0
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEE9constructIS6_JS5_EEEvRS7_PT_DpOT0_"(%"class.std::allocator.15"* dereferenceable(1) %__a, %"struct.std::thread::_Impl"* %__p, %"struct.std::_Bind_simple"* dereferenceable(152) %__args) #4 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.15"*, align 8
  %__p.addr = alloca %"struct.std::thread::_Impl"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"class.std::allocator.15"* %__a, %"class.std::allocator.15"** %__a.addr, align 8
  store %"struct.std::thread::_Impl"* %__p, %"struct.std::thread::_Impl"** %__p.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %0 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.15"* %0 to %"class.__gnu_cxx::new_allocator.16"*
  %2 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %3 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %3) #3
  call void @"_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEE9constructIS7_JS6_EEEvPT_DpOT0_"(%"class.__gnu_cxx::new_allocator.16"* %1, %"struct.std::thread::_Impl"* %2, %"struct.std::_Bind_simple"* dereferenceable(152) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %"struct.std::thread::_Impl"* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv"(%"class.std::_Sp_counted_ptr_inplace"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %this1, i32 0, i32 1
  %_M_storage = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl", %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %_M_impl, i32 0, i32 0
  %call = call %"struct.std::thread::_Impl"* @"_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEE6_M_ptrEv"(%"struct.__gnu_cxx::__aligned_buffer"* %_M_storage) #3
  ret %"struct.std::thread::_Impl"* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev"(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %this, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"** %this.addr, align 8
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %this1 to %"struct.std::_Sp_ebo_helper"*
  call void @"_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEELb1EED2Ev"(%"struct.std::_Sp_ebo_helper"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EED2Ev"(%"class.std::_Sp_counted_ptr_inplace"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %this1, i32 0, i32 1
  call void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE5_ImplD2Ev"(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %_M_impl) #3
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %this1 to %"class.std::_Sp_counted_base"*
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EED0Ev"(%"class.std::_Sp_counted_ptr_inplace"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  call void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EED2Ev"(%"class.std::_Sp_counted_ptr_inplace"* %this1) #3
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv"(%"class.std::_Sp_counted_ptr_inplace"* %this) unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %this1, i32 0, i32 1
  %call = call dereferenceable(1) %"class.std::allocator.15"* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv"(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %_M_impl) #3
  %call2 = call %"struct.std::thread::_Impl"* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv"(%"class.std::_Sp_counted_ptr_inplace"* %this1) #3
  invoke void @"_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEE7destroyIS6_EEvRS7_PT_"(%"class.std::allocator.15"* dereferenceable(1) %call, %"struct.std::thread::_Impl"* %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  call void @__clang_call_terminate(i8* %1) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv"(%"class.std::_Sp_counted_ptr_inplace"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__a = alloca %"class.std::allocator.18", align 1
  %__guard_ptr = alloca %"struct.std::__allocated_ptr", align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"class.std::_Sp_counted_ptr_inplace", %"class.std::_Sp_counted_ptr_inplace"* %this1, i32 0, i32 1
  %call = call dereferenceable(1) %"class.std::allocator.15"* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv"(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %_M_impl) #3
  call void @"_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEEC2IS6_EERKSaIT_E"(%"class.std::allocator.18"* %__a, %"class.std::allocator.15"* dereferenceable(1) %call) #3
  call void @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEEC2ERSC_PSB_"(%"struct.std::__allocated_ptr"* %__guard_ptr, %"class.std::allocator.18"* dereferenceable(1) %__a, %"class.std::_Sp_counted_ptr_inplace"* %this1) #3
  call void @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EED2Ev"(%"class.std::_Sp_counted_ptr_inplace"* %this1) #3
  call void @"_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEED2Ev"(%"struct.std::__allocated_ptr"* %__guard_ptr) #3
  call void @"_ZNSaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EEED2Ev"(%"class.std::allocator.18"* %__a) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info"(%"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::type_info"* dereferenceable(16) %__ti) unnamed_addr #7 align 2 {
entry:
  %retval = alloca i8*, align 8
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__ti.addr = alloca %"class.std::type_info"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %this, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  store %"class.std::type_info"* %__ti, %"class.std::type_info"** %__ti.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %this.addr, align 8
  %0 = load %"class.std::type_info"*, %"class.std::type_info"** %__ti.addr, align 8
  %call = call zeroext i1 @_ZNKSt9type_infoeqERKS_(%"class.std::type_info"* %0, %"class.std::type_info"* dereferenceable(16) bitcast ({ i8*, i8* }* @_ZTISt19_Sp_make_shared_tag to %"class.std::type_info"*)) #3
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call %"struct.std::thread::_Impl"* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE6_M_ptrEv"(%"class.std::_Sp_counted_ptr_inplace"* %this1) #3
  %1 = bitcast %"struct.std::thread::_Impl"* %call2 to i8*
  store i8* %1, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i8*, i8** %retval, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::_Sp_counted_base"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %this, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED0Ev(%"class.std::_Sp_counted_base"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %this, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %this.addr, align 8
  call void @llvm.trap() #16
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(%"class.std::_Sp_counted_base"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %this, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %isnull = icmp eq %"class.std::_Sp_counted_base"* %this1, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %0 = bitcast %"class.std::_Sp_counted_base"* %this1 to void (%"class.std::_Sp_counted_base"*)***
  %vtable = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %0, align 8
  %vfn = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vtable, i64 1
  %1 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vfn, align 8
  call void %1(%"class.std::_Sp_counted_base"* %this1) #3
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEELb1EEC2ERKS7_"(%"struct.std::_Sp_ebo_helper"* %this, %"class.std::allocator.15"* dereferenceable(1) %__tp) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Sp_ebo_helper"*, align 8
  %__tp.addr = alloca %"class.std::allocator.15"*, align 8
  store %"struct.std::_Sp_ebo_helper"* %this, %"struct.std::_Sp_ebo_helper"** %this.addr, align 8
  store %"class.std::allocator.15"* %__tp, %"class.std::allocator.15"** %__tp.addr, align 8
  %this1 = load %"struct.std::_Sp_ebo_helper"*, %"struct.std::_Sp_ebo_helper"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Sp_ebo_helper"* %this1 to %"class.std::allocator.15"*
  %1 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %__tp.addr, align 8
  call void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2ERKS6_"(%"class.std::allocator.15"* %0, %"class.std::allocator.15"* dereferenceable(1) %1) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEE9constructIS7_JS6_EEEvPT_DpOT0_"(%"class.__gnu_cxx::new_allocator.16"* %this, %"struct.std::thread::_Impl"* %__p, %"struct.std::_Bind_simple"* dereferenceable(152) %__args) #4 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  %__p.addr = alloca %"struct.std::thread::_Impl"*, align 8
  %__args.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"** %this.addr, align 8
  store %"struct.std::thread::_Impl"* %__p, %"struct.std::thread::_Impl"** %__p.addr, align 8
  store %"struct.std::_Bind_simple"* %__args, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.16"*, %"class.__gnu_cxx::new_allocator.16"** %this.addr, align 8
  %0 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %1 = bitcast %"struct.std::thread::_Impl"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::thread::_Impl"*
  %3 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__args.addr, align 8
  %call = call dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %3) #3
  call void @"_ZNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEC2EOS4_"(%"struct.std::thread::_Impl"* %2, %"struct.std::_Bind_simple"* dereferenceable(152) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEC2EOS4_"(%"struct.std::thread::_Impl"* %this, %"struct.std::_Bind_simple"* dereferenceable(152) %__f) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl"*, align 8
  %__f.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"struct.std::thread::_Impl"* %this, %"struct.std::thread::_Impl"** %this.addr, align 8
  store %"struct.std::_Bind_simple"* %__f, %"struct.std::_Bind_simple"** %__f.addr, align 8
  %this1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_Impl"* %this1 to %"struct.std::thread::_Impl_base"*
  call void @_ZNSt6thread10_Impl_baseC2Ev(%"struct.std::thread::_Impl_base"* %0) #3
  %1 = bitcast %"struct.std::thread::_Impl"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @"_ZTVNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEE", i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  %_M_func = getelementptr inbounds %"struct.std::thread::_Impl", %"struct.std::thread::_Impl"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %__f.addr, align 8
  %call = call dereferenceable(152) %"struct.std::_Bind_simple"* @"_ZSt7forwardISt12_Bind_simpleIFZ4mainE3$_0vEEEOT_RNSt16remove_referenceIS4_E4typeE"(%"struct.std::_Bind_simple"* dereferenceable(152) %2) #3
  call void @"_ZNSt12_Bind_simpleIFZ4mainE3$_0vEEC2EOS2_"(%"struct.std::_Bind_simple"* %_M_func, %"struct.std::_Bind_simple"* dereferenceable(152) %call) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread10_Impl_baseC2Ev(%"struct.std::thread::_Impl_base"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl_base"*, align 8
  store %"struct.std::thread::_Impl_base"* %this, %"struct.std::thread::_Impl_base"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl_base"*, %"struct.std::thread::_Impl_base"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_Impl_base"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVNSt6thread10_Impl_baseE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %_M_this_ptr = getelementptr inbounds %"struct.std::thread::_Impl_base", %"struct.std::thread::_Impl_base"* %this1, i32 0, i32 1
  call void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2Ev(%"class.std::shared_ptr"* %_M_this_ptr) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt12_Bind_simpleIFZ4mainE3$_0vEEC2EOS2_"(%"struct.std::_Bind_simple"* %this, %"struct.std::_Bind_simple"* dereferenceable(152)) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"struct.std::_Bind_simple"* %this, %"struct.std::_Bind_simple"** %this.addr, align 8
  store %"struct.std::_Bind_simple"* %0, %"struct.std::_Bind_simple"** %.addr, align 8
  %this1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %this.addr, align 8
  %_M_bound = getelementptr inbounds %"struct.std::_Bind_simple", %"struct.std::_Bind_simple"* %this1, i32 0, i32 0
  %1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %.addr, align 8
  %_M_bound2 = getelementptr inbounds %"struct.std::_Bind_simple", %"struct.std::_Bind_simple"* %1, i32 0, i32 0
  call void @"_ZNSt5tupleIJZ4mainE3$_0EEC2EOS1_"(%"class.std::tuple.12"* %_M_bound, %"class.std::tuple.12"* dereferenceable(152) %_M_bound2) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEED2Ev"(%"struct.std::thread::_Impl"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"struct.std::thread::_Impl"* %this, %"struct.std::thread::_Impl"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_Impl"* %this1 to %"struct.std::thread::_Impl_base"*
  call void @_ZNSt6thread10_Impl_baseD2Ev(%"struct.std::thread::_Impl_base"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEED0Ev"(%"struct.std::thread::_Impl"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"struct.std::thread::_Impl"* %this, %"struct.std::thread::_Impl"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %this.addr, align 8
  call void @"_ZNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEED2Ev"(%"struct.std::thread::_Impl"* %this1) #3
  %0 = bitcast %"struct.std::thread::_Impl"* %this1 to i8*
  call void @_ZdlPv(i8* %0) #20
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEE6_M_runEv"(%"struct.std::thread::_Impl"* %this) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"struct.std::thread::_Impl"* %this, %"struct.std::thread::_Impl"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %this.addr, align 8
  %_M_func = getelementptr inbounds %"struct.std::thread::_Impl", %"struct.std::thread::_Impl"* %this1, i32 0, i32 1
  call void @"_ZNSt12_Bind_simpleIFZ4mainE3$_0vEEclEv"(%"struct.std::_Bind_simple"* %_M_func)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEEC2Ev(%"class.std::shared_ptr"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::shared_ptr"*, align 8
  store %"class.std::shared_ptr"* %this, %"class.std::shared_ptr"** %this.addr, align 8
  %this1 = load %"class.std::shared_ptr"*, %"class.std::shared_ptr"** %this.addr, align 8
  %0 = bitcast %"class.std::shared_ptr"* %this1 to %"class.std::__shared_ptr"*
  call void @_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_ptr"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread10_Impl_baseD2Ev(%"struct.std::thread::_Impl_base"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl_base"*, align 8
  store %"struct.std::thread::_Impl_base"* %this, %"struct.std::thread::_Impl_base"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl_base"*, %"struct.std::thread::_Impl_base"** %this.addr, align 8
  %0 = bitcast %"struct.std::thread::_Impl_base"* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVNSt6thread10_Impl_baseE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %_M_this_ptr = getelementptr inbounds %"struct.std::thread::_Impl_base", %"struct.std::thread::_Impl_base"* %this1, i32 0, i32 1
  call void @_ZNSt10shared_ptrINSt6thread10_Impl_baseEED2Ev(%"class.std::shared_ptr"* %_M_this_ptr) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread10_Impl_baseD0Ev(%"struct.std::thread::_Impl_base"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::thread::_Impl_base"*, align 8
  store %"struct.std::thread::_Impl_base"* %this, %"struct.std::thread::_Impl_base"** %this.addr, align 8
  %this1 = load %"struct.std::thread::_Impl_base"*, %"struct.std::thread::_Impl_base"** %this.addr, align 8
  call void @llvm.trap() #16
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_ptr"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %this, %"class.std::__shared_ptr"** %this.addr, align 8
  %this1 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %this.addr, align 8
  %_M_ptr = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 0
  store %"struct.std::thread::_Impl_base"* null, %"struct.std::thread::_Impl_base"** %_M_ptr, align 8
  %_M_refcount = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_count"* %_M_refcount) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_count"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %this, %"class.std::__shared_count"** %this.addr, align 8
  %this1 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %this.addr, align 8
  %_M_pi = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* null, %"class.std::_Sp_counted_base"** %_M_pi, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt5tupleIJZ4mainE3$_0EEC2EOS1_"(%"class.std::tuple.12"* %this, %"class.std::tuple.12"* dereferenceable(152)) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::tuple.12"*, align 8
  %.addr = alloca %"class.std::tuple.12"*, align 8
  store %"class.std::tuple.12"* %this, %"class.std::tuple.12"** %this.addr, align 8
  store %"class.std::tuple.12"* %0, %"class.std::tuple.12"** %.addr, align 8
  %this1 = load %"class.std::tuple.12"*, %"class.std::tuple.12"** %this.addr, align 8
  %1 = bitcast %"class.std::tuple.12"* %this1 to %"struct.std::_Tuple_impl.13"*
  %2 = load %"class.std::tuple.12"*, %"class.std::tuple.12"** %.addr, align 8
  %3 = bitcast %"class.std::tuple.12"* %2 to %"struct.std::_Tuple_impl.13"*
  call void @"_ZNSt11_Tuple_implILm0EJZ4mainE3$_0EEC2EOS1_"(%"struct.std::_Tuple_impl.13"* %1, %"struct.std::_Tuple_impl.13"* dereferenceable(152) %3) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt11_Tuple_implILm0EJZ4mainE3$_0EEC2EOS1_"(%"struct.std::_Tuple_impl.13"* %this, %"struct.std::_Tuple_impl.13"* dereferenceable(152) %__in) unnamed_addr #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.13"*, align 8
  %__in.addr = alloca %"struct.std::_Tuple_impl.13"*, align 8
  store %"struct.std::_Tuple_impl.13"* %this, %"struct.std::_Tuple_impl.13"** %this.addr, align 8
  store %"struct.std::_Tuple_impl.13"* %__in, %"struct.std::_Tuple_impl.13"** %__in.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl.13"*, %"struct.std::_Tuple_impl.13"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.13"* %this1 to %"struct.std::_Head_base.14"*
  %1 = load %"struct.std::_Tuple_impl.13"*, %"struct.std::_Tuple_impl.13"** %__in.addr, align 8
  %call = call dereferenceable(152) %class.anon* @"_ZNSt11_Tuple_implILm0EJZ4mainE3$_0EE7_M_headERS1_"(%"struct.std::_Tuple_impl.13"* dereferenceable(152) %1) #3
  %call2 = call dereferenceable(152) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* dereferenceable(152) %call) #3
  invoke void @"_ZNSt10_Head_baseILm0EZ4mainE3$_0Lb0EEC2IS0_EEOT_"(%"struct.std::_Head_base.14"* %0, %class.anon* dereferenceable(152) %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(152) %class.anon* @"_ZNSt11_Tuple_implILm0EJZ4mainE3$_0EE7_M_headERS1_"(%"struct.std::_Tuple_impl.13"* dereferenceable(152) %__t) #7 align 2 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.13"*, align 8
  store %"struct.std::_Tuple_impl.13"* %__t, %"struct.std::_Tuple_impl.13"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.13"*, %"struct.std::_Tuple_impl.13"** %__t.addr, align 8
  %1 = bitcast %"struct.std::_Tuple_impl.13"* %0 to %"struct.std::_Head_base.14"*
  %call = call dereferenceable(152) %class.anon* @"_ZNSt10_Head_baseILm0EZ4mainE3$_0Lb0EE7_M_headERS1_"(%"struct.std::_Head_base.14"* dereferenceable(152) %1) #3
  ret %class.anon* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt10_Head_baseILm0EZ4mainE3$_0Lb0EEC2IS0_EEOT_"(%"struct.std::_Head_base.14"* %this, %class.anon* dereferenceable(152) %__h) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Head_base.14"*, align 8
  %__h.addr = alloca %class.anon*, align 8
  store %"struct.std::_Head_base.14"* %this, %"struct.std::_Head_base.14"** %this.addr, align 8
  store %class.anon* %__h, %class.anon** %__h.addr, align 8
  %this1 = load %"struct.std::_Head_base.14"*, %"struct.std::_Head_base.14"** %this.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.14", %"struct.std::_Head_base.14"* %this1, i32 0, i32 0
  %0 = load %class.anon*, %class.anon** %__h.addr, align 8
  %call = call dereferenceable(152) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* dereferenceable(152) %0) #3
  %1 = bitcast %class.anon* %_M_head_impl to i8*
  %2 = bitcast %class.anon* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 152, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(152) %class.anon* @"_ZNSt10_Head_baseILm0EZ4mainE3$_0Lb0EE7_M_headERS1_"(%"struct.std::_Head_base.14"* dereferenceable(152) %__b) #7 align 2 {
entry:
  %__b.addr = alloca %"struct.std::_Head_base.14"*, align 8
  store %"struct.std::_Head_base.14"* %__b, %"struct.std::_Head_base.14"** %__b.addr, align 8
  %0 = load %"struct.std::_Head_base.14"*, %"struct.std::_Head_base.14"** %__b.addr, align 8
  %_M_head_impl = getelementptr inbounds %"struct.std::_Head_base.14", %"struct.std::_Head_base.14"* %0, i32 0, i32 0
  ret %class.anon* %_M_head_impl
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt12_Bind_simpleIFZ4mainE3$_0vEEclEv"(%"struct.std::_Bind_simple"* %this) #4 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %agg.tmp = alloca %"struct.std::_Index_tuple.9", align 1
  store %"struct.std::_Bind_simple"* %this, %"struct.std::_Bind_simple"** %this.addr, align 8
  %this1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %this.addr, align 8
  call void @"_ZNSt12_Bind_simpleIFZ4mainE3$_0vEE9_M_invokeIJEEEvSt12_Index_tupleIJXspT_EEE"(%"struct.std::_Bind_simple"* %this1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt12_Bind_simpleIFZ4mainE3$_0vEE9_M_invokeIJEEEvSt12_Index_tupleIJXspT_EEE"(%"struct.std::_Bind_simple"* %this) #4 align 2 {
entry:
  %0 = alloca %"struct.std::_Index_tuple.9", align 1
  %this.addr = alloca %"struct.std::_Bind_simple"*, align 8
  store %"struct.std::_Bind_simple"* %this, %"struct.std::_Bind_simple"** %this.addr, align 8
  %this1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %this.addr, align 8
  %_M_bound = getelementptr inbounds %"struct.std::_Bind_simple", %"struct.std::_Bind_simple"* %this1, i32 0, i32 0
  %call = call dereferenceable(152) %class.anon* @"_ZSt3getILm0EJZ4mainE3$_0EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_"(%"class.std::tuple.12"* dereferenceable(152) %_M_bound) #3
  %call2 = call dereferenceable(152) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* dereferenceable(152) %call) #3
  call void @"_ZZ4mainENK3$_0clEv"(%class.anon* %call2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(152) %class.anon* @"_ZSt3getILm0EJZ4mainE3$_0EERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_"(%"class.std::tuple.12"* dereferenceable(152) %__t) #7 {
entry:
  %__t.addr = alloca %"class.std::tuple.12"*, align 8
  store %"class.std::tuple.12"* %__t, %"class.std::tuple.12"** %__t.addr, align 8
  %0 = load %"class.std::tuple.12"*, %"class.std::tuple.12"** %__t.addr, align 8
  %1 = bitcast %"class.std::tuple.12"* %0 to %"struct.std::_Tuple_impl.13"*
  %call = call dereferenceable(152) %class.anon* @"_ZSt12__get_helperILm0EZ4mainE3$_0JEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE"(%"struct.std::_Tuple_impl.13"* dereferenceable(152) %1) #3
  ret %class.anon* %call
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZZ4mainENK3$_0clEv"(%class.anon* %this) #4 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.anon*, align 8
  %task_id = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp13 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp14 = alloca %"class.std::allocator.0", align 1
  %agg.tmp21 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp22 = alloca %"class.std::allocator.0", align 1
  %ls = alloca [2 x i64], align 16
  %gs = alloca [2 x i64], align 16
  %agg.tmp37 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp38 = alloca %"class.std::allocator.0", align 1
  %agg.tmp64 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp65 = alloca %"class.std::allocator.0", align 1
  %agg.tmp72 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp73 = alloca %"class.std::allocator.0", align 1
  %agg.tmp106 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp107 = alloca %"class.std::allocator.0", align 1
  %agg.tmp114 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp115 = alloca %"class.std::allocator.0", align 1
  %agg.tmp148 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp149 = alloca %"class.std::allocator.0", align 1
  %agg.tmp156 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp157 = alloca %"class.std::allocator.0", align 1
  %agg.tmp188 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp189 = alloca %"class.std::allocator.0", align 1
  %agg.tmp196 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp197 = alloca %"class.std::allocator.0", align 1
  %agg.tmp204 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp205 = alloca %"class.std::allocator.0", align 1
  %agg.tmp223 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp224 = alloca %"class.std::allocator.0", align 1
  store %class.anon* %this, %class.anon** %this.addr, align 8
  %this1 = load %class.anon*, %class.anon** %this.addr, align 8
  store i32 0, i32* %task_id, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %task_id, align 4
  %1 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 1
  %2 = load i32*, i32** %1, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 2
  %5 = load [2 x i8*]*, [2 x i8*]** %4, align 8
  %6 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %9 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 3
  %10 = load i8***, i8**** %9, align 8
  %11 = load i8**, i8*** %10, align 8
  %12 = load i32, i32* %task_id, align 4
  %idxprom2 = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds i8*, i8** %11, i64 %idxprom2
  %13 = load i8*, i8** %arrayidx3, align 8
  %14 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %conv = sext i32 %16 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %13, i64 %conv, i1 false)
  %17 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %18 = load %struct.Timer*, %struct.Timer** %17, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %18, %"class.std::__cxx11::basic_string"* %agg.tmp)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  %19 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %20 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %19, align 8
  %clCommandQueue = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %20, i32 0, i32 1
  %21 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue, align 8
  %22 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 8
  %23 = load %struct._cl_mem**, %struct._cl_mem*** %22, align 8
  %24 = load %struct._cl_mem*, %struct._cl_mem** %23, align 8
  %25 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %conv6 = sext i32 %27 to i64
  %28 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 2
  %29 = load [2 x i8*]*, [2 x i8*]** %28, align 8
  %30 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %idxprom7 = sext i32 %31 to i64
  %arrayidx8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %29, i64 0, i64 %idxprom7
  %32 = load i8*, i8** %arrayidx8, align 8
  %call = call i32 @clEnqueueWriteBuffer(%struct._cl_command_queue* %21, %struct._cl_mem* %24, i32 1, i64 0, i64 %conv6, i8* %32, i32 0, %struct._cl_event** null, %struct._cl_event** null)
  %33 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  store i32 %call, i32* %34, align 4
  %35 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %cmp9 = icmp ne i32 %37, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont5
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 133)
  call void @exit(i32 -1) #16
  unreachable

lpad:                                             ; preds = %for.body
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = extractvalue { i8*, i32 } %42, 0
  store i8* %43, i8** %exn.slot, align 8
  %44 = extractvalue { i8*, i32 } %42, 1
  store i32 %44, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad4:                                            ; preds = %invoke.cont
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  store i8* %46, i8** %exn.slot, align 8
  %47 = extractvalue { i8*, i32 } %45, 1
  store i32 %47, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad4, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont5
  %48 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %49 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %48, align 8
  %clCommandQueue11 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %49, i32 0, i32 1
  %50 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue11, align 8
  %call12 = call i32 @clFinish(%struct._cl_command_queue* %50)
  %51 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %52 = load %struct.Timer*, %struct.Timer** %51, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp14) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp14)
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %if.end
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %52, %"class.std::__cxx11::basic_string"* %agg.tmp13)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp13) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp14) #3
  %53 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %54 = load %struct.Timer*, %struct.Timer** %53, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp22) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp22)
          to label %invoke.cont24 unwind label %lpad23

invoke.cont24:                                    ; preds = %invoke.cont18
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %54, %"class.std::__cxx11::basic_string"* %agg.tmp21)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %invoke.cont24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp21) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp22) #3
  %arrayinit.begin = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 0
  %55 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 9
  %56 = load %struct.Params*, %struct.Params** %55, align 8
  %n_work_items = getelementptr inbounds %struct.Params, %struct.Params* %56, i32 0, i32 2
  %57 = load i32, i32* %n_work_items, align 8
  %conv29 = sext i32 %57 to i64
  store i64 %conv29, i64* %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds i64, i64* %arrayinit.begin, i64 1
  %58 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 9
  %59 = load %struct.Params*, %struct.Params** %58, align 8
  %n_work_items30 = getelementptr inbounds %struct.Params, %struct.Params* %59, i32 0, i32 2
  %60 = load i32, i32* %n_work_items30, align 8
  %conv31 = sext i32 %60 to i64
  store i64 %conv31, i64* %arrayinit.element, align 8
  %arrayinit.begin32 = getelementptr inbounds [2 x i64], [2 x i64]* %gs, i64 0, i64 0
  %61 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 10
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %62, align 4
  %sub = sub nsw i32 %63, 2
  %conv33 = sext i32 %sub to i64
  store i64 %conv33, i64* %arrayinit.begin32, align 8
  %arrayinit.element34 = getelementptr inbounds i64, i64* %arrayinit.begin32, i64 1
  %64 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 11
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %65, align 4
  %sub35 = sub nsw i32 %66, 2
  %conv36 = sext i32 %sub35 to i64
  store i64 %conv36, i64* %arrayinit.element34, align 8
  %67 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %68 = load %struct.Timer*, %struct.Timer** %67, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp38) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp38)
          to label %invoke.cont40 unwind label %lpad39

invoke.cont40:                                    ; preds = %invoke.cont26
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %68, %"class.std::__cxx11::basic_string"* %agg.tmp37)
          to label %invoke.cont42 unwind label %lpad41

invoke.cont42:                                    ; preds = %invoke.cont40
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp37) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp38) #3
  %69 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %70 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %69, align 8
  %clKernel_gauss = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %70, i32 0, i32 3
  %71 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_gauss, align 8
  %72 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 8
  %73 = load %struct._cl_mem**, %struct._cl_mem*** %72, align 8
  %74 = bitcast %struct._cl_mem** %73 to i8*
  %call45 = call i32 @clSetKernelArg(%struct._cl_kernel* %71, i32 0, i64 8, i8* %74)
  %75 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %76 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %75, align 8
  %clKernel_gauss46 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %76, i32 0, i32 3
  %77 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_gauss46, align 8
  %78 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 12
  %79 = load %struct._cl_mem**, %struct._cl_mem*** %78, align 8
  %80 = bitcast %struct._cl_mem** %79 to i8*
  %call47 = call i32 @clSetKernelArg(%struct._cl_kernel* %77, i32 1, i64 8, i8* %80)
  %81 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %82 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %81, align 8
  %clKernel_gauss48 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %82, i32 0, i32 3
  %83 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_gauss48, align 8
  %84 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 10
  %85 = load i32*, i32** %84, align 8
  %86 = bitcast i32* %85 to i8*
  %call49 = call i32 @clSetKernelArg(%struct._cl_kernel* %83, i32 2, i64 4, i8* %86)
  %arrayidx50 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 0
  %87 = load i64, i64* %arrayidx50, align 16
  %arrayidx51 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 1
  %88 = load i64, i64* %arrayidx51, align 8
  %mul = mul i64 %87, %88
  %89 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 13
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %90, align 4
  %conv52 = sext i32 %91 to i64
  %cmp53 = icmp ule i64 %mul, %conv52
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont42
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont42
  call void @__assert_fail(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"__PRETTY_FUNCTION__._ZZ4mainENK3$_0clEv", i64 0, i64 0)) #16
  unreachable

lpad15:                                           ; preds = %if.end
  %92 = landingpad { i8*, i32 }
          cleanup
  %93 = extractvalue { i8*, i32 } %92, 0
  store i8* %93, i8** %exn.slot, align 8
  %94 = extractvalue { i8*, i32 } %92, 1
  store i32 %94, i32* %ehselector.slot, align 4
  br label %ehcleanup20

lpad17:                                           ; preds = %invoke.cont16
  %95 = landingpad { i8*, i32 }
          cleanup
  %96 = extractvalue { i8*, i32 } %95, 0
  store i8* %96, i8** %exn.slot, align 8
  %97 = extractvalue { i8*, i32 } %95, 1
  store i32 %97, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp13) #3
  br label %ehcleanup20

ehcleanup20:                                      ; preds = %lpad17, %lpad15
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp14) #3
  br label %eh.resume

lpad23:                                           ; preds = %invoke.cont18
  %98 = landingpad { i8*, i32 }
          cleanup
  %99 = extractvalue { i8*, i32 } %98, 0
  store i8* %99, i8** %exn.slot, align 8
  %100 = extractvalue { i8*, i32 } %98, 1
  store i32 %100, i32* %ehselector.slot, align 4
  br label %ehcleanup28

lpad25:                                           ; preds = %invoke.cont24
  %101 = landingpad { i8*, i32 }
          cleanup
  %102 = extractvalue { i8*, i32 } %101, 0
  store i8* %102, i8** %exn.slot, align 8
  %103 = extractvalue { i8*, i32 } %101, 1
  store i32 %103, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp21) #3
  br label %ehcleanup28

ehcleanup28:                                      ; preds = %lpad25, %lpad23
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp22) #3
  br label %eh.resume

lpad39:                                           ; preds = %invoke.cont26
  %104 = landingpad { i8*, i32 }
          cleanup
  %105 = extractvalue { i8*, i32 } %104, 0
  store i8* %105, i8** %exn.slot, align 8
  %106 = extractvalue { i8*, i32 } %104, 1
  store i32 %106, i32* %ehselector.slot, align 4
  br label %ehcleanup44

lpad41:                                           ; preds = %invoke.cont40
  %107 = landingpad { i8*, i32 }
          cleanup
  %108 = extractvalue { i8*, i32 } %107, 0
  store i8* %108, i8** %exn.slot, align 8
  %109 = extractvalue { i8*, i32 } %107, 1
  store i32 %109, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp37) #3
  br label %ehcleanup44

ehcleanup44:                                      ; preds = %lpad41, %lpad39
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp38) #3
  br label %eh.resume
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %110, %cond.true
  %111 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %112 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %111, align 8
  %clCommandQueue54 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %112, i32 0, i32 1
  %113 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue54, align 8
  %114 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %115 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %114, align 8
  %clKernel_gauss55 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %115, i32 0, i32 3
  %116 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_gauss55, align 8
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %gs, i64 0, i64 0
  %arraydecay56 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 0
  %call57 = call i32 @clEnqueueNDRangeKernel(%struct._cl_command_queue* %113, %struct._cl_kernel* %116, i32 2, i64* null, i64* %arraydecay, i64* %arraydecay56, i32 0, %struct._cl_event** null, %struct._cl_event** null)
  %117 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  store i32 %call57, i32* %118, align 4
  %119 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %120, align 4
  %cmp58 = icmp ne i32 %121, 0
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %cond.end
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %123 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %124, align 4
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 154)
  call void @exit(i32 -1) #16
  unreachable

if.end61:                                         ; preds = %cond.end
  %126 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %127 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %126, align 8
  %clCommandQueue62 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %127, i32 0, i32 1
  %128 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue62, align 8
  %call63 = call i32 @clFinish(%struct._cl_command_queue* %128)
  %129 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %130 = load %struct.Timer*, %struct.Timer** %129, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp65) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp65)
          to label %invoke.cont67 unwind label %lpad66

invoke.cont67:                                    ; preds = %if.end61
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %130, %"class.std::__cxx11::basic_string"* %agg.tmp64)
          to label %invoke.cont69 unwind label %lpad68

invoke.cont69:                                    ; preds = %invoke.cont67
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp64) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp65) #3
  %131 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %132 = load %struct.Timer*, %struct.Timer** %131, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp73) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp73)
          to label %invoke.cont75 unwind label %lpad74

invoke.cont75:                                    ; preds = %invoke.cont69
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %132, %"class.std::__cxx11::basic_string"* %agg.tmp72)
          to label %invoke.cont77 unwind label %lpad76

invoke.cont77:                                    ; preds = %invoke.cont75
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp72) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp73) #3
  %133 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %134 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %133, align 8
  %clKernel_sobel = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %134, i32 0, i32 4
  %135 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_sobel, align 8
  %136 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 12
  %137 = load %struct._cl_mem**, %struct._cl_mem*** %136, align 8
  %138 = bitcast %struct._cl_mem** %137 to i8*
  %call80 = call i32 @clSetKernelArg(%struct._cl_kernel* %135, i32 0, i64 8, i8* %138)
  %139 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %140 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %139, align 8
  %clKernel_sobel81 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %140, i32 0, i32 4
  %141 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_sobel81, align 8
  %142 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 8
  %143 = load %struct._cl_mem**, %struct._cl_mem*** %142, align 8
  %144 = bitcast %struct._cl_mem** %143 to i8*
  %call82 = call i32 @clSetKernelArg(%struct._cl_kernel* %141, i32 1, i64 8, i8* %144)
  %145 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %146 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %145, align 8
  %clKernel_sobel83 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %146, i32 0, i32 4
  %147 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_sobel83, align 8
  %148 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 14
  %149 = load %struct._cl_mem**, %struct._cl_mem*** %148, align 8
  %150 = bitcast %struct._cl_mem** %149 to i8*
  %call84 = call i32 @clSetKernelArg(%struct._cl_kernel* %147, i32 2, i64 8, i8* %150)
  %151 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %152 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %151, align 8
  %clKernel_sobel85 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %152, i32 0, i32 4
  %153 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_sobel85, align 8
  %154 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 10
  %155 = load i32*, i32** %154, align 8
  %156 = bitcast i32* %155 to i8*
  %call86 = call i32 @clSetKernelArg(%struct._cl_kernel* %153, i32 3, i64 4, i8* %156)
  %arrayidx87 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 0
  %157 = load i64, i64* %arrayidx87, align 16
  %arrayidx88 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 1
  %158 = load i64, i64* %arrayidx88, align 8
  %mul89 = mul i64 %157, %158
  %159 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 15
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %160, align 4
  %conv90 = sext i32 %161 to i64
  %cmp91 = icmp ule i64 %mul89, %conv90
  br i1 %cmp91, label %cond.true92, label %cond.false93

cond.true92:                                      ; preds = %invoke.cont77
  br label %cond.end94

cond.false93:                                     ; preds = %invoke.cont77
  call void @__assert_fail(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 170, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"__PRETTY_FUNCTION__._ZZ4mainENK3$_0clEv", i64 0, i64 0)) #16
  unreachable

lpad66:                                           ; preds = %if.end61
  %162 = landingpad { i8*, i32 }
          cleanup
  %163 = extractvalue { i8*, i32 } %162, 0
  store i8* %163, i8** %exn.slot, align 8
  %164 = extractvalue { i8*, i32 } %162, 1
  store i32 %164, i32* %ehselector.slot, align 4
  br label %ehcleanup71

lpad68:                                           ; preds = %invoke.cont67
  %165 = landingpad { i8*, i32 }
          cleanup
  %166 = extractvalue { i8*, i32 } %165, 0
  store i8* %166, i8** %exn.slot, align 8
  %167 = extractvalue { i8*, i32 } %165, 1
  store i32 %167, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp64) #3
  br label %ehcleanup71

ehcleanup71:                                      ; preds = %lpad68, %lpad66
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp65) #3
  br label %eh.resume

lpad74:                                           ; preds = %invoke.cont69
  %168 = landingpad { i8*, i32 }
          cleanup
  %169 = extractvalue { i8*, i32 } %168, 0
  store i8* %169, i8** %exn.slot, align 8
  %170 = extractvalue { i8*, i32 } %168, 1
  store i32 %170, i32* %ehselector.slot, align 4
  br label %ehcleanup79

lpad76:                                           ; preds = %invoke.cont75
  %171 = landingpad { i8*, i32 }
          cleanup
  %172 = extractvalue { i8*, i32 } %171, 0
  store i8* %172, i8** %exn.slot, align 8
  %173 = extractvalue { i8*, i32 } %171, 1
  store i32 %173, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp72) #3
  br label %ehcleanup79

ehcleanup79:                                      ; preds = %lpad76, %lpad74
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp73) #3
  br label %eh.resume
                                                  ; No predecessors!
  br label %cond.end94

cond.end94:                                       ; preds = %174, %cond.true92
  %175 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %176 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %175, align 8
  %clCommandQueue95 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %176, i32 0, i32 1
  %177 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue95, align 8
  %178 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %179 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %178, align 8
  %clKernel_sobel96 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %179, i32 0, i32 4
  %180 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_sobel96, align 8
  %arraydecay97 = getelementptr inbounds [2 x i64], [2 x i64]* %gs, i64 0, i64 0
  %arraydecay98 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 0
  %call99 = call i32 @clEnqueueNDRangeKernel(%struct._cl_command_queue* %177, %struct._cl_kernel* %180, i32 2, i64* null, i64* %arraydecay97, i64* %arraydecay98, i32 0, %struct._cl_event** null, %struct._cl_event** null)
  %181 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %182 = load i32*, i32** %181, align 8
  store i32 %call99, i32* %182, align 4
  %183 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %184, align 4
  %cmp100 = icmp ne i32 %185, 0
  br i1 %cmp100, label %if.then101, label %if.end103

if.then101:                                       ; preds = %cond.end94
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %187 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %188, align 4
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 174)
  call void @exit(i32 -1) #16
  unreachable

if.end103:                                        ; preds = %cond.end94
  %190 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %191 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %190, align 8
  %clCommandQueue104 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %191, i32 0, i32 1
  %192 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue104, align 8
  %call105 = call i32 @clFinish(%struct._cl_command_queue* %192)
  %193 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %194 = load %struct.Timer*, %struct.Timer** %193, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp107) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp107)
          to label %invoke.cont109 unwind label %lpad108

invoke.cont109:                                   ; preds = %if.end103
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %194, %"class.std::__cxx11::basic_string"* %agg.tmp106)
          to label %invoke.cont111 unwind label %lpad110

invoke.cont111:                                   ; preds = %invoke.cont109
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp106) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp107) #3
  %195 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %196 = load %struct.Timer*, %struct.Timer** %195, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp115) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp115)
          to label %invoke.cont117 unwind label %lpad116

invoke.cont117:                                   ; preds = %invoke.cont111
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %196, %"class.std::__cxx11::basic_string"* %agg.tmp114)
          to label %invoke.cont119 unwind label %lpad118

invoke.cont119:                                   ; preds = %invoke.cont117
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp114) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp115) #3
  %197 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %198 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %197, align 8
  %clKernel_nonmax = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %198, i32 0, i32 5
  %199 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_nonmax, align 8
  %200 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 8
  %201 = load %struct._cl_mem**, %struct._cl_mem*** %200, align 8
  %202 = bitcast %struct._cl_mem** %201 to i8*
  %call122 = call i32 @clSetKernelArg(%struct._cl_kernel* %199, i32 0, i64 8, i8* %202)
  %203 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %204 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %203, align 8
  %clKernel_nonmax123 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %204, i32 0, i32 5
  %205 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_nonmax123, align 8
  %206 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 12
  %207 = load %struct._cl_mem**, %struct._cl_mem*** %206, align 8
  %208 = bitcast %struct._cl_mem** %207 to i8*
  %call124 = call i32 @clSetKernelArg(%struct._cl_kernel* %205, i32 1, i64 8, i8* %208)
  %209 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %210 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %209, align 8
  %clKernel_nonmax125 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %210, i32 0, i32 5
  %211 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_nonmax125, align 8
  %212 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 14
  %213 = load %struct._cl_mem**, %struct._cl_mem*** %212, align 8
  %214 = bitcast %struct._cl_mem** %213 to i8*
  %call126 = call i32 @clSetKernelArg(%struct._cl_kernel* %211, i32 2, i64 8, i8* %214)
  %215 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %216 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %215, align 8
  %clKernel_nonmax127 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %216, i32 0, i32 5
  %217 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_nonmax127, align 8
  %218 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 10
  %219 = load i32*, i32** %218, align 8
  %220 = bitcast i32* %219 to i8*
  %call128 = call i32 @clSetKernelArg(%struct._cl_kernel* %217, i32 3, i64 4, i8* %220)
  %arrayidx129 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 0
  %221 = load i64, i64* %arrayidx129, align 16
  %arrayidx130 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 1
  %222 = load i64, i64* %arrayidx130, align 8
  %mul131 = mul i64 %221, %222
  %223 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 16
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %224, align 4
  %conv132 = sext i32 %225 to i64
  %cmp133 = icmp ule i64 %mul131, %conv132
  br i1 %cmp133, label %cond.true134, label %cond.false135

cond.true134:                                     ; preds = %invoke.cont119
  br label %cond.end136

cond.false135:                                    ; preds = %invoke.cont119
  call void @__assert_fail(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 191, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"__PRETTY_FUNCTION__._ZZ4mainENK3$_0clEv", i64 0, i64 0)) #16
  unreachable

lpad108:                                          ; preds = %if.end103
  %226 = landingpad { i8*, i32 }
          cleanup
  %227 = extractvalue { i8*, i32 } %226, 0
  store i8* %227, i8** %exn.slot, align 8
  %228 = extractvalue { i8*, i32 } %226, 1
  store i32 %228, i32* %ehselector.slot, align 4
  br label %ehcleanup113

lpad110:                                          ; preds = %invoke.cont109
  %229 = landingpad { i8*, i32 }
          cleanup
  %230 = extractvalue { i8*, i32 } %229, 0
  store i8* %230, i8** %exn.slot, align 8
  %231 = extractvalue { i8*, i32 } %229, 1
  store i32 %231, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp106) #3
  br label %ehcleanup113

ehcleanup113:                                     ; preds = %lpad110, %lpad108
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp107) #3
  br label %eh.resume

lpad116:                                          ; preds = %invoke.cont111
  %232 = landingpad { i8*, i32 }
          cleanup
  %233 = extractvalue { i8*, i32 } %232, 0
  store i8* %233, i8** %exn.slot, align 8
  %234 = extractvalue { i8*, i32 } %232, 1
  store i32 %234, i32* %ehselector.slot, align 4
  br label %ehcleanup121

lpad118:                                          ; preds = %invoke.cont117
  %235 = landingpad { i8*, i32 }
          cleanup
  %236 = extractvalue { i8*, i32 } %235, 0
  store i8* %236, i8** %exn.slot, align 8
  %237 = extractvalue { i8*, i32 } %235, 1
  store i32 %237, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp114) #3
  br label %ehcleanup121

ehcleanup121:                                     ; preds = %lpad118, %lpad116
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp115) #3
  br label %eh.resume
                                                  ; No predecessors!
  br label %cond.end136

cond.end136:                                      ; preds = %238, %cond.true134
  %239 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %240 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %239, align 8
  %clCommandQueue137 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %240, i32 0, i32 1
  %241 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue137, align 8
  %242 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %243 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %242, align 8
  %clKernel_nonmax138 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %243, i32 0, i32 5
  %244 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_nonmax138, align 8
  %arraydecay139 = getelementptr inbounds [2 x i64], [2 x i64]* %gs, i64 0, i64 0
  %arraydecay140 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 0
  %call141 = call i32 @clEnqueueNDRangeKernel(%struct._cl_command_queue* %241, %struct._cl_kernel* %244, i32 2, i64* null, i64* %arraydecay139, i64* %arraydecay140, i32 0, %struct._cl_event** null, %struct._cl_event** null)
  %245 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %246 = load i32*, i32** %245, align 8
  store i32 %call141, i32* %246, align 4
  %247 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %248, align 4
  %cmp142 = icmp ne i32 %249, 0
  br i1 %cmp142, label %if.then143, label %if.end145

if.then143:                                       ; preds = %cond.end136
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %251 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %252, align 4
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %250, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %253, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 195)
  call void @exit(i32 -1) #16
  unreachable

if.end145:                                        ; preds = %cond.end136
  %254 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %255 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %254, align 8
  %clCommandQueue146 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %255, i32 0, i32 1
  %256 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue146, align 8
  %call147 = call i32 @clFinish(%struct._cl_command_queue* %256)
  %257 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %258 = load %struct.Timer*, %struct.Timer** %257, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp149) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp149)
          to label %invoke.cont151 unwind label %lpad150

invoke.cont151:                                   ; preds = %if.end145
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %258, %"class.std::__cxx11::basic_string"* %agg.tmp148)
          to label %invoke.cont153 unwind label %lpad152

invoke.cont153:                                   ; preds = %invoke.cont151
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp148) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp149) #3
  %259 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %260 = load %struct.Timer*, %struct.Timer** %259, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp157) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp157)
          to label %invoke.cont159 unwind label %lpad158

invoke.cont159:                                   ; preds = %invoke.cont153
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %260, %"class.std::__cxx11::basic_string"* %agg.tmp156)
          to label %invoke.cont161 unwind label %lpad160

invoke.cont161:                                   ; preds = %invoke.cont159
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp156) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp157) #3
  %261 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %262 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %261, align 8
  %clKernel_hyst = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %262, i32 0, i32 6
  %263 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_hyst, align 8
  %264 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 12
  %265 = load %struct._cl_mem**, %struct._cl_mem*** %264, align 8
  %266 = bitcast %struct._cl_mem** %265 to i8*
  %call164 = call i32 @clSetKernelArg(%struct._cl_kernel* %263, i32 0, i64 8, i8* %266)
  %267 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %268 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %267, align 8
  %clKernel_hyst165 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %268, i32 0, i32 6
  %269 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_hyst165, align 8
  %270 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 8
  %271 = load %struct._cl_mem**, %struct._cl_mem*** %270, align 8
  %272 = bitcast %struct._cl_mem** %271 to i8*
  %call166 = call i32 @clSetKernelArg(%struct._cl_kernel* %269, i32 1, i64 8, i8* %272)
  %273 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %274 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %273, align 8
  %clKernel_hyst167 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %274, i32 0, i32 6
  %275 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_hyst167, align 8
  %276 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 10
  %277 = load i32*, i32** %276, align 8
  %278 = bitcast i32* %277 to i8*
  %call168 = call i32 @clSetKernelArg(%struct._cl_kernel* %275, i32 2, i64 4, i8* %278)
  %arrayidx169 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 0
  %279 = load i64, i64* %arrayidx169, align 16
  %arrayidx170 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 1
  %280 = load i64, i64* %arrayidx170, align 8
  %mul171 = mul i64 %279, %280
  %281 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 17
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %282, align 4
  %conv172 = sext i32 %283 to i64
  %cmp173 = icmp ule i64 %mul171, %conv172
  br i1 %cmp173, label %cond.true174, label %cond.false175

cond.true174:                                     ; preds = %invoke.cont161
  br label %cond.end176

cond.false175:                                    ; preds = %invoke.cont161
  call void @__assert_fail(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 209, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @"__PRETTY_FUNCTION__._ZZ4mainENK3$_0clEv", i64 0, i64 0)) #16
  unreachable

lpad150:                                          ; preds = %if.end145
  %284 = landingpad { i8*, i32 }
          cleanup
  %285 = extractvalue { i8*, i32 } %284, 0
  store i8* %285, i8** %exn.slot, align 8
  %286 = extractvalue { i8*, i32 } %284, 1
  store i32 %286, i32* %ehselector.slot, align 4
  br label %ehcleanup155

lpad152:                                          ; preds = %invoke.cont151
  %287 = landingpad { i8*, i32 }
          cleanup
  %288 = extractvalue { i8*, i32 } %287, 0
  store i8* %288, i8** %exn.slot, align 8
  %289 = extractvalue { i8*, i32 } %287, 1
  store i32 %289, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp148) #3
  br label %ehcleanup155

ehcleanup155:                                     ; preds = %lpad152, %lpad150
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp149) #3
  br label %eh.resume

lpad158:                                          ; preds = %invoke.cont153
  %290 = landingpad { i8*, i32 }
          cleanup
  %291 = extractvalue { i8*, i32 } %290, 0
  store i8* %291, i8** %exn.slot, align 8
  %292 = extractvalue { i8*, i32 } %290, 1
  store i32 %292, i32* %ehselector.slot, align 4
  br label %ehcleanup163

lpad160:                                          ; preds = %invoke.cont159
  %293 = landingpad { i8*, i32 }
          cleanup
  %294 = extractvalue { i8*, i32 } %293, 0
  store i8* %294, i8** %exn.slot, align 8
  %295 = extractvalue { i8*, i32 } %293, 1
  store i32 %295, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp156) #3
  br label %ehcleanup163

ehcleanup163:                                     ; preds = %lpad160, %lpad158
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp157) #3
  br label %eh.resume
                                                  ; No predecessors!
  br label %cond.end176

cond.end176:                                      ; preds = %296, %cond.true174
  %297 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %298 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %297, align 8
  %clCommandQueue177 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %298, i32 0, i32 1
  %299 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue177, align 8
  %300 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %301 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %300, align 8
  %clKernel_hyst178 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %301, i32 0, i32 6
  %302 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel_hyst178, align 8
  %arraydecay179 = getelementptr inbounds [2 x i64], [2 x i64]* %gs, i64 0, i64 0
  %arraydecay180 = getelementptr inbounds [2 x i64], [2 x i64]* %ls, i64 0, i64 0
  %call181 = call i32 @clEnqueueNDRangeKernel(%struct._cl_command_queue* %299, %struct._cl_kernel* %302, i32 2, i64* null, i64* %arraydecay179, i64* %arraydecay180, i32 0, %struct._cl_event** null, %struct._cl_event** null)
  %303 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %304 = load i32*, i32** %303, align 8
  store i32 %call181, i32* %304, align 4
  %305 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %306, align 4
  %cmp182 = icmp ne i32 %307, 0
  br i1 %cmp182, label %if.then183, label %if.end185

if.then183:                                       ; preds = %cond.end176
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %309 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %310, align 4
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %308, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %311, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 213)
  call void @exit(i32 -1) #16
  unreachable

if.end185:                                        ; preds = %cond.end176
  %312 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %313 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %312, align 8
  %clCommandQueue186 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %313, i32 0, i32 1
  %314 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue186, align 8
  %call187 = call i32 @clFinish(%struct._cl_command_queue* %314)
  %315 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %316 = load %struct.Timer*, %struct.Timer** %315, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp189) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp189)
          to label %invoke.cont191 unwind label %lpad190

invoke.cont191:                                   ; preds = %if.end185
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %316, %"class.std::__cxx11::basic_string"* %agg.tmp188)
          to label %invoke.cont193 unwind label %lpad192

invoke.cont193:                                   ; preds = %invoke.cont191
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp188) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp189) #3
  %317 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %318 = load %struct.Timer*, %struct.Timer** %317, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp197) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp197)
          to label %invoke.cont199 unwind label %lpad198

invoke.cont199:                                   ; preds = %invoke.cont193
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %318, %"class.std::__cxx11::basic_string"* %agg.tmp196)
          to label %invoke.cont201 unwind label %lpad200

invoke.cont201:                                   ; preds = %invoke.cont199
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp196) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp197) #3
  %319 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %320 = load %struct.Timer*, %struct.Timer** %319, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp205) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp205)
          to label %invoke.cont207 unwind label %lpad206

invoke.cont207:                                   ; preds = %invoke.cont201
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %320, %"class.std::__cxx11::basic_string"* %agg.tmp204)
          to label %invoke.cont209 unwind label %lpad208

invoke.cont209:                                   ; preds = %invoke.cont207
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp204) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp205) #3
  %321 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %322 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %321, align 8
  %clCommandQueue212 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %322, i32 0, i32 1
  %323 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue212, align 8
  %324 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 12
  %325 = load %struct._cl_mem**, %struct._cl_mem*** %324, align 8
  %326 = load %struct._cl_mem*, %struct._cl_mem** %325, align 8
  %327 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 4
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %328, align 4
  %conv213 = sext i32 %329 to i64
  %330 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 2
  %331 = load [2 x i8*]*, [2 x i8*]** %330, align 8
  %332 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %idxprom214 = sext i32 %333 to i64
  %arrayidx215 = getelementptr inbounds [2 x i8*], [2 x i8*]* %331, i64 0, i64 %idxprom214
  %334 = load i8*, i8** %arrayidx215, align 8
  %call216 = call i32 @clEnqueueReadBuffer(%struct._cl_command_queue* %323, %struct._cl_mem* %326, i32 1, i64 0, i64 %conv213, i8* %334, i32 0, %struct._cl_event** null, %struct._cl_event** null)
  %335 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %336 = load i32*, i32** %335, align 8
  store i32 %call216, i32* %336, align 4
  %337 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %338, align 4
  %cmp217 = icmp ne i32 %339, 0
  br i1 %cmp217, label %if.then218, label %if.end220

if.then218:                                       ; preds = %invoke.cont209
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %341 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 6
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %342, align 4
  %call219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %340, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %343, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 226)
  call void @exit(i32 -1) #16
  unreachable

lpad190:                                          ; preds = %if.end185
  %344 = landingpad { i8*, i32 }
          cleanup
  %345 = extractvalue { i8*, i32 } %344, 0
  store i8* %345, i8** %exn.slot, align 8
  %346 = extractvalue { i8*, i32 } %344, 1
  store i32 %346, i32* %ehselector.slot, align 4
  br label %ehcleanup195

lpad192:                                          ; preds = %invoke.cont191
  %347 = landingpad { i8*, i32 }
          cleanup
  %348 = extractvalue { i8*, i32 } %347, 0
  store i8* %348, i8** %exn.slot, align 8
  %349 = extractvalue { i8*, i32 } %347, 1
  store i32 %349, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp188) #3
  br label %ehcleanup195

ehcleanup195:                                     ; preds = %lpad192, %lpad190
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp189) #3
  br label %eh.resume

lpad198:                                          ; preds = %invoke.cont193
  %350 = landingpad { i8*, i32 }
          cleanup
  %351 = extractvalue { i8*, i32 } %350, 0
  store i8* %351, i8** %exn.slot, align 8
  %352 = extractvalue { i8*, i32 } %350, 1
  store i32 %352, i32* %ehselector.slot, align 4
  br label %ehcleanup203

lpad200:                                          ; preds = %invoke.cont199
  %353 = landingpad { i8*, i32 }
          cleanup
  %354 = extractvalue { i8*, i32 } %353, 0
  store i8* %354, i8** %exn.slot, align 8
  %355 = extractvalue { i8*, i32 } %353, 1
  store i32 %355, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp196) #3
  br label %ehcleanup203

ehcleanup203:                                     ; preds = %lpad200, %lpad198
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp197) #3
  br label %eh.resume

lpad206:                                          ; preds = %invoke.cont201
  %356 = landingpad { i8*, i32 }
          cleanup
  %357 = extractvalue { i8*, i32 } %356, 0
  store i8* %357, i8** %exn.slot, align 8
  %358 = extractvalue { i8*, i32 } %356, 1
  store i32 %358, i32* %ehselector.slot, align 4
  br label %ehcleanup211

lpad208:                                          ; preds = %invoke.cont207
  %359 = landingpad { i8*, i32 }
          cleanup
  %360 = extractvalue { i8*, i32 } %359, 0
  store i8* %360, i8** %exn.slot, align 8
  %361 = extractvalue { i8*, i32 } %359, 1
  store i32 %361, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp204) #3
  br label %ehcleanup211

ehcleanup211:                                     ; preds = %lpad208, %lpad206
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp205) #3
  br label %eh.resume

if.end220:                                        ; preds = %invoke.cont209
  %362 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 7
  %363 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %362, align 8
  %clCommandQueue221 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %363, i32 0, i32 1
  %364 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue221, align 8
  %call222 = call i32 @clFinish(%struct._cl_command_queue* %364)
  %365 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 5
  %366 = load %struct.Timer*, %struct.Timer** %365, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp224) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp223, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp224)
          to label %invoke.cont226 unwind label %lpad225

invoke.cont226:                                   ; preds = %if.end220
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %366, %"class.std::__cxx11::basic_string"* %agg.tmp223)
          to label %invoke.cont228 unwind label %lpad227

invoke.cont228:                                   ; preds = %invoke.cont226
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp223) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp224) #3
  %367 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 18
  %368 = load i8***, i8**** %367, align 8
  %369 = load i8**, i8*** %368, align 8
  %370 = load i32, i32* %task_id, align 4
  %idxprom231 = sext i32 %370 to i64
  %arrayidx232 = getelementptr inbounds i8*, i8** %369, i64 %idxprom231
  %371 = load i8*, i8** %arrayidx232, align 8
  %372 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 2
  %373 = load [2 x i8*]*, [2 x i8*]** %372, align 8
  %374 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %idxprom233 = sext i32 %375 to i64
  %arrayidx234 = getelementptr inbounds [2 x i8*], [2 x i8*]* %373, i64 0, i64 %idxprom233
  %376 = load i8*, i8** %arrayidx234, align 8
  %377 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 4
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %378, align 4
  %conv235 = sext i32 %379 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %371, i8* align 1 %376, i64 %conv235, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont228
  %380 = load i32, i32* %task_id, align 4
  %inc = add nsw i32 %380, 1
  store i32 %inc, i32* %task_id, align 4
  br label %for.cond

lpad225:                                          ; preds = %if.end220
  %381 = landingpad { i8*, i32 }
          cleanup
  %382 = extractvalue { i8*, i32 } %381, 0
  store i8* %382, i8** %exn.slot, align 8
  %383 = extractvalue { i8*, i32 } %381, 1
  store i32 %383, i32* %ehselector.slot, align 4
  br label %ehcleanup230

lpad227:                                          ; preds = %invoke.cont226
  %384 = landingpad { i8*, i32 }
          cleanup
  %385 = extractvalue { i8*, i32 } %384, 0
  store i8* %385, i8** %exn.slot, align 8
  %386 = extractvalue { i8*, i32 } %384, 1
  store i32 %386, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp223) #3
  br label %ehcleanup230

ehcleanup230:                                     ; preds = %lpad227, %lpad225
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp224) #3
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  ret void

eh.resume:                                        ; preds = %ehcleanup230, %ehcleanup211, %ehcleanup203, %ehcleanup195, %ehcleanup163, %ehcleanup155, %ehcleanup121, %ehcleanup113, %ehcleanup79, %ehcleanup71, %ehcleanup44, %ehcleanup28, %ehcleanup20, %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val236 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val236
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(152) %class.anon* @"_ZSt12__get_helperILm0EZ4mainE3$_0JEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE"(%"struct.std::_Tuple_impl.13"* dereferenceable(152) %__t) #7 {
entry:
  %__t.addr = alloca %"struct.std::_Tuple_impl.13"*, align 8
  store %"struct.std::_Tuple_impl.13"* %__t, %"struct.std::_Tuple_impl.13"** %__t.addr, align 8
  %0 = load %"struct.std::_Tuple_impl.13"*, %"struct.std::_Tuple_impl.13"** %__t.addr, align 8
  %call = call dereferenceable(152) %class.anon* @"_ZNSt11_Tuple_implILm0EJZ4mainE3$_0EE7_M_headERS1_"(%"struct.std::_Tuple_impl.13"* dereferenceable(152) %0) #3
  ret %class.anon* %call
}

declare dso_local i32 @clEnqueueWriteBuffer(%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**) #1

declare dso_local i32 @clSetKernelArg(%struct._cl_kernel*, i32, i64, i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

declare dso_local i32 @clEnqueueNDRangeKernel(%struct._cl_command_queue*, %struct._cl_kernel*, i32, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**) #1

declare dso_local i32 @clEnqueueReadBuffer(%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %"struct.std::thread::_Impl"* @"_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEE6_M_ptrEv"(%"struct.__gnu_cxx::__aligned_buffer"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_buffer"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer"* %this, %"struct.__gnu_cxx::__aligned_buffer"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_buffer"*, %"struct.__gnu_cxx::__aligned_buffer"** %this.addr, align 8
  %call = call i8* @"_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEE7_M_addrEv"(%"struct.__gnu_cxx::__aligned_buffer"* %this1) #3
  %0 = bitcast i8* %call to %"struct.std::thread::_Impl"*
  ret %"struct.std::thread::_Impl"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @"_ZN9__gnu_cxx16__aligned_bufferINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEE7_M_addrEv"(%"struct.__gnu_cxx::__aligned_buffer"* %this) #7 align 2 {
entry:
  %this.addr = alloca %"struct.__gnu_cxx::__aligned_buffer"*, align 8
  store %"struct.__gnu_cxx::__aligned_buffer"* %this, %"struct.__gnu_cxx::__aligned_buffer"** %this.addr, align 8
  %this1 = load %"struct.__gnu_cxx::__aligned_buffer"*, %"struct.__gnu_cxx::__aligned_buffer"** %this.addr, align 8
  %_M_storage = getelementptr inbounds %"struct.__gnu_cxx::__aligned_buffer", %"struct.__gnu_cxx::__aligned_buffer"* %this1, i32 0, i32 0
  %0 = bitcast %"union.std::aligned_storage<176, 8>::type"* %_M_storage to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEELb1EED2Ev"(%"struct.std::_Sp_ebo_helper"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Sp_ebo_helper"*, align 8
  store %"struct.std::_Sp_ebo_helper"* %this, %"struct.std::_Sp_ebo_helper"** %this.addr, align 8
  %this1 = load %"struct.std::_Sp_ebo_helper"*, %"struct.std::_Sp_ebo_helper"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Sp_ebo_helper"* %this1 to %"class.std::allocator.15"*
  call void @"_ZNSaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.std::allocator.15"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEED2Ev"(%"class.__gnu_cxx::new_allocator.16"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.16"*, %"class.__gnu_cxx::new_allocator.16"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt16allocator_traitsISaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEE7destroyIS6_EEvRS7_PT_"(%"class.std::allocator.15"* dereferenceable(1) %__a, %"struct.std::thread::_Impl"* %__p) #4 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.15"*, align 8
  %__p.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"class.std::allocator.15"* %__a, %"class.std::allocator.15"** %__a.addr, align 8
  store %"struct.std::thread::_Impl"* %__p, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %0 = load %"class.std::allocator.15"*, %"class.std::allocator.15"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.15"* %0 to %"class.__gnu_cxx::new_allocator.16"*
  %2 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %__p.addr, align 8
  call void @"_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEE7destroyIS7_EEvPT_"(%"class.__gnu_cxx::new_allocator.16"* %1, %"struct.std::thread::_Impl"* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(1) %"class.std::allocator.15"* @"_ZNSt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS6_ELN9__gnu_cxx12_Lock_policyE2EE5_Impl8_M_allocEv"(%"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %this) #7 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"*, align 8
  store %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %this, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"*, %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"** %this.addr, align 8
  %0 = bitcast %"class.std::_Sp_counted_ptr_inplace<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> >, std::allocator<std::thread::_Impl<std::_Bind_simple<(lambda at main.cpp:122:38) ()> > >, __gnu_cxx::_S_atomic>::_Impl"* %this1 to %"struct.std::_Sp_ebo_helper"*
  %call = invoke dereferenceable(1) %"class.std::allocator.15"* @"_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEELb1EE6_S_getERS8_"(%"struct.std::_Sp_ebo_helper"* dereferenceable(1) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret %"class.std::allocator.15"* %call

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #16
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEE7destroyIS7_EEvPT_"(%"class.__gnu_cxx::new_allocator.16"* %this, %"struct.std::thread::_Impl"* %__p) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  %__p.addr = alloca %"struct.std::thread::_Impl"*, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"** %this.addr, align 8
  store %"struct.std::thread::_Impl"* %__p, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.16"*, %"class.__gnu_cxx::new_allocator.16"** %this.addr, align 8
  %0 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %__p.addr, align 8
  %1 = bitcast %"struct.std::thread::_Impl"* %0 to void (%"struct.std::thread::_Impl"*)***
  %vtable = load void (%"struct.std::thread::_Impl"*)**, void (%"struct.std::thread::_Impl"*)*** %1, align 8
  %vfn = getelementptr inbounds void (%"struct.std::thread::_Impl"*)*, void (%"struct.std::thread::_Impl"*)** %vtable, i64 0
  %2 = load void (%"struct.std::thread::_Impl"*)*, void (%"struct.std::thread::_Impl"*)** %vfn, align 8
  call void %2(%"struct.std::thread::_Impl"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(1) %"class.std::allocator.15"* @"_ZNSt14_Sp_ebo_helperILi0ESaINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEELb1EE6_S_getERS8_"(%"struct.std::_Sp_ebo_helper"* dereferenceable(1) %__eboh) #7 align 2 {
entry:
  %__eboh.addr = alloca %"struct.std::_Sp_ebo_helper"*, align 8
  store %"struct.std::_Sp_ebo_helper"* %__eboh, %"struct.std::_Sp_ebo_helper"** %__eboh.addr, align 8
  %0 = load %"struct.std::_Sp_ebo_helper"*, %"struct.std::_Sp_ebo_helper"** %__eboh.addr, align 8
  %1 = bitcast %"struct.std::_Sp_ebo_helper"* %0 to %"class.std::allocator.15"*
  ret %"class.std::allocator.15"* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt9type_infoeqERKS_(%"class.std::type_info"* %this, %"class.std::type_info"* dereferenceable(16) %__arg) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::type_info"*, align 8
  %__arg.addr = alloca %"class.std::type_info"*, align 8
  store %"class.std::type_info"* %this, %"class.std::type_info"** %this.addr, align 8
  store %"class.std::type_info"* %__arg, %"class.std::type_info"** %__arg.addr, align 8
  %this1 = load %"class.std::type_info"*, %"class.std::type_info"** %this.addr, align 8
  %__name = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1
  %0 = load i8*, i8** %__name, align 8
  %1 = load %"class.std::type_info"*, %"class.std::type_info"** %__arg.addr, align 8
  %__name2 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %1, i32 0, i32 1
  %2 = load i8*, i8** %__name2, align 8
  %cmp = icmp eq i8* %0, %2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %__name3 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1
  %3 = load i8*, i8** %__name3, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv, 42
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %__name5 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %this1, i32 0, i32 1
  %5 = load i8*, i8** %__name5, align 8
  %6 = load %"class.std::type_info"*, %"class.std::type_info"** %__arg.addr, align 8
  %__name6 = getelementptr inbounds %"class.std::type_info", %"class.std::type_info"* %6, i32 0, i32 1
  %7 = load i8*, i8** %__name6, align 8
  %call = call i32 @strcmp(i8* %5, i8* %7) #3
  %cmp7 = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %cmp7, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %9 = phi i1 [ true, %entry ], [ %8, %land.end ]
  ret i1 %9
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt16allocator_traitsISaISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS7_ELN9__gnu_cxx12_Lock_policyE2EEEE10deallocateERSC_PSB_m"(%"class.std::allocator.18"* dereferenceable(1) %__a, %"class.std::_Sp_counted_ptr_inplace"* %__p, i64 %__n) #4 align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.18"*, align 8
  %__p.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.18"* %__a, %"class.std::allocator.18"** %__a.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.18"*, %"class.std::allocator.18"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.18"* %0 to %"class.__gnu_cxx::new_allocator.19"*
  %2 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  %3 = load i64, i64* %__n.addr, align 8
  call void @"_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS8_ELNS_12_Lock_policyE2EEE10deallocateEPSB_m"(%"class.__gnu_cxx::new_allocator.19"* %1, %"class.std::_Sp_counted_ptr_inplace"* %2, i64 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS8_ELNS_12_Lock_policyE2EEE10deallocateEPSB_m"(%"class.__gnu_cxx::new_allocator.19"* %this, %"class.std::_Sp_counted_ptr_inplace"* %__p, i64) #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  %__p.addr = alloca %"class.std::_Sp_counted_ptr_inplace"*, align 8
  %.addr = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %this.addr, align 8
  store %"class.std::_Sp_counted_ptr_inplace"* %__p, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  store i64 %0, i64* %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.19"*, %"class.__gnu_cxx::new_allocator.19"** %this.addr, align 8
  %1 = load %"class.std::_Sp_counted_ptr_inplace"*, %"class.std::_Sp_counted_ptr_inplace"** %__p.addr, align 8
  %2 = bitcast %"class.std::_Sp_counted_ptr_inplace"* %1 to i8*
  call void @_ZdlPv(i8* %2) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZN9__gnu_cxx13new_allocatorISt23_Sp_counted_ptr_inplaceINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEESaIS8_ELNS_12_Lock_policyE2EEED2Ev"(%"class.__gnu_cxx::new_allocator.19"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.19"*, align 8
  store %"class.__gnu_cxx::new_allocator.19"* %this, %"class.__gnu_cxx::new_allocator.19"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.19"*, %"class.__gnu_cxx::new_allocator.19"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZN9__gnu_cxx13new_allocatorINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEC2Ev"(%"class.__gnu_cxx::new_allocator.16"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.16"*, align 8
  store %"class.__gnu_cxx::new_allocator.16"* %this, %"class.__gnu_cxx::new_allocator.16"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.16"*, %"class.__gnu_cxx::new_allocator.16"** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(152) %class.anon* @"_ZNSt26_Maybe_wrap_member_pointerIZ4mainE3$_0E9__do_wrapEOS0_"(%class.anon* dereferenceable(152) %__x) #7 align 2 {
entry:
  %__x.addr = alloca %class.anon*, align 8
  store %class.anon* %__x, %class.anon** %__x.addr, align 8
  %0 = load %class.anon*, %class.anon** %__x.addr, align 8
  ret %class.anon* %0
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt12_Bind_simpleIFZ4mainE3$_0vEEC2IS0_JEEEOT_DpOT0_"(%"struct.std::_Bind_simple"* %this, %class.anon* dereferenceable(152) %__f) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Bind_simple"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  store %"struct.std::_Bind_simple"* %this, %"struct.std::_Bind_simple"** %this.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %this1 = load %"struct.std::_Bind_simple"*, %"struct.std::_Bind_simple"** %this.addr, align 8
  %_M_bound = getelementptr inbounds %"struct.std::_Bind_simple", %"struct.std::_Bind_simple"* %this1, i32 0, i32 0
  %0 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call = call dereferenceable(152) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* dereferenceable(152) %0) #3
  call void @"_ZNSt5tupleIJZ4mainE3$_0EEC2IJS0_EvEEDpOT_"(%"class.std::tuple.12"* %_M_bound, %class.anon* dereferenceable(152) %call)
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZNSt5tupleIJZ4mainE3$_0EEC2IJS0_EvEEDpOT_"(%"class.std::tuple.12"* %this, %class.anon* dereferenceable(152) %__elements) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca %"class.std::tuple.12"*, align 8
  %__elements.addr = alloca %class.anon*, align 8
  store %"class.std::tuple.12"* %this, %"class.std::tuple.12"** %this.addr, align 8
  store %class.anon* %__elements, %class.anon** %__elements.addr, align 8
  %this1 = load %"class.std::tuple.12"*, %"class.std::tuple.12"** %this.addr, align 8
  %0 = bitcast %"class.std::tuple.12"* %this1 to %"struct.std::_Tuple_impl.13"*
  %1 = load %class.anon*, %class.anon** %__elements.addr, align 8
  %call = call dereferenceable(152) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* dereferenceable(152) %1) #3
  call void @"_ZNSt11_Tuple_implILm0EJZ4mainE3$_0EEC2IS0_EEOT_"(%"struct.std::_Tuple_impl.13"* %0, %class.anon* dereferenceable(152) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt11_Tuple_implILm0EJZ4mainE3$_0EEC2IS0_EEOT_"(%"struct.std::_Tuple_impl.13"* %this, %class.anon* dereferenceable(152) %__head) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"struct.std::_Tuple_impl.13"*, align 8
  %__head.addr = alloca %class.anon*, align 8
  store %"struct.std::_Tuple_impl.13"* %this, %"struct.std::_Tuple_impl.13"** %this.addr, align 8
  store %class.anon* %__head, %class.anon** %__head.addr, align 8
  %this1 = load %"struct.std::_Tuple_impl.13"*, %"struct.std::_Tuple_impl.13"** %this.addr, align 8
  %0 = bitcast %"struct.std::_Tuple_impl.13"* %this1 to %"struct.std::_Head_base.14"*
  %1 = load %class.anon*, %class.anon** %__head.addr, align 8
  %call = call dereferenceable(152) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* dereferenceable(152) %1) #3
  call void @"_ZNSt10_Head_baseILm0EZ4mainE3$_0Lb0EEC2IS0_EEOT_"(%"struct.std::_Head_base.14"* %0, %class.anon* dereferenceable(152) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(16) %"class.std::shared_ptr.10"* @"_ZSt4moveIRSt10shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEEEONSt16remove_referenceIT_E4typeEOSB_"(%"class.std::shared_ptr.10"* dereferenceable(16) %__t) #7 {
entry:
  %__t.addr = alloca %"class.std::shared_ptr.10"*, align 8
  store %"class.std::shared_ptr.10"* %__t, %"class.std::shared_ptr.10"** %__t.addr, align 8
  %0 = load %"class.std::shared_ptr.10"*, %"class.std::shared_ptr.10"** %__t.addr, align 8
  ret %"class.std::shared_ptr.10"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EEC2INS0_5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEEvEEOS_IT_LS3_2EE"(%"class.std::__shared_ptr"* %this, %"class.std::__shared_ptr.11"* dereferenceable(16) %__r) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_ptr"*, align 8
  %__r.addr = alloca %"class.std::__shared_ptr.11"*, align 8
  store %"class.std::__shared_ptr"* %this, %"class.std::__shared_ptr"** %this.addr, align 8
  store %"class.std::__shared_ptr.11"* %__r, %"class.std::__shared_ptr.11"** %__r.addr, align 8
  %this1 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %this.addr, align 8
  %_M_ptr = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 0
  %0 = load %"class.std::__shared_ptr.11"*, %"class.std::__shared_ptr.11"** %__r.addr, align 8
  %_M_ptr2 = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %0, i32 0, i32 0
  %1 = load %"struct.std::thread::_Impl"*, %"struct.std::thread::_Impl"** %_M_ptr2, align 8
  %2 = bitcast %"struct.std::thread::_Impl"* %1 to %"struct.std::thread::_Impl_base"*
  store %"struct.std::thread::_Impl_base"* %2, %"struct.std::thread::_Impl_base"** %_M_ptr, align 8
  %_M_refcount = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev(%"class.std::__shared_count"* %_M_refcount) #3
  %_M_refcount3 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 1
  %3 = load %"class.std::__shared_ptr.11"*, %"class.std::__shared_ptr.11"** %__r.addr, align 8
  %_M_refcount4 = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_(%"class.std::__shared_count"* %_M_refcount3, %"class.std::__shared_count"* dereferenceable(8) %_M_refcount4) #3
  %4 = load %"class.std::__shared_ptr.11"*, %"class.std::__shared_ptr.11"** %__r.addr, align 8
  %_M_ptr5 = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %4, i32 0, i32 0
  store %"struct.std::thread::_Impl"* null, %"struct.std::thread::_Impl"** %_M_ptr5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_(%"class.std::__shared_count"* %this, %"class.std::__shared_count"* dereferenceable(8) %__r) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_count"*, align 8
  %__r.addr = alloca %"class.std::__shared_count"*, align 8
  %__tmp = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::__shared_count"* %this, %"class.std::__shared_count"** %this.addr, align 8
  store %"class.std::__shared_count"* %__r, %"class.std::__shared_count"** %__r.addr, align 8
  %this1 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %this.addr, align 8
  %0 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %__r.addr, align 8
  %_M_pi = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %0, i32 0, i32 0
  %1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi, align 8
  store %"class.std::_Sp_counted_base"* %1, %"class.std::_Sp_counted_base"** %__tmp, align 8
  %_M_pi2 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  %2 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi2, align 8
  %3 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %__r.addr, align 8
  %_M_pi3 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %3, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* %2, %"class.std::_Sp_counted_base"** %_M_pi3, align 8
  %4 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %__tmp, align 8
  %_M_pi4 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  store %"class.std::_Sp_counted_base"* %4, %"class.std::_Sp_counted_base"** %_M_pi4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt6thread10_Impl_baseELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %this, %"class.std::__shared_ptr"** %this.addr, align 8
  %this1 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %this.addr, align 8
  %_M_refcount = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %this1, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* %_M_refcount) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* %this) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %this, %"class.std::__shared_count"** %this.addr, align 8
  %this1 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %this.addr, align 8
  %_M_pi = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  %0 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi, align 8
  %cmp = icmp ne %"class.std::_Sp_counted_base"* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_pi2 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %this1, i32 0, i32 0
  %1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %_M_pi2, align 8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(%"class.std::_Sp_counted_base"* %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(%"class.std::_Sp_counted_base"* %this) #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %this, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %this1 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %this.addr, align 8
  %_M_use_count = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %this1, i32 0, i32 1
  %call = invoke i32 @_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii(i32* %_M_use_count, i32 -1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %invoke.cont
  %0 = bitcast %"class.std::_Sp_counted_base"* %this1 to void (%"class.std::_Sp_counted_base"*)***
  %vtable = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %0, align 8
  %vfn = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vtable, i64 2
  %1 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vfn, align 8
  call void %1(%"class.std::_Sp_counted_base"* %this1) #3
  %_M_weak_count = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %this1, i32 0, i32 2
  %call3 = invoke i32 @_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii(i32* %_M_weak_count, i32 -1)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %if.then
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %invoke.cont2
  %2 = bitcast %"class.std::_Sp_counted_base"* %this1 to void (%"class.std::_Sp_counted_base"*)***
  %vtable6 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %2, align 8
  %vfn7 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vtable6, i64 3
  %3 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %vfn7, align 8
  call void %3(%"class.std::_Sp_counted_base"* %this1) #3
  br label %if.end

if.end:                                           ; preds = %if.then5, %invoke.cont2
  br label %if.end8

if.end8:                                          ; preds = %if.end, %invoke.cont
  ret void

terminate.lpad:                                   ; preds = %if.then, %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #16
  unreachable
}

; Function Attrs: noinline optnone uwtable
define internal i32 @_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii(i32* %__mem, i32 %__val) #4 {
entry:
  %retval = alloca i32, align 4
  %__mem.addr = alloca i32*, align 8
  %__val.addr = alloca i32, align 4
  store i32* %__mem, i32** %__mem.addr, align 8
  store i32 %__val, i32* %__val.addr, align 4
  %call = call i32 @_ZL18__gthread_active_pv()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32*, i32** %__mem.addr, align 8
  %1 = load i32, i32* %__val.addr, align 4
  %call1 = call i32 @_ZN9__gnu_cxxL18__exchange_and_addEPVii(i32* %0, i32 %1)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32*, i32** %__mem.addr, align 8
  %3 = load i32, i32* %__val.addr, align 4
  %call2 = call i32 @_ZN9__gnu_cxxL25__exchange_and_add_singleEPii(i32* %2, i32 %3)
  store i32 %call2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ZL18__gthread_active_pv() #7 {
entry:
  ret i32 zext (i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null) to i32)
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ZN9__gnu_cxxL18__exchange_and_addEPVii(i32* %__mem, i32 %__val) #7 {
entry:
  %__mem.addr = alloca i32*, align 8
  %__val.addr = alloca i32, align 4
  %.atomictmp = alloca i32, align 4
  %atomic-temp = alloca i32, align 4
  store i32* %__mem, i32** %__mem.addr, align 8
  store i32 %__val, i32* %__val.addr, align 4
  %0 = load i32*, i32** %__mem.addr, align 8
  %1 = load i32, i32* %__val.addr, align 4
  store i32 %1, i32* %.atomictmp, align 4
  %2 = load i32, i32* %.atomictmp, align 4
  %3 = atomicrmw volatile add i32* %0, i32 %2 acq_rel
  store i32 %3, i32* %atomic-temp, align 4
  %4 = load i32, i32* %atomic-temp, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ZN9__gnu_cxxL25__exchange_and_add_singleEPii(i32* %__mem, i32 %__val) #7 {
entry:
  %__mem.addr = alloca i32*, align 8
  %__val.addr = alloca i32, align 4
  %__result = alloca i32, align 4
  store i32* %__mem, i32** %__mem.addr, align 8
  store i32 %__val, i32* %__val.addr, align 4
  %0 = load i32*, i32** %__mem.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %__result, align 4
  %2 = load i32, i32* %__val.addr, align 4
  %3 = load i32*, i32** %__mem.addr, align 8
  %4 = load i32, i32* %3, align 4
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %3, align 4
  %5 = load i32, i32* %__result, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare extern_weak dso_local i32 @__pthread_key_create(i32*, void (i8*)*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt12__shared_ptrINSt6thread5_ImplISt12_Bind_simpleIFZ4mainE3$_0vEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev"(%"class.std::__shared_ptr.11"* %this) unnamed_addr #7 align 2 {
entry:
  %this.addr = alloca %"class.std::__shared_ptr.11"*, align 8
  store %"class.std::__shared_ptr.11"* %this, %"class.std::__shared_ptr.11"** %this.addr, align 8
  %this1 = load %"class.std::__shared_ptr.11"*, %"class.std::__shared_ptr.11"** %this.addr, align 8
  %_M_refcount = getelementptr inbounds %"class.std::__shared_ptr.11", %"class.std::__shared_ptr.11"* %this1, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* %_M_refcount) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJS0_EEEvDpOT_(%"class.std::vector"* %this, %"class.std::thread"* dereferenceable(8) %__args) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__args.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"class.std::thread"* %__args, %"class.std::thread"** %__args.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.std::thread"*, %"class.std::thread"** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %3 = load %"class.std::thread"*, %"class.std::thread"** %_M_end_of_storage, align 8
  %cmp = icmp ne %"class.std::thread"* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl3 to %"class.std::allocator.3"*
  %6 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl4, i32 0, i32 1
  %7 = load %"class.std::thread"*, %"class.std::thread"** %_M_finish5, align 8
  %8 = load %"class.std::thread"*, %"class.std::thread"** %__args.addr, align 8
  %call = call dereferenceable(8) %"class.std::thread"* @_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE(%"class.std::thread"* dereferenceable(8) %8) #3
  call void @_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator.3"* dereferenceable(1) %5, %"class.std::thread"* %7, %"class.std::thread"* dereferenceable(8) %call)
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load %"class.std::thread"*, %"class.std::thread"** %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %10, i32 1
  store %"class.std::thread"* %incdec.ptr, %"class.std::thread"** %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %"class.std::thread"*, %"class.std::thread"** %__args.addr, align 8
  %call8 = call dereferenceable(8) %"class.std::thread"* @_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE(%"class.std::thread"* dereferenceable(8) %11) #3
  call void @_ZNSt6vectorISt6threadSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_(%"class.std::vector"* %this1, %"class.std::thread"* dereferenceable(8) %call8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.std::thread"* @_ZSt4moveIRSt6threadEONSt16remove_referenceIT_E4typeEOS3_(%"class.std::thread"* dereferenceable(8) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %__t, %"class.std::thread"** %__t.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__t.addr, align 8
  ret %"class.std::thread"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator.3"* dereferenceable(1) %__a, %"class.std::thread"* %__p, %"class.std::thread"* dereferenceable(8) %__args) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.3"*, align 8
  %__p.addr = alloca %"class.std::thread"*, align 8
  %__args.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::allocator.3"* %__a, %"class.std::allocator.3"** %__a.addr, align 8
  store %"class.std::thread"* %__p, %"class.std::thread"** %__p.addr, align 8
  store %"class.std::thread"* %__args, %"class.std::thread"** %__args.addr, align 8
  %0 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.3"* %0 to %"class.__gnu_cxx::new_allocator.4"*
  %2 = load %"class.std::thread"*, %"class.std::thread"** %__p.addr, align 8
  %3 = load %"class.std::thread"*, %"class.std::thread"** %__args.addr, align 8
  %call = call dereferenceable(8) %"class.std::thread"* @_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE(%"class.std::thread"* dereferenceable(8) %3) #3
  call void @_ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.4"* %1, %"class.std::thread"* %2, %"class.std::thread"* dereferenceable(8) %call)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.std::thread"* @_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE(%"class.std::thread"* dereferenceable(8) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %__t, %"class.std::thread"** %__t.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__t.addr, align 8
  ret %"class.std::thread"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE19_M_emplace_back_auxIJS0_EEEvDpOT_(%"class.std::vector"* %this, %"class.std::thread"* dereferenceable(8) %__args) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__args.addr = alloca %"class.std::thread"*, align 8
  %__len = alloca i64, align 8
  %__new_start = alloca %"class.std::thread"*, align 8
  %__new_finish = alloca %"class.std::thread"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store %"class.std::thread"* %__args, %"class.std::thread"** %__args.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %this1, i64 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i64 0, i64 0))
  store i64 %call, i64* %__len, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %1 = load i64, i64* %__len, align 8
  %call2 = call %"class.std::thread"* @_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %0, i64 %1)
  store %"class.std::thread"* %call2, %"class.std::thread"** %__new_start, align 8
  %2 = load %"class.std::thread"*, %"class.std::thread"** %__new_start, align 8
  store %"class.std::thread"* %2, %"class.std::thread"** %__new_finish, align 8
  %3 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %4 = bitcast %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl to %"class.std::allocator.3"*
  %5 = load %"class.std::thread"*, %"class.std::thread"** %__new_start, align 8
  %call3 = call i64 @_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv(%"class.std::vector"* %this1) #3
  %add.ptr = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %5, i64 %call3
  %6 = load %"class.std::thread"*, %"class.std::thread"** %__args.addr, align 8
  %call4 = call dereferenceable(8) %"class.std::thread"* @_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE(%"class.std::thread"* dereferenceable(8) %6) #3
  invoke void @_ZNSt16allocator_traitsISaISt6threadEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(%"class.std::allocator.3"* dereferenceable(1) %4, %"class.std::thread"* %add.ptr, %"class.std::thread"* dereferenceable(8) %call4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %"class.std::thread"* null, %"class.std::thread"** %__new_finish, align 8
  %7 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl5, i32 0, i32 0
  %8 = load %"class.std::thread"*, %"class.std::thread"** %_M_start, align 8
  %9 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl6, i32 0, i32 1
  %10 = load %"class.std::thread"*, %"class.std::thread"** %_M_finish, align 8
  %11 = load %"class.std::thread"*, %"class.std::thread"** %__new_start, align 8
  %12 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call7 = call dereferenceable(1) %"class.std::allocator.3"* @_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %12) #3
  %call9 = invoke %"class.std::thread"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_(%"class.std::thread"* %8, %"class.std::thread"* %10, %"class.std::thread"* %11, %"class.std::allocator.3"* dereferenceable(1) %call7)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  store %"class.std::thread"* %call9, %"class.std::thread"** %__new_finish, align 8
  %13 = load %"class.std::thread"*, %"class.std::thread"** %__new_finish, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %13, i32 1
  store %"class.std::thread"* %incdec.ptr, %"class.std::thread"** %__new_finish, align 8
  br label %try.cont

lpad:                                             ; preds = %invoke.cont, %entry
  %14 = landingpad { i8*, i32 }
          catch i8* null
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %exn.slot, align 8
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %17 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %18 = load %"class.std::thread"*, %"class.std::thread"** %__new_finish, align 8
  %tobool = icmp ne %"class.std::thread"* %18, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %catch
  %19 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %19, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl10 to %"class.std::allocator.3"*
  %21 = load %"class.std::thread"*, %"class.std::thread"** %__new_start, align 8
  %call11 = call i64 @_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv(%"class.std::vector"* %this1) #3
  %add.ptr12 = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %21, i64 %call11
  invoke void @_ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator.3"* dereferenceable(1) %20, %"class.std::thread"* %add.ptr12)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %if.then
  br label %if.end

lpad13:                                           ; preds = %invoke.cont17, %if.end, %if.else, %if.then
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %exn.slot, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont18 unwind label %terminate.lpad

if.else:                                          ; preds = %catch
  %25 = load %"class.std::thread"*, %"class.std::thread"** %__new_start, align 8
  %26 = load %"class.std::thread"*, %"class.std::thread"** %__new_finish, align 8
  %27 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call15 = call dereferenceable(1) %"class.std::allocator.3"* @_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %27) #3
  invoke void @_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E(%"class.std::thread"* %25, %"class.std::thread"* %26, %"class.std::allocator.3"* dereferenceable(1) %call15)
          to label %invoke.cont16 unwind label %lpad13

invoke.cont16:                                    ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %invoke.cont16, %invoke.cont14
  %28 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %29 = load %"class.std::thread"*, %"class.std::thread"** %__new_start, align 8
  %30 = load i64, i64* %__len, align 8
  invoke void @_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %28, %"class.std::thread"* %29, i64 %30)
          to label %invoke.cont17 unwind label %lpad13

invoke.cont17:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad13

invoke.cont18:                                    ; preds = %lpad13
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont8
  %31 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl19 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %31, i32 0, i32 0
  %_M_start20 = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl19, i32 0, i32 0
  %32 = load %"class.std::thread"*, %"class.std::thread"** %_M_start20, align 8
  %33 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl21 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %33, i32 0, i32 0
  %_M_finish22 = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl21, i32 0, i32 1
  %34 = load %"class.std::thread"*, %"class.std::thread"** %_M_finish22, align 8
  %35 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call23 = call dereferenceable(1) %"class.std::allocator.3"* @_ZNSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %35) #3
  call void @_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E(%"class.std::thread"* %32, %"class.std::thread"* %34, %"class.std::allocator.3"* dereferenceable(1) %call23)
  %36 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %37 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl24 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %37, i32 0, i32 0
  %_M_start25 = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl24, i32 0, i32 0
  %38 = load %"class.std::thread"*, %"class.std::thread"** %_M_start25, align 8
  %39 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl26 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %39, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl26, i32 0, i32 2
  %40 = load %"class.std::thread"*, %"class.std::thread"** %_M_end_of_storage, align 8
  %41 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl27 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %41, i32 0, i32 0
  %_M_start28 = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl27, i32 0, i32 0
  %42 = load %"class.std::thread"*, %"class.std::thread"** %_M_start28, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.std::thread"* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.std::thread"* %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  call void @_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base"* %36, %"class.std::thread"* %38, i64 %sub.ptr.div)
  %43 = load %"class.std::thread"*, %"class.std::thread"** %__new_start, align 8
  %44 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %44, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl29, i32 0, i32 0
  store %"class.std::thread"* %43, %"class.std::thread"** %_M_start30, align 8
  %45 = load %"class.std::thread"*, %"class.std::thread"** %__new_finish, align 8
  %46 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %46, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl31, i32 0, i32 1
  store %"class.std::thread"* %45, %"class.std::thread"** %_M_finish32, align 8
  %47 = load %"class.std::thread"*, %"class.std::thread"** %__new_start, align 8
  %48 = load i64, i64* %__len, align 8
  %add.ptr33 = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %47, i64 %48
  %49 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl34 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %49, i32 0, i32 0
  %_M_end_of_storage35 = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl34, i32 0, i32 2
  store %"class.std::thread"* %add.ptr33, %"class.std::thread"** %_M_end_of_storage35, align 8
  ret void

eh.resume:                                        ; preds = %invoke.cont18
  %exn36 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn36, 0
  %lpad.val37 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val37

terminate.lpad:                                   ; preds = %lpad13
  %50 = landingpad { i8*, i32 }
          catch i8* null
  %51 = extractvalue { i8*, i32 } %50, 0
  call void @__clang_call_terminate(i8* %51) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt6threadE9constructIS1_JS1_EEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator.4"* %this, %"class.std::thread"* %__p, %"class.std::thread"* dereferenceable(8) %__args) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  %__p.addr = alloca %"class.std::thread"*, align 8
  %__args.addr = alloca %"class.std::thread"*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %this, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  store %"class.std::thread"* %__p, %"class.std::thread"** %__p.addr, align 8
  store %"class.std::thread"* %__args, %"class.std::thread"** %__args.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__p.addr, align 8
  %1 = bitcast %"class.std::thread"* %0 to i8*
  %2 = bitcast i8* %1 to %"class.std::thread"*
  %3 = load %"class.std::thread"*, %"class.std::thread"** %__args.addr, align 8
  %call = call dereferenceable(8) %"class.std::thread"* @_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE(%"class.std::thread"* dereferenceable(8) %3) #3
  call void @_ZNSt6threadC2EOS_(%"class.std::thread"* %2, %"class.std::thread"* dereferenceable(8) %call) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6threadC2EOS_(%"class.std::thread"* %this, %"class.std::thread"* dereferenceable(8) %__t) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__t.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  store %"class.std::thread"* %__t, %"class.std::thread"** %__t.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0
  call void @_ZNSt6thread2idC2Ev(%"class.std::thread::id"* %_M_id) #3
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__t.addr, align 8
  call void @_ZNSt6thread4swapERS_(%"class.std::thread"* %this1, %"class.std::thread"* dereferenceable(8) %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6thread4swapERS_(%"class.std::thread"* %this, %"class.std::thread"* dereferenceable(8) %__t) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::thread"*, align 8
  %__t.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %this, %"class.std::thread"** %this.addr, align 8
  store %"class.std::thread"* %__t, %"class.std::thread"** %__t.addr, align 8
  %this1 = load %"class.std::thread"*, %"class.std::thread"** %this.addr, align 8
  %_M_id = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %this1, i32 0, i32 0
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__t.addr, align 8
  %_M_id2 = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %0, i32 0, i32 0
  call void @_ZSt4swapINSt6thread2idEEvRT_S3_(%"class.std::thread::id"* dereferenceable(8) %_M_id, %"class.std::thread::id"* dereferenceable(8) %_M_id2) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt4swapINSt6thread2idEEvRT_S3_(%"class.std::thread::id"* dereferenceable(8) %__a, %"class.std::thread::id"* dereferenceable(8) %__b) #7 comdat {
entry:
  %__a.addr = alloca %"class.std::thread::id"*, align 8
  %__b.addr = alloca %"class.std::thread::id"*, align 8
  %__tmp = alloca %"class.std::thread::id", align 8
  store %"class.std::thread::id"* %__a, %"class.std::thread::id"** %__a.addr, align 8
  store %"class.std::thread::id"* %__b, %"class.std::thread::id"** %__b.addr, align 8
  %0 = load %"class.std::thread::id"*, %"class.std::thread::id"** %__a.addr, align 8
  %call = call dereferenceable(8) %"class.std::thread::id"* @_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_(%"class.std::thread::id"* dereferenceable(8) %0) #3
  %1 = bitcast %"class.std::thread::id"* %__tmp to i8*
  %2 = bitcast %"class.std::thread::id"* %call to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %3 = load %"class.std::thread::id"*, %"class.std::thread::id"** %__b.addr, align 8
  %call1 = call dereferenceable(8) %"class.std::thread::id"* @_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_(%"class.std::thread::id"* dereferenceable(8) %3) #3
  %4 = load %"class.std::thread::id"*, %"class.std::thread::id"** %__a.addr, align 8
  %5 = bitcast %"class.std::thread::id"* %4 to i8*
  %6 = bitcast %"class.std::thread::id"* %call1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 8, i1 false)
  %call2 = call dereferenceable(8) %"class.std::thread::id"* @_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_(%"class.std::thread::id"* dereferenceable(8) %__tmp) #3
  %7 = load %"class.std::thread::id"*, %"class.std::thread::id"** %__b.addr, align 8
  %8 = bitcast %"class.std::thread::id"* %7 to i8*
  %9 = bitcast %"class.std::thread::id"* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.std::thread::id"* @_ZSt4moveIRNSt6thread2idEEONSt16remove_referenceIT_E4typeEOS4_(%"class.std::thread::id"* dereferenceable(8) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"class.std::thread::id"*, align 8
  store %"class.std::thread::id"* %__t, %"class.std::thread::id"** %__t.addr, align 8
  %0 = load %"class.std::thread::id"*, %"class.std::thread::id"** %__t.addr, align 8
  ret %"class.std::thread::id"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  %__n.addr = alloca i64, align 8
  %__s.addr = alloca i8*, align 8
  %__len = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %__s, i8** %__s.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %call = call i64 @_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv(%"class.std::vector"* %this1) #3
  %call2 = call i64 @_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv(%"class.std::vector"* %this1) #3
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %__s.addr, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %1) #18
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv(%"class.std::vector"* %this1) #3
  %call4 = call i64 @_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv(%"class.std::vector"* %this1) #3
  store i64 %call4, i64* %ref.tmp, align 8
  %call5 = call dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %ref.tmp, i64* dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8
  %add = add i64 %call3, %2
  store i64 %add, i64* %__len, align 8
  %3 = load i64, i64* %__len, align 8
  %call6 = call i64 @_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv(%"class.std::vector"* %this1) #3
  %cmp7 = icmp ult i64 %3, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* %__len, align 8
  %call8 = call i64 @_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv(%"class.std::vector"* %this1) #3
  %cmp9 = icmp ugt i64 %4, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv(%"class.std::vector"* %this1) #3
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i64, i64* %__len, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %5, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #4 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  %__n.addr = alloca i64, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %0 = load i64, i64* %__n.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %1 = bitcast %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl to %"class.std::allocator.3"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"class.std::thread"* @_ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m(%"class.std::allocator.3"* dereferenceable(1) %1, i64 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %"class.std::thread"* [ %call, %cond.true ], [ null, %cond.false ]
  ret %"class.std::thread"* %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorISt6threadSaIS0_EE4sizeEv(%"class.std::vector"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load %"class.std::thread"*, %"class.std::thread"** %_M_finish, align 8
  %2 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl", %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load %"class.std::thread"*, %"class.std::thread"** %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint %"class.std::thread"* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %"class.std::thread"* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZSt34__uninitialized_move_if_noexcept_aIPSt6threadS1_SaIS0_EET0_T_S4_S3_RT1_(%"class.std::thread"* %__first, %"class.std::thread"* %__last, %"class.std::thread"* %__result, %"class.std::allocator.3"* dereferenceable(1) %__alloc) #4 comdat {
entry:
  %__first.addr = alloca %"class.std::thread"*, align 8
  %__last.addr = alloca %"class.std::thread"*, align 8
  %__result.addr = alloca %"class.std::thread"*, align 8
  %__alloc.addr = alloca %"class.std::allocator.3"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp1 = alloca %"class.std::move_iterator", align 8
  store %"class.std::thread"* %__first, %"class.std::thread"** %__first.addr, align 8
  store %"class.std::thread"* %__last, %"class.std::thread"** %__last.addr, align 8
  store %"class.std::thread"* %__result, %"class.std::thread"** %__result.addr, align 8
  store %"class.std::allocator.3"* %__alloc, %"class.std::allocator.3"** %__alloc.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__first.addr, align 8
  %call = call %"class.std::thread"* @_ZSt32__make_move_if_noexcept_iteratorIPSt6threadSt13move_iteratorIS1_EET0_T_(%"class.std::thread"* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  store %"class.std::thread"* %call, %"class.std::thread"** %coerce.dive, align 8
  %1 = load %"class.std::thread"*, %"class.std::thread"** %__last.addr, align 8
  %call2 = call %"class.std::thread"* @_ZSt32__make_move_if_noexcept_iteratorIPSt6threadSt13move_iteratorIS1_EET0_T_(%"class.std::thread"* %1)
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp1, i32 0, i32 0
  store %"class.std::thread"* %call2, %"class.std::thread"** %coerce.dive3, align 8
  %2 = load %"class.std::thread"*, %"class.std::thread"** %__result.addr, align 8
  %3 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %__alloc.addr, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp1, i32 0, i32 0
  %5 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive5, align 8
  %call6 = call %"class.std::thread"* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6threadES2_S1_ET0_T_S5_S4_RSaIT1_E(%"class.std::thread"* %4, %"class.std::thread"* %5, %"class.std::thread"* %2, %"class.std::allocator.3"* dereferenceable(1) %3)
  ret %"class.std::thread"* %call6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt6threadEE7destroyIS0_EEvRS1_PT_(%"class.std::allocator.3"* dereferenceable(1) %__a, %"class.std::thread"* %__p) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.3"*, align 8
  %__p.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::allocator.3"* %__a, %"class.std::allocator.3"** %__a.addr, align 8
  store %"class.std::thread"* %__p, %"class.std::thread"** %__p.addr, align 8
  %0 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.3"* %0 to %"class.__gnu_cxx::new_allocator.4"*
  %2 = load %"class.std::thread"*, %"class.std::thread"** %__p.addr, align 8
  call void @_ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator.4"* %1, %"class.std::thread"* %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorISt6threadSaIS0_EE8max_sizeEv(%"class.std::vector"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %this, %"class.std::vector"** %this.addr, align 8
  %this1 = load %"class.std::vector"*, %"class.std::vector"** %this.addr, align 8
  %0 = bitcast %"class.std::vector"* %this1 to %"struct.std::_Vector_base"*
  %call = call dereferenceable(1) %"class.std::allocator.3"* @_ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0) #3
  %call2 = call i64 @_ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_(%"class.std::allocator.3"* dereferenceable(1) %call) #3
  ret i64 %call2
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #13

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* dereferenceable(8) %__a, i64* dereferenceable(8) %__b) #7 comdat {
entry:
  %retval = alloca i64*, align 8
  %__a.addr = alloca i64*, align 8
  %__b.addr = alloca i64*, align 8
  store i64* %__a, i64** %__a.addr, align 8
  store i64* %__b, i64** %__b.addr, align 8
  %0 = load i64*, i64** %__a.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64*, i64** %__b.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %__b.addr, align 8
  store i64* %4, i64** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64*, i64** %__a.addr, align 8
  store i64* %5, i64** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64*, i64** %retval, align 8
  ret i64* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaISt6threadEE8max_sizeERKS1_(%"class.std::allocator.3"* dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.3"*, align 8
  store %"class.std::allocator.3"* %__a, %"class.std::allocator.3"** %__a.addr, align 8
  %0 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.3"* %0 to %"class.__gnu_cxx::new_allocator.4"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv(%"class.__gnu_cxx::new_allocator.4"* %1) #3
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) %"class.std::allocator.3"* @_ZNKSt12_Vector_baseISt6threadSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %this, %"struct.std::_Vector_base"** %this.addr, align 8
  %this1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %this.addr, align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this1, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<std::thread, std::allocator<std::thread> >::_Vector_impl"* %_M_impl to %"class.std::allocator.3"*
  ret %"class.std::allocator.3"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv(%"class.__gnu_cxx::new_allocator.4"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %this, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZNSt16allocator_traitsISaISt6threadEE8allocateERS1_m(%"class.std::allocator.3"* dereferenceable(1) %__a, i64 %__n) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator.3"*, align 8
  %__n.addr = alloca i64, align 8
  store %"class.std::allocator.3"* %__a, %"class.std::allocator.3"** %__a.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  %0 = load %"class.std::allocator.3"*, %"class.std::allocator.3"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator.3"* %0 to %"class.__gnu_cxx::new_allocator.4"*
  %2 = load i64, i64* %__n.addr, align 8
  %call = call %"class.std::thread"* @_ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.4"* %1, i64 %2, i8* null)
  ret %"class.std::thread"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZN9__gnu_cxx13new_allocatorISt6threadE8allocateEmPKv(%"class.__gnu_cxx::new_allocator.4"* %this, i64 %__n, i8*) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  %__n.addr = alloca i64, align 8
  %.addr = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %this, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  store i64 %__n, i64* %__n.addr, align 8
  store i8* %0, i8** %.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  %1 = load i64, i64* %__n.addr, align 8
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorISt6threadE8max_sizeEv(%"class.__gnu_cxx::new_allocator.4"* %this1) #3
  %cmp = icmp ugt i64 %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %__n.addr, align 8
  %mul = mul i64 %2, 8
  %call2 = call i8* @_Znwm(i64 %mul)
  %3 = bitcast i8* %call2 to %"class.std::thread"*
  ret %"class.std::thread"* %3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPSt6threadES2_S1_ET0_T_S5_S4_RSaIT1_E(%"class.std::thread"* %__first.coerce, %"class.std::thread"* %__last.coerce, %"class.std::thread"* %__result, %"class.std::allocator.3"* dereferenceable(1)) #4 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca %"class.std::thread"*, align 8
  %.addr = alloca %"class.std::allocator.3"*, align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store %"class.std::thread"* %__first.coerce, %"class.std::thread"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store %"class.std::thread"* %__last.coerce, %"class.std::thread"** %coerce.dive1, align 8
  store %"class.std::thread"* %__result, %"class.std::thread"** %__result.addr, align 8
  store %"class.std::allocator.3"* %0, %"class.std::allocator.3"** %.addr, align 8
  %1 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %2 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %3 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = load %"class.std::thread"*, %"class.std::thread"** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %6 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %7 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive4, align 8
  %call = call %"class.std::thread"* @_ZSt18uninitialized_copyISt13move_iteratorIPSt6threadES2_ET0_T_S5_S4_(%"class.std::thread"* %6, %"class.std::thread"* %7, %"class.std::thread"* %5)
  ret %"class.std::thread"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZSt32__make_move_if_noexcept_iteratorIPSt6threadSt13move_iteratorIS1_EET0_T_(%"class.std::thread"* %__i) #4 comdat {
entry:
  %retval = alloca %"class.std::move_iterator", align 8
  %__i.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %__i, %"class.std::thread"** %__i.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__i.addr, align 8
  call void @_ZNSt13move_iteratorIPSt6threadEC2ES1_(%"class.std::move_iterator"* %retval, %"class.std::thread"* %0)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %retval, i32 0, i32 0
  %1 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive, align 8
  ret %"class.std::thread"* %1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZSt18uninitialized_copyISt13move_iteratorIPSt6threadES2_ET0_T_S5_S4_(%"class.std::thread"* %__first.coerce, %"class.std::thread"* %__last.coerce, %"class.std::thread"* %__result) #4 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca %"class.std::thread"*, align 8
  %__assignable = alloca i8, align 1
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store %"class.std::thread"* %__first.coerce, %"class.std::thread"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store %"class.std::thread"* %__last.coerce, %"class.std::thread"** %coerce.dive1, align 8
  store %"class.std::thread"* %__result, %"class.std::thread"** %__result.addr, align 8
  store i8 1, i8* %__assignable, align 1
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false)
  %2 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = load %"class.std::thread"*, %"class.std::thread"** %__result.addr, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load %"class.std::thread"*, %"class.std::thread"** %coerce.dive4, align 8
  %call = call %"class.std::thread"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6threadES4_EET0_T_S7_S6_(%"class.std::thread"* %5, %"class.std::thread"* %6, %"class.std::thread"* %4)
  ret %"class.std::thread"* %call
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPSt6threadES4_EET0_T_S7_S6_(%"class.std::thread"* %__first.coerce, %"class.std::thread"* %__last.coerce, %"class.std::thread"* %__result) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %__result.addr = alloca %"class.std::thread"*, align 8
  %__cur = alloca %"class.std::thread"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store %"class.std::thread"* %__first.coerce, %"class.std::thread"** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store %"class.std::thread"* %__last.coerce, %"class.std::thread"** %coerce.dive1, align 8
  store %"class.std::thread"* %__result, %"class.std::thread"** %__result.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__result.addr, align 8
  store %"class.std::thread"* %0, %"class.std::thread"** %__cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont6, %entry
  %call = invoke zeroext i1 @_ZStneIPSt6threadEbRKSt13move_iteratorIT_ES6_(%"class.std::move_iterator"* dereferenceable(8) %__first, %"class.std::move_iterator"* dereferenceable(8) %__last)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont
  %1 = load %"class.std::thread"*, %"class.std::thread"** %__cur, align 8
  %call2 = call %"class.std::thread"* @_ZSt11__addressofISt6threadEPT_RS1_(%"class.std::thread"* dereferenceable(8) %1) #3
  %call4 = invoke dereferenceable(8) %"class.std::thread"* @_ZNKSt13move_iteratorIPSt6threadEdeEv(%"class.std::move_iterator"* %__first)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %for.body
  invoke void @_ZSt10_ConstructISt6threadJS0_EEvPT_DpOT0_(%"class.std::thread"* %call2, %"class.std::thread"* dereferenceable(8) %call4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont3
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont5
  %call7 = invoke dereferenceable(8) %"class.std::move_iterator"* @_ZNSt13move_iteratorIPSt6threadEppEv(%"class.std::move_iterator"* %__first)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %for.inc
  %2 = load %"class.std::thread"*, %"class.std::thread"** %__cur, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %2, i32 1
  store %"class.std::thread"* %incdec.ptr, %"class.std::thread"** %__cur, align 8
  br label %for.cond

lpad:                                             ; preds = %for.inc, %invoke.cont3, %for.body, %for.cond
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %6 = call i8* @__cxa_begin_catch(i8* %exn) #3
  %7 = load %"class.std::thread"*, %"class.std::thread"** %__result.addr, align 8
  %8 = load %"class.std::thread"*, %"class.std::thread"** %__cur, align 8
  invoke void @_ZSt8_DestroyIPSt6threadEvT_S2_(%"class.std::thread"* %7, %"class.std::thread"* %8)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad8

for.end:                                          ; preds = %invoke.cont
  %9 = load %"class.std::thread"*, %"class.std::thread"** %__cur, align 8
  ret %"class.std::thread"* %9

lpad8:                                            ; preds = %invoke.cont9, %catch
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad

invoke.cont10:                                    ; preds = %lpad8
  br label %eh.resume

try.cont:                                         ; No predecessors!
  call void @llvm.trap()
  unreachable

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn11, 0
  %lpad.val12 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val12

terminate.lpad:                                   ; preds = %lpad8
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZStneIPSt6threadEbRKSt13move_iteratorIT_ES6_(%"class.std::move_iterator"* dereferenceable(8) %__x, %"class.std::move_iterator"* dereferenceable(8) %__y) #4 comdat {
entry:
  %__x.addr = alloca %"class.std::move_iterator"*, align 8
  %__y.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %__x, %"class.std::move_iterator"** %__x.addr, align 8
  store %"class.std::move_iterator"* %__y, %"class.std::move_iterator"** %__y.addr, align 8
  %0 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %__x.addr, align 8
  %1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %__y.addr, align 8
  %call = call zeroext i1 @_ZSteqIPSt6threadEbRKSt13move_iteratorIT_ES6_(%"class.std::move_iterator"* dereferenceable(8) %0, %"class.std::move_iterator"* dereferenceable(8) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructISt6threadJS0_EEvPT_DpOT0_(%"class.std::thread"* %__p, %"class.std::thread"* dereferenceable(8) %__args) #7 comdat {
entry:
  %__p.addr = alloca %"class.std::thread"*, align 8
  %__args.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::thread"* %__p, %"class.std::thread"** %__p.addr, align 8
  store %"class.std::thread"* %__args, %"class.std::thread"** %__args.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__p.addr, align 8
  %1 = bitcast %"class.std::thread"* %0 to i8*
  %2 = bitcast i8* %1 to %"class.std::thread"*
  %3 = load %"class.std::thread"*, %"class.std::thread"** %__args.addr, align 8
  %call = call dereferenceable(8) %"class.std::thread"* @_ZSt7forwardISt6threadEOT_RNSt16remove_referenceIS1_E4typeE(%"class.std::thread"* dereferenceable(8) %3) #3
  call void @_ZNSt6threadC2EOS_(%"class.std::thread"* %2, %"class.std::thread"* dereferenceable(8) %call) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.std::thread"* @_ZNKSt13move_iteratorIPSt6threadEdeEv(%"class.std::move_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.std::thread"*, %"class.std::thread"** %_M_current, align 8
  ret %"class.std::thread"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.std::move_iterator"* @_ZNSt13move_iteratorIPSt6threadEppEv(%"class.std::move_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.std::thread"*, %"class.std::thread"** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %0, i32 1
  store %"class.std::thread"* %incdec.ptr, %"class.std::thread"** %_M_current, align 8
  ret %"class.std::move_iterator"* %this1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZSteqIPSt6threadEbRKSt13move_iteratorIT_ES6_(%"class.std::move_iterator"* dereferenceable(8) %__x, %"class.std::move_iterator"* dereferenceable(8) %__y) #4 comdat {
entry:
  %__x.addr = alloca %"class.std::move_iterator"*, align 8
  %__y.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %__x, %"class.std::move_iterator"** %__x.addr, align 8
  store %"class.std::move_iterator"* %__y, %"class.std::move_iterator"** %__y.addr, align 8
  %0 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %__x.addr, align 8
  %call = call %"class.std::thread"* @_ZNKSt13move_iteratorIPSt6threadE4baseEv(%"class.std::move_iterator"* %0)
  %1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %__y.addr, align 8
  %call1 = call %"class.std::thread"* @_ZNKSt13move_iteratorIPSt6threadE4baseEv(%"class.std::move_iterator"* %1)
  %cmp = icmp eq %"class.std::thread"* %call, %call1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local %"class.std::thread"* @_ZNKSt13move_iteratorIPSt6threadE4baseEv(%"class.std::move_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.std::thread"*, %"class.std::thread"** %_M_current, align 8
  ret %"class.std::thread"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPSt6threadEC2ES1_(%"class.std::move_iterator"* %this, %"class.std::thread"* %__i) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::move_iterator"*, align 8
  %__i.addr = alloca %"class.std::thread"*, align 8
  store %"class.std::move_iterator"* %this, %"class.std::move_iterator"** %this.addr, align 8
  store %"class.std::thread"* %__i, %"class.std::thread"** %__i.addr, align 8
  %this1 = load %"class.std::move_iterator"*, %"class.std::move_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__i.addr, align 8
  store %"class.std::thread"* %0, %"class.std::thread"** %_M_current, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt6threadE7destroyIS1_EEvPT_(%"class.__gnu_cxx::new_allocator.4"* %this, %"class.std::thread"* %__p) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator.4"*, align 8
  %__p.addr = alloca %"class.std::thread"*, align 8
  store %"class.__gnu_cxx::new_allocator.4"* %this, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  store %"class.std::thread"* %__p, %"class.std::thread"** %__p.addr, align 8
  %this1 = load %"class.__gnu_cxx::new_allocator.4"*, %"class.__gnu_cxx::new_allocator.4"** %this.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %__p.addr, align 8
  call void @_ZNSt6threadD2Ev(%"class.std::thread"* %0) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* %this, %"class.std::thread"** dereferenceable(8) %__i) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__i.addr = alloca %"class.std::thread"**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  store %"class.std::thread"** %__i, %"class.std::thread"*** %__i.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.std::thread"**, %"class.std::thread"*** %__i.addr, align 8
  %1 = load %"class.std::thread"*, %"class.std::thread"** %0, align 8
  store %"class.std::thread"* %1, %"class.std::thread"** %_M_current, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxneIPSt6threadSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__lhs, %"class.__gnu_cxx::__normal_iterator"* dereferenceable(8) %__rhs) #7 comdat {
entry:
  %__lhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %__rhs.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__lhs, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %__rhs, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %0 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__lhs.addr, align 8
  %call = call dereferenceable(8) %"class.std::thread"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %0) #3
  %1 = load %"class.std::thread"*, %"class.std::thread"** %call, align 8
  %2 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %__rhs.addr, align 8
  %call1 = call dereferenceable(8) %"class.std::thread"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %2) #3
  %3 = load %"class.std::thread"*, %"class.std::thread"** %call1, align 8
  %cmp = icmp ne %"class.std::thread"* %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline optnone uwtable
define internal void @"_ZZ4mainENK3$_1clERSt6thread"(%class.anon.6* %this, %"class.std::thread"* dereferenceable(8) %t) #4 align 2 {
entry:
  %this.addr = alloca %class.anon.6*, align 8
  %t.addr = alloca %"class.std::thread"*, align 8
  store %class.anon.6* %this, %class.anon.6** %this.addr, align 8
  store %"class.std::thread"* %t, %"class.std::thread"** %t.addr, align 8
  %this1 = load %class.anon.6*, %class.anon.6** %this.addr, align 8
  %0 = load %"class.std::thread"*, %"class.std::thread"** %t.addr, align 8
  call void @_ZNSt6thread4joinEv(%"class.std::thread"* %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.std::thread"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.std::thread"*, %"class.std::thread"** %_M_current, align 8
  ret %"class.std::thread"* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  %0 = load %"class.std::thread"*, %"class.std::thread"** %_M_current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::thread", %"class.std::thread"* %0, i32 1
  store %"class.std::thread"* %incdec.ptr, %"class.std::thread"** %_M_current, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %this1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal dereferenceable(1) %class.anon.6* @"_ZSt4moveIRZ4mainE3$_1EONSt16remove_referenceIT_E4typeEOS3_"(%class.anon.6* dereferenceable(1) %__t) #7 {
entry:
  %__t.addr = alloca %class.anon.6*, align 8
  store %class.anon.6* %__t, %class.anon.6** %__t.addr, align 8
  %0 = load %class.anon.6*, %class.anon.6** %__t.addr, align 8
  ret %class.anon.6* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(8) %"class.std::thread"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt6threadSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %this) #7 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %this, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %this1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %this.addr, align 8
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %this1, i32 0, i32 0
  ret %"class.std::thread"** %_M_current
}

declare dso_local void @_ZNSt6thread4joinEv(%"class.std::thread"*) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone speculatable }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline noreturn nounwind }
attributes #11 = { argmemonly nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin }
attributes #18 = { noreturn }
attributes #19 = { nounwind readonly }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
