; ModuleID = 'main.bc'
source_filename = "main.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%"struct.std::piecewise_construct_t" = type { i8 }
%struct.Params = type <{ i32, i32, i32, i32, i8*, i32, i32, float, [4 x i8] }>
%struct.flowvector = type { i32, i32, i32, i32 }
%struct.OpenCLSetup = type { %struct._cl_context*, %struct._cl_command_queue*, %struct._cl_program*, %struct._cl_kernel*, %struct._cl_kernel*, %struct._cl_device_id* }
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
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i32 }
%struct._cl_mem = type opaque
%struct._cl_event = type opaque
%struct._cl_platform_id = type opaque
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { %"class.std::__cxx11::basic_string"* }
%"class.std::tuple.3" = type { i8 }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", double }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [40 x i8] }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::pair.4" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Index_tuple" = type { i8 }
%"struct.std::_Index_tuple.5" = type { i8 }

$_ZN6ParamsC2EiPPc = comdat any

$_ZN11OpenCLSetupC2Eii = comdat any

$_ZN5TimerC2Ev = comdat any

$_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi = comdat any

$_ZN11OpenCLSetup14max_work_itemsEP10_cl_kernel = comdat any

$_ZNSt13__atomic_baseIiEaSEi = comdat any

$_ZNKSt13__atomic_baseIiEcviEv = comdat any

$_ZNSt13__atomic_baseIiEpLEi = comdat any

$_Z6verifyP10flowvectoriPiiifii = comdat any

$_ZN11OpenCLSetup7releaseEv = comdat any

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

$_Z36estimate_ego_motion_first_order_flowP10flowvectoriPiS1_S1_S1_iif = comdat any

$_Z14compare_outputiiii = comdat any

$_Z24gen_firstOrderFlow_modeliP10flowvectorPfPii = comdat any

$_Z26gen_firstOrderFlow_vectorsPfiP10flowvectorS1_ = comdat any

$_Z19choose_better_modelP10flowvectorS0_iPfPiS2_S2_ifi = comdat any

$_Z15gen_model_paramiiiiiiiiPf = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdSt4lessIS5_ESaISt4pairIKS5_dEEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EED2Ev = comdat any

$_ZStanSt12memory_orderSt23__memory_order_modifier = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error al abrir el fichero\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Error opening file!\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%d,%d,%d,%d\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Error: inconsistent file data!\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Allocation\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"OpenCL error: %d\0A at %s, %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"main.cpp\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Allocation error at %s, %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Initialization\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Copy To Device\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Kernel-FPGA\00", align 1
@__const.main.ls = private unnamed_addr constant [1 x i64] [i64 200], align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"Copy Back and Merge\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Kernel-CPU\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Deallocation\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"input/vectors.csv\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Intel(R) FPGA\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"ERROR: Unable to find Intel(R) FPGA OpenCL platform.\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"./support/ocl.h\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Platform: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Using %d device(s)\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"baseline_2\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"\0AUsing AOCX:%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"-I.\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"RANSAC_model\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"RANSAC_threshold\00", align 1
@_ZStL19piecewise_construct = internal constant %"struct.std::piecewise_construct_t" undef, align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"\0A%s Time (ms): %0.3f\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"\0A%d,%d,%d,%d\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"\0ATest failed1\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"\0ATest failed2\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"\0ATest passed\00", align 1
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
define dso_local i32 @_Z15read_input_sizeRK6Params(%struct.Params* dereferenceable(40) %p) #4 {
entry:
  %p.addr = alloca %struct.Params*, align 8
  %File = alloca %struct._IO_FILE*, align 8
  %n = alloca i32, align 4
  store %struct.Params* %p, %struct.Params** %p.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %File, align 8
  %0 = load %struct.Params*, %struct.Params** %p.addr, align 8
  %file_name = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 4
  %1 = load i8*, i8** %file_name, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %File, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %cmp = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 -1) #16
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %call3 = call i32 @fclose(%struct._IO_FILE* %4)
  %5 = load i32, i32* %n, align 4
  ret i32 %5
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

declare dso_local i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z10read_inputP10flowvectorPiRK6Params(%struct.flowvector* %v, i32* %r, %struct.Params* dereferenceable(40) %p) #4 {
entry:
  %v.addr = alloca %struct.flowvector*, align 8
  %r.addr = alloca i32*, align 8
  %p.addr = alloca %struct.Params*, align 8
  %ic = alloca i32, align 4
  %File = alloca %struct._IO_FILE*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.flowvector* %v, %struct.flowvector** %v.addr, align 8
  store i32* %r, i32** %r.addr, align 8
  store %struct.Params* %p, %struct.Params** %p.addr, align 8
  store i32 0, i32* %ic, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %File, align 8
  %0 = load %struct.Params*, %struct.Params** %p.addr, align 8
  %file_name = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 4
  %1 = load i8*, i8** %file_name, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %File, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %cmp = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 -1) #16
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %n)
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %5 = load %struct.flowvector*, %struct.flowvector** %v.addr, align 8
  %6 = load i32, i32* %ic, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.flowvector, %struct.flowvector* %5, i64 %idxprom
  %x = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx, i32 0, i32 0
  %7 = load %struct.flowvector*, %struct.flowvector** %v.addr, align 8
  %8 = load i32, i32* %ic, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %7, i64 %idxprom3
  %y = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx4, i32 0, i32 1
  %9 = load %struct.flowvector*, %struct.flowvector** %v.addr, align 8
  %10 = load i32, i32* %ic, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %9, i64 %idxprom5
  %vx = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx6, i32 0, i32 2
  %11 = load %struct.flowvector*, %struct.flowvector** %v.addr, align 8
  %12 = load i32, i32* %ic, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %11, i64 %idxprom7
  %vy = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx8, i32 0, i32 3
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %x, i32* %y, i32* %vx, i32* %vy)
  %cmp10 = icmp eq i32 %call9, 4
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %ic, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %ic, align 4
  %14 = load i32, i32* %ic, align 4
  %15 = load i32, i32* %n, align 4
  %cmp11 = icmp sgt i32 %14, %15
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %while.body
  %call13 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 -1) #16
  unreachable

if.end14:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %ic, align 4
  %17 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %16, %17
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %while.end
  %call17 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 -1) #16
  unreachable

if.end18:                                         ; preds = %while.end
  %call19 = call i64 @time(i64* null) #3
  %conv = trunc i64 %call19 to i32
  call void @srand(i32 %conv) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.Params*, %struct.Params** %p.addr, align 8
  %max_iter = getelementptr inbounds %struct.Params, %struct.Params* %19, i32 0, i32 5
  %20 = load i32, i32* %max_iter, align 8
  %mul = mul nsw i32 2, %20
  %cmp20 = icmp slt i32 %18, %mul
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call21 = call i32 @rand() #3
  %21 = load i32, i32* %n, align 4
  %rem = srem i32 %call21, %21
  %22 = load i32*, i32** %r.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %22, i64 %idxprom22
  store i32 %rem, i32* %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %24, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca %struct.Params, align 8
  %ocl = alloca %struct.OpenCLSetup, align 8
  %timer = alloca %struct.Timer, align 8
  %clStatus = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator.0", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %n_flow_vectors = alloca i32, align 4
  %best_model = alloca i32, align 4
  %best_outliers = alloca i32, align 4
  %h_flow_vector_array = alloca %struct.flowvector*, align 8
  %h_random_numbers = alloca i32*, align 8
  %h_model_param = alloca i32*, align 8
  %h_model_candidate = alloca i32*, align 8
  %h_outliers_candidate = alloca i32*, align 8
  %h_g_out_id = alloca %"struct.std::atomic"*, align 8
  %d_flow_vector_array = alloca %struct._cl_mem*, align 8
  %d_random_numbers = alloca %struct._cl_mem*, align 8
  %d_model_param = alloca %struct._cl_mem*, align 8
  %d_model_candidate = alloca %struct._cl_mem*, align 8
  %d_outliers_candidate = alloca %struct._cl_mem*, align 8
  %d_g_out_id = alloca %struct._cl_mem*, align 8
  %agg.tmp86 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp87 = alloca %"class.std::allocator.0", align 1
  %agg.tmp94 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp95 = alloca %"class.std::allocator.0", align 1
  %agg.tmp102 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp103 = alloca %"class.std::allocator.0", align 1
  %max_wi = alloca i32, align 4
  %agg.tmp117 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp118 = alloca %"class.std::allocator.0", align 1
  %agg.tmp125 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp126 = alloca %"class.std::allocator.0", align 1
  %agg.tmp133 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp134 = alloca %"class.std::allocator.0", align 1
  %agg.tmp176 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp177 = alloca %"class.std::allocator.0", align 1
  %agg.tmp184 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp185 = alloca %"class.std::allocator.0", align 1
  %rep = alloca i32, align 4
  %agg.tmp233 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp234 = alloca %"class.std::allocator.0", align 1
  %ls = alloca [1 x i64], align 8
  %gs = alloca [1 x i64], align 8
  %agg.tmp306 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp307 = alloca %"class.std::allocator.0", align 1
  %agg.tmp318 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp319 = alloca %"class.std::allocator.0", align 1
  %d_candidates = alloca i32, align 4
  %agg.tmp360 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp361 = alloca %"class.std::allocator.0", align 1
  %agg.tmp372 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp373 = alloca %"class.std::allocator.0", align 1
  %i = alloca i32, align 4
  %agg.tmp398 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp399 = alloca %"class.std::allocator.0", align 1
  %agg.tmp410 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp411 = alloca %"class.std::allocator.0", align 1
  %agg.tmp419 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp420 = alloca %"class.std::allocator.0", align 1
  %agg.tmp428 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp429 = alloca %"class.std::allocator.0", align 1
  %agg.tmp443 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp444 = alloca %"class.std::allocator.0", align 1
  %agg.tmp469 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp470 = alloca %"class.std::allocator.0", align 1
  %agg.tmp477 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp478 = alloca %"class.std::allocator.0", align 1
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
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  %call = invoke i32 @_Z15read_input_sizeRK6Params(%struct.Params* dereferenceable(40) %p)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont2
  store i32 %call, i32* %n_flow_vectors, align 4
  store i32 -1, i32* %best_model, align 4
  %4 = load i32, i32* %n_flow_vectors, align 4
  store i32 %4, i32* %best_outliers, align 4
  %5 = load i32, i32* %n_flow_vectors, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 16
  %call5 = call noalias i8* @malloc(i64 %mul) #3
  %6 = bitcast i8* %call5 to %struct.flowvector*
  store %struct.flowvector* %6, %struct.flowvector** %h_flow_vector_array, align 8
  %max_iter = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %7 = load i32, i32* %max_iter, align 8
  %mul6 = mul nsw i32 2, %7
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call noalias i8* @malloc(i64 %mul8) #3
  %8 = bitcast i8* %call9 to i32*
  store i32* %8, i32** %h_random_numbers, align 8
  %max_iter10 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %9 = load i32, i32* %max_iter10, align 8
  %mul11 = mul nsw i32 4, %9
  %conv12 = sext i32 %mul11 to i64
  %mul13 = mul i64 %conv12, 4
  %call14 = call noalias i8* @malloc(i64 %mul13) #3
  %10 = bitcast i8* %call14 to i32*
  store i32* %10, i32** %h_model_param, align 8
  %max_iter15 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %11 = load i32, i32* %max_iter15, align 8
  %conv16 = sext i32 %11 to i64
  %mul17 = mul i64 %conv16, 4
  %call18 = call noalias i8* @malloc(i64 %mul17) #3
  %12 = bitcast i8* %call18 to i32*
  store i32* %12, i32** %h_model_candidate, align 8
  %max_iter19 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %13 = load i32, i32* %max_iter19, align 8
  %conv20 = sext i32 %13 to i64
  %mul21 = mul i64 %conv20, 4
  %call22 = call noalias i8* @malloc(i64 %mul21) #3
  %14 = bitcast i8* %call22 to i32*
  store i32* %14, i32** %h_outliers_candidate, align 8
  %call23 = call noalias i8* @malloc(i64 4) #3
  %15 = bitcast i8* %call23 to %"struct.std::atomic"*
  store %"struct.std::atomic"* %15, %"struct.std::atomic"** %h_g_out_id, align 8
  %clContext = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 0
  %16 = load %struct._cl_context*, %struct._cl_context** %clContext, align 8
  %17 = load i32, i32* %n_flow_vectors, align 4
  %conv24 = sext i32 %17 to i64
  %mul25 = mul i64 %conv24, 16
  %call27 = invoke %struct._cl_mem* @clCreateBuffer(%struct._cl_context* %16, i64 1, i64 %mul25, i8* null, i32* %clStatus)
          to label %invoke.cont26 unwind label %lpad3

invoke.cont26:                                    ; preds = %invoke.cont4
  store %struct._cl_mem* %call27, %struct._cl_mem** %d_flow_vector_array, align 8
  %clContext28 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 0
  %18 = load %struct._cl_context*, %struct._cl_context** %clContext28, align 8
  %max_iter29 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %19 = load i32, i32* %max_iter29, align 8
  %mul30 = mul nsw i32 2, %19
  %conv31 = sext i32 %mul30 to i64
  %mul32 = mul i64 %conv31, 4
  %call34 = invoke %struct._cl_mem* @clCreateBuffer(%struct._cl_context* %18, i64 1, i64 %mul32, i8* null, i32* %clStatus)
          to label %invoke.cont33 unwind label %lpad3

invoke.cont33:                                    ; preds = %invoke.cont26
  store %struct._cl_mem* %call34, %struct._cl_mem** %d_random_numbers, align 8
  %clContext35 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 0
  %20 = load %struct._cl_context*, %struct._cl_context** %clContext35, align 8
  %max_iter36 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %21 = load i32, i32* %max_iter36, align 8
  %mul37 = mul nsw i32 4, %21
  %conv38 = sext i32 %mul37 to i64
  %mul39 = mul i64 %conv38, 4
  %call41 = invoke %struct._cl_mem* @clCreateBuffer(%struct._cl_context* %20, i64 1, i64 %mul39, i8* null, i32* %clStatus)
          to label %invoke.cont40 unwind label %lpad3

invoke.cont40:                                    ; preds = %invoke.cont33
  store %struct._cl_mem* %call41, %struct._cl_mem** %d_model_param, align 8
  %clContext42 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 0
  %22 = load %struct._cl_context*, %struct._cl_context** %clContext42, align 8
  %max_iter43 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %23 = load i32, i32* %max_iter43, align 8
  %conv44 = sext i32 %23 to i64
  %mul45 = mul i64 %conv44, 4
  %call47 = invoke %struct._cl_mem* @clCreateBuffer(%struct._cl_context* %22, i64 1, i64 %mul45, i8* null, i32* %clStatus)
          to label %invoke.cont46 unwind label %lpad3

invoke.cont46:                                    ; preds = %invoke.cont40
  store %struct._cl_mem* %call47, %struct._cl_mem** %d_model_candidate, align 8
  %clContext48 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 0
  %24 = load %struct._cl_context*, %struct._cl_context** %clContext48, align 8
  %max_iter49 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %25 = load i32, i32* %max_iter49, align 8
  %conv50 = sext i32 %25 to i64
  %mul51 = mul i64 %conv50, 4
  %call53 = invoke %struct._cl_mem* @clCreateBuffer(%struct._cl_context* %24, i64 1, i64 %mul51, i8* null, i32* %clStatus)
          to label %invoke.cont52 unwind label %lpad3

invoke.cont52:                                    ; preds = %invoke.cont46
  store %struct._cl_mem* %call53, %struct._cl_mem** %d_outliers_candidate, align 8
  %clContext54 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 0
  %26 = load %struct._cl_context*, %struct._cl_context** %clContext54, align 8
  %call56 = invoke %struct._cl_mem* @clCreateBuffer(%struct._cl_context* %26, i64 1, i64 4, i8* null, i32* %clStatus)
          to label %invoke.cont55 unwind label %lpad3

invoke.cont55:                                    ; preds = %invoke.cont52
  store %struct._cl_mem* %call56, %struct._cl_mem** %d_g_out_id, align 8
  %27 = load i32, i32* %clStatus, align 4
  %cmp = icmp ne i32 %27, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont55
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i32, i32* %clStatus, align 4
  %call58 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 119)
          to label %invoke.cont57 unwind label %lpad3

invoke.cont57:                                    ; preds = %if.then
  call void @exit(i32 -1) #16
  unreachable

lpad:                                             ; preds = %entry
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  store i8* %31, i8** %exn.slot, align 8
  %32 = extractvalue { i8*, i32 } %30, 1
  store i32 %32, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad1:                                            ; preds = %invoke.cont
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  store i8* %34, i8** %exn.slot, align 8
  %35 = extractvalue { i8*, i32 } %33, 1
  store i32 %35, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad1, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp) #3
  br label %ehcleanup485

lpad3:                                            ; preds = %if.end467, %if.then464, %invoke.cont459, %invoke.cont457, %invoke.cont455, %invoke.cont453, %invoke.cont451, %invoke.cont448, %invoke.cont434, %if.end351, %if.then348, %invoke.cont336, %invoke.cont328, %if.end326, %if.then299, %invoke.cont293, %invoke.cont287, %invoke.cont284, %invoke.cont281, %invoke.cont278, %invoke.cont275, %invoke.cont272, %invoke.cont269, %invoke.cont266, %if.end265, %if.then262, %invoke.cont256, %invoke.cont249, %invoke.cont246, %invoke.cont243, %if.end241, %if.end226, %if.then223, %invoke.cont217, %invoke.cont211, %invoke.cont205, %for.body, %if.then172, %invoke.cont166, %invoke.cont163, %invoke.cont157, %invoke.cont151, %invoke.cont144, %invoke.cont138, %invoke.cont113, %invoke.cont110, %invoke.cont107, %if.end83, %if.then80, %if.then75, %if.then70, %if.then65, %if.then60, %if.then, %invoke.cont52, %invoke.cont46, %invoke.cont40, %invoke.cont33, %invoke.cont26, %invoke.cont4, %invoke.cont2
  %36 = landingpad { i8*, i32 }
          cleanup
  %37 = extractvalue { i8*, i32 } %36, 0
  store i8* %37, i8** %exn.slot, align 8
  %38 = extractvalue { i8*, i32 } %36, 1
  store i32 %38, i32* %ehselector.slot, align 4
  br label %ehcleanup485

if.end:                                           ; preds = %invoke.cont55
  %39 = load %struct.flowvector*, %struct.flowvector** %h_flow_vector_array, align 8
  %cmp59 = icmp eq %struct.flowvector* %39, null
  br i1 %cmp59, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call62 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 121)
          to label %invoke.cont61 unwind label %lpad3

invoke.cont61:                                    ; preds = %if.then60
  call void @exit(i32 -1) #16
  unreachable

if.end63:                                         ; preds = %if.end
  %41 = load i32*, i32** %h_random_numbers, align 8
  %cmp64 = icmp eq i32* %41, null
  br i1 %cmp64, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end63
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call67 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 121)
          to label %invoke.cont66 unwind label %lpad3

invoke.cont66:                                    ; preds = %if.then65
  call void @exit(i32 -1) #16
  unreachable

if.end68:                                         ; preds = %if.end63
  %43 = load i32*, i32** %h_model_candidate, align 8
  %cmp69 = icmp eq i32* %43, null
  br i1 %cmp69, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end68
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call72 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 121)
          to label %invoke.cont71 unwind label %lpad3

invoke.cont71:                                    ; preds = %if.then70
  call void @exit(i32 -1) #16
  unreachable

if.end73:                                         ; preds = %if.end68
  %45 = load i32*, i32** %h_outliers_candidate, align 8
  %cmp74 = icmp eq i32* %45, null
  br i1 %cmp74, label %if.then75, label %if.end78

if.then75:                                        ; preds = %if.end73
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call77 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 121)
          to label %invoke.cont76 unwind label %lpad3

