ð

B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02unknown8°¨
|
dense_134/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_134/kernel
u
$dense_134/kernel/Read/ReadVariableOpReadVariableOpdense_134/kernel*
_output_shapes

:*
dtype0
t
dense_134/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_134/bias
m
"dense_134/bias/Read/ReadVariableOpReadVariableOpdense_134/bias*
_output_shapes
:*
dtype0
|
dense_135/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_135/kernel
u
$dense_135/kernel/Read/ReadVariableOpReadVariableOpdense_135/kernel*
_output_shapes

:*
dtype0
t
dense_135/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_135/bias
m
"dense_135/bias/Read/ReadVariableOpReadVariableOpdense_135/bias*
_output_shapes
:*
dtype0

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ë
valueÁB¾ B·
°
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
trainable_variables
	variables
regularization_losses
	keras_api

signatures
h

kernel
	bias

trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api

0
	1
2
3

0
	1
2
3
 
­
trainable_variables
layer_metrics
layer_regularization_losses
metrics
	variables
regularization_losses

layers
non_trainable_variables
 
\Z
VARIABLE_VALUEdense_134/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_134/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
	1

0
	1
 
­

trainable_variables
layer_metrics
layer_regularization_losses
metrics
	variables
regularization_losses

layers
non_trainable_variables
\Z
VARIABLE_VALUEdense_135/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_135/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
trainable_variables
layer_metrics
layer_regularization_losses
 metrics
	variables
regularization_losses

!layers
"non_trainable_variables
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 

serving_default_dense_134_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_134_inputdense_134/kerneldense_134/biasdense_135/kerneldense_135/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2682842
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
´
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_134/kernel/Read/ReadVariableOp"dense_134/bias/Read/ReadVariableOp$dense_135/kernel/Read/ReadVariableOp"dense_135/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_2682976
ß
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_134/kerneldense_134/biasdense_135/kerneldense_135/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_2682998×
â
­
 __inference__traced_save_2682976
file_prefix/
+savev2_dense_134_kernel_read_readvariableop-
)savev2_dense_134_bias_read_readvariableop/
+savev2_dense_135_kernel_read_readvariableop-
)savev2_dense_135_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameý
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
SaveV2/shape_and_slicesî
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_134_kernel_read_readvariableop)savev2_dense_134_bias_read_readvariableop+savev2_dense_135_kernel_read_readvariableop)savev2_dense_135_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*7
_input_shapes&
$: ::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
Å
½
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682775

inputs#
dense_134_2682764:
dense_134_2682766:#
dense_135_2682769:
dense_135_2682771:
identity¢!dense_134/StatefulPartitionedCall¢!dense_135/StatefulPartitionedCall
!dense_134/StatefulPartitionedCallStatefulPartitionedCallinputsdense_134_2682764dense_134_2682766*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_134_layer_call_and_return_conditional_losses_26826922#
!dense_134/StatefulPartitionedCallÀ
!dense_135/StatefulPartitionedCallStatefulPartitionedCall*dense_134/StatefulPartitionedCall:output:0dense_135_2682769dense_135_2682771*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_135_layer_call_and_return_conditional_losses_26827082#
!dense_135/StatefulPartitionedCallÆ
IdentityIdentity*dense_135/StatefulPartitionedCall:output:0"^dense_134/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2F
!dense_134/StatefulPartitionedCall!dense_134/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
Ý
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682885

inputs:
(dense_134_matmul_readvariableop_resource:7
)dense_134_biasadd_readvariableop_resource::
(dense_135_matmul_readvariableop_resource:7
)dense_135_biasadd_readvariableop_resource:
identity¢ dense_134/BiasAdd/ReadVariableOp¢dense_134/MatMul/ReadVariableOp¢ dense_135/BiasAdd/ReadVariableOp¢dense_135/MatMul/ReadVariableOp«
dense_134/MatMul/ReadVariableOpReadVariableOp(dense_134_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_134/MatMul/ReadVariableOp
dense_134/MatMulMatMulinputs'dense_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_134/MatMulª
 dense_134/BiasAdd/ReadVariableOpReadVariableOp)dense_134_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_134/BiasAdd/ReadVariableOp©