invoke.cont76:                                    ; preds = %if.then75
  call void @exit(i32 -1) #16
  unreachable

if.end78:                                         ; preds = %if.end73
  %47 = load %"struct.std::atomic"*, %"struct.std::atomic"** %h_g_out_id, align 8
  %cmp79 = icmp eq %"struct.std::atomic"* %47, null
  br i1 %cmp79, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end78
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call82 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 121)
          to label %invoke.cont81 unwind label %lpad3

invoke.cont81:                                    ; preds = %if.then80
  call void @exit(i32 -1) #16
  unreachable

if.end83:                                         ; preds = %if.end78
  %clCommandQueue = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %49 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue, align 8
  %call85 = invoke i32 @clFinish(%struct._cl_command_queue* %49)
          to label %invoke.cont84 unwind label %lpad3

invoke.cont84:                                    ; preds = %if.end83
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp87) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp87)
          to label %invoke.cont89 unwind label %lpad88

invoke.cont89:                                    ; preds = %invoke.cont84
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp86)
          to label %invoke.cont91 unwind label %lpad90

invoke.cont91:                                    ; preds = %invoke.cont89
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp86) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp87) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp95) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp95)
          to label %invoke.cont97 unwind label %lpad96

invoke.cont97:                                    ; preds = %invoke.cont91
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp94, i32 1)
          to label %invoke.cont99 unwind label %lpad98

invoke.cont99:                                    ; preds = %invoke.cont97
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp94) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp95) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp103) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp103)
          to label %invoke.cont105 unwind label %lpad104

invoke.cont105:                                   ; preds = %invoke.cont99
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp102)
          to label %invoke.cont107 unwind label %lpad106

invoke.cont107:                                   ; preds = %invoke.cont105
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp102) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp103) #3
  %clKernel = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 3
  %50 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel, align 8
  %call111 = invoke i64 @_ZN11OpenCLSetup14max_work_itemsEP10_cl_kernel(%struct.OpenCLSetup* %ocl, %struct._cl_kernel* %50)
          to label %invoke.cont110 unwind label %lpad3

invoke.cont110:                                   ; preds = %invoke.cont107
  %conv112 = trunc i64 %call111 to i32
  store i32 %conv112, i32* %max_wi, align 4
  %51 = load %struct.flowvector*, %struct.flowvector** %h_flow_vector_array, align 8
  %52 = load i32*, i32** %h_random_numbers, align 8
  invoke void @_Z10read_inputP10flowvectorPiRK6Params(%struct.flowvector* %51, i32* %52, %struct.Params* dereferenceable(40) %p)
          to label %invoke.cont113 unwind label %lpad3

invoke.cont113:                                   ; preds = %invoke.cont110
  %clCommandQueue114 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %53 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue114, align 8
  %call116 = invoke i32 @clFinish(%struct._cl_command_queue* %53)
          to label %invoke.cont115 unwind label %lpad3

invoke.cont115:                                   ; preds = %invoke.cont113
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp118) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp118)
          to label %invoke.cont120 unwind label %lpad119

invoke.cont120:                                   ; preds = %invoke.cont115
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp117)
          to label %invoke.cont122 unwind label %lpad121

invoke.cont122:                                   ; preds = %invoke.cont120
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp117) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp118) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp126) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp126)
          to label %invoke.cont128 unwind label %lpad127

invoke.cont128:                                   ; preds = %invoke.cont122
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp125, i32 1)
          to label %invoke.cont130 unwind label %lpad129

invoke.cont130:                                   ; preds = %invoke.cont128
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp125) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp126) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp134) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp134)
          to label %invoke.cont136 unwind label %lpad135

invoke.cont136:                                   ; preds = %invoke.cont130
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp133)
          to label %invoke.cont138 unwind label %lpad137

invoke.cont138:                                   ; preds = %invoke.cont136
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp133) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp134) #3
  %clCommandQueue141 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %54 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue141, align 8
  %55 = load %struct._cl_mem*, %struct._cl_mem** %d_flow_vector_array, align 8
  %56 = load i32, i32* %n_flow_vectors, align 4
  %conv142 = sext i32 %56 to i64
  %mul143 = mul i64 %conv142, 16
  %57 = load %struct.flowvector*, %struct.flowvector** %h_flow_vector_array, align 8
  %58 = bitcast %struct.flowvector* %57 to i8*
  %call145 = invoke i32 @clEnqueueWriteBuffer(%struct._cl_command_queue* %54, %struct._cl_mem* %55, i32 1, i64 0, i64 %mul143, i8* %58, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont144 unwind label %lpad3

invoke.cont144:                                   ; preds = %invoke.cont138
  store i32 %call145, i32* %clStatus, align 4
  %clCommandQueue146 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %59 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue146, align 8
  %60 = load %struct._cl_mem*, %struct._cl_mem** %d_random_numbers, align 8
  %max_iter147 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %61 = load i32, i32* %max_iter147, align 8
  %mul148 = mul nsw i32 2, %61
  %conv149 = sext i32 %mul148 to i64
  %mul150 = mul i64 %conv149, 4
  %62 = load i32*, i32** %h_random_numbers, align 8
  %63 = bitcast i32* %62 to i8*
  %call152 = invoke i32 @clEnqueueWriteBuffer(%struct._cl_command_queue* %59, %struct._cl_mem* %60, i32 1, i64 0, i64 %mul150, i8* %63, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont151 unwind label %lpad3

invoke.cont151:                                   ; preds = %invoke.cont144
  store i32 %call152, i32* %clStatus, align 4
  %clCommandQueue153 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %64 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue153, align 8
  %65 = load %struct._cl_mem*, %struct._cl_mem** %d_model_candidate, align 8
  %max_iter154 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %66 = load i32, i32* %max_iter154, align 8
  %conv155 = sext i32 %66 to i64
  %mul156 = mul i64 %conv155, 4
  %67 = load i32*, i32** %h_model_candidate, align 8
  %68 = bitcast i32* %67 to i8*
  %call158 = invoke i32 @clEnqueueWriteBuffer(%struct._cl_command_queue* %64, %struct._cl_mem* %65, i32 1, i64 0, i64 %mul156, i8* %68, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont157 unwind label %lpad3

invoke.cont157:                                   ; preds = %invoke.cont151
  store i32 %call158, i32* %clStatus, align 4
  %clCommandQueue159 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %69 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue159, align 8
  %70 = load %struct._cl_mem*, %struct._cl_mem** %d_outliers_candidate, align 8
  %max_iter160 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %71 = load i32, i32* %max_iter160, align 8
  %conv161 = sext i32 %71 to i64
  %mul162 = mul i64 %conv161, 4
  %72 = load i32*, i32** %h_outliers_candidate, align 8
  %73 = bitcast i32* %72 to i8*
  %call164 = invoke i32 @clEnqueueWriteBuffer(%struct._cl_command_queue* %69, %struct._cl_mem* %70, i32 1, i64 0, i64 %mul162, i8* %73, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont163 unwind label %lpad3

invoke.cont163:                                   ; preds = %invoke.cont157
  store i32 %call164, i32* %clStatus, align 4
  %clCommandQueue165 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %74 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue165, align 8
  %75 = load %struct._cl_mem*, %struct._cl_mem** %d_g_out_id, align 8
  %76 = load %"struct.std::atomic"*, %"struct.std::atomic"** %h_g_out_id, align 8
  %77 = bitcast %"struct.std::atomic"* %76 to i8*
  %call167 = invoke i32 @clEnqueueWriteBuffer(%struct._cl_command_queue* %74, %struct._cl_mem* %75, i32 1, i64 0, i64 4, i8* %77, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont166 unwind label %lpad3

invoke.cont166:                                   ; preds = %invoke.cont163
  store i32 %call167, i32* %clStatus, align 4
  %clCommandQueue168 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %78 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue168, align 8
  %call170 = invoke i32 @clFinish(%struct._cl_command_queue* %78)
          to label %invoke.cont169 unwind label %lpad3

invoke.cont169:                                   ; preds = %invoke.cont166
  %79 = load i32, i32* %clStatus, align 4
  %cmp171 = icmp ne i32 %79, 0
  br i1 %cmp171, label %if.then172, label %if.end175

if.then172:                                       ; preds = %invoke.cont169
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = load i32, i32* %clStatus, align 4
  %call174 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 147)
          to label %invoke.cont173 unwind label %lpad3

invoke.cont173:                                   ; preds = %if.then172
  call void @exit(i32 -1) #16
  unreachable

lpad88:                                           ; preds = %invoke.cont84
  %82 = landingpad { i8*, i32 }
          cleanup
  %83 = extractvalue { i8*, i32 } %82, 0
  store i8* %83, i8** %exn.slot, align 8
  %84 = extractvalue { i8*, i32 } %82, 1
  store i32 %84, i32* %ehselector.slot, align 4
  br label %ehcleanup93

lpad90:                                           ; preds = %invoke.cont89
  %85 = landingpad { i8*, i32 }
          cleanup
  %86 = extractvalue { i8*, i32 } %85, 0
  store i8* %86, i8** %exn.slot, align 8
  %87 = extractvalue { i8*, i32 } %85, 1
  store i32 %87, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp86) #3
  br label %ehcleanup93

ehcleanup93:                                      ; preds = %lpad90, %lpad88
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp87) #3
  br label %ehcleanup485

lpad96:                                           ; preds = %invoke.cont91
  %88 = landingpad { i8*, i32 }
          cleanup
  %89 = extractvalue { i8*, i32 } %88, 0
  store i8* %89, i8** %exn.slot, align 8
  %90 = extractvalue { i8*, i32 } %88, 1
  store i32 %90, i32* %ehselector.slot, align 4
  br label %ehcleanup101

lpad98:                                           ; preds = %invoke.cont97
  %91 = landingpad { i8*, i32 }
          cleanup
  %92 = extractvalue { i8*, i32 } %91, 0
  store i8* %92, i8** %exn.slot, align 8
  %93 = extractvalue { i8*, i32 } %91, 1
  store i32 %93, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp94) #3
  br label %ehcleanup101

ehcleanup101:                                     ; preds = %lpad98, %lpad96
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp95) #3
  br label %ehcleanup485

lpad104:                                          ; preds = %invoke.cont99
  %94 = landingpad { i8*, i32 }
          cleanup
  %95 = extractvalue { i8*, i32 } %94, 0
  store i8* %95, i8** %exn.slot, align 8
  %96 = extractvalue { i8*, i32 } %94, 1
  store i32 %96, i32* %ehselector.slot, align 4
  br label %ehcleanup109

lpad106:                                          ; preds = %invoke.cont105
  %97 = landingpad { i8*, i32 }
          cleanup
  %98 = extractvalue { i8*, i32 } %97, 0
  store i8* %98, i8** %exn.slot, align 8
  %99 = extractvalue { i8*, i32 } %97, 1
  store i32 %99, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp102) #3
  br label %ehcleanup109

ehcleanup109:                                     ; preds = %lpad106, %lpad104
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp103) #3
  br label %ehcleanup485

lpad119:                                          ; preds = %invoke.cont115
  %100 = landingpad { i8*, i32 }
          cleanup
  %101 = extractvalue { i8*, i32 } %100, 0
  store i8* %101, i8** %exn.slot, align 8
  %102 = extractvalue { i8*, i32 } %100, 1
  store i32 %102, i32* %ehselector.slot, align 4
  br label %ehcleanup124

lpad121:                                          ; preds = %invoke.cont120
  %103 = landingpad { i8*, i32 }
          cleanup
  %104 = extractvalue { i8*, i32 } %103, 0
  store i8* %104, i8** %exn.slot, align 8
  %105 = extractvalue { i8*, i32 } %103, 1
  store i32 %105, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp117) #3
  br label %ehcleanup124

ehcleanup124:                                     ; preds = %lpad121, %lpad119
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp118) #3
  br label %ehcleanup485

lpad127:                                          ; preds = %invoke.cont122
  %106 = landingpad { i8*, i32 }
          cleanup
  %107 = extractvalue { i8*, i32 } %106, 0
  store i8* %107, i8** %exn.slot, align 8
  %108 = extractvalue { i8*, i32 } %106, 1
  store i32 %108, i32* %ehselector.slot, align 4
  br label %ehcleanup132

lpad129:                                          ; preds = %invoke.cont128
  %109 = landingpad { i8*, i32 }
          cleanup
  %110 = extractvalue { i8*, i32 } %109, 0
  store i8* %110, i8** %exn.slot, align 8
  %111 = extractvalue { i8*, i32 } %109, 1
  store i32 %111, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp125) #3
  br label %ehcleanup132

ehcleanup132:                                     ; preds = %lpad129, %lpad127
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp126) #3
  br label %ehcleanup485

lpad135:                                          ; preds = %invoke.cont130
  %112 = landingpad { i8*, i32 }
          cleanup
  %113 = extractvalue { i8*, i32 } %112, 0
  store i8* %113, i8** %exn.slot, align 8
  %114 = extractvalue { i8*, i32 } %112, 1
  store i32 %114, i32* %ehselector.slot, align 4
  br label %ehcleanup140

lpad137:                                          ; preds = %invoke.cont136
  %115 = landingpad { i8*, i32 }
          cleanup
  %116 = extractvalue { i8*, i32 } %115, 0
  store i8* %116, i8** %exn.slot, align 8
  %117 = extractvalue { i8*, i32 } %115, 1
  store i32 %117, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp133) #3
  br label %ehcleanup140

ehcleanup140:                                     ; preds = %lpad137, %lpad135
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp134) #3
  br label %ehcleanup485

if.end175:                                        ; preds = %invoke.cont169
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp177) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp177)
          to label %invoke.cont179 unwind label %lpad178

invoke.cont179:                                   ; preds = %if.end175
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp176)
          to label %invoke.cont181 unwind label %lpad180

invoke.cont181:                                   ; preds = %invoke.cont179
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp176) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp177) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp185) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp185)
          to label %invoke.cont187 unwind label %lpad186

invoke.cont187:                                   ; preds = %invoke.cont181
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp184, i32 1)
          to label %invoke.cont189 unwind label %lpad188

invoke.cont189:                                   ; preds = %invoke.cont187
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp184) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp185) #3
  store i32 0, i32* %rep, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc407, %invoke.cont189
  %118 = load i32, i32* %rep, align 4
  %n_warmup = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 2
  %119 = load i32, i32* %n_warmup, align 8
  %n_reps = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 3
  %120 = load i32, i32* %n_reps, align 4
  %add = add nsw i32 %119, %120
  %cmp192 = icmp slt i32 %118, %add
  br i1 %cmp192, label %for.body, label %for.end409

for.body:                                         ; preds = %for.cond
  %121 = load i32*, i32** %h_model_candidate, align 8
  %122 = bitcast i32* %121 to i8*
  %max_iter193 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %123 = load i32, i32* %max_iter193, align 8
  %conv194 = sext i32 %123 to i64
  %mul195 = mul i64 %conv194, 4
  call void @llvm.memset.p0i8.i64(i8* align 1 %122, i8 0, i64 %mul195, i1 false)
  %124 = load i32*, i32** %h_outliers_candidate, align 8
  %125 = bitcast i32* %124 to i8*
  %max_iter196 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %126 = load i32, i32* %max_iter196, align 8
  %conv197 = sext i32 %126 to i64
  %mul198 = mul i64 %conv197, 4
  call void @llvm.memset.p0i8.i64(i8* align 1 %125, i8 0, i64 %mul198, i1 false)
  %127 = load %"struct.std::atomic"*, %"struct.std::atomic"** %h_g_out_id, align 8
  %arrayidx = getelementptr inbounds %"struct.std::atomic", %"struct.std::atomic"* %127, i64 0
  %128 = bitcast %"struct.std::atomic"* %arrayidx to %"struct.std::__atomic_base"*
  %call199 = call i32 @_ZNSt13__atomic_baseIiEaSEi(%"struct.std::__atomic_base"* %128, i32 0) #3
  %clCommandQueue200 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %129 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue200, align 8
  %130 = load %struct._cl_mem*, %struct._cl_mem** %d_model_param, align 8
  %max_iter201 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %131 = load i32, i32* %max_iter201, align 8
  %mul202 = mul nsw i32 4, %131
  %conv203 = sext i32 %mul202 to i64
  %mul204 = mul i64 %conv203, 4
  %132 = load i32*, i32** %h_model_param, align 8
  %133 = bitcast i32* %132 to i8*
  %call206 = invoke i32 @clEnqueueWriteBuffer(%struct._cl_command_queue* %129, %struct._cl_mem* %130, i32 1, i64 0, i64 %mul204, i8* %133, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont205 unwind label %lpad3

invoke.cont205:                                   ; preds = %for.body
  store i32 %call206, i32* %clStatus, align 4
  %clCommandQueue207 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %134 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue207, align 8
  %135 = load %struct._cl_mem*, %struct._cl_mem** %d_model_candidate, align 8
  %max_iter208 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %136 = load i32, i32* %max_iter208, align 8
  %conv209 = sext i32 %136 to i64
  %mul210 = mul i64 %conv209, 4
  %137 = load i32*, i32** %h_model_candidate, align 8
  %138 = bitcast i32* %137 to i8*
  %call212 = invoke i32 @clEnqueueWriteBuffer(%struct._cl_command_queue* %134, %struct._cl_mem* %135, i32 1, i64 0, i64 %mul210, i8* %138, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont211 unwind label %lpad3

invoke.cont211:                                   ; preds = %invoke.cont205
  store i32 %call212, i32* %clStatus, align 4
  %clCommandQueue213 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %139 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue213, align 8
  %140 = load %struct._cl_mem*, %struct._cl_mem** %d_outliers_candidate, align 8
  %max_iter214 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %141 = load i32, i32* %max_iter214, align 8
  %conv215 = sext i32 %141 to i64
  %mul216 = mul i64 %conv215, 4
  %142 = load i32*, i32** %h_outliers_candidate, align 8
  %143 = bitcast i32* %142 to i8*
  %call218 = invoke i32 @clEnqueueWriteBuffer(%struct._cl_command_queue* %139, %struct._cl_mem* %140, i32 1, i64 0, i64 %mul216, i8* %143, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont217 unwind label %lpad3

invoke.cont217:                                   ; preds = %invoke.cont211
  store i32 %call218, i32* %clStatus, align 4
  %clCommandQueue219 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %144 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue219, align 8
  %145 = load %struct._cl_mem*, %struct._cl_mem** %d_g_out_id, align 8
  %146 = load %"struct.std::atomic"*, %"struct.std::atomic"** %h_g_out_id, align 8
  %147 = bitcast %"struct.std::atomic"* %146 to i8*
  %call221 = invoke i32 @clEnqueueWriteBuffer(%struct._cl_command_queue* %144, %struct._cl_mem* %145, i32 1, i64 0, i64 4, i8* %147, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont220 unwind label %lpad3

invoke.cont220:                                   ; preds = %invoke.cont217
  store i32 %call221, i32* %clStatus, align 4
  %148 = load i32, i32* %clStatus, align 4
  %cmp222 = icmp ne i32 %148, 0
  br i1 %cmp222, label %if.then223, label %if.end226

if.then223:                                       ; preds = %invoke.cont220
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %150 = load i32, i32* %clStatus, align 4
  %call225 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 169)
          to label %invoke.cont224 unwind label %lpad3

invoke.cont224:                                   ; preds = %if.then223
  call void @exit(i32 -1) #16
  unreachable

lpad178:                                          ; preds = %if.end175
  %151 = landingpad { i8*, i32 }
          cleanup
  %152 = extractvalue { i8*, i32 } %151, 0
  store i8* %152, i8** %exn.slot, align 8
  %153 = extractvalue { i8*, i32 } %151, 1
  store i32 %153, i32* %ehselector.slot, align 4
  br label %ehcleanup183

lpad180:                                          ; preds = %invoke.cont179
  %154 = landingpad { i8*, i32 }
          cleanup
  %155 = extractvalue { i8*, i32 } %154, 0
  store i8* %155, i8** %exn.slot, align 8
  %156 = extractvalue { i8*, i32 } %154, 1
  store i32 %156, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp176) #3
  br label %ehcleanup183

ehcleanup183:                                     ; preds = %lpad180, %lpad178
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp177) #3
  br label %ehcleanup485

lpad186:                                          ; preds = %invoke.cont181
  %157 = landingpad { i8*, i32 }
          cleanup
  %158 = extractvalue { i8*, i32 } %157, 0
  store i8* %158, i8** %exn.slot, align 8
  %159 = extractvalue { i8*, i32 } %157, 1
  store i32 %159, i32* %ehselector.slot, align 4
  br label %ehcleanup191

lpad188:                                          ; preds = %invoke.cont187
  %160 = landingpad { i8*, i32 }
          cleanup
  %161 = extractvalue { i8*, i32 } %160, 0
  store i8* %161, i8** %exn.slot, align 8
  %162 = extractvalue { i8*, i32 } %160, 1
  store i32 %162, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp184) #3
  br label %ehcleanup191

ehcleanup191:                                     ; preds = %lpad188, %lpad186
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp185) #3
  br label %ehcleanup485

if.end226:                                        ; preds = %invoke.cont220
  %clCommandQueue227 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %163 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue227, align 8
  %call229 = invoke i32 @clFinish(%struct._cl_command_queue* %163)
          to label %invoke.cont228 unwind label %lpad3

invoke.cont228:                                   ; preds = %if.end226
  %164 = load i32, i32* %rep, align 4
  %n_warmup230 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 2
  %165 = load i32, i32* %n_warmup230, align 8
  %cmp231 = icmp sge i32 %164, %165
  br i1 %cmp231, label %if.then232, label %if.end241

if.then232:                                       ; preds = %invoke.cont228
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp234) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp233, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp234)
          to label %invoke.cont236 unwind label %lpad235

invoke.cont236:                                   ; preds = %if.then232
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp233)
          to label %invoke.cont238 unwind label %lpad237

invoke.cont238:                                   ; preds = %invoke.cont236
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp233) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp234) #3
  br label %if.end241

lpad235:                                          ; preds = %if.then232
  %166 = landingpad { i8*, i32 }
          cleanup
  %167 = extractvalue { i8*, i32 } %166, 0
  store i8* %167, i8** %exn.slot, align 8
  %168 = extractvalue { i8*, i32 } %166, 1
  store i32 %168, i32* %ehselector.slot, align 4
  br label %ehcleanup240

lpad237:                                          ; preds = %invoke.cont236
  %169 = landingpad { i8*, i32 }
          cleanup
  %170 = extractvalue { i8*, i32 } %169, 0
  store i8* %170, i8** %exn.slot, align 8
  %171 = extractvalue { i8*, i32 } %169, 1
  store i32 %171, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp233) #3
  br label %ehcleanup240

ehcleanup240:                                     ; preds = %lpad237, %lpad235
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp234) #3
  br label %ehcleanup485

if.end241:                                        ; preds = %invoke.cont238, %invoke.cont228
  %clKernel242 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 3
  %172 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel242, align 8
  %173 = bitcast %struct._cl_mem** %d_flow_vector_array to i8*
  %call244 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %172, i32 0, i64 8, i8* %173)
          to label %invoke.cont243 unwind label %lpad3

invoke.cont243:                                   ; preds = %if.end241
  %clKernel245 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 3
  %174 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel245, align 8
  %175 = bitcast %struct._cl_mem** %d_random_numbers to i8*
  %call247 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %174, i32 1, i64 8, i8* %175)
          to label %invoke.cont246 unwind label %lpad3

invoke.cont246:                                   ; preds = %invoke.cont243
  %clKernel248 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 3
  %176 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel248, align 8
  %177 = bitcast %struct._cl_mem** %d_model_param to i8*
  %call250 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %176, i32 2, i64 8, i8* %177)
          to label %invoke.cont249 unwind label %lpad3

invoke.cont249:                                   ; preds = %invoke.cont246
  %178 = bitcast [1 x i64]* %ls to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 8 bitcast ([1 x i64]* @__const.main.ls to i8*), i64 8, i1 false)
  %arrayinit.begin = getelementptr inbounds [1 x i64], [1 x i64]* %gs, i64 0, i64 0
  %max_iter251 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %179 = load i32, i32* %max_iter251, align 8
  %conv252 = sext i32 %179 to i64
  store i64 %conv252, i64* %arrayinit.begin, align 8
  %clCommandQueue253 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %180 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue253, align 8
  %clKernel254 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 3
  %181 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel254, align 8
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %gs, i64 0, i64 0
  %arraydecay255 = getelementptr inbounds [1 x i64], [1 x i64]* %ls, i64 0, i64 0
  %call257 = invoke i32 @clEnqueueNDRangeKernel(%struct._cl_command_queue* %180, %struct._cl_kernel* %181, i32 1, i64* null, i64* %arraydecay, i64* %arraydecay255, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont256 unwind label %lpad3

invoke.cont256:                                   ; preds = %invoke.cont249
  store i32 %call257, i32* %clStatus, align 4
  %clCommandQueue258 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %182 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue258, align 8
  %call260 = invoke i32 @clFinish(%struct._cl_command_queue* %182)
          to label %invoke.cont259 unwind label %lpad3

invoke.cont259:                                   ; preds = %invoke.cont256
  %183 = load i32, i32* %clStatus, align 4
  %cmp261 = icmp ne i32 %183, 0
  br i1 %cmp261, label %if.then262, label %if.end265

if.then262:                                       ; preds = %invoke.cont259
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %185 = load i32, i32* %clStatus, align 4
  %call264 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 187)
          to label %invoke.cont263 unwind label %lpad3

invoke.cont263:                                   ; preds = %if.then262
  call void @exit(i32 -1) #16
  unreachable

if.end265:                                        ; preds = %invoke.cont259
  %clKernel2 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 4
  %186 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel2, align 8
  %187 = bitcast i32* %n_flow_vectors to i8*
  %call267 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %186, i32 0, i64 4, i8* %187)
          to label %invoke.cont266 unwind label %lpad3

invoke.cont266:                                   ; preds = %if.end265
  %clKernel2268 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 4
  %188 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel2268, align 8
  %error_threshold = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 6
  %189 = bitcast i32* %error_threshold to i8*
  %call270 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %188, i32 1, i64 4, i8* %189)
          to label %invoke.cont269 unwind label %lpad3

invoke.cont269:                                   ; preds = %invoke.cont266
  %clKernel2271 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 4
  %190 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel2271, align 8
  %convergence_threshold = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 7
  %191 = bitcast float* %convergence_threshold to i8*
  %call273 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %190, i32 2, i64 4, i8* %191)
          to label %invoke.cont272 unwind label %lpad3

invoke.cont272:                                   ; preds = %invoke.cont269
  %clKernel2274 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 4
  %192 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel2274, align 8
  %193 = bitcast %struct._cl_mem** %d_flow_vector_array to i8*
  %call276 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %192, i32 3, i64 8, i8* %193)
          to label %invoke.cont275 unwind label %lpad3

invoke.cont275:                                   ; preds = %invoke.cont272
  %clKernel2277 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 4
  %194 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel2277, align 8
  %195 = bitcast %struct._cl_mem** %d_model_candidate to i8*
  %call279 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %194, i32 4, i64 8, i8* %195)
          to label %invoke.cont278 unwind label %lpad3

invoke.cont278:                                   ; preds = %invoke.cont275
  %clKernel2280 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 4
  %196 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel2280, align 8
  %197 = bitcast %struct._cl_mem** %d_outliers_candidate to i8*
  %call282 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %196, i32 5, i64 8, i8* %197)
          to label %invoke.cont281 unwind label %lpad3

invoke.cont281:                                   ; preds = %invoke.cont278
  %clKernel2283 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 4
  %198 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel2283, align 8
  %199 = bitcast %struct._cl_mem** %d_g_out_id to i8*
  %call285 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %198, i32 6, i64 8, i8* %199)
          to label %invoke.cont284 unwind label %lpad3

invoke.cont284:                                   ; preds = %invoke.cont281
  %clKernel2286 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 4
  %200 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel2286, align 8
  %201 = bitcast %struct._cl_mem** %d_model_param to i8*
  %call288 = invoke i32 @clSetKernelArg(%struct._cl_kernel* %200, i32 7, i64 8, i8* %201)
          to label %invoke.cont287 unwind label %lpad3

invoke.cont287:                                   ; preds = %invoke.cont284
  %clCommandQueue289 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %202 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue289, align 8
  %clKernel2290 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 4
  %203 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel2290, align 8
  %arraydecay291 = getelementptr inbounds [1 x i64], [1 x i64]* %gs, i64 0, i64 0
  %arraydecay292 = getelementptr inbounds [1 x i64], [1 x i64]* %ls, i64 0, i64 0
  %call294 = invoke i32 @clEnqueueNDRangeKernel(%struct._cl_command_queue* %202, %struct._cl_kernel* %203, i32 1, i64* null, i64* %arraydecay291, i64* %arraydecay292, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont293 unwind label %lpad3

invoke.cont293:                                   ; preds = %invoke.cont287
  store i32 %call294, i32* %clStatus, align 4
  %clCommandQueue295 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %204 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue295, align 8
  %call297 = invoke i32 @clFinish(%struct._cl_command_queue* %204)
          to label %invoke.cont296 unwind label %lpad3

invoke.cont296:                                   ; preds = %invoke.cont293
  %205 = load i32, i32* %clStatus, align 4
  %cmp298 = icmp ne i32 %205, 0
  br i1 %cmp298, label %if.then299, label %if.end302

if.then299:                                       ; preds = %invoke.cont296
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %207 = load i32, i32* %clStatus, align 4
  %call301 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %207, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 200)
          to label %invoke.cont300 unwind label %lpad3

invoke.cont300:                                   ; preds = %if.then299
  call void @exit(i32 -1) #16
  unreachable

if.end302:                                        ; preds = %invoke.cont296
  %208 = load i32, i32* %rep, align 4
  %n_warmup303 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 2
  %209 = load i32, i32* %n_warmup303, align 8
  %cmp304 = icmp sge i32 %208, %209
  br i1 %cmp304, label %if.then305, label %if.end314

if.then305:                                       ; preds = %if.end302
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp307) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp306, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp307)
          to label %invoke.cont309 unwind label %lpad308

invoke.cont309:                                   ; preds = %if.then305
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp306)
          to label %invoke.cont311 unwind label %lpad310

invoke.cont311:                                   ; preds = %invoke.cont309
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp306) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp307) #3
  br label %if.end314

lpad308:                                          ; preds = %if.then305
  %210 = landingpad { i8*, i32 }
          cleanup
  %211 = extractvalue { i8*, i32 } %210, 0
  store i8* %211, i8** %exn.slot, align 8
  %212 = extractvalue { i8*, i32 } %210, 1
  store i32 %212, i32* %ehselector.slot, align 4
  br label %ehcleanup313

lpad310:                                          ; preds = %invoke.cont309
  %213 = landingpad { i8*, i32 }
          cleanup
  %214 = extractvalue { i8*, i32 } %213, 0
  store i8* %214, i8** %exn.slot, align 8
  %215 = extractvalue { i8*, i32 } %213, 1
  store i32 %215, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp306) #3
  br label %ehcleanup313

ehcleanup313:                                     ; preds = %lpad310, %lpad308
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp307) #3
  br label %ehcleanup485

if.end314:                                        ; preds = %invoke.cont311, %if.end302
  %216 = load i32, i32* %rep, align 4
  %n_warmup315 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 2
  %217 = load i32, i32* %n_warmup315, align 8
  %cmp316 = icmp sge i32 %216, %217
  br i1 %cmp316, label %if.then317, label %if.end326

if.then317:                                       ; preds = %if.end314
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp319) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp318, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp319)
          to label %invoke.cont321 unwind label %lpad320

invoke.cont321:                                   ; preds = %if.then317
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp318)
          to label %invoke.cont323 unwind label %lpad322

invoke.cont323:                                   ; preds = %invoke.cont321
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp318) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp319) #3
  br label %if.end326

lpad320:                                          ; preds = %if.then317
  %218 = landingpad { i8*, i32 }
          cleanup
  %219 = extractvalue { i8*, i32 } %218, 0
  store i8* %219, i8** %exn.slot, align 8
  %220 = extractvalue { i8*, i32 } %218, 1
  store i32 %220, i32* %ehselector.slot, align 4
  br label %ehcleanup325

lpad322:                                          ; preds = %invoke.cont321
  %221 = landingpad { i8*, i32 }
          cleanup
  %222 = extractvalue { i8*, i32 } %221, 0
  store i8* %222, i8** %exn.slot, align 8
  %223 = extractvalue { i8*, i32 } %221, 1
  store i32 %223, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp318) #3
  br label %ehcleanup325

ehcleanup325:                                     ; preds = %lpad322, %lpad320
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp319) #3
  br label %ehcleanup485

if.end326:                                        ; preds = %invoke.cont323, %if.end314
  store i32 0, i32* %d_candidates, align 4
  %clCommandQueue327 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %224 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue327, align 8
  %225 = load %struct._cl_mem*, %struct._cl_mem** %d_g_out_id, align 8
  %226 = bitcast i32* %d_candidates to i8*
  %call329 = invoke i32 @clEnqueueReadBuffer(%struct._cl_command_queue* %224, %struct._cl_mem* %225, i32 1, i64 0, i64 4, i8* %226, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont328 unwind label %lpad3

invoke.cont328:                                   ; preds = %if.end326
  store i32 %call329, i32* %clStatus, align 4
  %clCommandQueue330 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %227 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue330, align 8
  %228 = load %struct._cl_mem*, %struct._cl_mem** %d_model_candidate, align 8
  %229 = load i32, i32* %d_candidates, align 4
  %conv331 = sext i32 %229 to i64
  %mul332 = mul i64 %conv331, 4
  %230 = load i32*, i32** %h_model_candidate, align 8
  %231 = load %"struct.std::atomic"*, %"struct.std::atomic"** %h_g_out_id, align 8
  %arrayidx333 = getelementptr inbounds %"struct.std::atomic", %"struct.std::atomic"* %231, i64 0
  %232 = bitcast %"struct.std::atomic"* %arrayidx333 to %"struct.std::__atomic_base"*
  %call334 = call i32 @_ZNKSt13__atomic_baseIiEcviEv(%"struct.std::__atomic_base"* %232) #3
  %idxprom = sext i32 %call334 to i64
  %arrayidx335 = getelementptr inbounds i32, i32* %230, i64 %idxprom
  %233 = bitcast i32* %arrayidx335 to i8*
  %call337 = invoke i32 @clEnqueueReadBuffer(%struct._cl_command_queue* %227, %struct._cl_mem* %228, i32 1, i64 0, i64 %mul332, i8* %233, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont336 unwind label %lpad3

invoke.cont336:                                   ; preds = %invoke.cont328
  store i32 %call337, i32* %clStatus, align 4
  %clCommandQueue338 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %234 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue338, align 8
  %235 = load %struct._cl_mem*, %struct._cl_mem** %d_outliers_candidate, align 8
  %236 = load i32, i32* %d_candidates, align 4
  %conv339 = sext i32 %236 to i64
  %mul340 = mul i64 %conv339, 4
  %237 = load i32*, i32** %h_outliers_candidate, align 8
  %238 = load %"struct.std::atomic"*, %"struct.std::atomic"** %h_g_out_id, align 8
  %arrayidx341 = getelementptr inbounds %"struct.std::atomic", %"struct.std::atomic"* %238, i64 0
  %239 = bitcast %"struct.std::atomic"* %arrayidx341 to %"struct.std::__atomic_base"*
  %call342 = call i32 @_ZNKSt13__atomic_baseIiEcviEv(%"struct.std::__atomic_base"* %239) #3
  %idxprom343 = sext i32 %call342 to i64
  %arrayidx344 = getelementptr inbounds i32, i32* %237, i64 %idxprom343
  %240 = bitcast i32* %arrayidx344 to i8*
  %call346 = invoke i32 @clEnqueueReadBuffer(%struct._cl_command_queue* %234, %struct._cl_mem* %235, i32 1, i64 0, i64 %mul340, i8* %240, i32 0, %struct._cl_event** null, %struct._cl_event** null)
          to label %invoke.cont345 unwind label %lpad3

invoke.cont345:                                   ; preds = %invoke.cont336
  store i32 %call346, i32* %clStatus, align 4
  %241 = load i32, i32* %clStatus, align 4
  %cmp347 = icmp ne i32 %241, 0
  br i1 %cmp347, label %if.then348, label %if.end351

if.then348:                                       ; preds = %invoke.cont345
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %243 = load i32, i32* %clStatus, align 4
  %call350 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %243, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 217)
          to label %invoke.cont349 unwind label %lpad3

invoke.cont349:                                   ; preds = %if.then348
  call void @exit(i32 -1) #16
  unreachable

if.end351:                                        ; preds = %invoke.cont345
  %244 = load i32, i32* %d_candidates, align 4
  %245 = load %"struct.std::atomic"*, %"struct.std::atomic"** %h_g_out_id, align 8
  %arrayidx352 = getelementptr inbounds %"struct.std::atomic", %"struct.std::atomic"* %245, i64 0
  %246 = bitcast %"struct.std::atomic"* %arrayidx352 to %"struct.std::__atomic_base"*
  %call353 = call i32 @_ZNSt13__atomic_baseIiEpLEi(%"struct.std::__atomic_base"* %246, i32 %244) #3
  %clCommandQueue354 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %ocl, i32 0, i32 1
  %247 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue354, align 8
  %call356 = invoke i32 @clFinish(%struct._cl_command_queue* %247)
          to label %invoke.cont355 unwind label %lpad3

invoke.cont355:                                   ; preds = %if.end351
  %248 = load i32, i32* %rep, align 4
  %n_warmup357 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 2
  %249 = load i32, i32* %n_warmup357, align 8
  %cmp358 = icmp sge i32 %248, %249
  br i1 %cmp358, label %if.then359, label %if.end368

if.then359:                                       ; preds = %invoke.cont355
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp361) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp360, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp361)
          to label %invoke.cont363 unwind label %lpad362

invoke.cont363:                                   ; preds = %if.then359
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp360)
          to label %invoke.cont365 unwind label %lpad364

invoke.cont365:                                   ; preds = %invoke.cont363
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp360) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp361) #3
  br label %if.end368

lpad362:                                          ; preds = %if.then359
  %250 = landingpad { i8*, i32 }
          cleanup
  %251 = extractvalue { i8*, i32 } %250, 0
  store i8* %251, i8** %exn.slot, align 8
  %252 = extractvalue { i8*, i32 } %250, 1
  store i32 %252, i32* %ehselector.slot, align 4
  br label %ehcleanup367

lpad364:                                          ; preds = %invoke.cont363
  %253 = landingpad { i8*, i32 }
          cleanup
  %254 = extractvalue { i8*, i32 } %253, 0
  store i8* %254, i8** %exn.slot, align 8
  %255 = extractvalue { i8*, i32 } %253, 1
  store i32 %255, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp360) #3
  br label %ehcleanup367

ehcleanup367:                                     ; preds = %lpad364, %lpad362
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp361) #3
  br label %ehcleanup485

if.end368:                                        ; preds = %invoke.cont365, %invoke.cont355
  %256 = load i32, i32* %rep, align 4
  %n_warmup369 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 2
  %257 = load i32, i32* %n_warmup369, align 8
  %cmp370 = icmp sge i32 %256, %257
  br i1 %cmp370, label %if.then371, label %if.end380