dense_134/BiasAddBiasAdddense_134/MatMul:product:0(dense_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_134/BiasAddv
dense_134/ReluReludense_134/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_134/Relu«
dense_135/MatMul/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_135/MatMul/ReadVariableOp§
dense_135/MatMulMatMuldense_134/Relu:activations:0'dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_135/MatMulª
 dense_135/BiasAdd/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_135/BiasAdd/ReadVariableOp©
dense_135/BiasAddBiasAdddense_135/MatMul:product:0(dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_135/BiasAddø
IdentityIdentitydense_135/BiasAdd:output:0!^dense_134/BiasAdd/ReadVariableOp ^dense_134/MatMul/ReadVariableOp!^dense_135/BiasAdd/ReadVariableOp ^dense_135/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2D
 dense_134/BiasAdd/ReadVariableOp dense_134/BiasAdd/ReadVariableOp2B
dense_134/MatMul/ReadVariableOpdense_134/MatMul/ReadVariableOp2D
 dense_135/BiasAdd/ReadVariableOp dense_135/BiasAdd/ReadVariableOp2B
dense_135/MatMul/ReadVariableOpdense_135/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò	
÷
F__inference_dense_135_layer_call_and_return_conditional_losses_2682708

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
Ñ
%__inference_signature_wrapper_2682842
dense_134_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCalldense_134_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_26826742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namedense_134_input

Û
/__inference_sequential_97_layer_call_fn_2682799
dense_134_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_134_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_97_layer_call_and_return_conditional_losses_26827752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namedense_134_input


+__inference_dense_134_layer_call_fn_2682911

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_134_layer_call_and_return_conditional_losses_26826922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


+__inference_dense_135_layer_call_fn_2682931

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_135_layer_call_and_return_conditional_losses_26827082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

÷
F__inference_dense_134_layer_call_and_return_conditional_losses_2682692

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
½
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682715

inputs#
dense_134_2682693:
dense_134_2682695:#
dense_135_2682709:
dense_135_2682711:
identity¢!dense_134/StatefulPartitionedCall¢!dense_135/StatefulPartitionedCall
!dense_134/StatefulPartitionedCallStatefulPartitionedCallinputsdense_134_2682693dense_134_2682695*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_134_layer_call_and_return_conditional_losses_26826922#
!dense_134/StatefulPartitionedCallÀ
!dense_135/StatefulPartitionedCallStatefulPartitionedCall*dense_134/StatefulPartitionedCall:output:0dense_135_2682709dense_135_2682711*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_135_layer_call_and_return_conditional_losses_26827082#
!dense_135/StatefulPartitionedCallÆ
IdentityIdentity*dense_135/StatefulPartitionedCall:output:0"^dense_134/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2F
!dense_134/StatefulPartitionedCall!dense_134/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
Ò
/__inference_sequential_97_layer_call_fn_2682868

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_97_layer_call_and_return_conditional_losses_26827752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à
Æ
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682813
dense_134_input#
dense_134_2682802:
dense_134_2682804:#
dense_135_2682807:
dense_135_2682809:
identity¢!dense_134/StatefulPartitionedCall¢!dense_135/StatefulPartitionedCall¥
!dense_134/StatefulPartitionedCallStatefulPartitionedCalldense_134_inputdense_134_2682802dense_134_2682804*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_134_layer_call_and_return_conditional_losses_26826922#
!dense_134/StatefulPartitionedCallÀ
!dense_135/StatefulPartitionedCallStatefulPartitionedCall*dense_134/StatefulPartitionedCall:output:0dense_135_2682807dense_135_2682809*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_135_layer_call_and_return_conditional_losses_26827082#
!dense_135/StatefulPartitionedCallÆ
IdentityIdentity*dense_135/StatefulPartitionedCall:output:0"^dense_134/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2F
!dense_134/StatefulPartitionedCall!dense_134/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namedense_134_input
»
®
"__inference__wrapped_model_2682674
dense_134_inputH
6sequential_97_dense_134_matmul_readvariableop_resource:E
7sequential_97_dense_134_biasadd_readvariableop_resource:H
6sequential_97_dense_135_matmul_readvariableop_resource:E
7sequential_97_dense_135_biasadd_readvariableop_resource:
identity¢.sequential_97/dense_134/BiasAdd/ReadVariableOp¢-sequential_97/dense_134/MatMul/ReadVariableOp¢.sequential_97/dense_135/BiasAdd/ReadVariableOp¢-sequential_97/dense_135/MatMul/ReadVariableOpÕ
-sequential_97/dense_134/MatMul/ReadVariableOpReadVariableOp6sequential_97_dense_134_matmul_readvariableop_resource*
_output_shapes

:*
dtype02/
-sequential_97/dense_134/MatMul/ReadVariableOpÄ
sequential_97/dense_134/MatMulMatMuldense_134_input5sequential_97/dense_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_97/dense_134/MatMulÔ
.sequential_97/dense_134/BiasAdd/ReadVariableOpReadVariableOp7sequential_97_dense_134_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_97/dense_134/BiasAdd/ReadVariableOpá
sequential_97/dense_134/BiasAddBiasAdd(sequential_97/dense_134/MatMul:product:06sequential_97/dense_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_97/dense_134/BiasAdd 
sequential_97/dense_134/ReluRelu(sequential_97/dense_134/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_97/dense_134/ReluÕ
-sequential_97/dense_135/MatMul/ReadVariableOpReadVariableOp6sequential_97_dense_135_matmul_readvariableop_resource*
_output_shapes

:*
dtype02/
-sequential_97/dense_135/MatMul/ReadVariableOpß
sequential_97/dense_135/MatMulMatMul*sequential_97/dense_134/Relu:activations:05sequential_97/dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_97/dense_135/MatMulÔ
.sequential_97/dense_135/BiasAdd/ReadVariableOpReadVariableOp7sequential_97_dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_97/dense_135/BiasAdd/ReadVariableOpá
sequential_97/dense_135/BiasAddBiasAdd(sequential_97/dense_135/MatMul:product:06sequential_97/dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_97/dense_135/BiasAdd¾
IdentityIdentity(sequential_97/dense_135/BiasAdd:output:0/^sequential_97/dense_134/BiasAdd/ReadVariableOp.^sequential_97/dense_134/MatMul/ReadVariableOp/^sequential_97/dense_135/BiasAdd/ReadVariableOp.^sequential_97/dense_135/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2`
.sequential_97/dense_134/BiasAdd/ReadVariableOp.sequential_97/dense_134/BiasAdd/ReadVariableOp2^
-sequential_97/dense_134/MatMul/ReadVariableOp-sequential_97/dense_134/MatMul/ReadVariableOp2`
.sequential_97/dense_135/BiasAdd/ReadVariableOp.sequential_97/dense_135/BiasAdd/ReadVariableOp2^
-sequential_97/dense_135/MatMul/ReadVariableOp-sequential_97/dense_135/MatMul/ReadVariableOp:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namedense_134_input
ö
é
#__inference__traced_restore_2682998
file_prefix3
!assignvariableop_dense_134_kernel:/
!assignvariableop_1_dense_134_bias:5
#assignvariableop_2_dense_135_kernel:/
!assignvariableop_3_dense_135_bias:

identity_5¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
RestoreV2/shape_and_slicesÄ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_dense_134_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_134_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_135_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_135_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpº

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4¬

Identity_5IdentityIdentity_4:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*
T0*
_output_shapes
: 2

Identity_5"!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ò	
÷
F__inference_dense_135_layer_call_and_return_conditional_losses_2682941

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

÷
F__inference_dense_134_layer_call_and_return_conditional_losses_2682922

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
Ý
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682902

inputs:
(dense_134_matmul_readvariableop_resource:7
)dense_134_biasadd_readvariableop_resource::
(dense_135_matmul_readvariableop_resource:7
)dense_135_biasadd_readvariableop_resource:
identity¢ dense_134/BiasAdd/ReadVariableOp¢dense_134/MatMul/ReadVariableOp¢ dense_135/BiasAdd/ReadVariableOp¢dense_135/MatMul/ReadVariableOp«
dense_134/MatMul/ReadVariableOpReadVariableOp(dense_134_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_134/MatMul/ReadVariableOp
dense_134/MatMulMatMulinputs'dense_134/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_134/MatMulª
 dense_134/BiasAdd/ReadVariableOpReadVariableOp)dense_134_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_134/BiasAdd/ReadVariableOp©
dense_134/BiasAddBiasAdddense_134/MatMul:product:0(dense_134/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_134/BiasAddv
dense_134/ReluReludense_134/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_134/Relu«
dense_135/MatMul/ReadVariableOpReadVariableOp(dense_135_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_135/MatMul/ReadVariableOp§
dense_135/MatMulMatMuldense_134/Relu:activations:0'dense_135/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_135/MatMulª
 dense_135/BiasAdd/ReadVariableOpReadVariableOp)dense_135_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_135/BiasAdd/ReadVariableOp©
dense_135/BiasAddBiasAdddense_135/MatMul:product:0(dense_135/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_135/BiasAddø
IdentityIdentitydense_135/BiasAdd:output:0!^dense_134/BiasAdd/ReadVariableOp ^dense_134/MatMul/ReadVariableOp!^dense_135/BiasAdd/ReadVariableOp ^dense_135/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2D
 dense_134/BiasAdd/ReadVariableOp dense_134/BiasAdd/ReadVariableOp2B
dense_134/MatMul/ReadVariableOpdense_134/MatMul/ReadVariableOp2D
 dense_135/BiasAdd/ReadVariableOp dense_135/BiasAdd/ReadVariableOp2B
dense_135/MatMul/ReadVariableOpdense_135/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
Ò
/__inference_sequential_97_layer_call_fn_2682855

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_97_layer_call_and_return_conditional_losses_26827152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Û
/__inference_sequential_97_layer_call_fn_2682726
dense_134_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_134_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_97_layer_call_and_return_conditional_losses_26827152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namedense_134_input
à
Æ
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682827
dense_134_input#
dense_134_2682816:
dense_134_2682818:#
dense_135_2682821:
dense_135_2682823:
identity¢!dense_134/StatefulPartitionedCall¢!dense_135/StatefulPartitionedCall¥
!dense_134/StatefulPartitionedCallStatefulPartitionedCalldense_134_inputdense_134_2682816dense_134_2682818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_134_layer_call_and_return_conditional_losses_26826922#
!dense_134/StatefulPartitionedCallÀ
!dense_135/StatefulPartitionedCallStatefulPartitionedCall*dense_134/StatefulPartitionedCall:output:0dense_135_2682821dense_135_2682823*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_135_layer_call_and_return_conditional_losses_26827082#
!dense_135/StatefulPartitionedCallÆ
IdentityIdentity*dense_135/StatefulPartitionedCall:output:0"^dense_134/StatefulPartitionedCall"^dense_135/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2F
!dense_134/StatefulPartitionedCall!dense_134/StatefulPartitionedCall2F
!dense_135/StatefulPartitionedCall!dense_135/StatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namedense_134_input"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¼
serving_default¨
K
dense_134_input8
!serving_default_dense_134_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_1350
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:©a
Ä
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
trainable_variables
	variables
regularization_losses
	keras_api

signatures
#_default_save_signature
$__call__
*%&call_and_return_all_conditional_losses"º
_tf_keras_sequential{"name": "sequential_97", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_97", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_134_input"}}, {"class_name": "Dense", "config": {"name": "dense_134", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "units": 15, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_135", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}, "shared_object_id": 8}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 5]}, "float32", "dense_134_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_97", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_134_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_134", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "units": 15, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_135", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}]}}}
»	

kernel
	bias

trainable_variables
	variables
regularization_losses
	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layerü{"name": "dense_134", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_134", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "units": 15, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}, "shared_object_id": 8}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}}
Ñ

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
(__call__
*)&call_and_return_all_conditional_losses"¬
_tf_keras_layer{"name": "dense_135", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_135", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 15}}, "shared_object_id": 9}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15]}}
<
0
	1
2
3"
trackable_list_wrapper
<
0
	1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
trainable_variables
layer_metrics
layer_regularization_losses
metrics
	variables
regularization_losses

layers
non_trainable_variables
$__call__
#_default_save_signature
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
,
*serving_default"
signature_map
": 2dense_134/kernel
:2dense_134/bias
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
­

trainable_variables
layer_metrics
layer_regularization_losses
metrics
	variables
regularization_losses

layers
non_trainable_variables
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
": 2dense_135/kernel
:2dense_135/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
trainable_variables
layer_metrics
layer_regularization_losses
 metrics
	variables
regularization_losses

!layers
"non_trainable_variables
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
è2å
"__inference__wrapped_model_2682674¾
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *.¢+
)&
dense_134_inputÿÿÿÿÿÿÿÿÿ
2
/__inference_sequential_97_layer_call_fn_2682726
/__inference_sequential_97_layer_call_fn_2682855
/__inference_sequential_97_layer_call_fn_2682868
/__inference_sequential_97_layer_call_fn_2682799À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ö2ó
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682885
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682902
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682813
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682827À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Õ2Ò
+__inference_dense_134_layer_call_fn_2682911¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_134_layer_call_and_return_conditional_losses_2682922¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_135_layer_call_fn_2682931¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_135_layer_call_and_return_conditional_losses_2682941¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÔBÑ
%__inference_signature_wrapper_2682842dense_134_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"__inference__wrapped_model_2682674w	8¢5
.¢+
)&
dense_134_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_135# 
	dense_135ÿÿÿÿÿÿÿÿÿ¦
F__inference_dense_134_layer_call_and_return_conditional_losses_2682922\	/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_134_layer_call_fn_2682911O	/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dense_135_layer_call_and_return_conditional_losses_2682941\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_135_layer_call_fn_2682931O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ½
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682813o	@¢=
6¢3
)&
dense_134_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682827o	@¢=
6¢3
)&
dense_134_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682885f	7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
J__inference_sequential_97_layer_call_and_return_conditional_losses_2682902f	7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_97_layer_call_fn_2682726b	@¢=
6¢3
)&
dense_134_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_97_layer_call_fn_2682799b	@¢=
6¢3
)&
dense_134_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_97_layer_call_fn_2682855Y	7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_97_layer_call_fn_2682868Y	7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ´
%__inference_signature_wrapper_2682842	K¢H
¢ 
Aª>
<
dense_134_input)&
dense_134_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_135# 
	dense_135ÿÿÿÿÿÿÿÿÿ