if.then371:                                       ; preds = %if.end368
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp373) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp372, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp373)
          to label %invoke.cont375 unwind label %lpad374

invoke.cont375:                                   ; preds = %if.then371
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp372)
          to label %invoke.cont377 unwind label %lpad376

invoke.cont377:                                   ; preds = %invoke.cont375
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp372) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp373) #3
  br label %if.end380

lpad374:                                          ; preds = %if.then371
  %258 = landingpad { i8*, i32 }
          cleanup
  %259 = extractvalue { i8*, i32 } %258, 0
  store i8* %259, i8** %exn.slot, align 8
  %260 = extractvalue { i8*, i32 } %258, 1
  store i32 %260, i32* %ehselector.slot, align 4
  br label %ehcleanup379

lpad376:                                          ; preds = %invoke.cont375
  %261 = landingpad { i8*, i32 }
          cleanup
  %262 = extractvalue { i8*, i32 } %261, 0
  store i8* %262, i8** %exn.slot, align 8
  %263 = extractvalue { i8*, i32 } %261, 1
  store i32 %263, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp372) #3
  br label %ehcleanup379

ehcleanup379:                                     ; preds = %lpad376, %lpad374
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp373) #3
  br label %ehcleanup485

if.end380:                                        ; preds = %invoke.cont377, %if.end368
  store i32 0, i32* %i, align 4
  br label %for.cond381

for.cond381:                                      ; preds = %for.inc, %if.end380
  %264 = load i32, i32* %i, align 4
  %265 = load %"struct.std::atomic"*, %"struct.std::atomic"** %h_g_out_id, align 8
  %arrayidx382 = getelementptr inbounds %"struct.std::atomic", %"struct.std::atomic"* %265, i64 0
  %266 = bitcast %"struct.std::atomic"* %arrayidx382 to %"struct.std::__atomic_base"*
  %call383 = call i32 @_ZNKSt13__atomic_baseIiEcviEv(%"struct.std::__atomic_base"* %266) #3
  %cmp384 = icmp slt i32 %264, %call383
  br i1 %cmp384, label %for.body385, label %for.end

for.body385:                                      ; preds = %for.cond381
  %267 = load i32*, i32** %h_outliers_candidate, align 8
  %268 = load i32, i32* %i, align 4
  %idxprom386 = sext i32 %268 to i64
  %arrayidx387 = getelementptr inbounds i32, i32* %267, i64 %idxprom386
  %269 = load i32, i32* %arrayidx387, align 4
  %270 = load i32, i32* %best_outliers, align 4
  %cmp388 = icmp slt i32 %269, %270
  br i1 %cmp388, label %if.then389, label %if.end394

if.then389:                                       ; preds = %for.body385
  %271 = load i32*, i32** %h_outliers_candidate, align 8
  %272 = load i32, i32* %i, align 4
  %idxprom390 = sext i32 %272 to i64
  %arrayidx391 = getelementptr inbounds i32, i32* %271, i64 %idxprom390
  %273 = load i32, i32* %arrayidx391, align 4
  store i32 %273, i32* %best_outliers, align 4
  %274 = load i32*, i32** %h_model_candidate, align 8
  %275 = load i32, i32* %i, align 4
  %idxprom392 = sext i32 %275 to i64
  %arrayidx393 = getelementptr inbounds i32, i32* %274, i64 %idxprom392
  %276 = load i32, i32* %arrayidx393, align 4
  store i32 %276, i32* %best_model, align 4
  br label %if.end394

if.end394:                                        ; preds = %if.then389, %for.body385
  br label %for.inc

for.inc:                                          ; preds = %if.end394
  %277 = load i32, i32* %i, align 4
  %inc = add nsw i32 %277, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond381

for.end:                                          ; preds = %for.cond381
  %278 = load i32, i32* %rep, align 4
  %n_warmup395 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 2
  %279 = load i32, i32* %n_warmup395, align 8
  %cmp396 = icmp sge i32 %278, %279
  br i1 %cmp396, label %if.then397, label %if.end406

if.then397:                                       ; preds = %for.end
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp399) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp398, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp399)
          to label %invoke.cont401 unwind label %lpad400

invoke.cont401:                                   ; preds = %if.then397
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp398)
          to label %invoke.cont403 unwind label %lpad402

invoke.cont403:                                   ; preds = %invoke.cont401
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp398) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp399) #3
  br label %if.end406

lpad400:                                          ; preds = %if.then397
  %280 = landingpad { i8*, i32 }
          cleanup
  %281 = extractvalue { i8*, i32 } %280, 0
  store i8* %281, i8** %exn.slot, align 8
  %282 = extractvalue { i8*, i32 } %280, 1
  store i32 %282, i32* %ehselector.slot, align 4
  br label %ehcleanup405

lpad402:                                          ; preds = %invoke.cont401
  %283 = landingpad { i8*, i32 }
          cleanup
  %284 = extractvalue { i8*, i32 } %283, 0
  store i8* %284, i8** %exn.slot, align 8
  %285 = extractvalue { i8*, i32 } %283, 1
  store i32 %285, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp398) #3
  br label %ehcleanup405

ehcleanup405:                                     ; preds = %lpad402, %lpad400
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp399) #3
  br label %ehcleanup485

if.end406:                                        ; preds = %invoke.cont403, %for.end
  br label %for.inc407

for.inc407:                                       ; preds = %if.end406
  %286 = load i32, i32* %rep, align 4
  %inc408 = add nsw i32 %286, 1
  store i32 %inc408, i32* %rep, align 4
  br label %for.cond

for.end409:                                       ; preds = %for.cond
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp411) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp410, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp411)
          to label %invoke.cont413 unwind label %lpad412

invoke.cont413:                                   ; preds = %for.end409
  %n_reps414 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 3
  %287 = load i32, i32* %n_reps414, align 4
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp410, i32 %287)
          to label %invoke.cont416 unwind label %lpad415

invoke.cont416:                                   ; preds = %invoke.cont413
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp410) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp411) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp420) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp419, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp420)
          to label %invoke.cont422 unwind label %lpad421

invoke.cont422:                                   ; preds = %invoke.cont416
  %n_reps423 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 3
  %288 = load i32, i32* %n_reps423, align 4
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp419, i32 %288)
          to label %invoke.cont425 unwind label %lpad424

invoke.cont425:                                   ; preds = %invoke.cont422
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp419) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp420) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp429) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp428, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp429)
          to label %invoke.cont431 unwind label %lpad430

invoke.cont431:                                   ; preds = %invoke.cont425
  %n_reps432 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 3
  %289 = load i32, i32* %n_reps432, align 4
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp428, i32 %289)
          to label %invoke.cont434 unwind label %lpad433

invoke.cont434:                                   ; preds = %invoke.cont431
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp428) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp429) #3
  %290 = load %struct.flowvector*, %struct.flowvector** %h_flow_vector_array, align 8
  %291 = load i32, i32* %n_flow_vectors, align 4
  %292 = load i32*, i32** %h_random_numbers, align 8
  %max_iter437 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 5
  %293 = load i32, i32* %max_iter437, align 8
  %error_threshold438 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 6
  %294 = load i32, i32* %error_threshold438, align 4
  %convergence_threshold439 = getelementptr inbounds %struct.Params, %struct.Params* %p, i32 0, i32 7
  %295 = load float, float* %convergence_threshold439, align 8
  %296 = load %"struct.std::atomic"*, %"struct.std::atomic"** %h_g_out_id, align 8
  %arrayidx440 = getelementptr inbounds %"struct.std::atomic", %"struct.std::atomic"* %296, i64 0
  %297 = bitcast %"struct.std::atomic"* %arrayidx440 to %"struct.std::__atomic_base"*
  %call441 = call i32 @_ZNKSt13__atomic_baseIiEcviEv(%"struct.std::__atomic_base"* %297) #3
  %298 = load i32, i32* %best_outliers, align 4
  invoke void @_Z6verifyP10flowvectoriPiiifii(%struct.flowvector* %290, i32 %291, i32* %292, i32 %293, i32 %294, float %295, i32 %call441, i32 %298)
          to label %invoke.cont442 unwind label %lpad3

invoke.cont442:                                   ; preds = %invoke.cont434
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp444) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp443, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp444)
          to label %invoke.cont446 unwind label %lpad445

invoke.cont446:                                   ; preds = %invoke.cont442
  invoke void @_ZN5Timer5startENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp443)
          to label %invoke.cont448 unwind label %lpad447

invoke.cont448:                                   ; preds = %invoke.cont446
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp443) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp444) #3
  %299 = load i32*, i32** %h_model_param, align 8
  %300 = bitcast i32* %299 to i8*
  call void @free(i8* %300) #3
  %301 = load i32*, i32** %h_model_candidate, align 8
  %302 = bitcast i32* %301 to i8*
  call void @free(i8* %302) #3
  %303 = load i32*, i32** %h_outliers_candidate, align 8
  %304 = bitcast i32* %303 to i8*
  call void @free(i8* %304) #3
  %305 = load %"struct.std::atomic"*, %"struct.std::atomic"** %h_g_out_id, align 8
  %306 = bitcast %"struct.std::atomic"* %305 to i8*
  call void @free(i8* %306) #3
  %307 = load %struct.flowvector*, %struct.flowvector** %h_flow_vector_array, align 8
  %308 = bitcast %struct.flowvector* %307 to i8*
  call void @free(i8* %308) #3
  %309 = load i32*, i32** %h_random_numbers, align 8
  %310 = bitcast i32* %309 to i8*
  call void @free(i8* %310) #3
  %311 = load %struct._cl_mem*, %struct._cl_mem** %d_model_param, align 8
  %call452 = invoke i32 @clReleaseMemObject(%struct._cl_mem* %311)
          to label %invoke.cont451 unwind label %lpad3

invoke.cont451:                                   ; preds = %invoke.cont448
  store i32 %call452, i32* %clStatus, align 4
  %312 = load %struct._cl_mem*, %struct._cl_mem** %d_model_candidate, align 8
  %call454 = invoke i32 @clReleaseMemObject(%struct._cl_mem* %312)
          to label %invoke.cont453 unwind label %lpad3

invoke.cont453:                                   ; preds = %invoke.cont451
  store i32 %call454, i32* %clStatus, align 4
  %313 = load %struct._cl_mem*, %struct._cl_mem** %d_outliers_candidate, align 8
  %call456 = invoke i32 @clReleaseMemObject(%struct._cl_mem* %313)
          to label %invoke.cont455 unwind label %lpad3

invoke.cont455:                                   ; preds = %invoke.cont453
  store i32 %call456, i32* %clStatus, align 4
  %314 = load %struct._cl_mem*, %struct._cl_mem** %d_g_out_id, align 8
  %call458 = invoke i32 @clReleaseMemObject(%struct._cl_mem* %314)
          to label %invoke.cont457 unwind label %lpad3

invoke.cont457:                                   ; preds = %invoke.cont455
  store i32 %call458, i32* %clStatus, align 4
  %315 = load %struct._cl_mem*, %struct._cl_mem** %d_flow_vector_array, align 8
  %call460 = invoke i32 @clReleaseMemObject(%struct._cl_mem* %315)
          to label %invoke.cont459 unwind label %lpad3

invoke.cont459:                                   ; preds = %invoke.cont457
  store i32 %call460, i32* %clStatus, align 4
  %316 = load %struct._cl_mem*, %struct._cl_mem** %d_random_numbers, align 8
  %call462 = invoke i32 @clReleaseMemObject(%struct._cl_mem* %316)
          to label %invoke.cont461 unwind label %lpad3

invoke.cont461:                                   ; preds = %invoke.cont459
  store i32 %call462, i32* %clStatus, align 4
  %317 = load i32, i32* %clStatus, align 4
  %cmp463 = icmp ne i32 %317, 0
  br i1 %cmp463, label %if.then464, label %if.end467

if.then464:                                       ; preds = %invoke.cont461
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %319 = load i32, i32* %clStatus, align 4
  %call466 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %318, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %319, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 264)
          to label %invoke.cont465 unwind label %lpad3

invoke.cont465:                                   ; preds = %if.then464
  call void @exit(i32 -1) #16
  unreachable

lpad412:                                          ; preds = %for.end409
  %320 = landingpad { i8*, i32 }
          cleanup
  %321 = extractvalue { i8*, i32 } %320, 0
  store i8* %321, i8** %exn.slot, align 8
  %322 = extractvalue { i8*, i32 } %320, 1
  store i32 %322, i32* %ehselector.slot, align 4
  br label %ehcleanup418

lpad415:                                          ; preds = %invoke.cont413
  %323 = landingpad { i8*, i32 }
          cleanup
  %324 = extractvalue { i8*, i32 } %323, 0
  store i8* %324, i8** %exn.slot, align 8
  %325 = extractvalue { i8*, i32 } %323, 1
  store i32 %325, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp410) #3
  br label %ehcleanup418

ehcleanup418:                                     ; preds = %lpad415, %lpad412
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp411) #3
  br label %ehcleanup485

lpad421:                                          ; preds = %invoke.cont416
  %326 = landingpad { i8*, i32 }
          cleanup
  %327 = extractvalue { i8*, i32 } %326, 0
  store i8* %327, i8** %exn.slot, align 8
  %328 = extractvalue { i8*, i32 } %326, 1
  store i32 %328, i32* %ehselector.slot, align 4
  br label %ehcleanup427

lpad424:                                          ; preds = %invoke.cont422
  %329 = landingpad { i8*, i32 }
          cleanup
  %330 = extractvalue { i8*, i32 } %329, 0
  store i8* %330, i8** %exn.slot, align 8
  %331 = extractvalue { i8*, i32 } %329, 1
  store i32 %331, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp419) #3
  br label %ehcleanup427

ehcleanup427:                                     ; preds = %lpad424, %lpad421
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp420) #3
  br label %ehcleanup485

lpad430:                                          ; preds = %invoke.cont425
  %332 = landingpad { i8*, i32 }
          cleanup
  %333 = extractvalue { i8*, i32 } %332, 0
  store i8* %333, i8** %exn.slot, align 8
  %334 = extractvalue { i8*, i32 } %332, 1
  store i32 %334, i32* %ehselector.slot, align 4
  br label %ehcleanup436

lpad433:                                          ; preds = %invoke.cont431
  %335 = landingpad { i8*, i32 }
          cleanup
  %336 = extractvalue { i8*, i32 } %335, 0
  store i8* %336, i8** %exn.slot, align 8
  %337 = extractvalue { i8*, i32 } %335, 1
  store i32 %337, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp428) #3
  br label %ehcleanup436

ehcleanup436:                                     ; preds = %lpad433, %lpad430
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp429) #3
  br label %ehcleanup485

lpad445:                                          ; preds = %invoke.cont442
  %338 = landingpad { i8*, i32 }
          cleanup
  %339 = extractvalue { i8*, i32 } %338, 0
  store i8* %339, i8** %exn.slot, align 8
  %340 = extractvalue { i8*, i32 } %338, 1
  store i32 %340, i32* %ehselector.slot, align 4
  br label %ehcleanup450

lpad447:                                          ; preds = %invoke.cont446
  %341 = landingpad { i8*, i32 }
          cleanup
  %342 = extractvalue { i8*, i32 } %341, 0
  store i8* %342, i8** %exn.slot, align 8
  %343 = extractvalue { i8*, i32 } %341, 1
  store i32 %343, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp443) #3
  br label %ehcleanup450

ehcleanup450:                                     ; preds = %lpad447, %lpad445
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp444) #3
  br label %ehcleanup485

if.end467:                                        ; preds = %invoke.cont461
  invoke void @_ZN11OpenCLSetup7releaseEv(%struct.OpenCLSetup* %ocl)
          to label %invoke.cont468 unwind label %lpad3

invoke.cont468:                                   ; preds = %if.end467
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp470) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp469, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp470)
          to label %invoke.cont472 unwind label %lpad471

invoke.cont472:                                   ; preds = %invoke.cont468
  invoke void @_ZN5Timer4stopENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp469)
          to label %invoke.cont474 unwind label %lpad473

invoke.cont474:                                   ; preds = %invoke.cont472
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp469) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp470) #3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator.0"* %ref.tmp478) #3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %agg.tmp477, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), %"class.std::allocator.0"* dereferenceable(1) %ref.tmp478)
          to label %invoke.cont480 unwind label %lpad479

invoke.cont480:                                   ; preds = %invoke.cont474
  invoke void @_ZN5Timer5printENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%struct.Timer* %timer, %"class.std::__cxx11::basic_string"* %agg.tmp477, i32 1)
          to label %invoke.cont482 unwind label %lpad481

invoke.cont482:                                   ; preds = %invoke.cont480
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp477) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp478) #3
  store i32 0, i32* %retval, align 4
  call void @_ZN5TimerD2Ev(%struct.Timer* %timer) #3
  %344 = load i32, i32* %retval, align 4
  ret i32 %344

lpad471:                                          ; preds = %invoke.cont468
  %345 = landingpad { i8*, i32 }
          cleanup
  %346 = extractvalue { i8*, i32 } %345, 0
  store i8* %346, i8** %exn.slot, align 8
  %347 = extractvalue { i8*, i32 } %345, 1
  store i32 %347, i32* %ehselector.slot, align 4
  br label %ehcleanup476

lpad473:                                          ; preds = %invoke.cont472
  %348 = landingpad { i8*, i32 }
          cleanup
  %349 = extractvalue { i8*, i32 } %348, 0
  store i8* %349, i8** %exn.slot, align 8
  %350 = extractvalue { i8*, i32 } %348, 1
  store i32 %350, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp469) #3
  br label %ehcleanup476

ehcleanup476:                                     ; preds = %lpad473, %lpad471
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp470) #3
  br label %ehcleanup485

lpad479:                                          ; preds = %invoke.cont474
  %351 = landingpad { i8*, i32 }
          cleanup
  %352 = extractvalue { i8*, i32 } %351, 0
  store i8* %352, i8** %exn.slot, align 8
  %353 = extractvalue { i8*, i32 } %351, 1
  store i32 %353, i32* %ehselector.slot, align 4
  br label %ehcleanup484

lpad481:                                          ; preds = %invoke.cont480
  %354 = landingpad { i8*, i32 }
          cleanup
  %355 = extractvalue { i8*, i32 } %354, 0
  store i8* %355, i8** %exn.slot, align 8
  %356 = extractvalue { i8*, i32 } %354, 1
  store i32 %356, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %agg.tmp477) #3
  br label %ehcleanup484

ehcleanup484:                                     ; preds = %lpad481, %lpad479
  call void @_ZNSaIcED1Ev(%"class.std::allocator.0"* %ref.tmp478) #3
  br label %ehcleanup485

ehcleanup485:                                     ; preds = %ehcleanup484, %ehcleanup476, %ehcleanup450, %ehcleanup436, %ehcleanup427, %ehcleanup418, %ehcleanup405, %ehcleanup379, %ehcleanup367, %ehcleanup325, %ehcleanup313, %ehcleanup240, %ehcleanup191, %ehcleanup183, %ehcleanup140, %ehcleanup132, %ehcleanup124, %ehcleanup109, %ehcleanup101, %ehcleanup93, %lpad3, %ehcleanup
  call void @_ZN5TimerD2Ev(%struct.Timer* %timer) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup485
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val486 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val486
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
  %n_warmup = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 2
  store i32 5, i32* %n_warmup, align 8
  %n_reps = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 3
  store i32 50, i32* %n_reps, align 4
  %file_name = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %file_name, align 8
  %max_iter = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 5
  store i32 2000, i32* %max_iter, align 8
  %error_threshold = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 6
  store i32 3, i32* %error_threshold, align 4
  %convergence_threshold = getelementptr inbounds %struct.Params, %struct.Params* %this1, i32 0, i32 7
  store float 1.000000e+00, float* %convergence_threshold, align 8
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
  %ref.tmp42 = alloca %"class.std::__cxx11::basic_string", align 8
  %clOptions = alloca [50 x i8], align 16
  %log_size = alloca i64, align 8
  %log = alloca i8*, align 8
  store %struct.OpenCLSetup* %this, %struct.OpenCLSetup** %this.addr, align 8
  store i32 %platform, i32* %platform.addr, align 4
  store i32 %device, i32* %device.addr, align 4
  %this1 = load %struct.OpenCLSetup*, %struct.OpenCLSetup** %this.addr, align 8
  store %struct._cl_platform_id* null, %struct._cl_platform_id** %clPlatform, align 8
  %call = call %struct._cl_platform_id* @_ZN10aocl_utils12findPlatformEPKc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  store %struct._cl_platform_id* %call, %struct._cl_platform_id** %clPlatform, align 8
  %0 = load %struct._cl_platform_id*, %struct._cl_platform_id** %clPlatform, align 8
  %cmp = icmp eq %struct._cl_platform_id* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0))
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
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 58)
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
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 61)
  call void @exit(i32 -1) #16
  unreachable

if.end13:                                         ; preds = %if.end7
  %17 = load %struct._cl_platform_id*, %struct._cl_platform_id** %clPlatform, align 8
  call void @_ZN10aocl_utils15getPlatformNameB5cxx11EP15_cl_platform_id(%"class.std::__cxx11::basic_string"* sret %ref.tmp, %struct._cl_platform_id* %17)
  %call14 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %ref.tmp) #3
  %call15 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %call14)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp) #3
  %18 = load i32, i32* %clNumDevices, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %18)
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
  %call22 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* %call19)
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
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 72)
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
  %clDeviceID = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 5
  store %struct._cl_device_id* %42, %struct._cl_device_id** %clDeviceID, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %device_name_, i64 0, i64 0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %arraydecay)
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
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 81)
  call void @exit(i32 -1) #16
  unreachable

if.end41:                                         ; preds = %if.end27
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %binary_file) #3
  %clDeviceID43 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 5
  %51 = load %struct._cl_device_id*, %struct._cl_device_id** %clDeviceID43, align 8
  invoke void @_ZN10aocl_utils18getBoardBinaryFileB5cxx11EPKcP13_cl_device_id(%"class.std::__cxx11::basic_string"* sret %ref.tmp42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), %struct._cl_device_id* %51)
          to label %invoke.cont45 unwind label %lpad44

invoke.cont45:                                    ; preds = %if.end41
  %call48 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* %binary_file, %"class.std::__cxx11::basic_string"* dereferenceable(32) %ref.tmp42)
          to label %invoke.cont47 unwind label %lpad46

invoke.cont47:                                    ; preds = %invoke.cont45
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp42) #3
  %call49 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %binary_file) #3
  %call51 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* %call49)
          to label %invoke.cont50 unwind label %lpad44

invoke.cont50:                                    ; preds = %invoke.cont47
  %clContext52 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 0
  %52 = load %struct._cl_context*, %struct._cl_context** %clContext52, align 8
  %call53 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %binary_file) #3
  %clDeviceID54 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 5
  %call56 = invoke %struct._cl_program* @_ZN10aocl_utils23createProgramFromBinaryEP11_cl_contextPKcPKP13_cl_device_idj(%struct._cl_context* %52, i8* %call53, %struct._cl_device_id** %clDeviceID54, i32 1)
          to label %invoke.cont55 unwind label %lpad44

invoke.cont55:                                    ; preds = %invoke.cont50
  %clProgram = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  store %struct._cl_program* %call56, %struct._cl_program** %clProgram, align 8
  %53 = load i32, i32* %clStatus, align 4
  %cmp57 = icmp ne i32 %53, 0
  br i1 %cmp57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %invoke.cont55
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i32, i32* %clStatus, align 4
  %call60 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 89)
          to label %invoke.cont59 unwind label %lpad44

invoke.cont59:                                    ; preds = %if.then58
  call void @exit(i32 -1) #16
  unreachable

lpad44:                                           ; preds = %if.then95, %invoke.cont89, %if.end87, %if.then84, %invoke.cont78, %invoke.cont72, %if.then68, %if.end61, %if.then58, %invoke.cont50, %invoke.cont47, %if.end41
  %56 = landingpad { i8*, i32 }
          cleanup
  %57 = extractvalue { i8*, i32 } %56, 0
  store i8* %57, i8** %exn.slot, align 8
  %58 = extractvalue { i8*, i32 } %56, 1
  store i32 %58, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad46:                                           ; preds = %invoke.cont45
  %59 = landingpad { i8*, i32 }
          cleanup
  %60 = extractvalue { i8*, i32 } %59, 0
  store i8* %60, i8** %exn.slot, align 8
  %61 = extractvalue { i8*, i32 } %59, 1
  store i32 %61, i32* %ehselector.slot, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp42) #3
  br label %ehcleanup

if.end61:                                         ; preds = %invoke.cont55
  %arraydecay62 = getelementptr inbounds [50 x i8], [50 x i8]* %clOptions, i64 0, i64 0
  %call63 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #3
  %clProgram64 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %62 = load %struct._cl_program*, %struct._cl_program** %clProgram64, align 8
  %call66 = invoke i32 @clBuildProgram(%struct._cl_program* %62, i32 0, %struct._cl_device_id** null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0), void (%struct._cl_program*, i8*)* null, i8* null)
          to label %invoke.cont65 unwind label %lpad44

invoke.cont65:                                    ; preds = %if.end61
  store i32 %call66, i32* %clStatus, align 4
  %63 = load i32, i32* %clStatus, align 4
  %cmp67 = icmp eq i32 %63, -11
  br i1 %cmp67, label %if.then68, label %if.end82

if.then68:                                        ; preds = %invoke.cont65
  %clProgram69 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %64 = load %struct._cl_program*, %struct._cl_program** %clProgram69, align 8
  %65 = load %struct._cl_device_id**, %struct._cl_device_id*** %clDevices, align 8
  %66 = load i32, i32* %device.addr, align 4
  %idxprom70 = sext i32 %66 to i64
  %arrayidx71 = getelementptr inbounds %struct._cl_device_id*, %struct._cl_device_id** %65, i64 %idxprom70
  %67 = load %struct._cl_device_id*, %struct._cl_device_id** %arrayidx71, align 8
  %call73 = invoke i32 @clGetProgramBuildInfo(%struct._cl_program* %64, %struct._cl_device_id* %67, i32 4483, i64 0, i8* null, i64* %log_size)
          to label %invoke.cont72 unwind label %lpad44

invoke.cont72:                                    ; preds = %if.then68
  %68 = load i64, i64* %log_size, align 8
  %call74 = call noalias i8* @malloc(i64 %68) #3
  store i8* %call74, i8** %log, align 8
  %clProgram75 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %69 = load %struct._cl_program*, %struct._cl_program** %clProgram75, align 8
  %70 = load %struct._cl_device_id**, %struct._cl_device_id*** %clDevices, align 8
  %71 = load i32, i32* %device.addr, align 4
  %idxprom76 = sext i32 %71 to i64
  %arrayidx77 = getelementptr inbounds %struct._cl_device_id*, %struct._cl_device_id** %70, i64 %idxprom76
  %72 = load %struct._cl_device_id*, %struct._cl_device_id** %arrayidx77, align 8
  %73 = load i64, i64* %log_size, align 8
  %74 = load i8*, i8** %log, align 8
  %call79 = invoke i32 @clGetProgramBuildInfo(%struct._cl_program* %69, %struct._cl_device_id* %72, i32 4483, i64 %73, i8* %74, i64* null)
          to label %invoke.cont78 unwind label %lpad44

invoke.cont78:                                    ; preds = %invoke.cont72
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = load i8*, i8** %log, align 8
  %call81 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %76)
          to label %invoke.cont80 unwind label %lpad44

invoke.cont80:                                    ; preds = %invoke.cont78
  br label %if.end82

if.end82:                                         ; preds = %invoke.cont80, %invoke.cont65
  %77 = load i32, i32* %clStatus, align 4
  %cmp83 = icmp ne i32 %77, 0
  br i1 %cmp83, label %if.then84, label %if.end87

if.then84:                                        ; preds = %if.end82
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = load i32, i32* %clStatus, align 4
  %call86 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 109)
          to label %invoke.cont85 unwind label %lpad44

invoke.cont85:                                    ; preds = %if.then84
  call void @exit(i32 -1) #16
  unreachable

if.end87:                                         ; preds = %if.end82
  %clProgram88 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %80 = load %struct._cl_program*, %struct._cl_program** %clProgram88, align 8
  %call90 = invoke %struct._cl_kernel* @clCreateKernel(%struct._cl_program* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32* %clStatus)
          to label %invoke.cont89 unwind label %lpad44

invoke.cont89:                                    ; preds = %if.end87
  %clKernel = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 3
  store %struct._cl_kernel* %call90, %struct._cl_kernel** %clKernel, align 8
  %clProgram91 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %81 = load %struct._cl_program*, %struct._cl_program** %clProgram91, align 8
  %call93 = invoke %struct._cl_kernel* @clCreateKernel(%struct._cl_program* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32* %clStatus)
          to label %invoke.cont92 unwind label %lpad44

invoke.cont92:                                    ; preds = %invoke.cont89
  %clKernel2 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 4
  store %struct._cl_kernel* %call93, %struct._cl_kernel** %clKernel2, align 8
  %82 = load i32, i32* %clStatus, align 4
  %cmp94 = icmp ne i32 %82, 0
  br i1 %cmp94, label %if.then95, label %if.end98

if.then95:                                        ; preds = %invoke.cont92
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %84 = load i32, i32* %clStatus, align 4
  %call97 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 115)
          to label %invoke.cont96 unwind label %lpad44

invoke.cont96:                                    ; preds = %if.then95
  call void @exit(i32 -1) #16
  unreachable

if.end98:                                         ; preds = %invoke.cont92
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %binary_file) #3
  ret void

ehcleanup:                                        ; preds = %lpad46, %lpad44
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %binary_file) #3
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup, %lpad20, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val99 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val99
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

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local %struct._cl_mem* @clCreateBuffer(%struct._cl_context*, i64, i64, i8*, i32*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @clFinish(%struct._cl_command_queue*) #1

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
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i8* %call, double %div)
  ret void
}

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
  %clDeviceID = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 5
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
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 122)
  call void @exit(i32 -1) #16
  unreachable

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %max_work_items, align 8
  ret i64 %6
}

declare dso_local i32 @clEnqueueWriteBuffer(%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNSt13__atomic_baseIiEaSEi(%"struct.std::__atomic_base"* %this, i32 %__i) #7 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr.i = alloca i32, align 4
  %__m.addr.i = alloca i32, align 4
  %__b.i = alloca i32, align 4
  %.atomictmp.i = alloca i32, align 4
  %this.addr = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr = alloca i32, align 4
  store %"struct.std::__atomic_base"* %this, %"struct.std::__atomic_base"** %this.addr, align 8
  store i32 %__i, i32* %__i.addr, align 4
  %this1 = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr, align 8
  %0 = load i32, i32* %__i.addr, align 4
  store %"struct.std::__atomic_base"* %this1, %"struct.std::__atomic_base"** %this.addr.i, align 8
  store i32 %0, i32* %__i.addr.i, align 4
  store i32 5, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %1 = load i32, i32* %__m.addr.i, align 4
  %call.i = invoke i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 %1, i32 65535)
          to label %invoke.cont.i unwind label %terminate.lpad.i

invoke.cont.i:                                    ; preds = %entry
  store i32 %call.i, i32* %__b.i, align 4
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0
  %2 = load i32, i32* %__m.addr.i, align 4
  %3 = load i32, i32* %__i.addr.i, align 4
  store i32 %3, i32* %.atomictmp.i, align 4
  switch i32 %2, label %monotonic.i [
    i32 3, label %release.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %invoke.cont.i
  %4 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %4, i32* %_M_i.i monotonic, align 4
  br label %_ZNSt13__atomic_baseIiE5storeEiSt12memory_order.exit

release.i:                                        ; preds = %invoke.cont.i
  %5 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %5, i32* %_M_i.i release, align 4
  br label %_ZNSt13__atomic_baseIiE5storeEiSt12memory_order.exit

seqcst.i:                                         ; preds = %invoke.cont.i
  %6 = load i32, i32* %.atomictmp.i, align 4
  store atomic i32 %6, i32* %_M_i.i seq_cst, align 4
  br label %_ZNSt13__atomic_baseIiE5storeEiSt12memory_order.exit

terminate.lpad.i:                                 ; preds = %entry
  %7 = landingpad { i8*, i32 }
          catch i8* null
  %8 = extractvalue { i8*, i32 } %7, 0
  call void @__clang_call_terminate(i8* %8) #16
  unreachable

_ZNSt13__atomic_baseIiE5storeEiSt12memory_order.exit: ; preds = %monotonic.i, %release.i, %seqcst.i
  %9 = load i32, i32* %__i.addr, align 4
  ret i32 %9
}

declare dso_local i32 @clSetKernelArg(%struct._cl_kernel*, i32, i64, i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #8

declare dso_local i32 @clEnqueueNDRangeKernel(%struct._cl_command_queue*, %struct._cl_kernel*, i32, i64*, i64*, i64*, i32, %struct._cl_event**, %struct._cl_event**) #1

declare dso_local i32 @clEnqueueReadBuffer(%struct._cl_command_queue*, %struct._cl_mem*, i32, i64, i64, i8*, i32, %struct._cl_event**, %struct._cl_event**) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNKSt13__atomic_baseIiEcviEv(%"struct.std::__atomic_base"* %this) #7 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %this.addr.i = alloca %"struct.std::__atomic_base"*, align 8
  %__m.addr.i = alloca i32, align 4
  %__b.i = alloca i32, align 4
  %atomic-temp.i = alloca i32, align 4
  %this.addr = alloca %"struct.std::__atomic_base"*, align 8
  store %"struct.std::__atomic_base"* %this, %"struct.std::__atomic_base"** %this.addr, align 8
  %this1 = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr, align 8
  store %"struct.std::__atomic_base"* %this1, %"struct.std::__atomic_base"** %this.addr.i, align 8
  store i32 5, i32* %__m.addr.i, align 4
  %this1.i = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr.i, align 8
  %0 = load i32, i32* %__m.addr.i, align 4
  %call.i = invoke i32 @_ZStanSt12memory_orderSt23__memory_order_modifier(i32 %0, i32 65535)
          to label %invoke.cont.i unwind label %terminate.lpad.i

invoke.cont.i:                                    ; preds = %entry
  store i32 %call.i, i32* %__b.i, align 4
  %_M_i.i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1.i, i32 0, i32 0
  %1 = load i32, i32* %__m.addr.i, align 4
  switch i32 %1, label %monotonic.i [
    i32 1, label %acquire.i
    i32 2, label %acquire.i
    i32 5, label %seqcst.i
  ]

monotonic.i:                                      ; preds = %invoke.cont.i
  %2 = load atomic i32, i32* %_M_i.i monotonic, align 4
  store i32 %2, i32* %atomic-temp.i, align 4
  br label %_ZNKSt13__atomic_baseIiE4loadESt12memory_order.exit

acquire.i:                                        ; preds = %invoke.cont.i, %invoke.cont.i
  %3 = load atomic i32, i32* %_M_i.i acquire, align 4
  store i32 %3, i32* %atomic-temp.i, align 4
  br label %_ZNKSt13__atomic_baseIiE4loadESt12memory_order.exit

seqcst.i:                                         ; preds = %invoke.cont.i
  %4 = load atomic i32, i32* %_M_i.i seq_cst, align 4
  store i32 %4, i32* %atomic-temp.i, align 4
  br label %_ZNKSt13__atomic_baseIiE4loadESt12memory_order.exit

terminate.lpad.i:                                 ; preds = %entry
  %5 = landingpad { i8*, i32 }
          catch i8* null
  %6 = extractvalue { i8*, i32 } %5, 0
  call void @__clang_call_terminate(i8* %6) #16
  unreachable

_ZNKSt13__atomic_baseIiE4loadESt12memory_order.exit: ; preds = %monotonic.i, %acquire.i, %seqcst.i
  %7 = load i32, i32* %atomic-temp.i, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZNSt13__atomic_baseIiEpLEi(%"struct.std::__atomic_base"* %this, i32 %__i) #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::__atomic_base"*, align 8
  %__i.addr = alloca i32, align 4
  %.atomictmp = alloca i32, align 4
  %atomic-temp = alloca i32, align 4
  store %"struct.std::__atomic_base"* %this, %"struct.std::__atomic_base"** %this.addr, align 8
  store i32 %__i, i32* %__i.addr, align 4
  %this1 = load %"struct.std::__atomic_base"*, %"struct.std::__atomic_base"** %this.addr, align 8
  %_M_i = getelementptr inbounds %"struct.std::__atomic_base", %"struct.std::__atomic_base"* %this1, i32 0, i32 0
  %0 = load i32, i32* %__i.addr, align 4
  store i32 %0, i32* %.atomictmp, align 4
  %1 = load i32, i32* %.atomictmp, align 4
  %2 = atomicrmw add i32* %_M_i, i32 %1 seq_cst
  %3 = add i32 %2, %1
  store i32 %3, i32* %atomic-temp, align 4
  %4 = load i32, i32* %atomic-temp, align 4
  ret i32 %4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_Z6verifyP10flowvectoriPiiifii(%struct.flowvector* %flow_vector_array, i32 %size_flow_vector_array, i32* %random_numbers, i32 %max_iter, i32 %error_threshold, float %convergence_threshold, i32 %candidates, i32 %b_outliers) #4 comdat {
entry:
  %flow_vector_array.addr = alloca %struct.flowvector*, align 8
  %size_flow_vector_array.addr = alloca i32, align 4
  %random_numbers.addr = alloca i32*, align 8
  %max_iter.addr = alloca i32, align 4
  %error_threshold.addr = alloca i32, align 4
  %convergence_threshold.addr = alloca float, align 4
  %candidates.addr = alloca i32, align 4
  %b_outliers.addr = alloca i32, align 4
  %model_candidate = alloca i32*, align 8
  %outliers_candidate = alloca i32*, align 8
  %count_candidates = alloca i32, align 4
  %best_model = alloca i32, align 4
  %best_outliers = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.flowvector* %flow_vector_array, %struct.flowvector** %flow_vector_array.addr, align 8
  store i32 %size_flow_vector_array, i32* %size_flow_vector_array.addr, align 4
  store i32* %random_numbers, i32** %random_numbers.addr, align 8
  store i32 %max_iter, i32* %max_iter.addr, align 4
  store i32 %error_threshold, i32* %error_threshold.addr, align 4
  store float %convergence_threshold, float* %convergence_threshold.addr, align 4
  store i32 %candidates, i32* %candidates.addr, align 4
  store i32 %b_outliers, i32* %b_outliers.addr, align 4
  %0 = load i32, i32* %max_iter.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %model_candidate, align 8
  %2 = load i32, i32* %max_iter.addr, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 %conv1, 4
  %call3 = call noalias i8* @malloc(i64 %mul2) #3
  %3 = bitcast i8* %call3 to i32*
  store i32* %3, i32** %outliers_candidate, align 8
  store i32 0, i32* %count_candidates, align 4
  %4 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %5 = load i32, i32* %size_flow_vector_array.addr, align 4
  %6 = load i32*, i32** %model_candidate, align 8
  %7 = load i32*, i32** %outliers_candidate, align 8
  %8 = load i32*, i32** %random_numbers.addr, align 8
  %9 = load i32, i32* %max_iter.addr, align 4
  %10 = load i32, i32* %error_threshold.addr, align 4
  %11 = load float, float* %convergence_threshold.addr, align 4
  %call4 = call i32 @_Z36estimate_ego_motion_first_order_flowP10flowvectoriPiS1_S1_S1_iif(%struct.flowvector* %4, i32 %5, i32* %6, i32* %7, i32* %count_candidates, i32* %8, i32 %9, i32 %10, float %11)
  store i32 -1, i32* %best_model, align 4
  %12 = load i32, i32* %size_flow_vector_array.addr, align 4
  store i32 %12, i32* %best_outliers, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %count_candidates, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32*, i32** %outliers_candidate, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %18 = load i32, i32* %best_outliers, align 4
  %cmp5 = icmp slt i32 %17, %18
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load i32*, i32** %outliers_candidate, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %20 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %19, i64 %idxprom6
  %21 = load i32, i32* %arrayidx7, align 4
  store i32 %21, i32* %best_outliers, align 4
  %22 = load i32*, i32** %model_candidate, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %23 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %22, i64 %idxprom8
  %24 = load i32, i32* %arrayidx9, align 4
  store i32 %24, i32* %best_model, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %candidates.addr, align 4
  %27 = load i32, i32* %count_candidates, align 4
  %28 = load i32, i32* %best_outliers, align 4
  %29 = load i32, i32* %b_outliers.addr, align 4
  %call10 = call i32 @_Z14compare_outputiiii(i32 %26, i32 %27, i32 %28, i32 %29)
  %30 = load i32*, i32** %model_candidate, align 8
  %31 = bitcast i32* %30 to i8*
  call void @free(i8* %31) #3
  %32 = load i32*, i32** %outliers_candidate, align 8
  %33 = bitcast i32* %32 to i8*
  call void @free(i8* %33) #3
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
  %clKernel = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 3
  %0 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel, align 8
  %call = call i32 @clReleaseKernel(%struct._cl_kernel* %0)
  %clKernel2 = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 4
  %1 = load %struct._cl_kernel*, %struct._cl_kernel** %clKernel2, align 8
  %call2 = call i32 @clReleaseKernel(%struct._cl_kernel* %1)
  %clProgram = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 2
  %2 = load %struct._cl_program*, %struct._cl_program** %clProgram, align 8
  %call3 = call i32 @clReleaseProgram(%struct._cl_program* %2)
  %clCommandQueue = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 1
  %3 = load %struct._cl_command_queue*, %struct._cl_command_queue** %clCommandQueue, align 8
  %call4 = call i32 @clReleaseCommandQueue(%struct._cl_command_queue* %3)
  %clContext = getelementptr inbounds %struct.OpenCLSetup, %struct.OpenCLSetup* %this1, i32 0, i32 0
  %4 = load %struct._cl_context*, %struct._cl_context** %clContext, align 8
  %call5 = call i32 @clReleaseContext(%struct._cl_context* %4)
  ret void
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

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @clGetDeviceIDs(%struct._cl_platform_id*, i64, i32, %struct._cl_device_id**, i32*) #1

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #10

declare dso_local void @_ZN10aocl_utils15getPlatformNameB5cxx11EP15_cl_platform_id(%"class.std::__cxx11::basic_string"* sret, %struct._cl_platform_id*) #1

; Function Attrs: nounwind
declare dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"*) #2

declare dso_local void @_ZN10aocl_utils13getDeviceNameB5cxx11EP13_cl_device_id(%"class.std::__cxx11::basic_string"* sret, %struct._cl_device_id*) #1

declare dso_local %struct._cl_context* @clCreateContext(i64*, i32, %struct._cl_device_id**, void (i8*, i8*, i64, i8*)*, i8*, i32*) #1

declare dso_local void @_ZN10aocl_utils18oclContextCallbackEPKcPKvmPv(i8*, i8*, i64, i8*) #1

declare dso_local i32 @clGetDeviceInfo(%struct._cl_device_id*, i32, i64, i8*, i64*) #1

declare dso_local %struct._cl_command_queue* @clCreateCommandQueue(%struct._cl_context*, %struct._cl_device_id*, i64, i32*) #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #2

declare dso_local void @_ZN10aocl_utils18getBoardBinaryFileB5cxx11EPKcP13_cl_device_id(%"class.std::__cxx11::basic_string"* sret, i8*, %struct._cl_device_id*) #1

declare dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) #1

declare dso_local %struct._cl_program* @_ZN10aocl_utils23createProgramFromBinaryEP11_cl_contextPKcPKP13_cl_device_idj(%struct._cl_context*, i8*, %struct._cl_device_id**, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

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
define linkonce_odr hidden void @__clang_call_terminate(i8*) #11 comdat {
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
  %ref.tmp10 = alloca %"class.std::tuple.3", align 1
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
  %call12 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(%"class.std::_Rb_tree"* %_M_t, %"struct.std::_Rb_tree_node_base"* %4, %"struct.std::piecewise_construct_t"* dereferenceable(1) @_ZStL19piecewise_construct, %"class.std::tuple"* dereferenceable(8) %ref.tmp9, %"class.std::tuple.3"* dereferenceable(1) %ref.tmp10)
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
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__pos.coerce, %"struct.std::piecewise_construct_t"* dereferenceable(1) %__args, %"class.std::tuple"* dereferenceable(8) %__args1, %"class.std::tuple.3"* dereferenceable(1) %__args3) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca %"struct.std::_Rb_tree_iterator", align 8
  %__pos = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__args.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  %__args.addr2 = alloca %"class.std::tuple"*, align 8
  %__args.addr4 = alloca %"class.std::tuple.3"*, align 8
  %__z = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__res = alloca %"struct.std::pair.4", align 8
  %agg.tmp = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %coerce.dive = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %__pos, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %__pos.coerce, %"struct.std::_Rb_tree_node_base"** %coerce.dive, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %__args.addr2, align 8
  store %"class.std::tuple.3"* %__args3, %"class.std::tuple.3"** %__args.addr4, align 8
  %this5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %0 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  %call = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %0) #3
  %1 = load %"class.std::tuple"*, %"class.std::tuple"** %__args.addr2, align 8
  %call6 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::tuple"* dereferenceable(8) %1) #3
  %2 = load %"class.std::tuple.3"*, %"class.std::tuple.3"** %__args.addr4, align 8
  %call7 = call dereferenceable(1) %"class.std::tuple.3"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.3"* dereferenceable(1) %2) #3
  %call8 = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_(%"class.std::_Rb_tree"* %this5, %"struct.std::piecewise_construct_t"* dereferenceable(1) %call, %"class.std::tuple"* dereferenceable(8) %call6, %"class.std::tuple.3"* dereferenceable(1) %call7)
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
  %7 = bitcast %"struct.std::pair.4"* %__res to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %8 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %7, i32 0, i32 0
  %9 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call12, 0
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %10 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %7, i32 0, i32 1
  %11 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %call12, 1
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %10, align 8
  %second = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %__res, i32 0, i32 1
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %second, align 8
  %tobool = icmp ne %"struct.std::_Rb_tree_node_base"* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont11
  %first = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %__res, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second13 = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %__res, i32 0, i32 1
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
  %first17 = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %__res, i32 0, i32 0
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
define linkonce_odr dso_local %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEPSt13_Rb_tree_nodeIS8_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::piecewise_construct_t"* dereferenceable(1) %__args, %"class.std::tuple"* dereferenceable(8) %__args1, %"class.std::tuple.3"* dereferenceable(1) %__args3) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__args.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  %__args.addr2 = alloca %"class.std::tuple"*, align 8
  %__args.addr4 = alloca %"class.std::tuple.3"*, align 8
  %__tmp = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %__args.addr2, align 8
  store %"class.std::tuple.3"* %__args3, %"class.std::tuple.3"** %__args.addr4, align 8
  %this5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %this.addr, align 8
  %call = call %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* %this5)
  store %"struct.std::_Rb_tree_node"* %call, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %0 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %__tmp, align 8
  %1 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  %call6 = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %1) #3
  %2 = load %"class.std::tuple"*, %"class.std::tuple"** %__args.addr2, align 8
  %call7 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::tuple"* dereferenceable(8) %2) #3
  %3 = load %"class.std::tuple.3"*, %"class.std::tuple.3"** %__args.addr4, align 8
  %call8 = call dereferenceable(1) %"class.std::tuple.3"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.3"* dereferenceable(1) %3) #3
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(%"class.std::_Rb_tree"* %this5, %"struct.std::_Rb_tree_node"* %0, %"struct.std::piecewise_construct_t"* dereferenceable(1) %call6, %"class.std::tuple"* dereferenceable(8) %call7, %"class.std::tuple.3"* dereferenceable(1) %call8)
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
define linkonce_odr dso_local dereferenceable(1) %"class.std::tuple.3"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.3"* dereferenceable(1) %__t) #7 comdat {
entry:
  %__t.addr = alloca %"class.std::tuple.3"*, align 8
  store %"class.std::tuple.3"* %__t, %"class.std::tuple.3"** %__t.addr, align 8
  %0 = load %"class.std::tuple.3"*, %"class.std::tuple.3"** %__t.addr, align 8
  ret %"class.std::tuple.3"* %0
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node_base"* %__position.coerce, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__k) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair.4", align 8
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call10)
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then
  %4 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call11 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %4)
  %5 = bitcast %"struct.std::pair.4"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call23, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call24)
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp37, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node38)
  br label %return

if.else39:                                        ; preds = %if.then32
  %_M_node40 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  %_M_node41 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__pos, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node40, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node41)
  br label %return

if.else42:                                        ; preds = %if.else25
  %19 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call43 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %19)
  %20 = bitcast %"struct.std::pair.4"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp55, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %call56)
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp69, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node70)
  br label %return

if.else71:                                        ; preds = %if.then64
  %_M_node72 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  %_M_node73 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__after, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node72, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node73)
  br label %return

if.else74:                                        ; preds = %if.else57
  %34 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %__k.addr, align 8
  %call75 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %this1, %"class.std::__cxx11::basic_string"* dereferenceable(32) %34)
  %35 = bitcast %"struct.std::pair.4"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node77, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp78)
  br label %return

return:                                           ; preds = %if.else76, %if.else74, %if.else71, %if.then68, %if.then54, %if.else42, %if.else39, %if.then36, %if.then22, %if.else, %if.then9
  %40 = bitcast %"struct.std::pair.4"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
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
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(%"class.std::_Rb_tree"* %this, %"struct.std::_Rb_tree_node"* %__node, %"struct.std::piecewise_construct_t"* dereferenceable(1) %__args, %"class.std::tuple"* dereferenceable(8) %__args1, %"class.std::tuple.3"* dereferenceable(1) %__args3) #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Rb_tree"*, align 8
  %__node.addr = alloca %"struct.std::_Rb_tree_node"*, align 8
  %__args.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  %__args.addr2 = alloca %"class.std::tuple"*, align 8
  %__args.addr4 = alloca %"class.std::tuple.3"*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %"class.std::_Rb_tree"* %this, %"class.std::_Rb_tree"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"* %__node, %"struct.std::_Rb_tree_node"** %__node.addr, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %__args.addr2, align 8
  store %"class.std::tuple.3"* %__args3, %"class.std::tuple.3"** %__args.addr4, align 8
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
  %6 = load %"class.std::tuple.3"*, %"class.std::tuple.3"** %__args.addr4, align 8
  %call9 = call dereferenceable(1) %"class.std::tuple.3"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.3"* dereferenceable(1) %6) #3
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESH_IJEEEEEvRSB_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %call, %"struct.std::pair"* %call6, %"struct.std::piecewise_construct_t"* dereferenceable(1) %call7, %"class.std::tuple"* dereferenceable(8) %call8, %"class.std::tuple.3"* dereferenceable(1) %call9)
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
declare dso_local noalias i8* @_Znwm(i64) #10

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEE9constructIS9_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESH_IJEEEEEvRSB_PT_DpOT0_(%"class.std::allocator"* dereferenceable(1) %__a, %"struct.std::pair"* %__p, %"struct.std::piecewise_construct_t"* dereferenceable(1) %__args, %"class.std::tuple"* dereferenceable(8) %__args1, %"class.std::tuple.3"* dereferenceable(1) %__args3) #4 comdat align 2 {
entry:
  %__a.addr = alloca %"class.std::allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__args.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  %__args.addr2 = alloca %"class.std::tuple"*, align 8
  %__args.addr4 = alloca %"class.std::tuple.3"*, align 8
  store %"class.std::allocator"* %__a, %"class.std::allocator"** %__a.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %__args.addr2, align 8
  store %"class.std::tuple.3"* %__args3, %"class.std::tuple.3"** %__args.addr4, align 8
  %0 = load %"class.std::allocator"*, %"class.std::allocator"** %__a.addr, align 8
  %1 = bitcast %"class.std::allocator"* %0 to %"class.__gnu_cxx::new_allocator"*
  %2 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %3 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  %call = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %3) #3
  %4 = load %"class.std::tuple"*, %"class.std::tuple"** %__args.addr2, align 8
  %call5 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::tuple"* dereferenceable(8) %4) #3
  %5 = load %"class.std::tuple.3"*, %"class.std::tuple.3"** %__args.addr4, align 8
  %call6 = call dereferenceable(1) %"class.std::tuple.3"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.3"* dereferenceable(1) %5) #3
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESH_IJEEEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %1, %"struct.std::pair"* %2, %"struct.std::piecewise_construct_t"* dereferenceable(1) %call, %"class.std::tuple"* dereferenceable(8) %call5, %"class.std::tuple.3"* dereferenceable(1) %call6)
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
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEE9constructISA_JRKSt21piecewise_construct_tSt5tupleIJRS9_EESH_IJEEEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %this, %"struct.std::pair"* %__p, %"struct.std::piecewise_construct_t"* dereferenceable(1) %__args, %"class.std::tuple"* dereferenceable(8) %__args1, %"class.std::tuple.3"* dereferenceable(1) %__args3) #4 comdat align 2 {
entry:
  %this.addr = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %__p.addr = alloca %"struct.std::pair"*, align 8
  %__args.addr = alloca %"struct.std::piecewise_construct_t"*, align 8
  %__args.addr2 = alloca %"class.std::tuple"*, align 8
  %__args.addr4 = alloca %"class.std::tuple.3"*, align 8
  %agg.tmp = alloca %"struct.std::piecewise_construct_t", align 1
  %agg.tmp6 = alloca %"class.std::tuple", align 8
  %agg.tmp8 = alloca %"class.std::tuple.3", align 1
  store %"class.__gnu_cxx::new_allocator"* %this, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  store %"struct.std::pair"* %__p, %"struct.std::pair"** %__p.addr, align 8
  store %"struct.std::piecewise_construct_t"* %__args, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  store %"class.std::tuple"* %__args1, %"class.std::tuple"** %__args.addr2, align 8
  store %"class.std::tuple.3"* %__args3, %"class.std::tuple.3"** %__args.addr4, align 8
  %this5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %this.addr, align 8
  %0 = load %"struct.std::pair"*, %"struct.std::pair"** %__p.addr, align 8
  %1 = bitcast %"struct.std::pair"* %0 to i8*
  %2 = bitcast i8* %1 to %"struct.std::pair"*
  %3 = load %"struct.std::piecewise_construct_t"*, %"struct.std::piecewise_construct_t"** %__args.addr, align 8
  %call = call dereferenceable(1) %"struct.std::piecewise_construct_t"* @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::piecewise_construct_t"* dereferenceable(1) %3) #3
  %4 = load %"class.std::tuple"*, %"class.std::tuple"** %__args.addr2, align 8
  %call7 = call dereferenceable(8) %"class.std::tuple"* @_ZSt7forwardISt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEOT_RNSt16remove_referenceISA_E4typeE(%"class.std::tuple"* dereferenceable(8) %4) #3
  call void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(%"class.std::tuple"* %agg.tmp6, %"class.std::tuple"* dereferenceable(8) %call7) #3
  %5 = load %"class.std::tuple.3"*, %"class.std::tuple.3"** %__args.addr4, align 8
  %call9 = call dereferenceable(1) %"class.std::tuple.3"* @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(%"class.std::tuple.3"* dereferenceable(1) %5) #3
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
  %__second = alloca %"class.std::tuple.3", align 1
  %this.addr = alloca %"struct.std::pair"*, align 8
  %agg.tmp = alloca %"struct.std::_Index_tuple", align 1
  %agg.tmp3 = alloca %"struct.std::_Index_tuple.5", align 1
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  %this2 = load %"struct.std::pair"*, %"struct.std::pair"** %this.addr, align 8
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE(%"struct.std::pair"* %this2, %"class.std::tuple"* dereferenceable(8) %__first, %"class.std::tuple.3"* dereferenceable(1) %__second)
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
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEC2IJRS6_EJLm0EEJEJEEERSt5tupleIJDpT_EERSA_IJDpT1_EESt12_Index_tupleIJXspT0_EEESJ_IJXspT2_EEE(%"struct.std::pair"* %this, %"class.std::tuple"* dereferenceable(8) %__tuple1, %"class.std::tuple.3"* dereferenceable(1) %__tuple2) unnamed_addr #4 comdat align 2 {
entry:
  %0 = alloca %"struct.std::_Index_tuple", align 1
  %1 = alloca %"struct.std::_Index_tuple.5", align 1
  %this.addr = alloca %"struct.std::pair"*, align 8
  %__tuple1.addr = alloca %"class.std::tuple"*, align 8
  %__tuple2.addr = alloca %"class.std::tuple.3"*, align 8
  store %"struct.std::pair"* %this, %"struct.std::pair"** %this.addr, align 8
  store %"class.std::tuple"* %__tuple1, %"class.std::tuple"** %__tuple1.addr, align 8
  store %"class.std::tuple.3"* %__tuple2, %"class.std::tuple.3"** %__tuple2.addr, align 8
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
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEERKS1_OT_(%"struct.std::pair.4"* %this, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.4"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.4"* %this, %"struct.std::pair.4"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %this1 = load %"struct.std::pair.4"*, %"struct.std::pair.4"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %0, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %this1, i32 0, i32 1
  %2 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %2) #3
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call, align 8
  store %"struct.std::_Rb_tree_node_base"* %3, %"struct.std::_Rb_tree_node_base"** %second, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_dESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* %this, %"class.std::__cxx11::basic_string"* dereferenceable(32) %__k) #4 comdat align 2 {
entry:
  %retval = alloca %"struct.std::pair.4", align 8
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEESF_vEEOT_OT0_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__y)
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
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEESF_vEEOT_OT0_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__y)
  br label %return

if.end18:                                         ; preds = %if.end12
  %_M_node19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %__j, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %ref.tmp20, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.4"* %retval, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %_M_node19, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %ref.tmp20)
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %if.then10
  %14 = bitcast %"struct.std::pair.4"* %retval to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
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
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_vEEOT_OT0_(%"struct.std::pair.4"* %this, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.4"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.4"* %this, %"struct.std::pair.4"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %this1 = load %"struct.std::pair.4"*, %"struct.std::pair.4"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %0) #3
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %this1, i32 0, i32 1
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
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_vEEOT_RKS1_(%"struct.std::pair.4"* %this, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node_base"** dereferenceable(8) %__y) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.4"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.4"* %this, %"struct.std::pair.4"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__x, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node_base"** %__y, %"struct.std::_Rb_tree_node_base"*** %__y.addr, align 8
  %this1 = load %"struct.std::pair.4"*, %"struct.std::pair.4"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %__x.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(%"struct.std::_Rb_tree_node_base"** dereferenceable(8) %0) #3
  %1 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %call, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %this1, i32 0, i32 1
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
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEESF_vEEOT_OT0_(%"struct.std::pair.4"* %this, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__x, %"struct.std::_Rb_tree_node"** dereferenceable(8) %__y) unnamed_addr #7 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::pair.4"*, align 8
  %__x.addr = alloca %"struct.std::_Rb_tree_node"**, align 8
  %__y.addr = alloca %"struct.std::_Rb_tree_node"**, align 8
  store %"struct.std::pair.4"* %this, %"struct.std::pair.4"** %this.addr, align 8
  store %"struct.std::_Rb_tree_node"** %__x, %"struct.std::_Rb_tree_node"*** %__x.addr, align 8
  store %"struct.std::_Rb_tree_node"** %__y, %"struct.std::_Rb_tree_node"*** %__y.addr, align 8
  %this1 = load %"struct.std::pair.4"*, %"struct.std::pair.4"** %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %this1, i32 0, i32 0
  %0 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %__x.addr, align 8
  %call = call dereferenceable(8) %"struct.std::_Rb_tree_node"** @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdEEEOT_RNSt16remove_referenceISD_E4typeE(%"struct.std::_Rb_tree_node"** dereferenceable(8) %0) #3
  %1 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %call, align 8
  %2 = bitcast %"struct.std::_Rb_tree_node"* %1 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %first, align 8
  %second = getelementptr inbounds %"struct.std::pair.4", %"struct.std::pair.4"* %this1, i32 0, i32 1
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

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_Z36estimate_ego_motion_first_order_flowP10flowvectoriPiS1_S1_S1_iif(%struct.flowvector* %flow_vector_array, i32 %size_flow_vector_array, i32* %model_candidate, i32* %outliers_candidate, i32* %count_candidates, i32* %random_numbers, i32 %max_iter, i32 %error_threshold, float %convergence_threshold) #4 comdat {
entry:
  %retval = alloca i32, align 4
  %flow_vector_array.addr = alloca %struct.flowvector*, align 8
  %size_flow_vector_array.addr = alloca i32, align 4
  %model_candidate.addr = alloca i32*, align 8
  %outliers_candidate.addr = alloca i32*, align 8
  %count_candidates.addr = alloca i32*, align 8
  %random_numbers.addr = alloca i32*, align 8
  %max_iter.addr = alloca i32, align 4
  %error_threshold.addr = alloca i32, align 4
  %convergence_threshold.addr = alloca float, align 4
  %iter = alloca i32, align 4
  %ret = alloca i32, align 4
  %ego_vector_array = alloca %struct.flowvector*, align 8
  %model_param_seq = alloca [4 x float], align 16
  store %struct.flowvector* %flow_vector_array, %struct.flowvector** %flow_vector_array.addr, align 8
  store i32 %size_flow_vector_array, i32* %size_flow_vector_array.addr, align 4
  store i32* %model_candidate, i32** %model_candidate.addr, align 8
  store i32* %outliers_candidate, i32** %outliers_candidate.addr, align 8
  store i32* %count_candidates, i32** %count_candidates.addr, align 8
  store i32* %random_numbers, i32** %random_numbers.addr, align 8
  store i32 %max_iter, i32* %max_iter.addr, align 4
  store i32 %error_threshold, i32* %error_threshold.addr, align 4
  store float %convergence_threshold, float* %convergence_threshold.addr, align 4
  store i32 0, i32* %iter, align 4
  %0 = load i32, i32* %size_flow_vector_array.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %size_flow_vector_array.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 16, %conv
  %call = call noalias i8* @malloc(i64 %mul) #3
  %2 = bitcast i8* %call to %struct.flowvector*
  store %struct.flowvector* %2, %struct.flowvector** %ego_vector_array, align 8
  %3 = load i32*, i32** %count_candidates.addr, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %iter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %iter, align 4
  %5 = load i32, i32* %max_iter.addr, align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %size_flow_vector_array.addr, align 4
  %7 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %model_param_seq, i64 0, i64 0
  %8 = load i32*, i32** %random_numbers.addr, align 8
  %9 = load i32, i32* %iter, align 4
  %call2 = call i32 @_Z24gen_firstOrderFlow_modeliP10flowvectorPfPii(i32 %6, %struct.flowvector* %7, float* %arraydecay, i32* %8, i32 %9)
  store i32 %call2, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %arraydecay6 = getelementptr inbounds [4 x float], [4 x float]* %model_param_seq, i64 0, i64 0
  %11 = load i32, i32* %size_flow_vector_array.addr, align 4
  %12 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %13 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array, align 8
  call void @_Z26gen_firstOrderFlow_vectorsPfiP10flowvectorS1_(float* %arraydecay6, i32 %11, %struct.flowvector* %12, %struct.flowvector* %13)
  %14 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %15 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array, align 8
  %16 = load i32, i32* %size_flow_vector_array.addr, align 4
  %arraydecay7 = getelementptr inbounds [4 x float], [4 x float]* %model_param_seq, i64 0, i64 0
  %17 = load i32*, i32** %model_candidate.addr, align 8
  %18 = load i32*, i32** %outliers_candidate.addr, align 8
  %19 = load i32*, i32** %count_candidates.addr, align 8
  %20 = load i32, i32* %error_threshold.addr, align 4
  %21 = load float, float* %convergence_threshold.addr, align 4
  %22 = load i32, i32* %iter, align 4
  call void @_Z19choose_better_modelP10flowvectorS0_iPfPiS2_S2_ifi(%struct.flowvector* %14, %struct.flowvector* %15, i32 %16, float* %arraydecay7, i32* %17, i32* %18, i32* %19, i32 %20, float %21, i32 %22)
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %if.then4
  %23 = load i32, i32* %iter, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %iter, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_Z14compare_outputiiii(i32 %count1, i32 %count2, i32 %outliers1, i32 %outliers2) #4 comdat {
entry:
  %retval = alloca i32, align 4
  %count1.addr = alloca i32, align 4
  %count2.addr = alloca i32, align 4
  %outliers1.addr = alloca i32, align 4
  %outliers2.addr = alloca i32, align 4
  store i32 %count1, i32* %count1.addr, align 4
  store i32 %count2, i32* %count2.addr, align 4
  store i32 %outliers1, i32* %outliers1.addr, align 4
  store i32 %outliers2, i32* %outliers2.addr, align 4
  %0 = load i32, i32* %count1.addr, align 4
  %1 = load i32, i32* %count2.addr, align 4
  %2 = load i32, i32* %outliers1.addr, align 4
  %3 = load i32, i32* %outliers2.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i32 %0, i32 %1, i32 %2, i32 %3)
  %4 = load i32, i32* %count1.addr, align 4
  %5 = load i32, i32* %count2.addr, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %outliers1.addr, align 4
  %7 = load i32, i32* %outliers2.addr, align 4
  %cmp2 = icmp ne i32 %6, %7
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_Z24gen_firstOrderFlow_modeliP10flowvectorPfPii(i32 %flow_vector_count, %struct.flowvector* %flow_vector_array, float* %model_param, i32* %random_numbers, i32 %iter) #4 comdat {
entry:
  %flow_vector_count.addr = alloca i32, align 4
  %flow_vector_array.addr = alloca %struct.flowvector*, align 8
  %model_param.addr = alloca float*, align 8
  %random_numbers.addr = alloca i32*, align 8
  %iter.addr = alloca i32, align 4
  %rand_num = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %vx1 = alloca i32, align 4
  %vx2 = alloca i32, align 4
  %vy1 = alloca i32, align 4
  %vy2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %highest_val = alloca float, align 4
  store i32 %flow_vector_count, i32* %flow_vector_count.addr, align 4
  store %struct.flowvector* %flow_vector_array, %struct.flowvector** %flow_vector_array.addr, align 8
  store float* %model_param, float** %model_param.addr, align 8
  store i32* %random_numbers, i32** %random_numbers.addr, align 8
  store i32 %iter, i32* %iter.addr, align 4
  store float 0.000000e+00, float* %highest_val, align 4
  %0 = load i32*, i32** %random_numbers.addr, align 8
  %1 = load i32, i32* %iter.addr, align 4
  %mul = mul nsw i32 %1, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %rand_num, align 4
  %3 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %4 = load i32, i32* %rand_num, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %3, i64 %idxprom1
  %x = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx2, i32 0, i32 0
  %5 = load i32, i32* %x, align 4
  store i32 %5, i32* %x1, align 4
  %6 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %7 = load i32, i32* %rand_num, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %6, i64 %idxprom3
  %y = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx4, i32 0, i32 1
  %8 = load i32, i32* %y, align 4
  store i32 %8, i32* %y1, align 4
  %9 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %10 = load i32, i32* %rand_num, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %9, i64 %idxprom5
  %vx = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx6, i32 0, i32 2
  %11 = load i32, i32* %vx, align 4
  %12 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %13 = load i32, i32* %rand_num, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %12, i64 %idxprom7
  %x9 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx8, i32 0, i32 0
  %14 = load i32, i32* %x9, align 4
  %sub = sub nsw i32 %11, %14
  store i32 %sub, i32* %vx1, align 4
  %15 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %16 = load i32, i32* %rand_num, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %15, i64 %idxprom10
  %vy = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx11, i32 0, i32 3
  %17 = load i32, i32* %vy, align 4
  %18 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %19 = load i32, i32* %rand_num, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %18, i64 %idxprom12
  %y14 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx13, i32 0, i32 1
  %20 = load i32, i32* %y14, align 4
  %sub15 = sub nsw i32 %17, %20
  store i32 %sub15, i32* %vy1, align 4
  %21 = load i32*, i32** %random_numbers.addr, align 8
  %22 = load i32, i32* %iter.addr, align 4
  %mul16 = mul nsw i32 %22, 2
  %add = add nsw i32 %mul16, 1
  %idxprom17 = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %21, i64 %idxprom17
  %23 = load i32, i32* %arrayidx18, align 4
  store i32 %23, i32* %rand_num, align 4
  %24 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %25 = load i32, i32* %rand_num, align 4
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %24, i64 %idxprom19
  %x21 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx20, i32 0, i32 0
  %26 = load i32, i32* %x21, align 4
  store i32 %26, i32* %x2, align 4
  %27 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %28 = load i32, i32* %rand_num, align 4
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %27, i64 %idxprom22
  %y24 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx23, i32 0, i32 1
  %29 = load i32, i32* %y24, align 4
  store i32 %29, i32* %y2, align 4
  %30 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %31 = load i32, i32* %rand_num, align 4
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %30, i64 %idxprom25
  %vx27 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx26, i32 0, i32 2
  %32 = load i32, i32* %vx27, align 4
  %33 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %34 = load i32, i32* %rand_num, align 4
  %idxprom28 = sext i32 %34 to i64
  %arrayidx29 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %33, i64 %idxprom28
  %x30 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx29, i32 0, i32 0
  %35 = load i32, i32* %x30, align 4
  %sub31 = sub nsw i32 %32, %35
  store i32 %sub31, i32* %vx2, align 4
  %36 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %37 = load i32, i32* %rand_num, align 4
  %idxprom32 = sext i32 %37 to i64
  %arrayidx33 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %36, i64 %idxprom32
  %vy34 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx33, i32 0, i32 3
  %38 = load i32, i32* %vy34, align 4
  %39 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %40 = load i32, i32* %rand_num, align 4
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %39, i64 %idxprom35
  %y37 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx36, i32 0, i32 1
  %41 = load i32, i32* %y37, align 4
  %sub38 = sub nsw i32 %38, %41
  store i32 %sub38, i32* %vy2, align 4
  %42 = load i32, i32* %x1, align 4
  %43 = load i32, i32* %y1, align 4
  %44 = load i32, i32* %vx1, align 4
  %45 = load i32, i32* %vy1, align 4
  %46 = load i32, i32* %x2, align 4
  %47 = load i32, i32* %y2, align 4
  %48 = load i32, i32* %vx2, align 4
  %49 = load i32, i32* %vy2, align 4
  %50 = load float*, float** %model_param.addr, align 8
  %call = call i32 @_Z15gen_model_paramiiiiiiiiPf(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, float* %50)
  store i32 %call, i32* %ret, align 4
  %51 = load i32, i32* %ret, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_Z26gen_firstOrderFlow_vectorsPfiP10flowvectorS1_(float* %model_param, i32 %flow_vector_count, %struct.flowvector* %flow_vector_array, %struct.flowvector* %ego_vector_array) #7 comdat {
entry:
  %model_param.addr = alloca float*, align 8
  %flow_vector_count.addr = alloca i32, align 4
  %flow_vector_array.addr = alloca %struct.flowvector*, align 8
  %ego_vector_array.addr = alloca %struct.flowvector*, align 8
  %temp_x = alloca float, align 4
  %temp_y = alloca float, align 4
  %i = alloca i32, align 4
  store float* %model_param, float** %model_param.addr, align 8
  store i32 %flow_vector_count, i32* %flow_vector_count.addr, align 4
  store %struct.flowvector* %flow_vector_array, %struct.flowvector** %flow_vector_array.addr, align 8
  store %struct.flowvector* %ego_vector_array, %struct.flowvector** %ego_vector_array.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %flow_vector_count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.flowvector, %struct.flowvector* %2, i64 %idxprom
  %x = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %x, align 4
  %conv = sitofp i32 %4 to float
  %5 = load float*, float** %model_param.addr, align 8
  %arrayidx1 = getelementptr inbounds float, float* %5, i64 0
  %6 = load float, float* %arrayidx1, align 4
  %sub = fsub float %conv, %6
  store float %sub, float* %temp_x, align 4
  %7 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %7, i64 %idxprom2
  %y = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx3, i32 0, i32 1
  %9 = load i32, i32* %y, align 4
  %conv4 = sitofp i32 %9 to float
  %10 = load float*, float** %model_param.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %10, i64 1
  %11 = load float, float* %arrayidx5, align 4
  %sub6 = fsub float %conv4, %11
  store float %sub6, float* %temp_y, align 4
  %12 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %12, i64 %idxprom7
  %x9 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx8, i32 0, i32 0
  %14 = load i32, i32* %x9, align 4
  %15 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %15, i64 %idxprom10
  %x12 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx11, i32 0, i32 0
  store i32 %14, i32* %x12, align 4
  %17 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %17, i64 %idxprom13
  %y15 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx14, i32 0, i32 1
  %19 = load i32, i32* %y15, align 4
  %20 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %20, i64 %idxprom16
  %y18 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx17, i32 0, i32 1
  store i32 %19, i32* %y18, align 4
  %22 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %22, i64 %idxprom19
  %x21 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx20, i32 0, i32 0
  %24 = load i32, i32* %x21, align 4
  %conv22 = sitofp i32 %24 to float
  %25 = load float, float* %temp_x, align 4
  %26 = load float*, float** %model_param.addr, align 8
  %arrayidx23 = getelementptr inbounds float, float* %26, i64 2
  %27 = load float, float* %arrayidx23, align 4
  %mul = fmul float %25, %27
  %28 = load float, float* %temp_y, align 4
  %29 = load float*, float** %model_param.addr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %29, i64 3
  %30 = load float, float* %arrayidx24, align 4
  %mul25 = fmul float %28, %30
  %sub26 = fsub float %mul, %mul25
  %add = fadd float %conv22, %sub26
  %conv27 = fptosi float %add to i32
  %31 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %32 to i64
  %arrayidx29 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %31, i64 %idxprom28
  %vx = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx29, i32 0, i32 2
  store i32 %conv27, i32* %vx, align 4
  %33 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %34 to i64
  %arrayidx31 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %33, i64 %idxprom30
  %y32 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx31, i32 0, i32 1
  %35 = load i32, i32* %y32, align 4
  %conv33 = sitofp i32 %35 to float
  %36 = load float, float* %temp_y, align 4
  %37 = load float*, float** %model_param.addr, align 8
  %arrayidx34 = getelementptr inbounds float, float* %37, i64 2
  %38 = load float, float* %arrayidx34, align 4
  %mul35 = fmul float %36, %38
  %39 = load float, float* %temp_x, align 4
  %40 = load float*, float** %model_param.addr, align 8
  %arrayidx36 = getelementptr inbounds float, float* %40, i64 3
  %41 = load float, float* %arrayidx36, align 4
  %mul37 = fmul float %39, %41
  %add38 = fadd float %mul35, %mul37
  %add39 = fadd float %conv33, %add38
  %conv40 = fptosi float %add39 to i32
  %42 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %43 to i64
  %arrayidx42 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %42, i64 %idxprom41
  %vy = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx42, i32 0, i32 3
  store i32 %conv40, i32* %vy, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_Z19choose_better_modelP10flowvectorS0_iPfPiS2_S2_ifi(%struct.flowvector* %flow_vector_array, %struct.flowvector* %ego_vector_array, i32 %flow_vector_count, float* %model_param, i32* %model_candidate, i32* %outliers_candidate, i32* %count_candidates, i32 %error_threshold, float %convergence_threshold, i32 %iter) #7 comdat {
entry:
  %flow_vector_array.addr = alloca %struct.flowvector*, align 8
  %ego_vector_array.addr = alloca %struct.flowvector*, align 8
  %flow_vector_count.addr = alloca i32, align 4
  %model_param.addr = alloca float*, align 8
  %model_candidate.addr = alloca i32*, align 8
  %outliers_candidate.addr = alloca i32*, align 8
  %count_candidates.addr = alloca i32*, align 8
  %error_threshold.addr = alloca i32, align 4
  %convergence_threshold.addr = alloca float, align 4
  %iter.addr = alloca i32, align 4
  %outlier_count = alloca i32, align 4
  %vx1 = alloca i32, align 4
  %vy1 = alloca i32, align 4
  %vx_error = alloca float, align 4
  %vy_error = alloca float, align 4
  %i = alloca i32, align 4
  %ind = alloca i32, align 4
  store %struct.flowvector* %flow_vector_array, %struct.flowvector** %flow_vector_array.addr, align 8
  store %struct.flowvector* %ego_vector_array, %struct.flowvector** %ego_vector_array.addr, align 8
  store i32 %flow_vector_count, i32* %flow_vector_count.addr, align 4
  store float* %model_param, float** %model_param.addr, align 8
  store i32* %model_candidate, i32** %model_candidate.addr, align 8
  store i32* %outliers_candidate, i32** %outliers_candidate.addr, align 8
  store i32* %count_candidates, i32** %count_candidates.addr, align 8
  store i32 %error_threshold, i32* %error_threshold.addr, align 4
  store float %convergence_threshold, float* %convergence_threshold.addr, align 4
  store i32 %iter, i32* %iter.addr, align 4
  store i32 0, i32* %outlier_count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %flow_vector_count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.flowvector, %struct.flowvector* %2, i64 %idxprom
  %vx = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %vx, align 4
  %5 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %5, i64 %idxprom1
  %x = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx2, i32 0, i32 0
  %7 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %4, %7
  store i32 %sub, i32* %vx1, align 4
  %8 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %8, i64 %idxprom3
  %vy = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx4, i32 0, i32 3
  %10 = load i32, i32* %vy, align 4
  %11 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %11, i64 %idxprom5
  %y = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx6, i32 0, i32 1
  %13 = load i32, i32* %y, align 4
  %sub7 = sub nsw i32 %10, %13
  store i32 %sub7, i32* %vy1, align 4
  %14 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %14, i64 %idxprom8
  %x10 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx9, i32 0, i32 0
  %16 = load i32, i32* %x10, align 4
  %17 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %17, i64 %idxprom11
  %x13 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx12, i32 0, i32 0
  %19 = load i32, i32* %x13, align 4
  %conv = sitofp i32 %19 to float
  %20 = load float*, float** %model_param.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %20, i64 0
  %21 = load float, float* %arrayidx14, align 4
  %sub15 = fsub float %conv, %21
  %22 = load float*, float** %model_param.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %22, i64 2
  %23 = load float, float* %arrayidx16, align 4
  %mul = fmul float %sub15, %23
  %conv17 = fptosi float %mul to i32
  %24 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %24, i64 %idxprom18
  %y20 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx19, i32 0, i32 1
  %26 = load i32, i32* %y20, align 4
  %conv21 = sitofp i32 %26 to float
  %27 = load float*, float** %model_param.addr, align 8
  %arrayidx22 = getelementptr inbounds float, float* %27, i64 1
  %28 = load float, float* %arrayidx22, align 4
  %sub23 = fsub float %conv21, %28
  %29 = load float*, float** %model_param.addr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %29, i64 3
  %30 = load float, float* %arrayidx24, align 4
  %mul25 = fmul float %sub23, %30
  %conv26 = fptosi float %mul25 to i32
  %sub27 = sub nsw i32 %conv17, %conv26
  %add = add nsw i32 %16, %sub27
  %31 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %32 to i64
  %arrayidx29 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %31, i64 %idxprom28
  %vx30 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx29, i32 0, i32 2
  %33 = load i32, i32* %vx30, align 4
  %sub31 = sub nsw i32 %add, %33
  %conv32 = sitofp i32 %sub31 to float
  store float %conv32, float* %vx_error, align 4
  %34 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %35 to i64
  %arrayidx34 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %34, i64 %idxprom33
  %y35 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx34, i32 0, i32 1
  %36 = load i32, i32* %y35, align 4
  %37 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %37, i64 %idxprom36
  %y38 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx37, i32 0, i32 1
  %39 = load i32, i32* %y38, align 4
  %conv39 = sitofp i32 %39 to float
  %40 = load float*, float** %model_param.addr, align 8
  %arrayidx40 = getelementptr inbounds float, float* %40, i64 1
  %41 = load float, float* %arrayidx40, align 4
  %sub41 = fsub float %conv39, %41
  %42 = load float*, float** %model_param.addr, align 8
  %arrayidx42 = getelementptr inbounds float, float* %42, i64 2
  %43 = load float, float* %arrayidx42, align 4
  %mul43 = fmul float %sub41, %43
  %conv44 = fptosi float %mul43 to i32
  %44 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %45 to i64
  %arrayidx46 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %44, i64 %idxprom45
  %x47 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx46, i32 0, i32 0
  %46 = load i32, i32* %x47, align 4
  %conv48 = sitofp i32 %46 to float
  %47 = load float*, float** %model_param.addr, align 8
  %arrayidx49 = getelementptr inbounds float, float* %47, i64 0
  %48 = load float, float* %arrayidx49, align 4
  %sub50 = fsub float %conv48, %48
  %49 = load float*, float** %model_param.addr, align 8
  %arrayidx51 = getelementptr inbounds float, float* %49, i64 3
  %50 = load float, float* %arrayidx51, align 4
  %mul52 = fmul float %sub50, %50
  %conv53 = fptosi float %mul52 to i32
  %add54 = add nsw i32 %conv44, %conv53
  %add55 = add nsw i32 %36, %add54
  %51 = load %struct.flowvector*, %struct.flowvector** %flow_vector_array.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %52 to i64
  %arrayidx57 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %51, i64 %idxprom56
  %vy58 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx57, i32 0, i32 3
  %53 = load i32, i32* %vy58, align 4
  %sub59 = sub nsw i32 %add55, %53
  %conv60 = sitofp i32 %sub59 to float
  store float %conv60, float* %vy_error, align 4
  %54 = load float, float* %vx_error, align 4
  %conv61 = fpext float %54 to double
  %55 = call double @llvm.fabs.f64(double %conv61)
  %56 = load i32, i32* %error_threshold.addr, align 4
  %conv62 = sitofp i32 %56 to double
  %cmp63 = fcmp olt double %55, %conv62
  br i1 %cmp63, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %57 = load float, float* %vy_error, align 4
  %conv64 = fpext float %57 to double
  %58 = call double @llvm.fabs.f64(double %conv64)
  %59 = load i32, i32* %error_threshold.addr, align 4
  %conv65 = sitofp i32 %59 to double
  %cmp66 = fcmp olt double %58, %conv65
  br i1 %cmp66, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %60 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %61 to i64
  %arrayidx68 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %60, i64 %idxprom67
  %x69 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx68, i32 0, i32 0
  store i32 0, i32* %x69, align 4
  %62 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %63 to i64
  %arrayidx71 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %62, i64 %idxprom70
  %y72 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx71, i32 0, i32 1
  store i32 0, i32* %y72, align 4
  %64 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %65 to i64
  %arrayidx74 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %64, i64 %idxprom73
  %vx75 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx74, i32 0, i32 2
  store i32 0, i32* %vx75, align 4
  %66 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %67 to i64
  %arrayidx77 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %66, i64 %idxprom76
  %vy78 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx77, i32 0, i32 3
  store i32 0, i32* %vy78, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %68 = load i32, i32* %outlier_count, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %outlier_count, align 4
  %69 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %70 to i64
  %arrayidx80 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %69, i64 %idxprom79
  %x81 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx80, i32 0, i32 0
  %71 = load i32, i32* %x81, align 4
  %conv82 = sitofp i32 %71 to float
  %72 = load float, float* %vx_error, align 4
  %add83 = fadd float %conv82, %72
  %conv84 = fptosi float %add83 to i32
  %73 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %74 to i64
  %arrayidx86 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %73, i64 %idxprom85
  %vx87 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx86, i32 0, i32 2
  store i32 %conv84, i32* %vx87, align 4
  %75 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %76 to i64
  %arrayidx89 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %75, i64 %idxprom88
  %y90 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx89, i32 0, i32 1
  %77 = load i32, i32* %y90, align 4
  %conv91 = sitofp i32 %77 to float
  %78 = load float, float* %vy_error, align 4
  %add92 = fadd float %conv91, %78
  %conv93 = fptosi float %add92 to i32
  %79 = load %struct.flowvector*, %struct.flowvector** %ego_vector_array.addr, align 8
  %80 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %80 to i64
  %arrayidx95 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %79, i64 %idxprom94
  %vy96 = getelementptr inbounds %struct.flowvector, %struct.flowvector* %arrayidx95, i32 0, i32 3
  store i32 %conv93, i32* %vy96, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %81 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %81, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %82 = load i32, i32* %outlier_count, align 4
  %conv98 = sitofp i32 %82 to float
  %83 = load i32, i32* %flow_vector_count.addr, align 4
  %conv99 = sitofp i32 %83 to float
  %84 = load float, float* %convergence_threshold.addr, align 4
  %mul100 = fmul float %conv99, %84
  %cmp101 = fcmp olt float %conv98, %mul100
  br i1 %cmp101, label %if.then102, label %if.end109

if.then102:                                       ; preds = %for.end
  %85 = load i32*, i32** %count_candidates.addr, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %85, i64 0
  %86 = load i32, i32* %arrayidx103, align 4
  %inc104 = add nsw i32 %86, 1
  store i32 %inc104, i32* %arrayidx103, align 4
  store i32 %86, i32* %ind, align 4
  %87 = load i32, i32* %iter.addr, align 4
  %88 = load i32*, i32** %model_candidate.addr, align 8
  %89 = load i32, i32* %ind, align 4
  %idxprom105 = sext i32 %89 to i64
  %arrayidx106 = getelementptr inbounds i32, i32* %88, i64 %idxprom105
  store i32 %87, i32* %arrayidx106, align 4
  %90 = load i32, i32* %outlier_count, align 4
  %91 = load i32*, i32** %outliers_candidate.addr, align 8
  %92 = load i32, i32* %ind, align 4
  %idxprom107 = sext i32 %92 to i64
  %arrayidx108 = getelementptr inbounds i32, i32* %91, i64 %idxprom107
  store i32 %90, i32* %arrayidx108, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_Z15gen_model_paramiiiiiiiiPf(i32 %x1, i32 %y1, i32 %vx1, i32 %vy1, i32 %x2, i32 %y2, i32 %vx2, i32 %vy2, float* %model_param) #7 comdat {
entry:
  %retval = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %vx1.addr = alloca i32, align 4
  %vy1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %vx2.addr = alloca i32, align 4
  %vy2.addr = alloca i32, align 4
  %model_param.addr = alloca float*, align 8
  %temp = alloca float, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %vx1, i32* %vx1.addr, align 4
  store i32 %vy1, i32* %vy1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store i32 %vx2, i32* %vx2.addr, align 4
  store i32 %vy2, i32* %vy2.addr, align 4
  store float* %model_param, float** %model_param.addr, align 8
  %0 = load i32, i32* %vx1.addr, align 4
  %1 = load i32, i32* %vx1.addr, align 4
  %2 = load i32, i32* %vx2.addr, align 4
  %mul = mul nsw i32 2, %2
  %sub = sub nsw i32 %1, %mul
  %mul1 = mul nsw i32 %0, %sub
  %3 = load i32, i32* %vx2.addr, align 4
  %4 = load i32, i32* %vx2.addr, align 4
  %mul2 = mul nsw i32 %3, %4
  %add = add nsw i32 %mul1, %mul2
  %5 = load i32, i32* %vy1.addr, align 4
  %6 = load i32, i32* %vy1.addr, align 4
  %mul3 = mul nsw i32 %5, %6
  %add4 = add nsw i32 %add, %mul3
  %7 = load i32, i32* %vy2.addr, align 4
  %8 = load i32, i32* %vy1.addr, align 4
  %mul5 = mul nsw i32 2, %8
  %9 = load i32, i32* %vy2.addr, align 4
  %sub6 = sub nsw i32 %mul5, %9
  %mul7 = mul nsw i32 %7, %sub6
  %sub8 = sub nsw i32 %add4, %mul7
  %conv = sitofp i32 %sub8 to float
  store float %conv, float* %temp, align 4
  %10 = load float, float* %temp, align 4
  %cmp = fcmp oeq float %10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %vx1.addr, align 4
  %12 = load i32, i32* %vx2.addr, align 4
  %sub9 = sub nsw i32 0, %12
  %13 = load i32, i32* %x1.addr, align 4
  %mul10 = mul nsw i32 %sub9, %13
  %14 = load i32, i32* %vx1.addr, align 4
  %15 = load i32, i32* %x2.addr, align 4
  %mul11 = mul nsw i32 %14, %15
  %add12 = add nsw i32 %mul10, %mul11
  %16 = load i32, i32* %vx2.addr, align 4
  %17 = load i32, i32* %x2.addr, align 4
  %mul13 = mul nsw i32 %16, %17
  %sub14 = sub nsw i32 %add12, %mul13
  %18 = load i32, i32* %vy2.addr, align 4
  %19 = load i32, i32* %y1.addr, align 4
  %mul15 = mul nsw i32 %18, %19
  %add16 = add nsw i32 %sub14, %mul15
  %20 = load i32, i32* %vy2.addr, align 4
  %21 = load i32, i32* %y2.addr, align 4
  %mul17 = mul nsw i32 %20, %21
  %sub18 = sub nsw i32 %add16, %mul17
  %mul19 = mul nsw i32 %11, %sub18
  %22 = load i32, i32* %vy1.addr, align 4
  %23 = load i32, i32* %vy2.addr, align 4
  %sub20 = sub nsw i32 0, %23
  %24 = load i32, i32* %x1.addr, align 4
  %mul21 = mul nsw i32 %sub20, %24
  %25 = load i32, i32* %vy1.addr, align 4
  %26 = load i32, i32* %x2.addr, align 4
  %mul22 = mul nsw i32 %25, %26
  %add23 = add nsw i32 %mul21, %mul22
  %27 = load i32, i32* %vy2.addr, align 4
  %28 = load i32, i32* %x2.addr, align 4
  %mul24 = mul nsw i32 %27, %28
  %sub25 = sub nsw i32 %add23, %mul24
  %29 = load i32, i32* %vx2.addr, align 4
  %30 = load i32, i32* %y1.addr, align 4
  %mul26 = mul nsw i32 %29, %30
  %sub27 = sub nsw i32 %sub25, %mul26
  %31 = load i32, i32* %vx2.addr, align 4
  %32 = load i32, i32* %y2.addr, align 4
  %mul28 = mul nsw i32 %31, %32
  %add29 = add nsw i32 %sub27, %mul28
  %mul30 = mul nsw i32 %22, %add29
  %add31 = add nsw i32 %mul19, %mul30
  %33 = load i32, i32* %x1.addr, align 4
  %34 = load i32, i32* %vy2.addr, align 4
  %35 = load i32, i32* %vy2.addr, align 4
  %mul32 = mul nsw i32 %34, %35
  %36 = load i32, i32* %vx2.addr, align 4
  %37 = load i32, i32* %vx2.addr, align 4
  %mul33 = mul nsw i32 %36, %37
  %add34 = add nsw i32 %mul32, %mul33
  %mul35 = mul nsw i32 %33, %add34
  %add36 = add nsw i32 %add31, %mul35
  %conv37 = sitofp i32 %add36 to float
  %38 = load float, float* %temp, align 4
  %div = fdiv float %conv37, %38
  %39 = load float*, float** %model_param.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %39, i64 0
  store float %div, float* %arrayidx, align 4
  %40 = load i32, i32* %vx2.addr, align 4
  %41 = load i32, i32* %vy1.addr, align 4
  %42 = load i32, i32* %x1.addr, align 4
  %mul38 = mul nsw i32 %41, %42
  %43 = load i32, i32* %vy1.addr, align 4
  %44 = load i32, i32* %x2.addr, align 4
  %mul39 = mul nsw i32 %43, %44
  %sub40 = sub nsw i32 %mul38, %mul39
  %45 = load i32, i32* %vx1.addr, align 4
  %46 = load i32, i32* %y1.addr, align 4
  %mul41 = mul nsw i32 %45, %46
  %sub42 = sub nsw i32 %sub40, %mul41
  %47 = load i32, i32* %vx2.addr, align 4
  %48 = load i32, i32* %y1.addr, align 4
  %mul43 = mul nsw i32 %47, %48
  %add44 = add nsw i32 %sub42, %mul43
  %49 = load i32, i32* %vx1.addr, align 4
  %50 = load i32, i32* %y2.addr, align 4
  %mul45 = mul nsw i32 %49, %50
  %sub46 = sub nsw i32 %add44, %mul45
  %mul47 = mul nsw i32 %40, %sub46
  %51 = load i32, i32* %vy2.addr, align 4
  %52 = load i32, i32* %vx1.addr, align 4
  %sub48 = sub nsw i32 0, %52
  %53 = load i32, i32* %x1.addr, align 4
  %mul49 = mul nsw i32 %sub48, %53
  %54 = load i32, i32* %vx1.addr, align 4
  %55 = load i32, i32* %x2.addr, align 4
  %mul50 = mul nsw i32 %54, %55
  %add51 = add nsw i32 %mul49, %mul50
  %56 = load i32, i32* %vy1.addr, align 4
  %57 = load i32, i32* %y1.addr, align 4
  %mul52 = mul nsw i32 %56, %57
  %sub53 = sub nsw i32 %add51, %mul52
  %58 = load i32, i32* %vy2.addr, align 4
  %59 = load i32, i32* %y1.addr, align 4
  %mul54 = mul nsw i32 %58, %59
  %add55 = add nsw i32 %sub53, %mul54
  %60 = load i32, i32* %vy1.addr, align 4
  %61 = load i32, i32* %y2.addr, align 4
  %mul56 = mul nsw i32 %60, %61
  %sub57 = sub nsw i32 %add55, %mul56
  %mul58 = mul nsw i32 %51, %sub57
  %add59 = add nsw i32 %mul47, %mul58
  %62 = load i32, i32* %y2.addr, align 4
  %63 = load i32, i32* %vx1.addr, align 4
  %64 = load i32, i32* %vx1.addr, align 4
  %mul60 = mul nsw i32 %63, %64
  %65 = load i32, i32* %vy1.addr, align 4
  %66 = load i32, i32* %vy1.addr, align 4
  %mul61 = mul nsw i32 %65, %66
  %add62 = add nsw i32 %mul60, %mul61
  %mul63 = mul nsw i32 %62, %add62
  %add64 = add nsw i32 %add59, %mul63
  %conv65 = sitofp i32 %add64 to float
  %67 = load float, float* %temp, align 4
  %div66 = fdiv float %conv65, %67
  %68 = load float*, float** %model_param.addr, align 8
  %arrayidx67 = getelementptr inbounds float, float* %68, i64 1
  store float %div66, float* %arrayidx67, align 4
  %69 = load i32, i32* %x1.addr, align 4
  %70 = load i32, i32* %x1.addr, align 4
  %71 = load i32, i32* %x2.addr, align 4
  %mul68 = mul nsw i32 2, %71
  %sub69 = sub nsw i32 %70, %mul68
  %mul70 = mul nsw i32 %69, %sub69
  %72 = load i32, i32* %x2.addr, align 4
  %73 = load i32, i32* %x2.addr, align 4
  %mul71 = mul nsw i32 %72, %73
  %add72 = add nsw i32 %mul70, %mul71
  %74 = load i32, i32* %y1.addr, align 4
  %75 = load i32, i32* %y1.addr, align 4
  %76 = load i32, i32* %y2.addr, align 4
  %mul73 = mul nsw i32 2, %76
  %sub74 = sub nsw i32 %75, %mul73
  %mul75 = mul nsw i32 %74, %sub74
  %add76 = add nsw i32 %add72, %mul75
  %77 = load i32, i32* %y2.addr, align 4
  %78 = load i32, i32* %y2.addr, align 4
  %mul77 = mul nsw i32 %77, %78
  %add78 = add nsw i32 %add76, %mul77
  %conv79 = sitofp i32 %add78 to float
  store float %conv79, float* %temp, align 4
  %79 = load float, float* %temp, align 4
  %cmp80 = fcmp oeq float %79, 0.000000e+00
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end82:                                         ; preds = %if.end
  %80 = load i32, i32* %x1.addr, align 4
  %81 = load i32, i32* %x2.addr, align 4
  %sub83 = sub nsw i32 %80, %81
  %82 = load i32, i32* %vx1.addr, align 4
  %83 = load i32, i32* %vx2.addr, align 4
  %sub84 = sub nsw i32 %82, %83
  %mul85 = mul nsw i32 %sub83, %sub84
  %84 = load i32, i32* %y1.addr, align 4
  %85 = load i32, i32* %y2.addr, align 4
  %sub86 = sub nsw i32 %84, %85
  %86 = load i32, i32* %vy1.addr, align 4
  %87 = load i32, i32* %vy2.addr, align 4
  %sub87 = sub nsw i32 %86, %87
  %mul88 = mul nsw i32 %sub86, %sub87
  %add89 = add nsw i32 %mul85, %mul88
  %conv90 = sitofp i32 %add89 to float
  %88 = load float, float* %temp, align 4
  %div91 = fdiv float %conv90, %88
  %89 = load float*, float** %model_param.addr, align 8
  %arrayidx92 = getelementptr inbounds float, float* %89, i64 2
  store float %div91, float* %arrayidx92, align 4
  %90 = load i32, i32* %x1.addr, align 4
  %91 = load i32, i32* %x2.addr, align 4
  %sub93 = sub nsw i32 %90, %91
  %92 = load i32, i32* %vy1.addr, align 4
  %93 = load i32, i32* %vy2.addr, align 4
  %sub94 = sub nsw i32 %92, %93
  %mul95 = mul nsw i32 %sub93, %sub94
  %94 = load i32, i32* %y2.addr, align 4
  %95 = load i32, i32* %y1.addr, align 4
  %sub96 = sub nsw i32 %94, %95
  %96 = load i32, i32* %vx1.addr, align 4
  %97 = load i32, i32* %vx2.addr, align 4
  %sub97 = sub nsw i32 %96, %97
  %mul98 = mul nsw i32 %sub96, %sub97
  %add99 = add nsw i32 %mul95, %mul98
  %conv100 = sitofp i32 %add99 to float
  %98 = load float, float* %temp, align 4
  %div101 = fdiv float %conv100, %98
  %99 = load float*, float** %model_param.addr, align 8
  %arrayidx102 = getelementptr inbounds float, float* %99, i64 3
  store float %div101, float* %arrayidx102, align 4
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end82, %if.then81, %if.then
  %100 = load i32, i32* %retval, align 4
  ret i32 %100
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #9

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
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readnone speculatable }
attributes #10 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline noreturn nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin }
attributes #18 = { noreturn }
attributes #19 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)"}
