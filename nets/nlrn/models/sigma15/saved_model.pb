??%
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
h
BatchMatMul
x"T
y"T
output"T"
Ttype:
	2"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%??8"
data_formatstringNHWC"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
;
Maximum
x"T
y"T
z"T"
Ttype:

2	?
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
;
Minimum
x"T
y"T
z"T"
Ttype:

2	?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*1.10.12v1.10.1-0-g4dcfddc5d1??"
?
PlaceholderPlaceholder*
dtype0*=
_output_shapes+
):'???????????????????????????*2
shape):'???????????????????????????
P
ShapeShapePlaceholder*
T0*
out_type0*
_output_shapes
:
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_1StridedSliceShapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
_
strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_slice_2StridedSliceShapestrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Q
Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
?
Reshape/shapePackstrided_slicestrided_slice_1strided_slice_2Reshape/shape/3*
T0*

axis *
N*
_output_shapes
:
?
ReshapeReshapePlaceholderReshape/shape*
T0*
Tshape0*A
_output_shapes/
-:+???????????????????????????
P
model/mul/yConst*
valueB
 *  C*
dtype0*
_output_shapes
: 
r
	model/mulMulReshapemodel/mul/y*
T0*A
_output_shapes/
-:+???????????????????????????
?
0model/batch_normalization/gamma/Initializer/onesConst*
valueB*  ??*2
_class(
&$loc:@model/batch_normalization/gamma*
dtype0*
_output_shapes
:
?
model/batch_normalization/gamma
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *2
_class(
&$loc:@model/batch_normalization/gamma*
	container 
?
&model/batch_normalization/gamma/AssignAssignmodel/batch_normalization/gamma0model/batch_normalization/gamma/Initializer/ones*
T0*2
_class(
&$loc:@model/batch_normalization/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
?
$model/batch_normalization/gamma/readIdentitymodel/batch_normalization/gamma*
T0*2
_class(
&$loc:@model/batch_normalization/gamma*
_output_shapes
:
?
0model/batch_normalization/beta/Initializer/zerosConst*
valueB*    *1
_class'
%#loc:@model/batch_normalization/beta*
dtype0*
_output_shapes
:
?
model/batch_normalization/beta
VariableV2*1
_class'
%#loc:@model/batch_normalization/beta*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
?
%model/batch_normalization/beta/AssignAssignmodel/batch_normalization/beta0model/batch_normalization/beta/Initializer/zeros*
T0*1
_class'
%#loc:@model/batch_normalization/beta*
validate_shape(*
_output_shapes
:*
use_locking(
?
#model/batch_normalization/beta/readIdentitymodel/batch_normalization/beta*
T0*1
_class'
%#loc:@model/batch_normalization/beta*
_output_shapes
:
?
7model/batch_normalization/moving_mean/Initializer/zerosConst*
valueB*    *8
_class.
,*loc:@model/batch_normalization/moving_mean*
dtype0*
_output_shapes
:
?
%model/batch_normalization/moving_mean
VariableV2*
shared_name *8
_class.
,*loc:@model/batch_normalization/moving_mean*
	container *
shape:*
dtype0*
_output_shapes
:
?
,model/batch_normalization/moving_mean/AssignAssign%model/batch_normalization/moving_mean7model/batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:
?
*model/batch_normalization/moving_mean/readIdentity%model/batch_normalization/moving_mean*
T0*8
_class.
,*loc:@model/batch_normalization/moving_mean*
_output_shapes
:
?
:model/batch_normalization/moving_variance/Initializer/onesConst*
valueB*  ??*<
_class2
0.loc:@model/batch_normalization/moving_variance*
dtype0*
_output_shapes
:
?
)model/batch_normalization/moving_variance
VariableV2*<
_class2
0.loc:@model/batch_normalization/moving_variance*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
?
0model/batch_normalization/moving_variance/AssignAssign)model/batch_normalization/moving_variance:model/batch_normalization/moving_variance/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@model/batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:
?
.model/batch_normalization/moving_variance/readIdentity)model/batch_normalization/moving_variance*
T0*<
_class2
0.loc:@model/batch_normalization/moving_variance*
_output_shapes
:
?
(model/batch_normalization/FusedBatchNormFusedBatchNorm	model/mul$model/batch_normalization/gamma/read#model/batch_normalization/beta/read*model/batch_normalization/moving_mean/read.model/batch_normalization/moving_variance/read*
T0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+???????????????????????????::::*
epsilon%o?:
d
model/batch_normalization/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
3model/conv1/kernel/Initializer/random_uniform/shapeConst*%
valueB"         ?   *%
_class
loc:@model/conv1/kernel*
dtype0*
_output_shapes
:
?
1model/conv1/kernel/Initializer/random_uniform/minConst*
valueB
 *I:??*%
_class
loc:@model/conv1/kernel*
dtype0*
_output_shapes
: 
?
1model/conv1/kernel/Initializer/random_uniform/maxConst*
valueB
 *I:?=*%
_class
loc:@model/conv1/kernel*
dtype0*
_output_shapes
: 
?
;model/conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3model/conv1/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:?*

seed *
T0*%
_class
loc:@model/conv1/kernel*
seed2 
?
1model/conv1/kernel/Initializer/random_uniform/subSub1model/conv1/kernel/Initializer/random_uniform/max1model/conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@model/conv1/kernel*
_output_shapes
: 
?
1model/conv1/kernel/Initializer/random_uniform/mulMul;model/conv1/kernel/Initializer/random_uniform/RandomUniform1model/conv1/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@model/conv1/kernel*'
_output_shapes
:?
?
-model/conv1/kernel/Initializer/random_uniformAdd1model/conv1/kernel/Initializer/random_uniform/mul1model/conv1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@model/conv1/kernel*'
_output_shapes
:?
?
model/conv1/kernel
VariableV2*
shape:?*
dtype0*'
_output_shapes
:?*
shared_name *%
_class
loc:@model/conv1/kernel*
	container 
?
model/conv1/kernel/AssignAssignmodel/conv1/kernel-model/conv1/kernel/Initializer/random_uniform*
T0*%
_class
loc:@model/conv1/kernel*
validate_shape(*'
_output_shapes
:?*
use_locking(
?
model/conv1/kernel/readIdentitymodel/conv1/kernel*
T0*%
_class
loc:@model/conv1/kernel*'
_output_shapes
:?
?
"model/conv1/bias/Initializer/zerosConst*
valueB?*    *#
_class
loc:@model/conv1/bias*
dtype0*
_output_shapes	
:?
?
model/conv1/bias
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *#
_class
loc:@model/conv1/bias*
	container *
shape:?
?
model/conv1/bias/AssignAssignmodel/conv1/bias"model/conv1/bias/Initializer/zeros*
T0*#
_class
loc:@model/conv1/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
~
model/conv1/bias/readIdentitymodel/conv1/bias*
T0*#
_class
loc:@model/conv1/bias*
_output_shapes	
:?
j
model/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/conv1/Conv2DConv2D(model/batch_normalization/FusedBatchNormmodel/conv1/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations

?
model/conv1/BiasAddBiasAddmodel/conv1/Conv2Dmodel/conv1/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
4model/rnn/batch_normalization/gamma/Initializer/onesConst*
valueB?*  ??*6
_class,
*(loc:@model/rnn/batch_normalization/gamma*
dtype0*
_output_shapes	
:?
?
#model/rnn/batch_normalization/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *6
_class,
*(loc:@model/rnn/batch_normalization/gamma*
	container *
shape:?
?
*model/rnn/batch_normalization/gamma/AssignAssign#model/rnn/batch_normalization/gamma4model/rnn/batch_normalization/gamma/Initializer/ones*
T0*6
_class,
*(loc:@model/rnn/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
(model/rnn/batch_normalization/gamma/readIdentity#model/rnn/batch_normalization/gamma*
T0*6
_class,
*(loc:@model/rnn/batch_normalization/gamma*
_output_shapes	
:?
?
4model/rnn/batch_normalization/beta/Initializer/zerosConst*
valueB?*    *5
_class+
)'loc:@model/rnn/batch_normalization/beta*
dtype0*
_output_shapes	
:?
?
"model/rnn/batch_normalization/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *5
_class+
)'loc:@model/rnn/batch_normalization/beta*
	container *
shape:?
?
)model/rnn/batch_normalization/beta/AssignAssign"model/rnn/batch_normalization/beta4model/rnn/batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@model/rnn/batch_normalization/beta*
validate_shape(*
_output_shapes	
:?
?
'model/rnn/batch_normalization/beta/readIdentity"model/rnn/batch_normalization/beta*
T0*5
_class+
)'loc:@model/rnn/batch_normalization/beta*
_output_shapes	
:?
?
;model/rnn/batch_normalization/moving_mean/Initializer/zerosConst*
valueB?*    *<
_class2
0.loc:@model/rnn/batch_normalization/moving_mean*
dtype0*
_output_shapes	
:?
?
)model/rnn/batch_normalization/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *<
_class2
0.loc:@model/rnn/batch_normalization/moving_mean*
	container *
shape:?
?
0model/rnn/batch_normalization/moving_mean/AssignAssign)model/rnn/batch_normalization/moving_mean;model/rnn/batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@model/rnn/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:?
?
.model/rnn/batch_normalization/moving_mean/readIdentity)model/rnn/batch_normalization/moving_mean*
T0*<
_class2
0.loc:@model/rnn/batch_normalization/moving_mean*
_output_shapes	
:?
?
>model/rnn/batch_normalization/moving_variance/Initializer/onesConst*
valueB?*  ??*@
_class6
42loc:@model/rnn/batch_normalization/moving_variance*
dtype0*
_output_shapes	
:?
?
-model/rnn/batch_normalization/moving_variance
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *@
_class6
42loc:@model/rnn/batch_normalization/moving_variance*
	container 
?
4model/rnn/batch_normalization/moving_variance/AssignAssign-model/rnn/batch_normalization/moving_variance>model/rnn/batch_normalization/moving_variance/Initializer/ones*
T0*@
_class6
42loc:@model/rnn/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
2model/rnn/batch_normalization/moving_variance/readIdentity-model/rnn/batch_normalization/moving_variance*
T0*@
_class6
42loc:@model/rnn/batch_normalization/moving_variance*
_output_shapes	
:?
?
,model/rnn/batch_normalization/FusedBatchNormFusedBatchNormmodel/conv1/BiasAdd(model/rnn/batch_normalization/gamma/read'model/rnn/batch_normalization/beta/read.model/rnn/batch_normalization/moving_mean/read2model/rnn/batch_normalization/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
h
#model/rnn/batch_normalization/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/ReluRelu,model/rnn/batch_normalization/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
?
Amodel/rnn/non_local_theta/kernel/Initializer/random_uniform/shapeConst*%
valueB"      ?   @   *3
_class)
'%loc:@model/rnn/non_local_theta/kernel*
dtype0*
_output_shapes
:
?
?model/rnn/non_local_theta/kernel/Initializer/random_uniform/minConst*
valueB
 *?5?*3
_class)
'%loc:@model/rnn/non_local_theta/kernel*
dtype0*
_output_shapes
: 
?
?model/rnn/non_local_theta/kernel/Initializer/random_uniform/maxConst*
valueB
 *?5>*3
_class)
'%loc:@model/rnn/non_local_theta/kernel*
dtype0*
_output_shapes
: 
?
Imodel/rnn/non_local_theta/kernel/Initializer/random_uniform/RandomUniformRandomUniformAmodel/rnn/non_local_theta/kernel/Initializer/random_uniform/shape*
T0*3
_class)
'%loc:@model/rnn/non_local_theta/kernel*
seed2 *
dtype0*'
_output_shapes
:?@*

seed 
?
?model/rnn/non_local_theta/kernel/Initializer/random_uniform/subSub?model/rnn/non_local_theta/kernel/Initializer/random_uniform/max?model/rnn/non_local_theta/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@model/rnn/non_local_theta/kernel*
_output_shapes
: 
?
?model/rnn/non_local_theta/kernel/Initializer/random_uniform/mulMulImodel/rnn/non_local_theta/kernel/Initializer/random_uniform/RandomUniform?model/rnn/non_local_theta/kernel/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@model/rnn/non_local_theta/kernel*'
_output_shapes
:?@
?
;model/rnn/non_local_theta/kernel/Initializer/random_uniformAdd?model/rnn/non_local_theta/kernel/Initializer/random_uniform/mul?model/rnn/non_local_theta/kernel/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@model/rnn/non_local_theta/kernel*'
_output_shapes
:?@
?
 model/rnn/non_local_theta/kernel
VariableV2*
dtype0*'
_output_shapes
:?@*
shared_name *3
_class)
'%loc:@model/rnn/non_local_theta/kernel*
	container *
shape:?@
?
'model/rnn/non_local_theta/kernel/AssignAssign model/rnn/non_local_theta/kernel;model/rnn/non_local_theta/kernel/Initializer/random_uniform*
T0*3
_class)
'%loc:@model/rnn/non_local_theta/kernel*
validate_shape(*'
_output_shapes
:?@*
use_locking(
?
%model/rnn/non_local_theta/kernel/readIdentity model/rnn/non_local_theta/kernel*
T0*3
_class)
'%loc:@model/rnn/non_local_theta/kernel*'
_output_shapes
:?@
?
0model/rnn/non_local_theta/bias/Initializer/zerosConst*
valueB@*    *1
_class'
%#loc:@model/rnn/non_local_theta/bias*
dtype0*
_output_shapes
:@
?
model/rnn/non_local_theta/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *1
_class'
%#loc:@model/rnn/non_local_theta/bias*
	container *
shape:@
?
%model/rnn/non_local_theta/bias/AssignAssignmodel/rnn/non_local_theta/bias0model/rnn/non_local_theta/bias/Initializer/zeros*
use_locking(*
T0*1
_class'
%#loc:@model/rnn/non_local_theta/bias*
validate_shape(*
_output_shapes
:@
?
#model/rnn/non_local_theta/bias/readIdentitymodel/rnn/non_local_theta/bias*
T0*1
_class'
%#loc:@model/rnn/non_local_theta/bias*
_output_shapes
:@
x
'model/rnn/non_local_theta/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
 model/rnn/non_local_theta/Conv2DConv2Dmodel/rnn/Relu%model/rnn/non_local_theta/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@
?
!model/rnn/non_local_theta/BiasAddBiasAdd model/rnn/non_local_theta/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
?
?model/rnn/non_local_phi/kernel/Initializer/random_uniform/shapeConst*%
valueB"      ?   @   *1
_class'
%#loc:@model/rnn/non_local_phi/kernel*
dtype0*
_output_shapes
:
?
=model/rnn/non_local_phi/kernel/Initializer/random_uniform/minConst*
valueB
 *?5?*1
_class'
%#loc:@model/rnn/non_local_phi/kernel*
dtype0*
_output_shapes
: 
?
=model/rnn/non_local_phi/kernel/Initializer/random_uniform/maxConst*
valueB
 *?5>*1
_class'
%#loc:@model/rnn/non_local_phi/kernel*
dtype0*
_output_shapes
: 
?
Gmodel/rnn/non_local_phi/kernel/Initializer/random_uniform/RandomUniformRandomUniform?model/rnn/non_local_phi/kernel/Initializer/random_uniform/shape*

seed *
T0*1
_class'
%#loc:@model/rnn/non_local_phi/kernel*
seed2 *
dtype0*'
_output_shapes
:?@
?
=model/rnn/non_local_phi/kernel/Initializer/random_uniform/subSub=model/rnn/non_local_phi/kernel/Initializer/random_uniform/max=model/rnn/non_local_phi/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@model/rnn/non_local_phi/kernel*
_output_shapes
: 
?
=model/rnn/non_local_phi/kernel/Initializer/random_uniform/mulMulGmodel/rnn/non_local_phi/kernel/Initializer/random_uniform/RandomUniform=model/rnn/non_local_phi/kernel/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@model/rnn/non_local_phi/kernel*'
_output_shapes
:?@
?
9model/rnn/non_local_phi/kernel/Initializer/random_uniformAdd=model/rnn/non_local_phi/kernel/Initializer/random_uniform/mul=model/rnn/non_local_phi/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@model/rnn/non_local_phi/kernel*'
_output_shapes
:?@
?
model/rnn/non_local_phi/kernel
VariableV2*
shape:?@*
dtype0*'
_output_shapes
:?@*
shared_name *1
_class'
%#loc:@model/rnn/non_local_phi/kernel*
	container 
?
%model/rnn/non_local_phi/kernel/AssignAssignmodel/rnn/non_local_phi/kernel9model/rnn/non_local_phi/kernel/Initializer/random_uniform*
T0*1
_class'
%#loc:@model/rnn/non_local_phi/kernel*
validate_shape(*'
_output_shapes
:?@*
use_locking(
?
#model/rnn/non_local_phi/kernel/readIdentitymodel/rnn/non_local_phi/kernel*
T0*1
_class'
%#loc:@model/rnn/non_local_phi/kernel*'
_output_shapes
:?@
?
.model/rnn/non_local_phi/bias/Initializer/zerosConst*
valueB@*    */
_class%
#!loc:@model/rnn/non_local_phi/bias*
dtype0*
_output_shapes
:@
?
model/rnn/non_local_phi/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name */
_class%
#!loc:@model/rnn/non_local_phi/bias*
	container *
shape:@
?
#model/rnn/non_local_phi/bias/AssignAssignmodel/rnn/non_local_phi/bias.model/rnn/non_local_phi/bias/Initializer/zeros*
T0*/
_class%
#!loc:@model/rnn/non_local_phi/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
!model/rnn/non_local_phi/bias/readIdentitymodel/rnn/non_local_phi/bias*
T0*/
_class%
#!loc:@model/rnn/non_local_phi/bias*
_output_shapes
:@
v
%model/rnn/non_local_phi/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_phi/Conv2DConv2Dmodel/rnn/Relu#model/rnn/non_local_phi/kernel/read*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
model/rnn/non_local_phi/BiasAddBiasAddmodel/rnn/non_local_phi/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
?
>model/rnn/non_local_g/kernel/Initializer/zeros/shape_as_tensorConst*%
valueB"      ?   ?   */
_class%
#!loc:@model/rnn/non_local_g/kernel*
dtype0*
_output_shapes
:
?
4model/rnn/non_local_g/kernel/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@model/rnn/non_local_g/kernel*
dtype0*
_output_shapes
: 
?
.model/rnn/non_local_g/kernel/Initializer/zerosFill>model/rnn/non_local_g/kernel/Initializer/zeros/shape_as_tensor4model/rnn/non_local_g/kernel/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@model/rnn/non_local_g/kernel*(
_output_shapes
:??
?
model/rnn/non_local_g/kernel
VariableV2*/
_class%
#!loc:@model/rnn/non_local_g/kernel*
	container *
shape:??*
dtype0*(
_output_shapes
:??*
shared_name 
?
#model/rnn/non_local_g/kernel/AssignAssignmodel/rnn/non_local_g/kernel.model/rnn/non_local_g/kernel/Initializer/zeros*
T0*/
_class%
#!loc:@model/rnn/non_local_g/kernel*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
!model/rnn/non_local_g/kernel/readIdentitymodel/rnn/non_local_g/kernel*
T0*/
_class%
#!loc:@model/rnn/non_local_g/kernel*(
_output_shapes
:??
?
,model/rnn/non_local_g/bias/Initializer/zerosConst*
valueB?*    *-
_class#
!loc:@model/rnn/non_local_g/bias*
dtype0*
_output_shapes	
:?
?
model/rnn/non_local_g/bias
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *-
_class#
!loc:@model/rnn/non_local_g/bias*
	container 
?
!model/rnn/non_local_g/bias/AssignAssignmodel/rnn/non_local_g/bias,model/rnn/non_local_g/bias/Initializer/zeros*
T0*-
_class#
!loc:@model/rnn/non_local_g/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
model/rnn/non_local_g/bias/readIdentitymodel/rnn/non_local_g/bias*
T0*-
_class#
!loc:@model/rnn/non_local_g/bias*
_output_shapes	
:?
t
#model/rnn/non_local_g/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g/Conv2DConv2Dmodel/rnn/Relu!model/rnn/non_local_g/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations

?
model/rnn/non_local_g/BiasAddBiasAddmodel/rnn/non_local_g/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
p
model/rnn/ShapeShape!model/rnn/non_local_theta/BiasAdd*
T0*
out_type0*
_output_shapes
:
g
model/rnn/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
i
model/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
model/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_sliceStridedSlicemodel/rnn/Shapemodel/rnn/strided_slice/stackmodel/rnn/strided_slice/stack_1model/rnn/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/Shape_1Shape!model/rnn/non_local_theta/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
model/rnn/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_1StridedSlicemodel/rnn/Shape_1model/rnn/strided_slice_1/stack!model/rnn/strided_slice_1/stack_1!model/rnn/strided_slice_1/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
r
model/rnn/Shape_2Shape!model/rnn/non_local_theta/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
model/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_2StridedSlicemodel/rnn/Shape_2model/rnn/strided_slice_2/stack!model/rnn/strided_slice_2/stack_1!model/rnn/strided_slice_2/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
k
model/rnn/mulMulmodel/rnn/strided_slice_1model/rnn/strided_slice_2*
T0*
_output_shapes
: 
r
model/rnn/Shape_3Shape!model/rnn/non_local_theta/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
model/rnn/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_3StridedSlicemodel/rnn/Shape_3model/rnn/strided_slice_3/stack!model/rnn/strided_slice_3/stack_1!model/rnn/strided_slice_3/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape/shapePackmodel/rnn/strided_slicemodel/rnn/mulmodel/rnn/strided_slice_3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/ReshapeReshape!model/rnn/non_local_theta/BiasAddmodel/rnn/Reshape/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
p
model/rnn/Shape_4Shapemodel/rnn/non_local_phi/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
model/rnn/strided_slice_4/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_4StridedSlicemodel/rnn/Shape_4model/rnn/strided_slice_4/stack!model/rnn/strided_slice_4/stack_1!model/rnn/strided_slice_4/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
p
model/rnn/Shape_5Shapemodel/rnn/non_local_phi/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
model/rnn/strided_slice_5/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_5/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_5StridedSlicemodel/rnn/Shape_5model/rnn/strided_slice_5/stack!model/rnn/strided_slice_5/stack_1!model/rnn/strided_slice_5/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
p
model/rnn/Shape_6Shapemodel/rnn/non_local_phi/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
model/rnn/strided_slice_6/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_6/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_6StridedSlicemodel/rnn/Shape_6model/rnn/strided_slice_6/stack!model/rnn/strided_slice_6/stack_1!model/rnn/strided_slice_6/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
model/rnn/mul_1Mulmodel/rnn/strided_slice_5model/rnn/strided_slice_6*
T0*
_output_shapes
: 
p
model/rnn/Shape_7Shapemodel/rnn/non_local_phi/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
model/rnn/strided_slice_7/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_7/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_7StridedSlicemodel/rnn/Shape_7model/rnn/strided_slice_7/stack!model/rnn/strided_slice_7/stack_1!model/rnn/strided_slice_7/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_1/shapePackmodel/rnn/strided_slice_4model/rnn/mul_1model/rnn/strided_slice_7*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_1Reshapemodel/rnn/non_local_phi/BiasAddmodel/rnn/Reshape_1/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
m
model/rnn/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose	Transposemodel/rnn/Reshape_1model/rnn/transpose/perm*
Tperm0*
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMulBatchMatMulmodel/rnn/Reshapemodel/rnn/transpose*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
a
model/rnn/Shape_8Shapemodel/rnn/MatMul*
T0*
out_type0*
_output_shapes
:
P
model/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
a
model/rnn/Shape_9Shapemodel/rnn/MatMul*
T0*
out_type0*
_output_shapes
:
Q
model/rnn/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
V
model/rnn/SubSubmodel/rnn/Rankmodel/rnn/Sub/y*
T0*
_output_shapes
: 
f
model/rnn/Slice/beginPackmodel/rnn/Sub*
T0*

axis *
N*
_output_shapes
:
^
model/rnn/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/SliceSlicemodel/rnn/Shape_9model/rnn/Slice/beginmodel/rnn/Slice/size*
T0*
Index0*
_output_shapes
:
l
model/rnn/concat/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
W
model/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concatConcatV2model/rnn/concat/values_0model/rnn/Slicemodel/rnn/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
model/rnn/Reshape_2Reshapemodel/rnn/MatMulmodel/rnn/concat*
T0*
Tshape0*0
_output_shapes
:??????????????????
l
model/rnn/SoftmaxSoftmaxmodel/rnn/Reshape_2*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_3Reshapemodel/rnn/Softmaxmodel/rnn/Shape_8*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
o
model/rnn/Shape_10Shapemodel/rnn/non_local_g/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
model/rnn/strided_slice_8/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_8/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_8/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_8StridedSlicemodel/rnn/Shape_10model/rnn/strided_slice_8/stack!model/rnn/strided_slice_8/stack_1!model/rnn/strided_slice_8/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
o
model/rnn/Shape_11Shapemodel/rnn/non_local_g/BiasAdd*
T0*
out_type0*
_output_shapes
:
i
model/rnn/strided_slice_9/stackConst*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_9/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!model/rnn/strided_slice_9/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_9StridedSlicemodel/rnn/Shape_11model/rnn/strided_slice_9/stack!model/rnn/strided_slice_9/stack_1!model/rnn/strided_slice_9/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
o
model/rnn/Shape_12Shapemodel/rnn/non_local_g/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_10/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_10/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_10StridedSlicemodel/rnn/Shape_12 model/rnn/strided_slice_10/stack"model/rnn/strided_slice_10/stack_1"model/rnn/strided_slice_10/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
n
model/rnn/mul_2Mulmodel/rnn/strided_slice_9model/rnn/strided_slice_10*
T0*
_output_shapes
: 
o
model/rnn/Shape_13Shapemodel/rnn/non_local_g/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_11/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_11/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_11/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_11StridedSlicemodel/rnn/Shape_13 model/rnn/strided_slice_11/stack"model/rnn/strided_slice_11/stack_1"model/rnn/strided_slice_11/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_4/shapePackmodel/rnn/strided_slice_8model/rnn/mul_2model/rnn/strided_slice_11*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_4Reshapemodel/rnn/non_local_g/BiasAddmodel/rnn/Reshape_4/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_1BatchMatMulmodel/rnn/Reshape_3model/rnn/Reshape_4*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
d
model/rnn/Shape_14Shapemodel/rnn/MatMul_1*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_12/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_12/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_12/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_12StridedSlicemodel/rnn/Shape_14 model/rnn/strided_slice_12/stack"model/rnn/strided_slice_12/stack_1"model/rnn/strided_slice_12/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
q
model/rnn/Shape_15Shapemodel/rnn/non_local_phi/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_13/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_13/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_13/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_13StridedSlicemodel/rnn/Shape_15 model/rnn/strided_slice_13/stack"model/rnn/strided_slice_13/stack_1"model/rnn/strided_slice_13/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
model/rnn/Shape_16Shapemodel/rnn/non_local_phi/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_14/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_14/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_14/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_14StridedSlicemodel/rnn/Shape_16 model/rnn/strided_slice_14/stack"model/rnn/strided_slice_14/stack_1"model/rnn/strided_slice_14/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
^
model/rnn/Reshape_5/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_5/shapePackmodel/rnn/strided_slice_12model/rnn/strided_slice_13model/rnn/strided_slice_14model/rnn/Reshape_5/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_5Reshapemodel/rnn/MatMul_1model/rnn/Reshape_5/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/AddAddmodel/rnn/Relumodel/rnn/Reshape_5*
T0*B
_output_shapes0
.:,????????????????????????????
?
6model/rnn/batch_normalization_1/gamma/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@model/rnn/batch_normalization_1/gamma*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_1/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_1/gamma*
	container *
shape:?
?
,model/rnn/batch_normalization_1/gamma/AssignAssign%model/rnn/batch_normalization_1/gamma6model/rnn/batch_normalization_1/gamma/Initializer/ones*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_1/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_1/gamma/readIdentity%model/rnn/batch_normalization_1/gamma*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_1/gamma*
_output_shapes	
:?
?
6model/rnn/batch_normalization_1/beta/Initializer/zerosConst*
valueB?*    *7
_class-
+)loc:@model/rnn/batch_normalization_1/beta*
dtype0*
_output_shapes	
:?
?
$model/rnn/batch_normalization_1/beta
VariableV2*
shared_name *7
_class-
+)loc:@model/rnn/batch_normalization_1/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_1/beta/AssignAssign$model/rnn/batch_normalization_1/beta6model/rnn/batch_normalization_1/beta/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:?
?
)model/rnn/batch_normalization_1/beta/readIdentity$model/rnn/batch_normalization_1/beta*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_1/beta*
_output_shapes	
:?
?
=model/rnn/batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB?*    *>
_class4
20loc:@model/rnn/batch_normalization_1/moving_mean*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_1/moving_mean
VariableV2*>
_class4
20loc:@model/rnn/batch_normalization_1/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
2model/rnn/batch_normalization_1/moving_mean/AssignAssign+model/rnn/batch_normalization_1/moving_mean=model/rnn/batch_normalization_1/moving_mean/Initializer/zeros*
T0*>
_class4
20loc:@model/rnn/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
0model/rnn/batch_normalization_1/moving_mean/readIdentity+model/rnn/batch_normalization_1/moving_mean*
T0*>
_class4
20loc:@model/rnn/batch_normalization_1/moving_mean*
_output_shapes	
:?
?
@model/rnn/batch_normalization_1/moving_variance/Initializer/onesConst*
valueB?*  ??*B
_class8
64loc:@model/rnn/batch_normalization_1/moving_variance*
dtype0*
_output_shapes	
:?
?
/model/rnn/batch_normalization_1/moving_variance
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *B
_class8
64loc:@model/rnn/batch_normalization_1/moving_variance*
	container 
?
6model/rnn/batch_normalization_1/moving_variance/AssignAssign/model/rnn/batch_normalization_1/moving_variance@model/rnn/batch_normalization_1/moving_variance/Initializer/ones*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
4model/rnn/batch_normalization_1/moving_variance/readIdentity/model/rnn/batch_normalization_1/moving_variance*
T0*B
_class8
64loc:@model/rnn/batch_normalization_1/moving_variance*
_output_shapes	
:?
?
.model/rnn/batch_normalization_1/FusedBatchNormFusedBatchNormmodel/rnn/Add*model/rnn/batch_normalization_1/gamma/read)model/rnn/batch_normalization_1/beta/read0model/rnn/batch_normalization_1/moving_mean/read4model/rnn/batch_normalization_1/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
j
%model/rnn/batch_normalization_1/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
7model/rnn/RB1_a/kernel/Initializer/random_uniform/shapeConst*%
valueB"      ?   ?   *)
_class
loc:@model/rnn/RB1_a/kernel*
dtype0*
_output_shapes
:
?
5model/rnn/RB1_a/kernel/Initializer/random_uniform/minConst*
valueB
 *?Q?*)
_class
loc:@model/rnn/RB1_a/kernel*
dtype0*
_output_shapes
: 
?
5model/rnn/RB1_a/kernel/Initializer/random_uniform/maxConst*
valueB
 *?Q=*)
_class
loc:@model/rnn/RB1_a/kernel*
dtype0*
_output_shapes
: 
?
?model/rnn/RB1_a/kernel/Initializer/random_uniform/RandomUniformRandomUniform7model/rnn/RB1_a/kernel/Initializer/random_uniform/shape*

seed *
T0*)
_class
loc:@model/rnn/RB1_a/kernel*
seed2 *
dtype0*(
_output_shapes
:??
?
5model/rnn/RB1_a/kernel/Initializer/random_uniform/subSub5model/rnn/RB1_a/kernel/Initializer/random_uniform/max5model/rnn/RB1_a/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@model/rnn/RB1_a/kernel*
_output_shapes
: 
?
5model/rnn/RB1_a/kernel/Initializer/random_uniform/mulMul?model/rnn/RB1_a/kernel/Initializer/random_uniform/RandomUniform5model/rnn/RB1_a/kernel/Initializer/random_uniform/sub*
T0*)
_class
loc:@model/rnn/RB1_a/kernel*(
_output_shapes
:??
?
1model/rnn/RB1_a/kernel/Initializer/random_uniformAdd5model/rnn/RB1_a/kernel/Initializer/random_uniform/mul5model/rnn/RB1_a/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@model/rnn/RB1_a/kernel*(
_output_shapes
:??
?
model/rnn/RB1_a/kernel
VariableV2*)
_class
loc:@model/rnn/RB1_a/kernel*
	container *
shape:??*
dtype0*(
_output_shapes
:??*
shared_name 
?
model/rnn/RB1_a/kernel/AssignAssignmodel/rnn/RB1_a/kernel1model/rnn/RB1_a/kernel/Initializer/random_uniform*
T0*)
_class
loc:@model/rnn/RB1_a/kernel*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
model/rnn/RB1_a/kernel/readIdentitymodel/rnn/RB1_a/kernel*
T0*)
_class
loc:@model/rnn/RB1_a/kernel*(
_output_shapes
:??
?
&model/rnn/RB1_a/bias/Initializer/zerosConst*
valueB?*    *'
_class
loc:@model/rnn/RB1_a/bias*
dtype0*
_output_shapes	
:?
?
model/rnn/RB1_a/bias
VariableV2*'
_class
loc:@model/rnn/RB1_a/bias*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
model/rnn/RB1_a/bias/AssignAssignmodel/rnn/RB1_a/bias&model/rnn/RB1_a/bias/Initializer/zeros*
T0*'
_class
loc:@model/rnn/RB1_a/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
model/rnn/RB1_a/bias/readIdentitymodel/rnn/RB1_a/bias*
T0*'
_class
loc:@model/rnn/RB1_a/bias*
_output_shapes	
:?
n
model/rnn/RB1_a/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a/Conv2DConv2D.model/rnn/batch_normalization_1/FusedBatchNormmodel/rnn/RB1_a/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/RB1_a/BiasAddBiasAddmodel/rnn/RB1_a/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
6model/rnn/batch_normalization_2/gamma/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@model/rnn/batch_normalization_2/gamma*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_2/gamma
VariableV2*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_2/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_2/gamma/AssignAssign%model/rnn/batch_normalization_2/gamma6model/rnn/batch_normalization_2/gamma/Initializer/ones*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_2/gamma/readIdentity%model/rnn/batch_normalization_2/gamma*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_2/gamma*
_output_shapes	
:?
?
6model/rnn/batch_normalization_2/beta/Initializer/zerosConst*
valueB?*    *7
_class-
+)loc:@model/rnn/batch_normalization_2/beta*
dtype0*
_output_shapes	
:?
?
$model/rnn/batch_normalization_2/beta
VariableV2*
shared_name *7
_class-
+)loc:@model/rnn/batch_normalization_2/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_2/beta/AssignAssign$model/rnn/batch_normalization_2/beta6model/rnn/batch_normalization_2/beta/Initializer/zeros*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_2/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
)model/rnn/batch_normalization_2/beta/readIdentity$model/rnn/batch_normalization_2/beta*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_2/beta*
_output_shapes	
:?
?
=model/rnn/batch_normalization_2/moving_mean/Initializer/zerosConst*
valueB?*    *>
_class4
20loc:@model/rnn/batch_normalization_2/moving_mean*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_2/moving_mean
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *>
_class4
20loc:@model/rnn/batch_normalization_2/moving_mean*
	container 
?
2model/rnn/batch_normalization_2/moving_mean/AssignAssign+model/rnn/batch_normalization_2/moving_mean=model/rnn/batch_normalization_2/moving_mean/Initializer/zeros*
T0*>
_class4
20loc:@model/rnn/batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
0model/rnn/batch_normalization_2/moving_mean/readIdentity+model/rnn/batch_normalization_2/moving_mean*
T0*>
_class4
20loc:@model/rnn/batch_normalization_2/moving_mean*
_output_shapes	
:?
?
@model/rnn/batch_normalization_2/moving_variance/Initializer/onesConst*
valueB?*  ??*B
_class8
64loc:@model/rnn/batch_normalization_2/moving_variance*
dtype0*
_output_shapes	
:?
?
/model/rnn/batch_normalization_2/moving_variance
VariableV2*B
_class8
64loc:@model/rnn/batch_normalization_2/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
6model/rnn/batch_normalization_2/moving_variance/AssignAssign/model/rnn/batch_normalization_2/moving_variance@model/rnn/batch_normalization_2/moving_variance/Initializer/ones*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes	
:?
?
4model/rnn/batch_normalization_2/moving_variance/readIdentity/model/rnn/batch_normalization_2/moving_variance*
T0*B
_class8
64loc:@model/rnn/batch_normalization_2/moving_variance*
_output_shapes	
:?
?
.model/rnn/batch_normalization_2/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a/BiasAdd*model/rnn/batch_normalization_2/gamma/read)model/rnn/batch_normalization_2/beta/read0model/rnn/batch_normalization_2/moving_mean/read4model/rnn/batch_normalization_2/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
j
%model/rnn/batch_normalization_2/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_1Relu.model/rnn/batch_normalization_2/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/RB1_b/kernel/Initializer/random_uniform/shapeConst*%
valueB"      ?   ?   *)
_class
loc:@model/rnn/RB1_b/kernel*
dtype0*
_output_shapes
:
?
5model/rnn/RB1_b/kernel/Initializer/random_uniform/minConst*
valueB
 *?Q?*)
_class
loc:@model/rnn/RB1_b/kernel*
dtype0*
_output_shapes
: 
?
5model/rnn/RB1_b/kernel/Initializer/random_uniform/maxConst*
valueB
 *?Q=*)
_class
loc:@model/rnn/RB1_b/kernel*
dtype0*
_output_shapes
: 
?
?model/rnn/RB1_b/kernel/Initializer/random_uniform/RandomUniformRandomUniform7model/rnn/RB1_b/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:??*

seed *
T0*)
_class
loc:@model/rnn/RB1_b/kernel*
seed2 
?
5model/rnn/RB1_b/kernel/Initializer/random_uniform/subSub5model/rnn/RB1_b/kernel/Initializer/random_uniform/max5model/rnn/RB1_b/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@model/rnn/RB1_b/kernel*
_output_shapes
: 
?
5model/rnn/RB1_b/kernel/Initializer/random_uniform/mulMul?model/rnn/RB1_b/kernel/Initializer/random_uniform/RandomUniform5model/rnn/RB1_b/kernel/Initializer/random_uniform/sub*
T0*)
_class
loc:@model/rnn/RB1_b/kernel*(
_output_shapes
:??
?
1model/rnn/RB1_b/kernel/Initializer/random_uniformAdd5model/rnn/RB1_b/kernel/Initializer/random_uniform/mul5model/rnn/RB1_b/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@model/rnn/RB1_b/kernel*(
_output_shapes
:??
?
model/rnn/RB1_b/kernel
VariableV2*
dtype0*(
_output_shapes
:??*
shared_name *)
_class
loc:@model/rnn/RB1_b/kernel*
	container *
shape:??
?
model/rnn/RB1_b/kernel/AssignAssignmodel/rnn/RB1_b/kernel1model/rnn/RB1_b/kernel/Initializer/random_uniform*
T0*)
_class
loc:@model/rnn/RB1_b/kernel*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
model/rnn/RB1_b/kernel/readIdentitymodel/rnn/RB1_b/kernel*
T0*)
_class
loc:@model/rnn/RB1_b/kernel*(
_output_shapes
:??
?
&model/rnn/RB1_b/bias/Initializer/zerosConst*
valueB?*    *'
_class
loc:@model/rnn/RB1_b/bias*
dtype0*
_output_shapes	
:?
?
model/rnn/RB1_b/bias
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *'
_class
loc:@model/rnn/RB1_b/bias*
	container *
shape:?
?
model/rnn/RB1_b/bias/AssignAssignmodel/rnn/RB1_b/bias&model/rnn/RB1_b/bias/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@model/rnn/RB1_b/bias*
validate_shape(*
_output_shapes	
:?
?
model/rnn/RB1_b/bias/readIdentitymodel/rnn/RB1_b/bias*
T0*'
_class
loc:@model/rnn/RB1_b/bias*
_output_shapes	
:?
n
model/rnn/RB1_b/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b/Conv2DConv2Dmodel/rnn/Relu_1model/rnn/RB1_b/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/RB1_b/BiasAddBiasAddmodel/rnn/RB1_b/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_1Addmodel/rnn/RB1_b/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
6model/rnn/batch_normalization_3/gamma/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@model/rnn/batch_normalization_3/gamma*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_3/gamma
VariableV2*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_3/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_3/gamma/AssignAssign%model/rnn/batch_normalization_3/gamma6model/rnn/batch_normalization_3/gamma/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_3/gamma/readIdentity%model/rnn/batch_normalization_3/gamma*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_3/gamma*
_output_shapes	
:?
?
6model/rnn/batch_normalization_3/beta/Initializer/zerosConst*
valueB?*    *7
_class-
+)loc:@model/rnn/batch_normalization_3/beta*
dtype0*
_output_shapes	
:?
?
$model/rnn/batch_normalization_3/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *7
_class-
+)loc:@model/rnn/batch_normalization_3/beta*
	container 
?
+model/rnn/batch_normalization_3/beta/AssignAssign$model/rnn/batch_normalization_3/beta6model/rnn/batch_normalization_3/beta/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:?
?
)model/rnn/batch_normalization_3/beta/readIdentity$model/rnn/batch_normalization_3/beta*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_3/beta*
_output_shapes	
:?
?
=model/rnn/batch_normalization_3/moving_mean/Initializer/zerosConst*
valueB?*    *>
_class4
20loc:@model/rnn/batch_normalization_3/moving_mean*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_3/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@model/rnn/batch_normalization_3/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
2model/rnn/batch_normalization_3/moving_mean/AssignAssign+model/rnn/batch_normalization_3/moving_mean=model/rnn/batch_normalization_3/moving_mean/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@model/rnn/batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes	
:?
?
0model/rnn/batch_normalization_3/moving_mean/readIdentity+model/rnn/batch_normalization_3/moving_mean*
T0*>
_class4
20loc:@model/rnn/batch_normalization_3/moving_mean*
_output_shapes	
:?
?
@model/rnn/batch_normalization_3/moving_variance/Initializer/onesConst*
valueB?*  ??*B
_class8
64loc:@model/rnn/batch_normalization_3/moving_variance*
dtype0*
_output_shapes	
:?
?
/model/rnn/batch_normalization_3/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *B
_class8
64loc:@model/rnn/batch_normalization_3/moving_variance*
	container *
shape:?
?
6model/rnn/batch_normalization_3/moving_variance/AssignAssign/model/rnn/batch_normalization_3/moving_variance@model/rnn/batch_normalization_3/moving_variance/Initializer/ones*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes	
:?
?
4model/rnn/batch_normalization_3/moving_variance/readIdentity/model/rnn/batch_normalization_3/moving_variance*
T0*B
_class8
64loc:@model/rnn/batch_normalization_3/moving_variance*
_output_shapes	
:?
?
.model/rnn/batch_normalization_3/FusedBatchNormFusedBatchNormmodel/rnn/Add_1*model/rnn/batch_normalization_3/gamma/read)model/rnn/batch_normalization_3/beta/read0model/rnn/batch_normalization_3/moving_mean/read4model/rnn/batch_normalization_3/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
j
%model/rnn/batch_normalization_3/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_2Relu.model/rnn/batch_normalization_3/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
z
)model/rnn/non_local_theta_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
"model/rnn/non_local_theta_1/Conv2DConv2Dmodel/rnn/Relu_2%model/rnn/non_local_theta/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@*
	dilations

?
#model/rnn/non_local_theta_1/BiasAddBiasAdd"model/rnn/non_local_theta_1/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
x
'model/rnn/non_local_phi_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
 model/rnn/non_local_phi_1/Conv2DConv2Dmodel/rnn/Relu_2#model/rnn/non_local_phi/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
!model/rnn/non_local_phi_1/BiasAddBiasAdd model/rnn/non_local_phi_1/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
v
%model/rnn/non_local_g_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_1/Conv2DConv2Dmodel/rnn/Relu_2!model/rnn/non_local_g/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/non_local_g_1/BiasAddBiasAddmodel/rnn/non_local_g_1/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
u
model/rnn/Shape_17Shape#model/rnn/non_local_theta_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_15/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_15/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_15/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_15StridedSlicemodel/rnn/Shape_17 model/rnn/strided_slice_15/stack"model/rnn/strided_slice_15/stack_1"model/rnn/strided_slice_15/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
u
model/rnn/Shape_18Shape#model/rnn/non_local_theta_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_16/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_16/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_16/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_16StridedSlicemodel/rnn/Shape_18 model/rnn/strided_slice_16/stack"model/rnn/strided_slice_16/stack_1"model/rnn/strided_slice_16/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
u
model/rnn/Shape_19Shape#model/rnn/non_local_theta_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_17/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_17/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_17/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_17StridedSlicemodel/rnn/Shape_19 model/rnn/strided_slice_17/stack"model/rnn/strided_slice_17/stack_1"model/rnn/strided_slice_17/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
o
model/rnn/mul_3Mulmodel/rnn/strided_slice_16model/rnn/strided_slice_17*
T0*
_output_shapes
: 
u
model/rnn/Shape_20Shape#model/rnn/non_local_theta_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_18/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_18/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_18/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_18StridedSlicemodel/rnn/Shape_20 model/rnn/strided_slice_18/stack"model/rnn/strided_slice_18/stack_1"model/rnn/strided_slice_18/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
?
model/rnn/Reshape_6/shapePackmodel/rnn/strided_slice_15model/rnn/mul_3model/rnn/strided_slice_18*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_6Reshape#model/rnn/non_local_theta_1/BiasAddmodel/rnn/Reshape_6/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
s
model/rnn/Shape_21Shape!model/rnn/non_local_phi_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_19/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_19/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_19/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_19StridedSlicemodel/rnn/Shape_21 model/rnn/strided_slice_19/stack"model/rnn/strided_slice_19/stack_1"model/rnn/strided_slice_19/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
s
model/rnn/Shape_22Shape!model/rnn/non_local_phi_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_20/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_20/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_20/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_20StridedSlicemodel/rnn/Shape_22 model/rnn/strided_slice_20/stack"model/rnn/strided_slice_20/stack_1"model/rnn/strided_slice_20/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
s
model/rnn/Shape_23Shape!model/rnn/non_local_phi_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_21/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_21/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_21/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_21StridedSlicemodel/rnn/Shape_23 model/rnn/strided_slice_21/stack"model/rnn/strided_slice_21/stack_1"model/rnn/strided_slice_21/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
o
model/rnn/mul_4Mulmodel/rnn/strided_slice_20model/rnn/strided_slice_21*
T0*
_output_shapes
: 
s
model/rnn/Shape_24Shape!model/rnn/non_local_phi_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_22/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_22/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_22/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_22StridedSlicemodel/rnn/Shape_24 model/rnn/strided_slice_22/stack"model/rnn/strided_slice_22/stack_1"model/rnn/strided_slice_22/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_7/shapePackmodel/rnn/strided_slice_19model/rnn/mul_4model/rnn/strided_slice_22*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_7Reshape!model/rnn/non_local_phi_1/BiasAddmodel/rnn/Reshape_7/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
o
model/rnn/transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_1	Transposemodel/rnn/Reshape_7model/rnn/transpose_1/perm*
Tperm0*
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_2BatchMatMulmodel/rnn/Reshape_6model/rnn/transpose_1*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
?
model/rnn/add_2Addmodel/rnn/MatMul_2model/rnn/MatMul*
T0*=
_output_shapes+
):'???????????????????????????
a
model/rnn/Shape_25Shapemodel/rnn/add_2*
T0*
out_type0*
_output_shapes
:
R
model/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
a
model/rnn/Shape_26Shapemodel/rnn/add_2*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
model/rnn/Sub_1Submodel/rnn/Rank_1model/rnn/Sub_1/y*
T0*
_output_shapes
: 
j
model/rnn/Slice_1/beginPackmodel/rnn/Sub_1*
T0*

axis *
N*
_output_shapes
:
`
model/rnn/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_1Slicemodel/rnn/Shape_26model/rnn/Slice_1/beginmodel/rnn/Slice_1/size*
T0*
Index0*
_output_shapes
:
n
model/rnn/concat_1/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Y
model/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_1ConcatV2model/rnn/concat_1/values_0model/rnn/Slice_1model/rnn/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
model/rnn/Reshape_8Reshapemodel/rnn/add_2model/rnn/concat_1*
T0*
Tshape0*0
_output_shapes
:??????????????????
n
model/rnn/Softmax_1Softmaxmodel/rnn/Reshape_8*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_9Reshapemodel/rnn/Softmax_1model/rnn/Shape_25*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
q
model/rnn/Shape_27Shapemodel/rnn/non_local_g_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_23/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_23/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_23/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_23StridedSlicemodel/rnn/Shape_27 model/rnn/strided_slice_23/stack"model/rnn/strided_slice_23/stack_1"model/rnn/strided_slice_23/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
model/rnn/Shape_28Shapemodel/rnn/non_local_g_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_24/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_24/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_24/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_24StridedSlicemodel/rnn/Shape_28 model/rnn/strided_slice_24/stack"model/rnn/strided_slice_24/stack_1"model/rnn/strided_slice_24/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
q
model/rnn/Shape_29Shapemodel/rnn/non_local_g_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_25/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_25/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_25/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_25StridedSlicemodel/rnn/Shape_29 model/rnn/strided_slice_25/stack"model/rnn/strided_slice_25/stack_1"model/rnn/strided_slice_25/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
o
model/rnn/mul_5Mulmodel/rnn/strided_slice_24model/rnn/strided_slice_25*
T0*
_output_shapes
: 
q
model/rnn/Shape_30Shapemodel/rnn/non_local_g_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_26/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_26/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_26/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_26StridedSlicemodel/rnn/Shape_30 model/rnn/strided_slice_26/stack"model/rnn/strided_slice_26/stack_1"model/rnn/strided_slice_26/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_10/shapePackmodel/rnn/strided_slice_23model/rnn/mul_5model/rnn/strided_slice_26*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_10Reshapemodel/rnn/non_local_g_1/BiasAddmodel/rnn/Reshape_10/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_3BatchMatMulmodel/rnn/Reshape_9model/rnn/Reshape_10*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
d
model/rnn/Shape_31Shapemodel/rnn/MatMul_3*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_27/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_27/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_27/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_27StridedSlicemodel/rnn/Shape_31 model/rnn/strided_slice_27/stack"model/rnn/strided_slice_27/stack_1"model/rnn/strided_slice_27/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
model/rnn/Shape_32Shape!model/rnn/non_local_phi_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_28/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_28/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_28/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_28StridedSlicemodel/rnn/Shape_32 model/rnn/strided_slice_28/stack"model/rnn/strided_slice_28/stack_1"model/rnn/strided_slice_28/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
s
model/rnn/Shape_33Shape!model/rnn/non_local_phi_1/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_29/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_29/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_29/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_29StridedSlicemodel/rnn/Shape_33 model/rnn/strided_slice_29/stack"model/rnn/strided_slice_29/stack_1"model/rnn/strided_slice_29/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
_
model/rnn/Reshape_11/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_11/shapePackmodel/rnn/strided_slice_27model/rnn/strided_slice_28model/rnn/strided_slice_29model/rnn/Reshape_11/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_11Reshapemodel/rnn/MatMul_3model/rnn/Reshape_11/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_3Addmodel/rnn/Relu_2model/rnn/Reshape_11*
T0*B
_output_shapes0
.:,????????????????????????????
?
6model/rnn/batch_normalization_4/gamma/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@model/rnn/batch_normalization_4/gamma*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_4/gamma
VariableV2*8
_class.
,*loc:@model/rnn/batch_normalization_4/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
,model/rnn/batch_normalization_4/gamma/AssignAssign%model/rnn/batch_normalization_4/gamma6model/rnn/batch_normalization_4/gamma/Initializer/ones*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_4/gamma/readIdentity%model/rnn/batch_normalization_4/gamma*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_4/gamma*
_output_shapes	
:?
?
6model/rnn/batch_normalization_4/beta/Initializer/zerosConst*
valueB?*    *7
_class-
+)loc:@model/rnn/batch_normalization_4/beta*
dtype0*
_output_shapes	
:?
?
$model/rnn/batch_normalization_4/beta
VariableV2*
shared_name *7
_class-
+)loc:@model/rnn/batch_normalization_4/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_4/beta/AssignAssign$model/rnn/batch_normalization_4/beta6model/rnn/batch_normalization_4/beta/Initializer/zeros*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
)model/rnn/batch_normalization_4/beta/readIdentity$model/rnn/batch_normalization_4/beta*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_4/beta*
_output_shapes	
:?
?
=model/rnn/batch_normalization_4/moving_mean/Initializer/zerosConst*
valueB?*    *>
_class4
20loc:@model/rnn/batch_normalization_4/moving_mean*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_4/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *>
_class4
20loc:@model/rnn/batch_normalization_4/moving_mean*
	container *
shape:?
?
2model/rnn/batch_normalization_4/moving_mean/AssignAssign+model/rnn/batch_normalization_4/moving_mean=model/rnn/batch_normalization_4/moving_mean/Initializer/zeros*
T0*>
_class4
20loc:@model/rnn/batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
0model/rnn/batch_normalization_4/moving_mean/readIdentity+model/rnn/batch_normalization_4/moving_mean*
T0*>
_class4
20loc:@model/rnn/batch_normalization_4/moving_mean*
_output_shapes	
:?
?
@model/rnn/batch_normalization_4/moving_variance/Initializer/onesConst*
valueB?*  ??*B
_class8
64loc:@model/rnn/batch_normalization_4/moving_variance*
dtype0*
_output_shapes	
:?
?
/model/rnn/batch_normalization_4/moving_variance
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *B
_class8
64loc:@model/rnn/batch_normalization_4/moving_variance*
	container 
?
6model/rnn/batch_normalization_4/moving_variance/AssignAssign/model/rnn/batch_normalization_4/moving_variance@model/rnn/batch_normalization_4/moving_variance/Initializer/ones*
T0*B
_class8
64loc:@model/rnn/batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
4model/rnn/batch_normalization_4/moving_variance/readIdentity/model/rnn/batch_normalization_4/moving_variance*
T0*B
_class8
64loc:@model/rnn/batch_normalization_4/moving_variance*
_output_shapes	
:?
?
.model/rnn/batch_normalization_4/FusedBatchNormFusedBatchNormmodel/rnn/Add_3*model/rnn/batch_normalization_4/gamma/read)model/rnn/batch_normalization_4/beta/read0model/rnn/batch_normalization_4/moving_mean/read4model/rnn/batch_normalization_4/moving_variance/read*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?*
epsilon%o?:
j
%model/rnn/batch_normalization_4/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
p
model/rnn/RB1_a_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_1/Conv2DConv2D.model/rnn/batch_normalization_4/FusedBatchNormmodel/rnn/RB1_a/kernel/read*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
model/rnn/RB1_a_1/BiasAddBiasAddmodel/rnn/RB1_a_1/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
6model/rnn/batch_normalization_5/gamma/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@model/rnn/batch_normalization_5/gamma*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_5/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_5/gamma*
	container 
?
,model/rnn/batch_normalization_5/gamma/AssignAssign%model/rnn/batch_normalization_5/gamma6model/rnn/batch_normalization_5/gamma/Initializer/ones*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_5/gamma/readIdentity%model/rnn/batch_normalization_5/gamma*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_5/gamma*
_output_shapes	
:?
?
6model/rnn/batch_normalization_5/beta/Initializer/zerosConst*
valueB?*    *7
_class-
+)loc:@model/rnn/batch_normalization_5/beta*
dtype0*
_output_shapes	
:?
?
$model/rnn/batch_normalization_5/beta
VariableV2*7
_class-
+)loc:@model/rnn/batch_normalization_5/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
+model/rnn/batch_normalization_5/beta/AssignAssign$model/rnn/batch_normalization_5/beta6model/rnn/batch_normalization_5/beta/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:?
?
)model/rnn/batch_normalization_5/beta/readIdentity$model/rnn/batch_normalization_5/beta*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_5/beta*
_output_shapes	
:?
?
=model/rnn/batch_normalization_5/moving_mean/Initializer/zerosConst*
valueB?*    *>
_class4
20loc:@model/rnn/batch_normalization_5/moving_mean*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_5/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *>
_class4
20loc:@model/rnn/batch_normalization_5/moving_mean*
	container *
shape:?
?
2model/rnn/batch_normalization_5/moving_mean/AssignAssign+model/rnn/batch_normalization_5/moving_mean=model/rnn/batch_normalization_5/moving_mean/Initializer/zeros*
T0*>
_class4
20loc:@model/rnn/batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
0model/rnn/batch_normalization_5/moving_mean/readIdentity+model/rnn/batch_normalization_5/moving_mean*
T0*>
_class4
20loc:@model/rnn/batch_normalization_5/moving_mean*
_output_shapes	
:?
?
@model/rnn/batch_normalization_5/moving_variance/Initializer/onesConst*
valueB?*  ??*B
_class8
64loc:@model/rnn/batch_normalization_5/moving_variance*
dtype0*
_output_shapes	
:?
?
/model/rnn/batch_normalization_5/moving_variance
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *B
_class8
64loc:@model/rnn/batch_normalization_5/moving_variance*
	container 
?
6model/rnn/batch_normalization_5/moving_variance/AssignAssign/model/rnn/batch_normalization_5/moving_variance@model/rnn/batch_normalization_5/moving_variance/Initializer/ones*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:?
?
4model/rnn/batch_normalization_5/moving_variance/readIdentity/model/rnn/batch_normalization_5/moving_variance*
T0*B
_class8
64loc:@model/rnn/batch_normalization_5/moving_variance*
_output_shapes	
:?
?
.model/rnn/batch_normalization_5/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_1/BiasAdd*model/rnn/batch_normalization_5/gamma/read)model/rnn/batch_normalization_5/beta/read0model/rnn/batch_normalization_5/moving_mean/read4model/rnn/batch_normalization_5/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
j
%model/rnn/batch_normalization_5/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_3Relu.model/rnn/batch_normalization_5/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
p
model/rnn/RB1_b_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_1/Conv2DConv2Dmodel/rnn/Relu_3model/rnn/RB1_b/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations

?
model/rnn/RB1_b_1/BiasAddBiasAddmodel/rnn/RB1_b_1/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_4Addmodel/rnn/RB1_b_1/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
6model/rnn/batch_normalization_6/gamma/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@model/rnn/batch_normalization_6/gamma*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_6/gamma
VariableV2*8
_class.
,*loc:@model/rnn/batch_normalization_6/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
,model/rnn/batch_normalization_6/gamma/AssignAssign%model/rnn/batch_normalization_6/gamma6model/rnn/batch_normalization_6/gamma/Initializer/ones*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_6/gamma/readIdentity%model/rnn/batch_normalization_6/gamma*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_6/gamma*
_output_shapes	
:?
?
6model/rnn/batch_normalization_6/beta/Initializer/zerosConst*
valueB?*    *7
_class-
+)loc:@model/rnn/batch_normalization_6/beta*
dtype0*
_output_shapes	
:?
?
$model/rnn/batch_normalization_6/beta
VariableV2*
shared_name *7
_class-
+)loc:@model/rnn/batch_normalization_6/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_6/beta/AssignAssign$model/rnn/batch_normalization_6/beta6model/rnn/batch_normalization_6/beta/Initializer/zeros*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
)model/rnn/batch_normalization_6/beta/readIdentity$model/rnn/batch_normalization_6/beta*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_6/beta*
_output_shapes	
:?
?
=model/rnn/batch_normalization_6/moving_mean/Initializer/zerosConst*
valueB?*    *>
_class4
20loc:@model/rnn/batch_normalization_6/moving_mean*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_6/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@model/rnn/batch_normalization_6/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
2model/rnn/batch_normalization_6/moving_mean/AssignAssign+model/rnn/batch_normalization_6/moving_mean=model/rnn/batch_normalization_6/moving_mean/Initializer/zeros*
T0*>
_class4
20loc:@model/rnn/batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
0model/rnn/batch_normalization_6/moving_mean/readIdentity+model/rnn/batch_normalization_6/moving_mean*
T0*>
_class4
20loc:@model/rnn/batch_normalization_6/moving_mean*
_output_shapes	
:?
?
@model/rnn/batch_normalization_6/moving_variance/Initializer/onesConst*
valueB?*  ??*B
_class8
64loc:@model/rnn/batch_normalization_6/moving_variance*
dtype0*
_output_shapes	
:?
?
/model/rnn/batch_normalization_6/moving_variance
VariableV2*
shared_name *B
_class8
64loc:@model/rnn/batch_normalization_6/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
6model/rnn/batch_normalization_6/moving_variance/AssignAssign/model/rnn/batch_normalization_6/moving_variance@model/rnn/batch_normalization_6/moving_variance/Initializer/ones*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_6/moving_variance*
validate_shape(*
_output_shapes	
:?
?
4model/rnn/batch_normalization_6/moving_variance/readIdentity/model/rnn/batch_normalization_6/moving_variance*
T0*B
_class8
64loc:@model/rnn/batch_normalization_6/moving_variance*
_output_shapes	
:?
?
.model/rnn/batch_normalization_6/FusedBatchNormFusedBatchNormmodel/rnn/Add_4*model/rnn/batch_normalization_6/gamma/read)model/rnn/batch_normalization_6/beta/read0model/rnn/batch_normalization_6/moving_mean/read4model/rnn/batch_normalization_6/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
j
%model/rnn/batch_normalization_6/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_4Relu.model/rnn/batch_normalization_6/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
z
)model/rnn/non_local_theta_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
"model/rnn/non_local_theta_2/Conv2DConv2Dmodel/rnn/Relu_4%model/rnn/non_local_theta/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
#model/rnn/non_local_theta_2/BiasAddBiasAdd"model/rnn/non_local_theta_2/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
x
'model/rnn/non_local_phi_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
 model/rnn/non_local_phi_2/Conv2DConv2Dmodel/rnn/Relu_4#model/rnn/non_local_phi/kernel/read*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
!model/rnn/non_local_phi_2/BiasAddBiasAdd model/rnn/non_local_phi_2/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
v
%model/rnn/non_local_g_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_2/Conv2DConv2Dmodel/rnn/Relu_4!model/rnn/non_local_g/kernel/read*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
model/rnn/non_local_g_2/BiasAddBiasAddmodel/rnn/non_local_g_2/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
u
model/rnn/Shape_34Shape#model/rnn/non_local_theta_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_30/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_30/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_30/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_30StridedSlicemodel/rnn/Shape_34 model/rnn/strided_slice_30/stack"model/rnn/strided_slice_30/stack_1"model/rnn/strided_slice_30/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
u
model/rnn/Shape_35Shape#model/rnn/non_local_theta_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_31/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_31/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_31/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_31StridedSlicemodel/rnn/Shape_35 model/rnn/strided_slice_31/stack"model/rnn/strided_slice_31/stack_1"model/rnn/strided_slice_31/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
u
model/rnn/Shape_36Shape#model/rnn/non_local_theta_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_32/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_32/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_32/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_32StridedSlicemodel/rnn/Shape_36 model/rnn/strided_slice_32/stack"model/rnn/strided_slice_32/stack_1"model/rnn/strided_slice_32/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
o
model/rnn/mul_6Mulmodel/rnn/strided_slice_31model/rnn/strided_slice_32*
T0*
_output_shapes
: 
u
model/rnn/Shape_37Shape#model/rnn/non_local_theta_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_33/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_33/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_33/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_33StridedSlicemodel/rnn/Shape_37 model/rnn/strided_slice_33/stack"model/rnn/strided_slice_33/stack_1"model/rnn/strided_slice_33/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_12/shapePackmodel/rnn/strided_slice_30model/rnn/mul_6model/rnn/strided_slice_33*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_12Reshape#model/rnn/non_local_theta_2/BiasAddmodel/rnn/Reshape_12/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
s
model/rnn/Shape_38Shape!model/rnn/non_local_phi_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_34/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_34/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_34/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_34StridedSlicemodel/rnn/Shape_38 model/rnn/strided_slice_34/stack"model/rnn/strided_slice_34/stack_1"model/rnn/strided_slice_34/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
s
model/rnn/Shape_39Shape!model/rnn/non_local_phi_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_35/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_35/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_35/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_35StridedSlicemodel/rnn/Shape_39 model/rnn/strided_slice_35/stack"model/rnn/strided_slice_35/stack_1"model/rnn/strided_slice_35/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
s
model/rnn/Shape_40Shape!model/rnn/non_local_phi_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_36/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_36/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_36/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_36StridedSlicemodel/rnn/Shape_40 model/rnn/strided_slice_36/stack"model/rnn/strided_slice_36/stack_1"model/rnn/strided_slice_36/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
o
model/rnn/mul_7Mulmodel/rnn/strided_slice_35model/rnn/strided_slice_36*
T0*
_output_shapes
: 
s
model/rnn/Shape_41Shape!model/rnn/non_local_phi_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_37/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_37/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_37/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_37StridedSlicemodel/rnn/Shape_41 model/rnn/strided_slice_37/stack"model/rnn/strided_slice_37/stack_1"model/rnn/strided_slice_37/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
?
model/rnn/Reshape_13/shapePackmodel/rnn/strided_slice_34model/rnn/mul_7model/rnn/strided_slice_37*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_13Reshape!model/rnn/non_local_phi_2/BiasAddmodel/rnn/Reshape_13/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
o
model/rnn/transpose_2/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_2	Transposemodel/rnn/Reshape_13model/rnn/transpose_2/perm*
T0*=
_output_shapes+
):'???????????????????????????*
Tperm0
?
model/rnn/MatMul_4BatchMatMulmodel/rnn/Reshape_12model/rnn/transpose_2*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/add_5Addmodel/rnn/MatMul_4model/rnn/add_2*
T0*=
_output_shapes+
):'???????????????????????????
a
model/rnn/Shape_42Shapemodel/rnn/add_5*
T0*
out_type0*
_output_shapes
:
R
model/rnn/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
a
model/rnn/Shape_43Shapemodel/rnn/add_5*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
model/rnn/Sub_2Submodel/rnn/Rank_2model/rnn/Sub_2/y*
T0*
_output_shapes
: 
j
model/rnn/Slice_2/beginPackmodel/rnn/Sub_2*
T0*

axis *
N*
_output_shapes
:
`
model/rnn/Slice_2/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_2Slicemodel/rnn/Shape_43model/rnn/Slice_2/beginmodel/rnn/Slice_2/size*
T0*
Index0*
_output_shapes
:
n
model/rnn/concat_2/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Y
model/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_2ConcatV2model/rnn/concat_2/values_0model/rnn/Slice_2model/rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
model/rnn/Reshape_14Reshapemodel/rnn/add_5model/rnn/concat_2*
T0*
Tshape0*0
_output_shapes
:??????????????????
o
model/rnn/Softmax_2Softmaxmodel/rnn/Reshape_14*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_15Reshapemodel/rnn/Softmax_2model/rnn/Shape_42*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
q
model/rnn/Shape_44Shapemodel/rnn/non_local_g_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_38/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_38/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_38/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_38StridedSlicemodel/rnn/Shape_44 model/rnn/strided_slice_38/stack"model/rnn/strided_slice_38/stack_1"model/rnn/strided_slice_38/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
model/rnn/Shape_45Shapemodel/rnn/non_local_g_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_39/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_39/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_39/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_39StridedSlicemodel/rnn/Shape_45 model/rnn/strided_slice_39/stack"model/rnn/strided_slice_39/stack_1"model/rnn/strided_slice_39/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
q
model/rnn/Shape_46Shapemodel/rnn/non_local_g_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_40/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_40/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_40/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_40StridedSlicemodel/rnn/Shape_46 model/rnn/strided_slice_40/stack"model/rnn/strided_slice_40/stack_1"model/rnn/strided_slice_40/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
o
model/rnn/mul_8Mulmodel/rnn/strided_slice_39model/rnn/strided_slice_40*
T0*
_output_shapes
: 
q
model/rnn/Shape_47Shapemodel/rnn/non_local_g_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_41/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_41/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_41/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_41StridedSlicemodel/rnn/Shape_47 model/rnn/strided_slice_41/stack"model/rnn/strided_slice_41/stack_1"model/rnn/strided_slice_41/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_16/shapePackmodel/rnn/strided_slice_38model/rnn/mul_8model/rnn/strided_slice_41*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_16Reshapemodel/rnn/non_local_g_2/BiasAddmodel/rnn/Reshape_16/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_5BatchMatMulmodel/rnn/Reshape_15model/rnn/Reshape_16*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
d
model/rnn/Shape_48Shapemodel/rnn/MatMul_5*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_42/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_42/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_42/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_42StridedSlicemodel/rnn/Shape_48 model/rnn/strided_slice_42/stack"model/rnn/strided_slice_42/stack_1"model/rnn/strided_slice_42/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
model/rnn/Shape_49Shape!model/rnn/non_local_phi_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_43/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_43/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_43/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_43StridedSlicemodel/rnn/Shape_49 model/rnn/strided_slice_43/stack"model/rnn/strided_slice_43/stack_1"model/rnn/strided_slice_43/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
s
model/rnn/Shape_50Shape!model/rnn/non_local_phi_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_44/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_44/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_44/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_44StridedSlicemodel/rnn/Shape_50 model/rnn/strided_slice_44/stack"model/rnn/strided_slice_44/stack_1"model/rnn/strided_slice_44/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
_
model/rnn/Reshape_17/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_17/shapePackmodel/rnn/strided_slice_42model/rnn/strided_slice_43model/rnn/strided_slice_44model/rnn/Reshape_17/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_17Reshapemodel/rnn/MatMul_5model/rnn/Reshape_17/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_6Addmodel/rnn/Relu_4model/rnn/Reshape_17*
T0*B
_output_shapes0
.:,????????????????????????????
?
6model/rnn/batch_normalization_7/gamma/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@model/rnn/batch_normalization_7/gamma*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_7/gamma
VariableV2*8
_class.
,*loc:@model/rnn/batch_normalization_7/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
,model/rnn/batch_normalization_7/gamma/AssignAssign%model/rnn/batch_normalization_7/gamma6model/rnn/batch_normalization_7/gamma/Initializer/ones*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_7/gamma/readIdentity%model/rnn/batch_normalization_7/gamma*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_7/gamma*
_output_shapes	
:?
?
6model/rnn/batch_normalization_7/beta/Initializer/zerosConst*
valueB?*    *7
_class-
+)loc:@model/rnn/batch_normalization_7/beta*
dtype0*
_output_shapes	
:?
?
$model/rnn/batch_normalization_7/beta
VariableV2*7
_class-
+)loc:@model/rnn/batch_normalization_7/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
+model/rnn/batch_normalization_7/beta/AssignAssign$model/rnn/batch_normalization_7/beta6model/rnn/batch_normalization_7/beta/Initializer/zeros*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
)model/rnn/batch_normalization_7/beta/readIdentity$model/rnn/batch_normalization_7/beta*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_7/beta*
_output_shapes	
:?
?
=model/rnn/batch_normalization_7/moving_mean/Initializer/zerosConst*
valueB?*    *>
_class4
20loc:@model/rnn/batch_normalization_7/moving_mean*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_7/moving_mean
VariableV2*>
_class4
20loc:@model/rnn/batch_normalization_7/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
2model/rnn/batch_normalization_7/moving_mean/AssignAssign+model/rnn/batch_normalization_7/moving_mean=model/rnn/batch_normalization_7/moving_mean/Initializer/zeros*
T0*>
_class4
20loc:@model/rnn/batch_normalization_7/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
0model/rnn/batch_normalization_7/moving_mean/readIdentity+model/rnn/batch_normalization_7/moving_mean*
T0*>
_class4
20loc:@model/rnn/batch_normalization_7/moving_mean*
_output_shapes	
:?
?
@model/rnn/batch_normalization_7/moving_variance/Initializer/onesConst*
valueB?*  ??*B
_class8
64loc:@model/rnn/batch_normalization_7/moving_variance*
dtype0*
_output_shapes	
:?
?
/model/rnn/batch_normalization_7/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *B
_class8
64loc:@model/rnn/batch_normalization_7/moving_variance*
	container *
shape:?
?
6model/rnn/batch_normalization_7/moving_variance/AssignAssign/model/rnn/batch_normalization_7/moving_variance@model/rnn/batch_normalization_7/moving_variance/Initializer/ones*
T0*B
_class8
64loc:@model/rnn/batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
4model/rnn/batch_normalization_7/moving_variance/readIdentity/model/rnn/batch_normalization_7/moving_variance*
T0*B
_class8
64loc:@model/rnn/batch_normalization_7/moving_variance*
_output_shapes	
:?
?
.model/rnn/batch_normalization_7/FusedBatchNormFusedBatchNormmodel/rnn/Add_6*model/rnn/batch_normalization_7/gamma/read)model/rnn/batch_normalization_7/beta/read0model/rnn/batch_normalization_7/moving_mean/read4model/rnn/batch_normalization_7/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
j
%model/rnn/batch_normalization_7/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
p
model/rnn/RB1_a_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_2/Conv2DConv2D.model/rnn/batch_normalization_7/FusedBatchNormmodel/rnn/RB1_a/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/RB1_a_2/BiasAddBiasAddmodel/rnn/RB1_a_2/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
6model/rnn/batch_normalization_8/gamma/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@model/rnn/batch_normalization_8/gamma*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_8/gamma
VariableV2*8
_class.
,*loc:@model/rnn/batch_normalization_8/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
,model/rnn/batch_normalization_8/gamma/AssignAssign%model/rnn/batch_normalization_8/gamma6model/rnn/batch_normalization_8/gamma/Initializer/ones*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_8/gamma*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_8/gamma/readIdentity%model/rnn/batch_normalization_8/gamma*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_8/gamma*
_output_shapes	
:?
?
6model/rnn/batch_normalization_8/beta/Initializer/zerosConst*
valueB?*    *7
_class-
+)loc:@model/rnn/batch_normalization_8/beta*
dtype0*
_output_shapes	
:?
?
$model/rnn/batch_normalization_8/beta
VariableV2*
shared_name *7
_class-
+)loc:@model/rnn/batch_normalization_8/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_8/beta/AssignAssign$model/rnn/batch_normalization_8/beta6model/rnn/batch_normalization_8/beta/Initializer/zeros*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_8/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
)model/rnn/batch_normalization_8/beta/readIdentity$model/rnn/batch_normalization_8/beta*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_8/beta*
_output_shapes	
:?
?
=model/rnn/batch_normalization_8/moving_mean/Initializer/zerosConst*
valueB?*    *>
_class4
20loc:@model/rnn/batch_normalization_8/moving_mean*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_8/moving_mean
VariableV2*
shared_name *>
_class4
20loc:@model/rnn/batch_normalization_8/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
2model/rnn/batch_normalization_8/moving_mean/AssignAssign+model/rnn/batch_normalization_8/moving_mean=model/rnn/batch_normalization_8/moving_mean/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@model/rnn/batch_normalization_8/moving_mean*
validate_shape(*
_output_shapes	
:?
?
0model/rnn/batch_normalization_8/moving_mean/readIdentity+model/rnn/batch_normalization_8/moving_mean*
T0*>
_class4
20loc:@model/rnn/batch_normalization_8/moving_mean*
_output_shapes	
:?
?
@model/rnn/batch_normalization_8/moving_variance/Initializer/onesConst*
valueB?*  ??*B
_class8
64loc:@model/rnn/batch_normalization_8/moving_variance*
dtype0*
_output_shapes	
:?
?
/model/rnn/batch_normalization_8/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *B
_class8
64loc:@model/rnn/batch_normalization_8/moving_variance*
	container *
shape:?
?
6model/rnn/batch_normalization_8/moving_variance/AssignAssign/model/rnn/batch_normalization_8/moving_variance@model/rnn/batch_normalization_8/moving_variance/Initializer/ones*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_8/moving_variance*
validate_shape(*
_output_shapes	
:?
?
4model/rnn/batch_normalization_8/moving_variance/readIdentity/model/rnn/batch_normalization_8/moving_variance*
T0*B
_class8
64loc:@model/rnn/batch_normalization_8/moving_variance*
_output_shapes	
:?
?
.model/rnn/batch_normalization_8/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_2/BiasAdd*model/rnn/batch_normalization_8/gamma/read)model/rnn/batch_normalization_8/beta/read0model/rnn/batch_normalization_8/moving_mean/read4model/rnn/batch_normalization_8/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
j
%model/rnn/batch_normalization_8/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_5Relu.model/rnn/batch_normalization_8/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
p
model/rnn/RB1_b_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_2/Conv2DConv2Dmodel/rnn/Relu_5model/rnn/RB1_b/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations

?
model/rnn/RB1_b_2/BiasAddBiasAddmodel/rnn/RB1_b_2/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_7Addmodel/rnn/RB1_b_2/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
6model/rnn/batch_normalization_9/gamma/Initializer/onesConst*
valueB?*  ??*8
_class.
,*loc:@model/rnn/batch_normalization_9/gamma*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_9/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_9/gamma*
	container 
?
,model/rnn/batch_normalization_9/gamma/AssignAssign%model/rnn/batch_normalization_9/gamma6model/rnn/batch_normalization_9/gamma/Initializer/ones*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_9/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_9/gamma/readIdentity%model/rnn/batch_normalization_9/gamma*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_9/gamma*
_output_shapes	
:?
?
6model/rnn/batch_normalization_9/beta/Initializer/zerosConst*
valueB?*    *7
_class-
+)loc:@model/rnn/batch_normalization_9/beta*
dtype0*
_output_shapes	
:?
?
$model/rnn/batch_normalization_9/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *7
_class-
+)loc:@model/rnn/batch_normalization_9/beta*
	container *
shape:?
?
+model/rnn/batch_normalization_9/beta/AssignAssign$model/rnn/batch_normalization_9/beta6model/rnn/batch_normalization_9/beta/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_9/beta*
validate_shape(*
_output_shapes	
:?
?
)model/rnn/batch_normalization_9/beta/readIdentity$model/rnn/batch_normalization_9/beta*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_9/beta*
_output_shapes	
:?
?
=model/rnn/batch_normalization_9/moving_mean/Initializer/zerosConst*
valueB?*    *>
_class4
20loc:@model/rnn/batch_normalization_9/moving_mean*
dtype0*
_output_shapes	
:?
?
+model/rnn/batch_normalization_9/moving_mean
VariableV2*>
_class4
20loc:@model/rnn/batch_normalization_9/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
2model/rnn/batch_normalization_9/moving_mean/AssignAssign+model/rnn/batch_normalization_9/moving_mean=model/rnn/batch_normalization_9/moving_mean/Initializer/zeros*
T0*>
_class4
20loc:@model/rnn/batch_normalization_9/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
0model/rnn/batch_normalization_9/moving_mean/readIdentity+model/rnn/batch_normalization_9/moving_mean*
T0*>
_class4
20loc:@model/rnn/batch_normalization_9/moving_mean*
_output_shapes	
:?
?
@model/rnn/batch_normalization_9/moving_variance/Initializer/onesConst*
valueB?*  ??*B
_class8
64loc:@model/rnn/batch_normalization_9/moving_variance*
dtype0*
_output_shapes	
:?
?
/model/rnn/batch_normalization_9/moving_variance
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *B
_class8
64loc:@model/rnn/batch_normalization_9/moving_variance*
	container 
?
6model/rnn/batch_normalization_9/moving_variance/AssignAssign/model/rnn/batch_normalization_9/moving_variance@model/rnn/batch_normalization_9/moving_variance/Initializer/ones*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_9/moving_variance*
validate_shape(*
_output_shapes	
:?
?
4model/rnn/batch_normalization_9/moving_variance/readIdentity/model/rnn/batch_normalization_9/moving_variance*
T0*B
_class8
64loc:@model/rnn/batch_normalization_9/moving_variance*
_output_shapes	
:?
?
.model/rnn/batch_normalization_9/FusedBatchNormFusedBatchNormmodel/rnn/Add_7*model/rnn/batch_normalization_9/gamma/read)model/rnn/batch_normalization_9/beta/read0model/rnn/batch_normalization_9/moving_mean/read4model/rnn/batch_normalization_9/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
j
%model/rnn/batch_normalization_9/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_6Relu.model/rnn/batch_normalization_9/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
z
)model/rnn/non_local_theta_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
"model/rnn/non_local_theta_3/Conv2DConv2Dmodel/rnn/Relu_6%model/rnn/non_local_theta/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
#model/rnn/non_local_theta_3/BiasAddBiasAdd"model/rnn/non_local_theta_3/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
x
'model/rnn/non_local_phi_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
 model/rnn/non_local_phi_3/Conv2DConv2Dmodel/rnn/Relu_6#model/rnn/non_local_phi/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
!model/rnn/non_local_phi_3/BiasAddBiasAdd model/rnn/non_local_phi_3/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
v
%model/rnn/non_local_g_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_3/Conv2DConv2Dmodel/rnn/Relu_6!model/rnn/non_local_g/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations

?
model/rnn/non_local_g_3/BiasAddBiasAddmodel/rnn/non_local_g_3/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
u
model/rnn/Shape_51Shape#model/rnn/non_local_theta_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_45/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_45/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_45/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_45StridedSlicemodel/rnn/Shape_51 model/rnn/strided_slice_45/stack"model/rnn/strided_slice_45/stack_1"model/rnn/strided_slice_45/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
u
model/rnn/Shape_52Shape#model/rnn/non_local_theta_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_46/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_46/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_46/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_46StridedSlicemodel/rnn/Shape_52 model/rnn/strided_slice_46/stack"model/rnn/strided_slice_46/stack_1"model/rnn/strided_slice_46/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
model/rnn/Shape_53Shape#model/rnn/non_local_theta_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_47/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_47/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_47/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_47StridedSlicemodel/rnn/Shape_53 model/rnn/strided_slice_47/stack"model/rnn/strided_slice_47/stack_1"model/rnn/strided_slice_47/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
o
model/rnn/mul_9Mulmodel/rnn/strided_slice_46model/rnn/strided_slice_47*
T0*
_output_shapes
: 
u
model/rnn/Shape_54Shape#model/rnn/non_local_theta_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_48/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_48/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_48/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_48StridedSlicemodel/rnn/Shape_54 model/rnn/strided_slice_48/stack"model/rnn/strided_slice_48/stack_1"model/rnn/strided_slice_48/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
?
model/rnn/Reshape_18/shapePackmodel/rnn/strided_slice_45model/rnn/mul_9model/rnn/strided_slice_48*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_18Reshape#model/rnn/non_local_theta_3/BiasAddmodel/rnn/Reshape_18/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
s
model/rnn/Shape_55Shape!model/rnn/non_local_phi_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_49/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_49/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_49/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_49StridedSlicemodel/rnn/Shape_55 model/rnn/strided_slice_49/stack"model/rnn/strided_slice_49/stack_1"model/rnn/strided_slice_49/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
s
model/rnn/Shape_56Shape!model/rnn/non_local_phi_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_50/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_50/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_50/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_50StridedSlicemodel/rnn/Shape_56 model/rnn/strided_slice_50/stack"model/rnn/strided_slice_50/stack_1"model/rnn/strided_slice_50/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
s
model/rnn/Shape_57Shape!model/rnn/non_local_phi_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_51/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_51/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_51/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_51StridedSlicemodel/rnn/Shape_57 model/rnn/strided_slice_51/stack"model/rnn/strided_slice_51/stack_1"model/rnn/strided_slice_51/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
p
model/rnn/mul_10Mulmodel/rnn/strided_slice_50model/rnn/strided_slice_51*
T0*
_output_shapes
: 
s
model/rnn/Shape_58Shape!model/rnn/non_local_phi_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_52/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_52/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_52/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_52StridedSlicemodel/rnn/Shape_58 model/rnn/strided_slice_52/stack"model/rnn/strided_slice_52/stack_1"model/rnn/strided_slice_52/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
?
model/rnn/Reshape_19/shapePackmodel/rnn/strided_slice_49model/rnn/mul_10model/rnn/strided_slice_52*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_19Reshape!model/rnn/non_local_phi_3/BiasAddmodel/rnn/Reshape_19/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
o
model/rnn/transpose_3/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_3	Transposemodel/rnn/Reshape_19model/rnn/transpose_3/perm*
Tperm0*
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_6BatchMatMulmodel/rnn/Reshape_18model/rnn/transpose_3*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
?
model/rnn/add_8Addmodel/rnn/MatMul_6model/rnn/add_5*
T0*=
_output_shapes+
):'???????????????????????????
a
model/rnn/Shape_59Shapemodel/rnn/add_8*
T0*
out_type0*
_output_shapes
:
R
model/rnn/Rank_3Const*
value	B :*
dtype0*
_output_shapes
: 
a
model/rnn/Shape_60Shapemodel/rnn/add_8*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Sub_3/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
model/rnn/Sub_3Submodel/rnn/Rank_3model/rnn/Sub_3/y*
T0*
_output_shapes
: 
j
model/rnn/Slice_3/beginPackmodel/rnn/Sub_3*
T0*

axis *
N*
_output_shapes
:
`
model/rnn/Slice_3/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_3Slicemodel/rnn/Shape_60model/rnn/Slice_3/beginmodel/rnn/Slice_3/size*
T0*
Index0*
_output_shapes
:
n
model/rnn/concat_3/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Y
model/rnn/concat_3/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_3ConcatV2model/rnn/concat_3/values_0model/rnn/Slice_3model/rnn/concat_3/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
model/rnn/Reshape_20Reshapemodel/rnn/add_8model/rnn/concat_3*
T0*
Tshape0*0
_output_shapes
:??????????????????
o
model/rnn/Softmax_3Softmaxmodel/rnn/Reshape_20*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_21Reshapemodel/rnn/Softmax_3model/rnn/Shape_59*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
q
model/rnn/Shape_61Shapemodel/rnn/non_local_g_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_53/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_53/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_53/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_53StridedSlicemodel/rnn/Shape_61 model/rnn/strided_slice_53/stack"model/rnn/strided_slice_53/stack_1"model/rnn/strided_slice_53/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
model/rnn/Shape_62Shapemodel/rnn/non_local_g_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_54/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_54/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_54/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_54StridedSlicemodel/rnn/Shape_62 model/rnn/strided_slice_54/stack"model/rnn/strided_slice_54/stack_1"model/rnn/strided_slice_54/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
q
model/rnn/Shape_63Shapemodel/rnn/non_local_g_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_55/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_55/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_55/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_55StridedSlicemodel/rnn/Shape_63 model/rnn/strided_slice_55/stack"model/rnn/strided_slice_55/stack_1"model/rnn/strided_slice_55/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
p
model/rnn/mul_11Mulmodel/rnn/strided_slice_54model/rnn/strided_slice_55*
T0*
_output_shapes
: 
q
model/rnn/Shape_64Shapemodel/rnn/non_local_g_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_56/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_56/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_56/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_56StridedSlicemodel/rnn/Shape_64 model/rnn/strided_slice_56/stack"model/rnn/strided_slice_56/stack_1"model/rnn/strided_slice_56/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
?
model/rnn/Reshape_22/shapePackmodel/rnn/strided_slice_53model/rnn/mul_11model/rnn/strided_slice_56*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_22Reshapemodel/rnn/non_local_g_3/BiasAddmodel/rnn/Reshape_22/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_7BatchMatMulmodel/rnn/Reshape_21model/rnn/Reshape_22*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
d
model/rnn/Shape_65Shapemodel/rnn/MatMul_7*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_57/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_57/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_57/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_57StridedSlicemodel/rnn/Shape_65 model/rnn/strided_slice_57/stack"model/rnn/strided_slice_57/stack_1"model/rnn/strided_slice_57/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
s
model/rnn/Shape_66Shape!model/rnn/non_local_phi_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_58/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_58/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_58/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_58StridedSlicemodel/rnn/Shape_66 model/rnn/strided_slice_58/stack"model/rnn/strided_slice_58/stack_1"model/rnn/strided_slice_58/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
s
model/rnn/Shape_67Shape!model/rnn/non_local_phi_3/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_59/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_59/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_59/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_59StridedSlicemodel/rnn/Shape_67 model/rnn/strided_slice_59/stack"model/rnn/strided_slice_59/stack_1"model/rnn/strided_slice_59/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
_
model/rnn/Reshape_23/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_23/shapePackmodel/rnn/strided_slice_57model/rnn/strided_slice_58model/rnn/strided_slice_59model/rnn/Reshape_23/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_23Reshapemodel/rnn/MatMul_7model/rnn/Reshape_23/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_9Addmodel/rnn/Relu_6model/rnn/Reshape_23*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_10/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_10/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_10/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_10/gamma*
	container 
?
-model/rnn/batch_normalization_10/gamma/AssignAssign&model/rnn/batch_normalization_10/gamma7model/rnn/batch_normalization_10/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_10/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_10/gamma/readIdentity&model/rnn/batch_normalization_10/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_10/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_10/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_10/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_10/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_10/beta*
	container 
?
,model/rnn/batch_normalization_10/beta/AssignAssign%model/rnn/batch_normalization_10/beta7model/rnn/batch_normalization_10/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_10/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_10/beta/readIdentity%model/rnn/batch_normalization_10/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_10/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_10/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_10/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_10/moving_mean
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_10/moving_mean*
	container 
?
3model/rnn/batch_normalization_10/moving_mean/AssignAssign,model/rnn/batch_normalization_10/moving_mean>model/rnn/batch_normalization_10/moving_mean/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_10/moving_mean*
validate_shape(*
_output_shapes	
:?
?
1model/rnn/batch_normalization_10/moving_mean/readIdentity,model/rnn/batch_normalization_10/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_10/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_10/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_10/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_10/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_10/moving_variance*
	container *
shape:?
?
7model/rnn/batch_normalization_10/moving_variance/AssignAssign0model/rnn/batch_normalization_10/moving_varianceAmodel/rnn/batch_normalization_10/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_10/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_10/moving_variance/readIdentity0model/rnn/batch_normalization_10/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_10/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_10/FusedBatchNormFusedBatchNormmodel/rnn/Add_9+model/rnn/batch_normalization_10/gamma/read*model/rnn/batch_normalization_10/beta/read1model/rnn/batch_normalization_10/moving_mean/read5model/rnn/batch_normalization_10/moving_variance/read*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?*
epsilon%o?:
k
&model/rnn/batch_normalization_10/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
p
model/rnn/RB1_a_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_3/Conv2DConv2D/model/rnn/batch_normalization_10/FusedBatchNormmodel/rnn/RB1_a/kernel/read*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
model/rnn/RB1_a_3/BiasAddBiasAddmodel/rnn/RB1_a_3/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_11/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_11/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_11/gamma
VariableV2*9
_class/
-+loc:@model/rnn/batch_normalization_11/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
-model/rnn/batch_normalization_11/gamma/AssignAssign&model/rnn/batch_normalization_11/gamma7model/rnn/batch_normalization_11/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_11/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_11/gamma/readIdentity&model/rnn/batch_normalization_11/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_11/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_11/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_11/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_11/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_11/beta*
	container 
?
,model/rnn/batch_normalization_11/beta/AssignAssign%model/rnn/batch_normalization_11/beta7model/rnn/batch_normalization_11/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_11/beta*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_11/beta/readIdentity%model/rnn/batch_normalization_11/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_11/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_11/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_11/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_11/moving_mean
VariableV2*?
_class5
31loc:@model/rnn/batch_normalization_11/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
3model/rnn/batch_normalization_11/moving_mean/AssignAssign,model/rnn/batch_normalization_11/moving_mean>model/rnn/batch_normalization_11/moving_mean/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_11/moving_mean*
validate_shape(*
_output_shapes	
:?
?
1model/rnn/batch_normalization_11/moving_mean/readIdentity,model/rnn/batch_normalization_11/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_11/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_11/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_11/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_11/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_11/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_11/moving_variance/AssignAssign0model/rnn/batch_normalization_11/moving_varianceAmodel/rnn/batch_normalization_11/moving_variance/Initializer/ones*
T0*C
_class9
75loc:@model/rnn/batch_normalization_11/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
5model/rnn/batch_normalization_11/moving_variance/readIdentity0model/rnn/batch_normalization_11/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_11/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_11/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_3/BiasAdd+model/rnn/batch_normalization_11/gamma/read*model/rnn/batch_normalization_11/beta/read1model/rnn/batch_normalization_11/moving_mean/read5model/rnn/batch_normalization_11/moving_variance/read*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?*
epsilon%o?:
k
&model/rnn/batch_normalization_11/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_7Relu/model/rnn/batch_normalization_11/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
p
model/rnn/RB1_b_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_3/Conv2DConv2Dmodel/rnn/Relu_7model/rnn/RB1_b/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/RB1_b_3/BiasAddBiasAddmodel/rnn/RB1_b_3/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_10Addmodel/rnn/RB1_b_3/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_12/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_12/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_12/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_12/gamma*
	container 
?
-model/rnn/batch_normalization_12/gamma/AssignAssign&model/rnn/batch_normalization_12/gamma7model/rnn/batch_normalization_12/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_12/gamma*
validate_shape(*
_output_shapes	
:?
?
+model/rnn/batch_normalization_12/gamma/readIdentity&model/rnn/batch_normalization_12/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_12/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_12/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_12/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_12/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_12/beta*
	container 
?
,model/rnn/batch_normalization_12/beta/AssignAssign%model/rnn/batch_normalization_12/beta7model/rnn/batch_normalization_12/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_12/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_12/beta/readIdentity%model/rnn/batch_normalization_12/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_12/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_12/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_12/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_12/moving_mean
VariableV2*?
_class5
31loc:@model/rnn/batch_normalization_12/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
3model/rnn/batch_normalization_12/moving_mean/AssignAssign,model/rnn/batch_normalization_12/moving_mean>model/rnn/batch_normalization_12/moving_mean/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_12/moving_mean*
validate_shape(*
_output_shapes	
:?
?
1model/rnn/batch_normalization_12/moving_mean/readIdentity,model/rnn/batch_normalization_12/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_12/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_12/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_12/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_12/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_12/moving_variance*
	container *
shape:?
?
7model/rnn/batch_normalization_12/moving_variance/AssignAssign0model/rnn/batch_normalization_12/moving_varianceAmodel/rnn/batch_normalization_12/moving_variance/Initializer/ones*
T0*C
_class9
75loc:@model/rnn/batch_normalization_12/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
5model/rnn/batch_normalization_12/moving_variance/readIdentity0model/rnn/batch_normalization_12/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_12/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_12/FusedBatchNormFusedBatchNormmodel/rnn/Add_10+model/rnn/batch_normalization_12/gamma/read*model/rnn/batch_normalization_12/beta/read1model/rnn/batch_normalization_12/moving_mean/read5model/rnn/batch_normalization_12/moving_variance/read*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?*
epsilon%o?:
k
&model/rnn/batch_normalization_12/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_8Relu/model/rnn/batch_normalization_12/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
z
)model/rnn/non_local_theta_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
"model/rnn/non_local_theta_4/Conv2DConv2Dmodel/rnn/Relu_8%model/rnn/non_local_theta/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
#model/rnn/non_local_theta_4/BiasAddBiasAdd"model/rnn/non_local_theta_4/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
x
'model/rnn/non_local_phi_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
 model/rnn/non_local_phi_4/Conv2DConv2Dmodel/rnn/Relu_8#model/rnn/non_local_phi/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@
?
!model/rnn/non_local_phi_4/BiasAddBiasAdd model/rnn/non_local_phi_4/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
v
%model/rnn/non_local_g_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_4/Conv2DConv2Dmodel/rnn/Relu_8!model/rnn/non_local_g/kernel/read*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
model/rnn/non_local_g_4/BiasAddBiasAddmodel/rnn/non_local_g_4/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
u
model/rnn/Shape_68Shape#model/rnn/non_local_theta_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_60/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_60/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_60/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_60StridedSlicemodel/rnn/Shape_68 model/rnn/strided_slice_60/stack"model/rnn/strided_slice_60/stack_1"model/rnn/strided_slice_60/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
model/rnn/Shape_69Shape#model/rnn/non_local_theta_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_61/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_61/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_61/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_61StridedSlicemodel/rnn/Shape_69 model/rnn/strided_slice_61/stack"model/rnn/strided_slice_61/stack_1"model/rnn/strided_slice_61/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
u
model/rnn/Shape_70Shape#model/rnn/non_local_theta_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_62/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_62/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_62/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_62StridedSlicemodel/rnn/Shape_70 model/rnn/strided_slice_62/stack"model/rnn/strided_slice_62/stack_1"model/rnn/strided_slice_62/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
p
model/rnn/mul_12Mulmodel/rnn/strided_slice_61model/rnn/strided_slice_62*
T0*
_output_shapes
: 
u
model/rnn/Shape_71Shape#model/rnn/non_local_theta_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_63/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_63/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_63/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_63StridedSlicemodel/rnn/Shape_71 model/rnn/strided_slice_63/stack"model/rnn/strided_slice_63/stack_1"model/rnn/strided_slice_63/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_24/shapePackmodel/rnn/strided_slice_60model/rnn/mul_12model/rnn/strided_slice_63*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_24Reshape#model/rnn/non_local_theta_4/BiasAddmodel/rnn/Reshape_24/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
s
model/rnn/Shape_72Shape!model/rnn/non_local_phi_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_64/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_64/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_64/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_64StridedSlicemodel/rnn/Shape_72 model/rnn/strided_slice_64/stack"model/rnn/strided_slice_64/stack_1"model/rnn/strided_slice_64/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
s
model/rnn/Shape_73Shape!model/rnn/non_local_phi_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_65/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_65/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_65/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_65StridedSlicemodel/rnn/Shape_73 model/rnn/strided_slice_65/stack"model/rnn/strided_slice_65/stack_1"model/rnn/strided_slice_65/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
s
model/rnn/Shape_74Shape!model/rnn/non_local_phi_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_66/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_66/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_66/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_66StridedSlicemodel/rnn/Shape_74 model/rnn/strided_slice_66/stack"model/rnn/strided_slice_66/stack_1"model/rnn/strided_slice_66/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
p
model/rnn/mul_13Mulmodel/rnn/strided_slice_65model/rnn/strided_slice_66*
T0*
_output_shapes
: 
s
model/rnn/Shape_75Shape!model/rnn/non_local_phi_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_67/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_67/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_67/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_67StridedSlicemodel/rnn/Shape_75 model/rnn/strided_slice_67/stack"model/rnn/strided_slice_67/stack_1"model/rnn/strided_slice_67/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
?
model/rnn/Reshape_25/shapePackmodel/rnn/strided_slice_64model/rnn/mul_13model/rnn/strided_slice_67*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_25Reshape!model/rnn/non_local_phi_4/BiasAddmodel/rnn/Reshape_25/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
o
model/rnn/transpose_4/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_4	Transposemodel/rnn/Reshape_25model/rnn/transpose_4/perm*
Tperm0*
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_8BatchMatMulmodel/rnn/Reshape_24model/rnn/transpose_4*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/add_11Addmodel/rnn/MatMul_8model/rnn/add_8*
T0*=
_output_shapes+
):'???????????????????????????
b
model/rnn/Shape_76Shapemodel/rnn/add_11*
T0*
out_type0*
_output_shapes
:
R
model/rnn/Rank_4Const*
value	B :*
dtype0*
_output_shapes
: 
b
model/rnn/Shape_77Shapemodel/rnn/add_11*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Sub_4/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
model/rnn/Sub_4Submodel/rnn/Rank_4model/rnn/Sub_4/y*
T0*
_output_shapes
: 
j
model/rnn/Slice_4/beginPackmodel/rnn/Sub_4*
T0*

axis *
N*
_output_shapes
:
`
model/rnn/Slice_4/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_4Slicemodel/rnn/Shape_77model/rnn/Slice_4/beginmodel/rnn/Slice_4/size*
T0*
Index0*
_output_shapes
:
n
model/rnn/concat_4/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Y
model/rnn/concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_4ConcatV2model/rnn/concat_4/values_0model/rnn/Slice_4model/rnn/concat_4/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
model/rnn/Reshape_26Reshapemodel/rnn/add_11model/rnn/concat_4*
T0*
Tshape0*0
_output_shapes
:??????????????????
o
model/rnn/Softmax_4Softmaxmodel/rnn/Reshape_26*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_27Reshapemodel/rnn/Softmax_4model/rnn/Shape_76*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
q
model/rnn/Shape_78Shapemodel/rnn/non_local_g_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_68/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_68/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_68/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_68StridedSlicemodel/rnn/Shape_78 model/rnn/strided_slice_68/stack"model/rnn/strided_slice_68/stack_1"model/rnn/strided_slice_68/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
model/rnn/Shape_79Shapemodel/rnn/non_local_g_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_69/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_69/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_69/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_69StridedSlicemodel/rnn/Shape_79 model/rnn/strided_slice_69/stack"model/rnn/strided_slice_69/stack_1"model/rnn/strided_slice_69/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
q
model/rnn/Shape_80Shapemodel/rnn/non_local_g_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_70/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_70/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_70/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_70StridedSlicemodel/rnn/Shape_80 model/rnn/strided_slice_70/stack"model/rnn/strided_slice_70/stack_1"model/rnn/strided_slice_70/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
p
model/rnn/mul_14Mulmodel/rnn/strided_slice_69model/rnn/strided_slice_70*
T0*
_output_shapes
: 
q
model/rnn/Shape_81Shapemodel/rnn/non_local_g_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_71/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_71/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_71/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_71StridedSlicemodel/rnn/Shape_81 model/rnn/strided_slice_71/stack"model/rnn/strided_slice_71/stack_1"model/rnn/strided_slice_71/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
?
model/rnn/Reshape_28/shapePackmodel/rnn/strided_slice_68model/rnn/mul_14model/rnn/strided_slice_71*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_28Reshapemodel/rnn/non_local_g_4/BiasAddmodel/rnn/Reshape_28/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_9BatchMatMulmodel/rnn/Reshape_27model/rnn/Reshape_28*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
d
model/rnn/Shape_82Shapemodel/rnn/MatMul_9*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_72/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_72/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_72/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_72StridedSlicemodel/rnn/Shape_82 model/rnn/strided_slice_72/stack"model/rnn/strided_slice_72/stack_1"model/rnn/strided_slice_72/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
model/rnn/Shape_83Shape!model/rnn/non_local_phi_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_73/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_73/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_73/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_73StridedSlicemodel/rnn/Shape_83 model/rnn/strided_slice_73/stack"model/rnn/strided_slice_73/stack_1"model/rnn/strided_slice_73/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
model/rnn/Shape_84Shape!model/rnn/non_local_phi_4/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_74/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_74/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_74/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_74StridedSlicemodel/rnn/Shape_84 model/rnn/strided_slice_74/stack"model/rnn/strided_slice_74/stack_1"model/rnn/strided_slice_74/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
_
model/rnn/Reshape_29/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_29/shapePackmodel/rnn/strided_slice_72model/rnn/strided_slice_73model/rnn/strided_slice_74model/rnn/Reshape_29/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_29Reshapemodel/rnn/MatMul_9model/rnn/Reshape_29/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_12Addmodel/rnn/Relu_8model/rnn/Reshape_29*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_13/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_13/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_13/gamma
VariableV2*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_13/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
-model/rnn/batch_normalization_13/gamma/AssignAssign&model/rnn/batch_normalization_13/gamma7model/rnn/batch_normalization_13/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_13/gamma*
validate_shape(*
_output_shapes	
:?
?
+model/rnn/batch_normalization_13/gamma/readIdentity&model/rnn/batch_normalization_13/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_13/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_13/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_13/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_13/beta
VariableV2*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_13/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_13/beta/AssignAssign%model/rnn/batch_normalization_13/beta7model/rnn/batch_normalization_13/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_13/beta*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_13/beta/readIdentity%model/rnn/batch_normalization_13/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_13/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_13/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_13/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_13/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_13/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
3model/rnn/batch_normalization_13/moving_mean/AssignAssign,model/rnn/batch_normalization_13/moving_mean>model/rnn/batch_normalization_13/moving_mean/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_13/moving_mean*
validate_shape(*
_output_shapes	
:?
?
1model/rnn/batch_normalization_13/moving_mean/readIdentity,model/rnn/batch_normalization_13/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_13/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_13/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_13/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_13/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_13/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
7model/rnn/batch_normalization_13/moving_variance/AssignAssign0model/rnn/batch_normalization_13/moving_varianceAmodel/rnn/batch_normalization_13/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_13/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_13/moving_variance/readIdentity0model/rnn/batch_normalization_13/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_13/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_13/FusedBatchNormFusedBatchNormmodel/rnn/Add_12+model/rnn/batch_normalization_13/gamma/read*model/rnn/batch_normalization_13/beta/read1model/rnn/batch_normalization_13/moving_mean/read5model/rnn/batch_normalization_13/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_13/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
p
model/rnn/RB1_a_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_4/Conv2DConv2D/model/rnn/batch_normalization_13/FusedBatchNormmodel/rnn/RB1_a/kernel/read*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
model/rnn/RB1_a_4/BiasAddBiasAddmodel/rnn/RB1_a_4/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_14/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_14/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_14/gamma
VariableV2*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_14/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
-model/rnn/batch_normalization_14/gamma/AssignAssign&model/rnn/batch_normalization_14/gamma7model/rnn/batch_normalization_14/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_14/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_14/gamma/readIdentity&model/rnn/batch_normalization_14/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_14/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_14/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_14/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_14/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_14/beta*
	container *
shape:?
?
,model/rnn/batch_normalization_14/beta/AssignAssign%model/rnn/batch_normalization_14/beta7model/rnn/batch_normalization_14/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_14/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_14/beta/readIdentity%model/rnn/batch_normalization_14/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_14/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_14/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_14/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_14/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_14/moving_mean*
	container *
shape:?
?
3model/rnn/batch_normalization_14/moving_mean/AssignAssign,model/rnn/batch_normalization_14/moving_mean>model/rnn/batch_normalization_14/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_14/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_14/moving_mean/readIdentity,model/rnn/batch_normalization_14/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_14/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_14/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_14/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_14/moving_variance
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_14/moving_variance*
	container 
?
7model/rnn/batch_normalization_14/moving_variance/AssignAssign0model/rnn/batch_normalization_14/moving_varianceAmodel/rnn/batch_normalization_14/moving_variance/Initializer/ones*
T0*C
_class9
75loc:@model/rnn/batch_normalization_14/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
5model/rnn/batch_normalization_14/moving_variance/readIdentity0model/rnn/batch_normalization_14/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_14/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_14/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_4/BiasAdd+model/rnn/batch_normalization_14/gamma/read*model/rnn/batch_normalization_14/beta/read1model/rnn/batch_normalization_14/moving_mean/read5model/rnn/batch_normalization_14/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_14/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_9Relu/model/rnn/batch_normalization_14/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
p
model/rnn/RB1_b_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_4/Conv2DConv2Dmodel/rnn/Relu_9model/rnn/RB1_b/kernel/read*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
model/rnn/RB1_b_4/BiasAddBiasAddmodel/rnn/RB1_b_4/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_13Addmodel/rnn/RB1_b_4/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_15/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_15/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_15/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_15/gamma*
	container 
?
-model/rnn/batch_normalization_15/gamma/AssignAssign&model/rnn/batch_normalization_15/gamma7model/rnn/batch_normalization_15/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_15/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_15/gamma/readIdentity&model/rnn/batch_normalization_15/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_15/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_15/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_15/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_15/beta
VariableV2*8
_class.
,*loc:@model/rnn/batch_normalization_15/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
,model/rnn/batch_normalization_15/beta/AssignAssign%model/rnn/batch_normalization_15/beta7model/rnn/batch_normalization_15/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_15/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_15/beta/readIdentity%model/rnn/batch_normalization_15/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_15/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_15/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_15/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_15/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_15/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
3model/rnn/batch_normalization_15/moving_mean/AssignAssign,model/rnn/batch_normalization_15/moving_mean>model/rnn/batch_normalization_15/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_15/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_15/moving_mean/readIdentity,model/rnn/batch_normalization_15/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_15/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_15/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_15/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_15/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_15/moving_variance*
	container *
shape:?
?
7model/rnn/batch_normalization_15/moving_variance/AssignAssign0model/rnn/batch_normalization_15/moving_varianceAmodel/rnn/batch_normalization_15/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_15/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_15/moving_variance/readIdentity0model/rnn/batch_normalization_15/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_15/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_15/FusedBatchNormFusedBatchNormmodel/rnn/Add_13+model/rnn/batch_normalization_15/gamma/read*model/rnn/batch_normalization_15/beta/read1model/rnn/batch_normalization_15/moving_mean/read5model/rnn/batch_normalization_15/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_15/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_10Relu/model/rnn/batch_normalization_15/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
z
)model/rnn/non_local_theta_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
"model/rnn/non_local_theta_5/Conv2DConv2Dmodel/rnn/Relu_10%model/rnn/non_local_theta/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
#model/rnn/non_local_theta_5/BiasAddBiasAdd"model/rnn/non_local_theta_5/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
x
'model/rnn/non_local_phi_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
 model/rnn/non_local_phi_5/Conv2DConv2Dmodel/rnn/Relu_10#model/rnn/non_local_phi/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@*
	dilations

?
!model/rnn/non_local_phi_5/BiasAddBiasAdd model/rnn/non_local_phi_5/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
v
%model/rnn/non_local_g_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_5/Conv2DConv2Dmodel/rnn/Relu_10!model/rnn/non_local_g/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/non_local_g_5/BiasAddBiasAddmodel/rnn/non_local_g_5/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
u
model/rnn/Shape_85Shape#model/rnn/non_local_theta_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_75/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_75/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_75/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_75StridedSlicemodel/rnn/Shape_85 model/rnn/strided_slice_75/stack"model/rnn/strided_slice_75/stack_1"model/rnn/strided_slice_75/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
model/rnn/Shape_86Shape#model/rnn/non_local_theta_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_76/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_76/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_76/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_76StridedSlicemodel/rnn/Shape_86 model/rnn/strided_slice_76/stack"model/rnn/strided_slice_76/stack_1"model/rnn/strided_slice_76/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
model/rnn/Shape_87Shape#model/rnn/non_local_theta_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_77/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_77/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_77/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_77StridedSlicemodel/rnn/Shape_87 model/rnn/strided_slice_77/stack"model/rnn/strided_slice_77/stack_1"model/rnn/strided_slice_77/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
p
model/rnn/mul_15Mulmodel/rnn/strided_slice_76model/rnn/strided_slice_77*
T0*
_output_shapes
: 
u
model/rnn/Shape_88Shape#model/rnn/non_local_theta_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_78/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_78/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_78/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_78StridedSlicemodel/rnn/Shape_88 model/rnn/strided_slice_78/stack"model/rnn/strided_slice_78/stack_1"model/rnn/strided_slice_78/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
?
model/rnn/Reshape_30/shapePackmodel/rnn/strided_slice_75model/rnn/mul_15model/rnn/strided_slice_78*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_30Reshape#model/rnn/non_local_theta_5/BiasAddmodel/rnn/Reshape_30/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
s
model/rnn/Shape_89Shape!model/rnn/non_local_phi_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_79/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_79/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_79/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_79StridedSlicemodel/rnn/Shape_89 model/rnn/strided_slice_79/stack"model/rnn/strided_slice_79/stack_1"model/rnn/strided_slice_79/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
model/rnn/Shape_90Shape!model/rnn/non_local_phi_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_80/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_80/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_80/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_80StridedSlicemodel/rnn/Shape_90 model/rnn/strided_slice_80/stack"model/rnn/strided_slice_80/stack_1"model/rnn/strided_slice_80/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
s
model/rnn/Shape_91Shape!model/rnn/non_local_phi_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_81/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_81/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_81/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_81StridedSlicemodel/rnn/Shape_91 model/rnn/strided_slice_81/stack"model/rnn/strided_slice_81/stack_1"model/rnn/strided_slice_81/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
p
model/rnn/mul_16Mulmodel/rnn/strided_slice_80model/rnn/strided_slice_81*
T0*
_output_shapes
: 
s
model/rnn/Shape_92Shape!model/rnn/non_local_phi_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_82/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_82/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_82/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_82StridedSlicemodel/rnn/Shape_92 model/rnn/strided_slice_82/stack"model/rnn/strided_slice_82/stack_1"model/rnn/strided_slice_82/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
?
model/rnn/Reshape_31/shapePackmodel/rnn/strided_slice_79model/rnn/mul_16model/rnn/strided_slice_82*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_31Reshape!model/rnn/non_local_phi_5/BiasAddmodel/rnn/Reshape_31/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
o
model/rnn/transpose_5/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_5	Transposemodel/rnn/Reshape_31model/rnn/transpose_5/perm*
Tperm0*
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_10BatchMatMulmodel/rnn/Reshape_30model/rnn/transpose_5*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
?
model/rnn/add_14Addmodel/rnn/MatMul_10model/rnn/add_11*
T0*=
_output_shapes+
):'???????????????????????????
b
model/rnn/Shape_93Shapemodel/rnn/add_14*
T0*
out_type0*
_output_shapes
:
R
model/rnn/Rank_5Const*
value	B :*
dtype0*
_output_shapes
: 
b
model/rnn/Shape_94Shapemodel/rnn/add_14*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Sub_5/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
model/rnn/Sub_5Submodel/rnn/Rank_5model/rnn/Sub_5/y*
T0*
_output_shapes
: 
j
model/rnn/Slice_5/beginPackmodel/rnn/Sub_5*
T0*

axis *
N*
_output_shapes
:
`
model/rnn/Slice_5/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_5Slicemodel/rnn/Shape_94model/rnn/Slice_5/beginmodel/rnn/Slice_5/size*
T0*
Index0*
_output_shapes
:
n
model/rnn/concat_5/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Y
model/rnn/concat_5/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_5ConcatV2model/rnn/concat_5/values_0model/rnn/Slice_5model/rnn/concat_5/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
model/rnn/Reshape_32Reshapemodel/rnn/add_14model/rnn/concat_5*
T0*
Tshape0*0
_output_shapes
:??????????????????
o
model/rnn/Softmax_5Softmaxmodel/rnn/Reshape_32*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_33Reshapemodel/rnn/Softmax_5model/rnn/Shape_93*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
q
model/rnn/Shape_95Shapemodel/rnn/non_local_g_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_83/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_83/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_83/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_83StridedSlicemodel/rnn/Shape_95 model/rnn/strided_slice_83/stack"model/rnn/strided_slice_83/stack_1"model/rnn/strided_slice_83/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
model/rnn/Shape_96Shapemodel/rnn/non_local_g_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_84/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_84/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_84/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_84StridedSlicemodel/rnn/Shape_96 model/rnn/strided_slice_84/stack"model/rnn/strided_slice_84/stack_1"model/rnn/strided_slice_84/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
model/rnn/Shape_97Shapemodel/rnn/non_local_g_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_85/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_85/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_85/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_85StridedSlicemodel/rnn/Shape_97 model/rnn/strided_slice_85/stack"model/rnn/strided_slice_85/stack_1"model/rnn/strided_slice_85/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
p
model/rnn/mul_17Mulmodel/rnn/strided_slice_84model/rnn/strided_slice_85*
T0*
_output_shapes
: 
q
model/rnn/Shape_98Shapemodel/rnn/non_local_g_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_86/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_86/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_86/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_86StridedSlicemodel/rnn/Shape_98 model/rnn/strided_slice_86/stack"model/rnn/strided_slice_86/stack_1"model/rnn/strided_slice_86/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
?
model/rnn/Reshape_34/shapePackmodel/rnn/strided_slice_83model/rnn/mul_17model/rnn/strided_slice_86*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_34Reshapemodel/rnn/non_local_g_5/BiasAddmodel/rnn/Reshape_34/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_11BatchMatMulmodel/rnn/Reshape_33model/rnn/Reshape_34*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
e
model/rnn/Shape_99Shapemodel/rnn/MatMul_11*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_87/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_87/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_87/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_87StridedSlicemodel/rnn/Shape_99 model/rnn/strided_slice_87/stack"model/rnn/strided_slice_87/stack_1"model/rnn/strided_slice_87/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
model/rnn/Shape_100Shape!model/rnn/non_local_phi_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_88/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_88/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_88/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_88StridedSlicemodel/rnn/Shape_100 model/rnn/strided_slice_88/stack"model/rnn/strided_slice_88/stack_1"model/rnn/strided_slice_88/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
t
model/rnn/Shape_101Shape!model/rnn/non_local_phi_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_89/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_89/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_89/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_89StridedSlicemodel/rnn/Shape_101 model/rnn/strided_slice_89/stack"model/rnn/strided_slice_89/stack_1"model/rnn/strided_slice_89/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
_
model/rnn/Reshape_35/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_35/shapePackmodel/rnn/strided_slice_87model/rnn/strided_slice_88model/rnn/strided_slice_89model/rnn/Reshape_35/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_35Reshapemodel/rnn/MatMul_11model/rnn/Reshape_35/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_15Addmodel/rnn/Relu_10model/rnn/Reshape_35*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_16/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_16/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_16/gamma
VariableV2*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_16/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
-model/rnn/batch_normalization_16/gamma/AssignAssign&model/rnn/batch_normalization_16/gamma7model/rnn/batch_normalization_16/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_16/gamma*
validate_shape(*
_output_shapes	
:?
?
+model/rnn/batch_normalization_16/gamma/readIdentity&model/rnn/batch_normalization_16/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_16/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_16/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_16/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_16/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_16/beta*
	container 
?
,model/rnn/batch_normalization_16/beta/AssignAssign%model/rnn/batch_normalization_16/beta7model/rnn/batch_normalization_16/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_16/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_16/beta/readIdentity%model/rnn/batch_normalization_16/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_16/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_16/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_16/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_16/moving_mean
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_16/moving_mean*
	container 
?
3model/rnn/batch_normalization_16/moving_mean/AssignAssign,model/rnn/batch_normalization_16/moving_mean>model/rnn/batch_normalization_16/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_16/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_16/moving_mean/readIdentity,model/rnn/batch_normalization_16/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_16/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_16/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_16/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_16/moving_variance
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_16/moving_variance*
	container 
?
7model/rnn/batch_normalization_16/moving_variance/AssignAssign0model/rnn/batch_normalization_16/moving_varianceAmodel/rnn/batch_normalization_16/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_16/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_16/moving_variance/readIdentity0model/rnn/batch_normalization_16/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_16/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_16/FusedBatchNormFusedBatchNormmodel/rnn/Add_15+model/rnn/batch_normalization_16/gamma/read*model/rnn/batch_normalization_16/beta/read1model/rnn/batch_normalization_16/moving_mean/read5model/rnn/batch_normalization_16/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_16/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
p
model/rnn/RB1_a_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_5/Conv2DConv2D/model/rnn/batch_normalization_16/FusedBatchNormmodel/rnn/RB1_a/kernel/read*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
model/rnn/RB1_a_5/BiasAddBiasAddmodel/rnn/RB1_a_5/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_17/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_17/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_17/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_17/gamma*
	container *
shape:?
?
-model/rnn/batch_normalization_17/gamma/AssignAssign&model/rnn/batch_normalization_17/gamma7model/rnn/batch_normalization_17/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_17/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_17/gamma/readIdentity&model/rnn/batch_normalization_17/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_17/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_17/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_17/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_17/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_17/beta*
	container 
?
,model/rnn/batch_normalization_17/beta/AssignAssign%model/rnn/batch_normalization_17/beta7model/rnn/batch_normalization_17/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_17/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_17/beta/readIdentity%model/rnn/batch_normalization_17/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_17/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_17/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_17/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_17/moving_mean
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_17/moving_mean*
	container 
?
3model/rnn/batch_normalization_17/moving_mean/AssignAssign,model/rnn/batch_normalization_17/moving_mean>model/rnn/batch_normalization_17/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_17/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_17/moving_mean/readIdentity,model/rnn/batch_normalization_17/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_17/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_17/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_17/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_17/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_17/moving_variance*
	container *
shape:?
?
7model/rnn/batch_normalization_17/moving_variance/AssignAssign0model/rnn/batch_normalization_17/moving_varianceAmodel/rnn/batch_normalization_17/moving_variance/Initializer/ones*
T0*C
_class9
75loc:@model/rnn/batch_normalization_17/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
5model/rnn/batch_normalization_17/moving_variance/readIdentity0model/rnn/batch_normalization_17/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_17/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_17/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_5/BiasAdd+model/rnn/batch_normalization_17/gamma/read*model/rnn/batch_normalization_17/beta/read1model/rnn/batch_normalization_17/moving_mean/read5model/rnn/batch_normalization_17/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_17/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_11Relu/model/rnn/batch_normalization_17/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
p
model/rnn/RB1_b_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_5/Conv2DConv2Dmodel/rnn/Relu_11model/rnn/RB1_b/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/RB1_b_5/BiasAddBiasAddmodel/rnn/RB1_b_5/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_16Addmodel/rnn/RB1_b_5/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_18/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_18/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_18/gamma
VariableV2*9
_class/
-+loc:@model/rnn/batch_normalization_18/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
-model/rnn/batch_normalization_18/gamma/AssignAssign&model/rnn/batch_normalization_18/gamma7model/rnn/batch_normalization_18/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_18/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_18/gamma/readIdentity&model/rnn/batch_normalization_18/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_18/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_18/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_18/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_18/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_18/beta*
	container *
shape:?
?
,model/rnn/batch_normalization_18/beta/AssignAssign%model/rnn/batch_normalization_18/beta7model/rnn/batch_normalization_18/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_18/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_18/beta/readIdentity%model/rnn/batch_normalization_18/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_18/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_18/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_18/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_18/moving_mean
VariableV2*?
_class5
31loc:@model/rnn/batch_normalization_18/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
3model/rnn/batch_normalization_18/moving_mean/AssignAssign,model/rnn/batch_normalization_18/moving_mean>model/rnn/batch_normalization_18/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_18/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_18/moving_mean/readIdentity,model/rnn/batch_normalization_18/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_18/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_18/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_18/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_18/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_18/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_18/moving_variance/AssignAssign0model/rnn/batch_normalization_18/moving_varianceAmodel/rnn/batch_normalization_18/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_18/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_18/moving_variance/readIdentity0model/rnn/batch_normalization_18/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_18/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_18/FusedBatchNormFusedBatchNormmodel/rnn/Add_16+model/rnn/batch_normalization_18/gamma/read*model/rnn/batch_normalization_18/beta/read1model/rnn/batch_normalization_18/moving_mean/read5model/rnn/batch_normalization_18/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_18/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_12Relu/model/rnn/batch_normalization_18/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
z
)model/rnn/non_local_theta_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
"model/rnn/non_local_theta_6/Conv2DConv2Dmodel/rnn/Relu_12%model/rnn/non_local_theta/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
#model/rnn/non_local_theta_6/BiasAddBiasAdd"model/rnn/non_local_theta_6/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
x
'model/rnn/non_local_phi_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
 model/rnn/non_local_phi_6/Conv2DConv2Dmodel/rnn/Relu_12#model/rnn/non_local_phi/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@*
	dilations

?
!model/rnn/non_local_phi_6/BiasAddBiasAdd model/rnn/non_local_phi_6/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
v
%model/rnn/non_local_g_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_6/Conv2DConv2Dmodel/rnn/Relu_12!model/rnn/non_local_g/kernel/read*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
model/rnn/non_local_g_6/BiasAddBiasAddmodel/rnn/non_local_g_6/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
v
model/rnn/Shape_102Shape#model/rnn/non_local_theta_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_90/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_90/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_90/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_90StridedSlicemodel/rnn/Shape_102 model/rnn/strided_slice_90/stack"model/rnn/strided_slice_90/stack_1"model/rnn/strided_slice_90/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
v
model/rnn/Shape_103Shape#model/rnn/non_local_theta_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_91/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_91/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_91/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_91StridedSlicemodel/rnn/Shape_103 model/rnn/strided_slice_91/stack"model/rnn/strided_slice_91/stack_1"model/rnn/strided_slice_91/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
v
model/rnn/Shape_104Shape#model/rnn/non_local_theta_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_92/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_92/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_92/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_92StridedSlicemodel/rnn/Shape_104 model/rnn/strided_slice_92/stack"model/rnn/strided_slice_92/stack_1"model/rnn/strided_slice_92/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
p
model/rnn/mul_18Mulmodel/rnn/strided_slice_91model/rnn/strided_slice_92*
T0*
_output_shapes
: 
v
model/rnn/Shape_105Shape#model/rnn/non_local_theta_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_93/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_93/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_93/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_93StridedSlicemodel/rnn/Shape_105 model/rnn/strided_slice_93/stack"model/rnn/strided_slice_93/stack_1"model/rnn/strided_slice_93/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_36/shapePackmodel/rnn/strided_slice_90model/rnn/mul_18model/rnn/strided_slice_93*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_36Reshape#model/rnn/non_local_theta_6/BiasAddmodel/rnn/Reshape_36/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
t
model/rnn/Shape_106Shape!model/rnn/non_local_phi_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_94/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_94/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_94/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_94StridedSlicemodel/rnn/Shape_106 model/rnn/strided_slice_94/stack"model/rnn/strided_slice_94/stack_1"model/rnn/strided_slice_94/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
model/rnn/Shape_107Shape!model/rnn/non_local_phi_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_95/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_95/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_95/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_95StridedSlicemodel/rnn/Shape_107 model/rnn/strided_slice_95/stack"model/rnn/strided_slice_95/stack_1"model/rnn/strided_slice_95/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
t
model/rnn/Shape_108Shape!model/rnn/non_local_phi_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_96/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_96/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_96/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_96StridedSlicemodel/rnn/Shape_108 model/rnn/strided_slice_96/stack"model/rnn/strided_slice_96/stack_1"model/rnn/strided_slice_96/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
p
model/rnn/mul_19Mulmodel/rnn/strided_slice_95model/rnn/strided_slice_96*
T0*
_output_shapes
: 
t
model/rnn/Shape_109Shape!model/rnn/non_local_phi_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_97/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_97/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_97/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_97StridedSlicemodel/rnn/Shape_109 model/rnn/strided_slice_97/stack"model/rnn/strided_slice_97/stack_1"model/rnn/strided_slice_97/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
?
model/rnn/Reshape_37/shapePackmodel/rnn/strided_slice_94model/rnn/mul_19model/rnn/strided_slice_97*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_37Reshape!model/rnn/non_local_phi_6/BiasAddmodel/rnn/Reshape_37/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
o
model/rnn/transpose_6/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_6	Transposemodel/rnn/Reshape_37model/rnn/transpose_6/perm*
Tperm0*
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_12BatchMatMulmodel/rnn/Reshape_36model/rnn/transpose_6*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/add_17Addmodel/rnn/MatMul_12model/rnn/add_14*
T0*=
_output_shapes+
):'???????????????????????????
c
model/rnn/Shape_110Shapemodel/rnn/add_17*
T0*
out_type0*
_output_shapes
:
R
model/rnn/Rank_6Const*
value	B :*
dtype0*
_output_shapes
: 
c
model/rnn/Shape_111Shapemodel/rnn/add_17*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Sub_6/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
model/rnn/Sub_6Submodel/rnn/Rank_6model/rnn/Sub_6/y*
T0*
_output_shapes
: 
j
model/rnn/Slice_6/beginPackmodel/rnn/Sub_6*
T0*

axis *
N*
_output_shapes
:
`
model/rnn/Slice_6/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_6Slicemodel/rnn/Shape_111model/rnn/Slice_6/beginmodel/rnn/Slice_6/size*
T0*
Index0*
_output_shapes
:
n
model/rnn/concat_6/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Y
model/rnn/concat_6/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_6ConcatV2model/rnn/concat_6/values_0model/rnn/Slice_6model/rnn/concat_6/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
model/rnn/Reshape_38Reshapemodel/rnn/add_17model/rnn/concat_6*
T0*
Tshape0*0
_output_shapes
:??????????????????
o
model/rnn/Softmax_6Softmaxmodel/rnn/Reshape_38*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_39Reshapemodel/rnn/Softmax_6model/rnn/Shape_110*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
r
model/rnn/Shape_112Shapemodel/rnn/non_local_g_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_98/stackConst*
valueB: *
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_98/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_98/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_98StridedSlicemodel/rnn/Shape_112 model/rnn/strided_slice_98/stack"model/rnn/strided_slice_98/stack_1"model/rnn/strided_slice_98/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/Shape_113Shapemodel/rnn/non_local_g_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
j
 model/rnn/strided_slice_99/stackConst*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_99/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
l
"model/rnn/strided_slice_99/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_99StridedSlicemodel/rnn/Shape_113 model/rnn/strided_slice_99/stack"model/rnn/strided_slice_99/stack_1"model/rnn/strided_slice_99/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
r
model/rnn/Shape_114Shapemodel/rnn/non_local_g_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_100/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_100/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_100/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_100StridedSlicemodel/rnn/Shape_114!model/rnn/strided_slice_100/stack#model/rnn/strided_slice_100/stack_1#model/rnn/strided_slice_100/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
model/rnn/mul_20Mulmodel/rnn/strided_slice_99model/rnn/strided_slice_100*
T0*
_output_shapes
: 
r
model/rnn/Shape_115Shapemodel/rnn/non_local_g_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_101/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_101/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_101/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_101StridedSlicemodel/rnn/Shape_115!model/rnn/strided_slice_101/stack#model/rnn/strided_slice_101/stack_1#model/rnn/strided_slice_101/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_40/shapePackmodel/rnn/strided_slice_98model/rnn/mul_20model/rnn/strided_slice_101*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_40Reshapemodel/rnn/non_local_g_6/BiasAddmodel/rnn/Reshape_40/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_13BatchMatMulmodel/rnn/Reshape_39model/rnn/Reshape_40*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
f
model/rnn/Shape_116Shapemodel/rnn/MatMul_13*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_102/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_102/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_102/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_102StridedSlicemodel/rnn/Shape_116!model/rnn/strided_slice_102/stack#model/rnn/strided_slice_102/stack_1#model/rnn/strided_slice_102/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
model/rnn/Shape_117Shape!model/rnn/non_local_phi_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_103/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_103/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_103/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_103StridedSlicemodel/rnn/Shape_117!model/rnn/strided_slice_103/stack#model/rnn/strided_slice_103/stack_1#model/rnn/strided_slice_103/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
t
model/rnn/Shape_118Shape!model/rnn/non_local_phi_6/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_104/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_104/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_104/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_104StridedSlicemodel/rnn/Shape_118!model/rnn/strided_slice_104/stack#model/rnn/strided_slice_104/stack_1#model/rnn/strided_slice_104/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
_
model/rnn/Reshape_41/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_41/shapePackmodel/rnn/strided_slice_102model/rnn/strided_slice_103model/rnn/strided_slice_104model/rnn/Reshape_41/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_41Reshapemodel/rnn/MatMul_13model/rnn/Reshape_41/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_18Addmodel/rnn/Relu_12model/rnn/Reshape_41*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_19/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_19/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_19/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_19/gamma*
	container 
?
-model/rnn/batch_normalization_19/gamma/AssignAssign&model/rnn/batch_normalization_19/gamma7model/rnn/batch_normalization_19/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_19/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_19/gamma/readIdentity&model/rnn/batch_normalization_19/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_19/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_19/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_19/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_19/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_19/beta*
	container *
shape:?
?
,model/rnn/batch_normalization_19/beta/AssignAssign%model/rnn/batch_normalization_19/beta7model/rnn/batch_normalization_19/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_19/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_19/beta/readIdentity%model/rnn/batch_normalization_19/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_19/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_19/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_19/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_19/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_19/moving_mean*
	container *
shape:?
?
3model/rnn/batch_normalization_19/moving_mean/AssignAssign,model/rnn/batch_normalization_19/moving_mean>model/rnn/batch_normalization_19/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_19/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_19/moving_mean/readIdentity,model/rnn/batch_normalization_19/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_19/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_19/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_19/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_19/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_19/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
7model/rnn/batch_normalization_19/moving_variance/AssignAssign0model/rnn/batch_normalization_19/moving_varianceAmodel/rnn/batch_normalization_19/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_19/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_19/moving_variance/readIdentity0model/rnn/batch_normalization_19/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_19/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_19/FusedBatchNormFusedBatchNormmodel/rnn/Add_18+model/rnn/batch_normalization_19/gamma/read*model/rnn/batch_normalization_19/beta/read1model/rnn/batch_normalization_19/moving_mean/read5model/rnn/batch_normalization_19/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_19/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
p
model/rnn/RB1_a_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_6/Conv2DConv2D/model/rnn/batch_normalization_19/FusedBatchNormmodel/rnn/RB1_a/kernel/read*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
model/rnn/RB1_a_6/BiasAddBiasAddmodel/rnn/RB1_a_6/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_20/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_20/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_20/gamma
VariableV2*9
_class/
-+loc:@model/rnn/batch_normalization_20/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
-model/rnn/batch_normalization_20/gamma/AssignAssign&model/rnn/batch_normalization_20/gamma7model/rnn/batch_normalization_20/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_20/gamma*
validate_shape(*
_output_shapes	
:?
?
+model/rnn/batch_normalization_20/gamma/readIdentity&model/rnn/batch_normalization_20/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_20/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_20/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_20/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_20/beta
VariableV2*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_20/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_20/beta/AssignAssign%model/rnn/batch_normalization_20/beta7model/rnn/batch_normalization_20/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_20/beta*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_20/beta/readIdentity%model/rnn/batch_normalization_20/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_20/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_20/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_20/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_20/moving_mean
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_20/moving_mean*
	container 
?
3model/rnn/batch_normalization_20/moving_mean/AssignAssign,model/rnn/batch_normalization_20/moving_mean>model/rnn/batch_normalization_20/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_20/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_20/moving_mean/readIdentity,model/rnn/batch_normalization_20/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_20/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_20/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_20/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_20/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_20/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_20/moving_variance/AssignAssign0model/rnn/batch_normalization_20/moving_varianceAmodel/rnn/batch_normalization_20/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_20/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_20/moving_variance/readIdentity0model/rnn/batch_normalization_20/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_20/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_20/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_6/BiasAdd+model/rnn/batch_normalization_20/gamma/read*model/rnn/batch_normalization_20/beta/read1model/rnn/batch_normalization_20/moving_mean/read5model/rnn/batch_normalization_20/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_20/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_13Relu/model/rnn/batch_normalization_20/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
p
model/rnn/RB1_b_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_6/Conv2DConv2Dmodel/rnn/Relu_13model/rnn/RB1_b/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/RB1_b_6/BiasAddBiasAddmodel/rnn/RB1_b_6/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_19Addmodel/rnn/RB1_b_6/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_21/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_21/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_21/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_21/gamma*
	container *
shape:?
?
-model/rnn/batch_normalization_21/gamma/AssignAssign&model/rnn/batch_normalization_21/gamma7model/rnn/batch_normalization_21/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_21/gamma*
validate_shape(*
_output_shapes	
:?
?
+model/rnn/batch_normalization_21/gamma/readIdentity&model/rnn/batch_normalization_21/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_21/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_21/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_21/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_21/beta
VariableV2*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_21/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_21/beta/AssignAssign%model/rnn/batch_normalization_21/beta7model/rnn/batch_normalization_21/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_21/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_21/beta/readIdentity%model/rnn/batch_normalization_21/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_21/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_21/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_21/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_21/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_21/moving_mean*
	container *
shape:?
?
3model/rnn/batch_normalization_21/moving_mean/AssignAssign,model/rnn/batch_normalization_21/moving_mean>model/rnn/batch_normalization_21/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_21/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_21/moving_mean/readIdentity,model/rnn/batch_normalization_21/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_21/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_21/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_21/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_21/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_21/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_21/moving_variance/AssignAssign0model/rnn/batch_normalization_21/moving_varianceAmodel/rnn/batch_normalization_21/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_21/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_21/moving_variance/readIdentity0model/rnn/batch_normalization_21/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_21/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_21/FusedBatchNormFusedBatchNormmodel/rnn/Add_19+model/rnn/batch_normalization_21/gamma/read*model/rnn/batch_normalization_21/beta/read1model/rnn/batch_normalization_21/moving_mean/read5model/rnn/batch_normalization_21/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_21/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_14Relu/model/rnn/batch_normalization_21/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
z
)model/rnn/non_local_theta_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
"model/rnn/non_local_theta_7/Conv2DConv2Dmodel/rnn/Relu_14%model/rnn/non_local_theta/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@*
	dilations

?
#model/rnn/non_local_theta_7/BiasAddBiasAdd"model/rnn/non_local_theta_7/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
x
'model/rnn/non_local_phi_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
 model/rnn/non_local_phi_7/Conv2DConv2Dmodel/rnn/Relu_14#model/rnn/non_local_phi/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@
?
!model/rnn/non_local_phi_7/BiasAddBiasAdd model/rnn/non_local_phi_7/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
v
%model/rnn/non_local_g_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_7/Conv2DConv2Dmodel/rnn/Relu_14!model/rnn/non_local_g/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations

?
model/rnn/non_local_g_7/BiasAddBiasAddmodel/rnn/non_local_g_7/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
v
model/rnn/Shape_119Shape#model/rnn/non_local_theta_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_105/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_105/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_105/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_105StridedSlicemodel/rnn/Shape_119!model/rnn/strided_slice_105/stack#model/rnn/strided_slice_105/stack_1#model/rnn/strided_slice_105/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
v
model/rnn/Shape_120Shape#model/rnn/non_local_theta_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_106/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_106/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_106/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_106StridedSlicemodel/rnn/Shape_120!model/rnn/strided_slice_106/stack#model/rnn/strided_slice_106/stack_1#model/rnn/strided_slice_106/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
v
model/rnn/Shape_121Shape#model/rnn/non_local_theta_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_107/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_107/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_107/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_107StridedSlicemodel/rnn/Shape_121!model/rnn/strided_slice_107/stack#model/rnn/strided_slice_107/stack_1#model/rnn/strided_slice_107/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
r
model/rnn/mul_21Mulmodel/rnn/strided_slice_106model/rnn/strided_slice_107*
T0*
_output_shapes
: 
v
model/rnn/Shape_122Shape#model/rnn/non_local_theta_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_108/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_108/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_108/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_108StridedSlicemodel/rnn/Shape_122!model/rnn/strided_slice_108/stack#model/rnn/strided_slice_108/stack_1#model/rnn/strided_slice_108/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_42/shapePackmodel/rnn/strided_slice_105model/rnn/mul_21model/rnn/strided_slice_108*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_42Reshape#model/rnn/non_local_theta_7/BiasAddmodel/rnn/Reshape_42/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
t
model/rnn/Shape_123Shape!model/rnn/non_local_phi_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_109/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_109/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_109/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_109StridedSlicemodel/rnn/Shape_123!model/rnn/strided_slice_109/stack#model/rnn/strided_slice_109/stack_1#model/rnn/strided_slice_109/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
t
model/rnn/Shape_124Shape!model/rnn/non_local_phi_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_110/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_110/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_110/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_110StridedSlicemodel/rnn/Shape_124!model/rnn/strided_slice_110/stack#model/rnn/strided_slice_110/stack_1#model/rnn/strided_slice_110/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
t
model/rnn/Shape_125Shape!model/rnn/non_local_phi_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_111/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_111/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_111/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_111StridedSlicemodel/rnn/Shape_125!model/rnn/strided_slice_111/stack#model/rnn/strided_slice_111/stack_1#model/rnn/strided_slice_111/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/mul_22Mulmodel/rnn/strided_slice_110model/rnn/strided_slice_111*
T0*
_output_shapes
: 
t
model/rnn/Shape_126Shape!model/rnn/non_local_phi_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_112/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_112/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_112/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_112StridedSlicemodel/rnn/Shape_126!model/rnn/strided_slice_112/stack#model/rnn/strided_slice_112/stack_1#model/rnn/strided_slice_112/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
?
model/rnn/Reshape_43/shapePackmodel/rnn/strided_slice_109model/rnn/mul_22model/rnn/strided_slice_112*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_43Reshape!model/rnn/non_local_phi_7/BiasAddmodel/rnn/Reshape_43/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
o
model/rnn/transpose_7/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_7	Transposemodel/rnn/Reshape_43model/rnn/transpose_7/perm*
T0*=
_output_shapes+
):'???????????????????????????*
Tperm0
?
model/rnn/MatMul_14BatchMatMulmodel/rnn/Reshape_42model/rnn/transpose_7*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/add_20Addmodel/rnn/MatMul_14model/rnn/add_17*
T0*=
_output_shapes+
):'???????????????????????????
c
model/rnn/Shape_127Shapemodel/rnn/add_20*
T0*
out_type0*
_output_shapes
:
R
model/rnn/Rank_7Const*
value	B :*
dtype0*
_output_shapes
: 
c
model/rnn/Shape_128Shapemodel/rnn/add_20*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Sub_7/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
model/rnn/Sub_7Submodel/rnn/Rank_7model/rnn/Sub_7/y*
T0*
_output_shapes
: 
j
model/rnn/Slice_7/beginPackmodel/rnn/Sub_7*
T0*

axis *
N*
_output_shapes
:
`
model/rnn/Slice_7/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_7Slicemodel/rnn/Shape_128model/rnn/Slice_7/beginmodel/rnn/Slice_7/size*
T0*
Index0*
_output_shapes
:
n
model/rnn/concat_7/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Y
model/rnn/concat_7/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_7ConcatV2model/rnn/concat_7/values_0model/rnn/Slice_7model/rnn/concat_7/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
model/rnn/Reshape_44Reshapemodel/rnn/add_20model/rnn/concat_7*
T0*
Tshape0*0
_output_shapes
:??????????????????
o
model/rnn/Softmax_7Softmaxmodel/rnn/Reshape_44*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_45Reshapemodel/rnn/Softmax_7model/rnn/Shape_127*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
r
model/rnn/Shape_129Shapemodel/rnn/non_local_g_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_113/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_113/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_113/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_113StridedSlicemodel/rnn/Shape_129!model/rnn/strided_slice_113/stack#model/rnn/strided_slice_113/stack_1#model/rnn/strided_slice_113/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/Shape_130Shapemodel/rnn/non_local_g_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_114/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_114/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_114/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_114StridedSlicemodel/rnn/Shape_130!model/rnn/strided_slice_114/stack#model/rnn/strided_slice_114/stack_1#model/rnn/strided_slice_114/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
r
model/rnn/Shape_131Shapemodel/rnn/non_local_g_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_115/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_115/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_115/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_115StridedSlicemodel/rnn/Shape_131!model/rnn/strided_slice_115/stack#model/rnn/strided_slice_115/stack_1#model/rnn/strided_slice_115/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
r
model/rnn/mul_23Mulmodel/rnn/strided_slice_114model/rnn/strided_slice_115*
T0*
_output_shapes
: 
r
model/rnn/Shape_132Shapemodel/rnn/non_local_g_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_116/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_116/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_116/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_116StridedSlicemodel/rnn/Shape_132!model/rnn/strided_slice_116/stack#model/rnn/strided_slice_116/stack_1#model/rnn/strided_slice_116/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
?
model/rnn/Reshape_46/shapePackmodel/rnn/strided_slice_113model/rnn/mul_23model/rnn/strided_slice_116*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_46Reshapemodel/rnn/non_local_g_7/BiasAddmodel/rnn/Reshape_46/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_15BatchMatMulmodel/rnn/Reshape_45model/rnn/Reshape_46*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
f
model/rnn/Shape_133Shapemodel/rnn/MatMul_15*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_117/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_117/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_117/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_117StridedSlicemodel/rnn/Shape_133!model/rnn/strided_slice_117/stack#model/rnn/strided_slice_117/stack_1#model/rnn/strided_slice_117/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
t
model/rnn/Shape_134Shape!model/rnn/non_local_phi_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_118/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_118/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_118/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_118StridedSlicemodel/rnn/Shape_134!model/rnn/strided_slice_118/stack#model/rnn/strided_slice_118/stack_1#model/rnn/strided_slice_118/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
t
model/rnn/Shape_135Shape!model/rnn/non_local_phi_7/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_119/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_119/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_119/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_119StridedSlicemodel/rnn/Shape_135!model/rnn/strided_slice_119/stack#model/rnn/strided_slice_119/stack_1#model/rnn/strided_slice_119/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
_
model/rnn/Reshape_47/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_47/shapePackmodel/rnn/strided_slice_117model/rnn/strided_slice_118model/rnn/strided_slice_119model/rnn/Reshape_47/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_47Reshapemodel/rnn/MatMul_15model/rnn/Reshape_47/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_21Addmodel/rnn/Relu_14model/rnn/Reshape_47*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_22/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_22/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_22/gamma
VariableV2*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_22/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
-model/rnn/batch_normalization_22/gamma/AssignAssign&model/rnn/batch_normalization_22/gamma7model/rnn/batch_normalization_22/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_22/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_22/gamma/readIdentity&model/rnn/batch_normalization_22/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_22/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_22/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_22/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_22/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_22/beta*
	container *
shape:?
?
,model/rnn/batch_normalization_22/beta/AssignAssign%model/rnn/batch_normalization_22/beta7model/rnn/batch_normalization_22/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_22/beta*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_22/beta/readIdentity%model/rnn/batch_normalization_22/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_22/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_22/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_22/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_22/moving_mean
VariableV2*?
_class5
31loc:@model/rnn/batch_normalization_22/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
3model/rnn/batch_normalization_22/moving_mean/AssignAssign,model/rnn/batch_normalization_22/moving_mean>model/rnn/batch_normalization_22/moving_mean/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_22/moving_mean*
validate_shape(*
_output_shapes	
:?
?
1model/rnn/batch_normalization_22/moving_mean/readIdentity,model/rnn/batch_normalization_22/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_22/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_22/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_22/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_22/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_22/moving_variance*
	container *
shape:?
?
7model/rnn/batch_normalization_22/moving_variance/AssignAssign0model/rnn/batch_normalization_22/moving_varianceAmodel/rnn/batch_normalization_22/moving_variance/Initializer/ones*
T0*C
_class9
75loc:@model/rnn/batch_normalization_22/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
5model/rnn/batch_normalization_22/moving_variance/readIdentity0model/rnn/batch_normalization_22/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_22/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_22/FusedBatchNormFusedBatchNormmodel/rnn/Add_21+model/rnn/batch_normalization_22/gamma/read*model/rnn/batch_normalization_22/beta/read1model/rnn/batch_normalization_22/moving_mean/read5model/rnn/batch_normalization_22/moving_variance/read*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?*
epsilon%o?:
k
&model/rnn/batch_normalization_22/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
p
model/rnn/RB1_a_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_7/Conv2DConv2D/model/rnn/batch_normalization_22/FusedBatchNormmodel/rnn/RB1_a/kernel/read*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
model/rnn/RB1_a_7/BiasAddBiasAddmodel/rnn/RB1_a_7/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_23/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_23/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_23/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_23/gamma*
	container 
?
-model/rnn/batch_normalization_23/gamma/AssignAssign&model/rnn/batch_normalization_23/gamma7model/rnn/batch_normalization_23/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_23/gamma*
validate_shape(*
_output_shapes	
:?
?
+model/rnn/batch_normalization_23/gamma/readIdentity&model/rnn/batch_normalization_23/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_23/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_23/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_23/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_23/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_23/beta*
	container 
?
,model/rnn/batch_normalization_23/beta/AssignAssign%model/rnn/batch_normalization_23/beta7model/rnn/batch_normalization_23/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_23/beta*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_23/beta/readIdentity%model/rnn/batch_normalization_23/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_23/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_23/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_23/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_23/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_23/moving_mean*
	container *
shape:?
?
3model/rnn/batch_normalization_23/moving_mean/AssignAssign,model/rnn/batch_normalization_23/moving_mean>model/rnn/batch_normalization_23/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_23/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_23/moving_mean/readIdentity,model/rnn/batch_normalization_23/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_23/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_23/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_23/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_23/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_23/moving_variance*
	container *
shape:?
?
7model/rnn/batch_normalization_23/moving_variance/AssignAssign0model/rnn/batch_normalization_23/moving_varianceAmodel/rnn/batch_normalization_23/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_23/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_23/moving_variance/readIdentity0model/rnn/batch_normalization_23/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_23/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_23/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_7/BiasAdd+model/rnn/batch_normalization_23/gamma/read*model/rnn/batch_normalization_23/beta/read1model/rnn/batch_normalization_23/moving_mean/read5model/rnn/batch_normalization_23/moving_variance/read*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?*
epsilon%o?:
k
&model/rnn/batch_normalization_23/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_15Relu/model/rnn/batch_normalization_23/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
p
model/rnn/RB1_b_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_7/Conv2DConv2Dmodel/rnn/Relu_15model/rnn/RB1_b/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations

?
model/rnn/RB1_b_7/BiasAddBiasAddmodel/rnn/RB1_b_7/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_22Addmodel/rnn/RB1_b_7/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_24/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_24/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_24/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_24/gamma*
	container 
?
-model/rnn/batch_normalization_24/gamma/AssignAssign&model/rnn/batch_normalization_24/gamma7model/rnn/batch_normalization_24/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_24/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_24/gamma/readIdentity&model/rnn/batch_normalization_24/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_24/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_24/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_24/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_24/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_24/beta*
	container 
?
,model/rnn/batch_normalization_24/beta/AssignAssign%model/rnn/batch_normalization_24/beta7model/rnn/batch_normalization_24/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_24/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_24/beta/readIdentity%model/rnn/batch_normalization_24/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_24/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_24/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_24/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_24/moving_mean
VariableV2*?
_class5
31loc:@model/rnn/batch_normalization_24/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
3model/rnn/batch_normalization_24/moving_mean/AssignAssign,model/rnn/batch_normalization_24/moving_mean>model/rnn/batch_normalization_24/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_24/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_24/moving_mean/readIdentity,model/rnn/batch_normalization_24/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_24/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_24/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_24/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_24/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_24/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_24/moving_variance/AssignAssign0model/rnn/batch_normalization_24/moving_varianceAmodel/rnn/batch_normalization_24/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_24/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_24/moving_variance/readIdentity0model/rnn/batch_normalization_24/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_24/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_24/FusedBatchNormFusedBatchNormmodel/rnn/Add_22+model/rnn/batch_normalization_24/gamma/read*model/rnn/batch_normalization_24/beta/read1model/rnn/batch_normalization_24/moving_mean/read5model/rnn/batch_normalization_24/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_24/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_16Relu/model/rnn/batch_normalization_24/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
z
)model/rnn/non_local_theta_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
"model/rnn/non_local_theta_8/Conv2DConv2Dmodel/rnn/Relu_16%model/rnn/non_local_theta/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
#model/rnn/non_local_theta_8/BiasAddBiasAdd"model/rnn/non_local_theta_8/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
x
'model/rnn/non_local_phi_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
 model/rnn/non_local_phi_8/Conv2DConv2Dmodel/rnn/Relu_16#model/rnn/non_local_phi/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
!model/rnn/non_local_phi_8/BiasAddBiasAdd model/rnn/non_local_phi_8/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
v
%model/rnn/non_local_g_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_8/Conv2DConv2Dmodel/rnn/Relu_16!model/rnn/non_local_g/kernel/read*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
model/rnn/non_local_g_8/BiasAddBiasAddmodel/rnn/non_local_g_8/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
v
model/rnn/Shape_136Shape#model/rnn/non_local_theta_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_120/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_120/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_120/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_120StridedSlicemodel/rnn/Shape_136!model/rnn/strided_slice_120/stack#model/rnn/strided_slice_120/stack_1#model/rnn/strided_slice_120/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
v
model/rnn/Shape_137Shape#model/rnn/non_local_theta_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_121/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_121/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_121/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_121StridedSlicemodel/rnn/Shape_137!model/rnn/strided_slice_121/stack#model/rnn/strided_slice_121/stack_1#model/rnn/strided_slice_121/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
v
model/rnn/Shape_138Shape#model/rnn/non_local_theta_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_122/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_122/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_122/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_122StridedSlicemodel/rnn/Shape_138!model/rnn/strided_slice_122/stack#model/rnn/strided_slice_122/stack_1#model/rnn/strided_slice_122/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
r
model/rnn/mul_24Mulmodel/rnn/strided_slice_121model/rnn/strided_slice_122*
T0*
_output_shapes
: 
v
model/rnn/Shape_139Shape#model/rnn/non_local_theta_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_123/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_123/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_123/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_123StridedSlicemodel/rnn/Shape_139!model/rnn/strided_slice_123/stack#model/rnn/strided_slice_123/stack_1#model/rnn/strided_slice_123/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
?
model/rnn/Reshape_48/shapePackmodel/rnn/strided_slice_120model/rnn/mul_24model/rnn/strided_slice_123*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_48Reshape#model/rnn/non_local_theta_8/BiasAddmodel/rnn/Reshape_48/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
t
model/rnn/Shape_140Shape!model/rnn/non_local_phi_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_124/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_124/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_124/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_124StridedSlicemodel/rnn/Shape_140!model/rnn/strided_slice_124/stack#model/rnn/strided_slice_124/stack_1#model/rnn/strided_slice_124/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
t
model/rnn/Shape_141Shape!model/rnn/non_local_phi_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_125/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_125/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_125/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_125StridedSlicemodel/rnn/Shape_141!model/rnn/strided_slice_125/stack#model/rnn/strided_slice_125/stack_1#model/rnn/strided_slice_125/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
model/rnn/Shape_142Shape!model/rnn/non_local_phi_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_126/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_126/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_126/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_126StridedSlicemodel/rnn/Shape_142!model/rnn/strided_slice_126/stack#model/rnn/strided_slice_126/stack_1#model/rnn/strided_slice_126/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/mul_25Mulmodel/rnn/strided_slice_125model/rnn/strided_slice_126*
T0*
_output_shapes
: 
t
model/rnn/Shape_143Shape!model/rnn/non_local_phi_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_127/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_127/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_127/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_127StridedSlicemodel/rnn/Shape_143!model/rnn/strided_slice_127/stack#model/rnn/strided_slice_127/stack_1#model/rnn/strided_slice_127/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
?
model/rnn/Reshape_49/shapePackmodel/rnn/strided_slice_124model/rnn/mul_25model/rnn/strided_slice_127*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_49Reshape!model/rnn/non_local_phi_8/BiasAddmodel/rnn/Reshape_49/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
o
model/rnn/transpose_8/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_8	Transposemodel/rnn/Reshape_49model/rnn/transpose_8/perm*
T0*=
_output_shapes+
):'???????????????????????????*
Tperm0
?
model/rnn/MatMul_16BatchMatMulmodel/rnn/Reshape_48model/rnn/transpose_8*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
?
model/rnn/add_23Addmodel/rnn/MatMul_16model/rnn/add_20*
T0*=
_output_shapes+
):'???????????????????????????
c
model/rnn/Shape_144Shapemodel/rnn/add_23*
T0*
out_type0*
_output_shapes
:
R
model/rnn/Rank_8Const*
value	B :*
dtype0*
_output_shapes
: 
c
model/rnn/Shape_145Shapemodel/rnn/add_23*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Sub_8/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
model/rnn/Sub_8Submodel/rnn/Rank_8model/rnn/Sub_8/y*
T0*
_output_shapes
: 
j
model/rnn/Slice_8/beginPackmodel/rnn/Sub_8*
T0*

axis *
N*
_output_shapes
:
`
model/rnn/Slice_8/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_8Slicemodel/rnn/Shape_145model/rnn/Slice_8/beginmodel/rnn/Slice_8/size*
T0*
Index0*
_output_shapes
:
n
model/rnn/concat_8/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Y
model/rnn/concat_8/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_8ConcatV2model/rnn/concat_8/values_0model/rnn/Slice_8model/rnn/concat_8/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
model/rnn/Reshape_50Reshapemodel/rnn/add_23model/rnn/concat_8*
T0*
Tshape0*0
_output_shapes
:??????????????????
o
model/rnn/Softmax_8Softmaxmodel/rnn/Reshape_50*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_51Reshapemodel/rnn/Softmax_8model/rnn/Shape_144*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
r
model/rnn/Shape_146Shapemodel/rnn/non_local_g_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_128/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_128/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_128/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_128StridedSlicemodel/rnn/Shape_146!model/rnn/strided_slice_128/stack#model/rnn/strided_slice_128/stack_1#model/rnn/strided_slice_128/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
r
model/rnn/Shape_147Shapemodel/rnn/non_local_g_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_129/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_129/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_129/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_129StridedSlicemodel/rnn/Shape_147!model/rnn/strided_slice_129/stack#model/rnn/strided_slice_129/stack_1#model/rnn/strided_slice_129/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/Shape_148Shapemodel/rnn/non_local_g_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_130/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_130/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_130/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_130StridedSlicemodel/rnn/Shape_148!model/rnn/strided_slice_130/stack#model/rnn/strided_slice_130/stack_1#model/rnn/strided_slice_130/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
r
model/rnn/mul_26Mulmodel/rnn/strided_slice_129model/rnn/strided_slice_130*
T0*
_output_shapes
: 
r
model/rnn/Shape_149Shapemodel/rnn/non_local_g_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_131/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_131/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_131/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_131StridedSlicemodel/rnn/Shape_149!model/rnn/strided_slice_131/stack#model/rnn/strided_slice_131/stack_1#model/rnn/strided_slice_131/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
?
model/rnn/Reshape_52/shapePackmodel/rnn/strided_slice_128model/rnn/mul_26model/rnn/strided_slice_131*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_52Reshapemodel/rnn/non_local_g_8/BiasAddmodel/rnn/Reshape_52/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_17BatchMatMulmodel/rnn/Reshape_51model/rnn/Reshape_52*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
f
model/rnn/Shape_150Shapemodel/rnn/MatMul_17*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_132/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_132/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_132/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_132StridedSlicemodel/rnn/Shape_150!model/rnn/strided_slice_132/stack#model/rnn/strided_slice_132/stack_1#model/rnn/strided_slice_132/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
model/rnn/Shape_151Shape!model/rnn/non_local_phi_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_133/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_133/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_133/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_133StridedSlicemodel/rnn/Shape_151!model/rnn/strided_slice_133/stack#model/rnn/strided_slice_133/stack_1#model/rnn/strided_slice_133/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
model/rnn/Shape_152Shape!model/rnn/non_local_phi_8/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_134/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_134/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_134/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_134StridedSlicemodel/rnn/Shape_152!model/rnn/strided_slice_134/stack#model/rnn/strided_slice_134/stack_1#model/rnn/strided_slice_134/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
_
model/rnn/Reshape_53/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_53/shapePackmodel/rnn/strided_slice_132model/rnn/strided_slice_133model/rnn/strided_slice_134model/rnn/Reshape_53/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_53Reshapemodel/rnn/MatMul_17model/rnn/Reshape_53/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_24Addmodel/rnn/Relu_16model/rnn/Reshape_53*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_25/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_25/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_25/gamma
VariableV2*9
_class/
-+loc:@model/rnn/batch_normalization_25/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
-model/rnn/batch_normalization_25/gamma/AssignAssign&model/rnn/batch_normalization_25/gamma7model/rnn/batch_normalization_25/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_25/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_25/gamma/readIdentity&model/rnn/batch_normalization_25/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_25/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_25/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_25/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_25/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_25/beta*
	container 
?
,model/rnn/batch_normalization_25/beta/AssignAssign%model/rnn/batch_normalization_25/beta7model/rnn/batch_normalization_25/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_25/beta*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_25/beta/readIdentity%model/rnn/batch_normalization_25/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_25/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_25/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_25/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_25/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_25/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
3model/rnn/batch_normalization_25/moving_mean/AssignAssign,model/rnn/batch_normalization_25/moving_mean>model/rnn/batch_normalization_25/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_25/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_25/moving_mean/readIdentity,model/rnn/batch_normalization_25/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_25/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_25/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_25/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_25/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_25/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_25/moving_variance/AssignAssign0model/rnn/batch_normalization_25/moving_varianceAmodel/rnn/batch_normalization_25/moving_variance/Initializer/ones*
T0*C
_class9
75loc:@model/rnn/batch_normalization_25/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
5model/rnn/batch_normalization_25/moving_variance/readIdentity0model/rnn/batch_normalization_25/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_25/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_25/FusedBatchNormFusedBatchNormmodel/rnn/Add_24+model/rnn/batch_normalization_25/gamma/read*model/rnn/batch_normalization_25/beta/read1model/rnn/batch_normalization_25/moving_mean/read5model/rnn/batch_normalization_25/moving_variance/read*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?*
epsilon%o?:
k
&model/rnn/batch_normalization_25/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
p
model/rnn/RB1_a_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_8/Conv2DConv2D/model/rnn/batch_normalization_25/FusedBatchNormmodel/rnn/RB1_a/kernel/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations

?
model/rnn/RB1_a_8/BiasAddBiasAddmodel/rnn/RB1_a_8/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_26/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_26/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_26/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_26/gamma*
	container 
?
-model/rnn/batch_normalization_26/gamma/AssignAssign&model/rnn/batch_normalization_26/gamma7model/rnn/batch_normalization_26/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_26/gamma*
validate_shape(*
_output_shapes	
:?
?
+model/rnn/batch_normalization_26/gamma/readIdentity&model/rnn/batch_normalization_26/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_26/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_26/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_26/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_26/beta
VariableV2*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_26/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_26/beta/AssignAssign%model/rnn/batch_normalization_26/beta7model/rnn/batch_normalization_26/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_26/beta*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_26/beta/readIdentity%model/rnn/batch_normalization_26/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_26/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_26/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_26/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_26/moving_mean
VariableV2*?
_class5
31loc:@model/rnn/batch_normalization_26/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
3model/rnn/batch_normalization_26/moving_mean/AssignAssign,model/rnn/batch_normalization_26/moving_mean>model/rnn/batch_normalization_26/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_26/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_26/moving_mean/readIdentity,model/rnn/batch_normalization_26/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_26/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_26/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_26/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_26/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_26/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
7model/rnn/batch_normalization_26/moving_variance/AssignAssign0model/rnn/batch_normalization_26/moving_varianceAmodel/rnn/batch_normalization_26/moving_variance/Initializer/ones*
T0*C
_class9
75loc:@model/rnn/batch_normalization_26/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
5model/rnn/batch_normalization_26/moving_variance/readIdentity0model/rnn/batch_normalization_26/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_26/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_26/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_8/BiasAdd+model/rnn/batch_normalization_26/gamma/read*model/rnn/batch_normalization_26/beta/read1model/rnn/batch_normalization_26/moving_mean/read5model/rnn/batch_normalization_26/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_26/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_17Relu/model/rnn/batch_normalization_26/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
p
model/rnn/RB1_b_8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_8/Conv2DConv2Dmodel/rnn/Relu_17model/rnn/RB1_b/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/RB1_b_8/BiasAddBiasAddmodel/rnn/RB1_b_8/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_25Addmodel/rnn/RB1_b_8/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_27/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_27/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_27/gamma
VariableV2*9
_class/
-+loc:@model/rnn/batch_normalization_27/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
-model/rnn/batch_normalization_27/gamma/AssignAssign&model/rnn/batch_normalization_27/gamma7model/rnn/batch_normalization_27/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_27/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_27/gamma/readIdentity&model/rnn/batch_normalization_27/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_27/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_27/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_27/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_27/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_27/beta*
	container *
shape:?
?
,model/rnn/batch_normalization_27/beta/AssignAssign%model/rnn/batch_normalization_27/beta7model/rnn/batch_normalization_27/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_27/beta*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_27/beta/readIdentity%model/rnn/batch_normalization_27/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_27/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_27/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_27/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_27/moving_mean
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_27/moving_mean*
	container 
?
3model/rnn/batch_normalization_27/moving_mean/AssignAssign,model/rnn/batch_normalization_27/moving_mean>model/rnn/batch_normalization_27/moving_mean/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_27/moving_mean*
validate_shape(*
_output_shapes	
:?
?
1model/rnn/batch_normalization_27/moving_mean/readIdentity,model/rnn/batch_normalization_27/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_27/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_27/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_27/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_27/moving_variance
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_27/moving_variance*
	container 
?
7model/rnn/batch_normalization_27/moving_variance/AssignAssign0model/rnn/batch_normalization_27/moving_varianceAmodel/rnn/batch_normalization_27/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_27/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_27/moving_variance/readIdentity0model/rnn/batch_normalization_27/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_27/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_27/FusedBatchNormFusedBatchNormmodel/rnn/Add_25+model/rnn/batch_normalization_27/gamma/read*model/rnn/batch_normalization_27/beta/read1model/rnn/batch_normalization_27/moving_mean/read5model/rnn/batch_normalization_27/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_27/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_18Relu/model/rnn/batch_normalization_27/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
z
)model/rnn/non_local_theta_9/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
"model/rnn/non_local_theta_9/Conv2DConv2Dmodel/rnn/Relu_18%model/rnn/non_local_theta/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@
?
#model/rnn/non_local_theta_9/BiasAddBiasAdd"model/rnn/non_local_theta_9/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
x
'model/rnn/non_local_phi_9/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
 model/rnn/non_local_phi_9/Conv2DConv2Dmodel/rnn/Relu_18#model/rnn/non_local_phi/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@
?
!model/rnn/non_local_phi_9/BiasAddBiasAdd model/rnn/non_local_phi_9/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
v
%model/rnn/non_local_g_9/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_9/Conv2DConv2Dmodel/rnn/Relu_18!model/rnn/non_local_g/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations

?
model/rnn/non_local_g_9/BiasAddBiasAddmodel/rnn/non_local_g_9/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
v
model/rnn/Shape_153Shape#model/rnn/non_local_theta_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_135/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_135/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_135/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_135StridedSlicemodel/rnn/Shape_153!model/rnn/strided_slice_135/stack#model/rnn/strided_slice_135/stack_1#model/rnn/strided_slice_135/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
v
model/rnn/Shape_154Shape#model/rnn/non_local_theta_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_136/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_136/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_136/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_136StridedSlicemodel/rnn/Shape_154!model/rnn/strided_slice_136/stack#model/rnn/strided_slice_136/stack_1#model/rnn/strided_slice_136/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
v
model/rnn/Shape_155Shape#model/rnn/non_local_theta_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_137/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_137/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_137/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_137StridedSlicemodel/rnn/Shape_155!model/rnn/strided_slice_137/stack#model/rnn/strided_slice_137/stack_1#model/rnn/strided_slice_137/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/mul_27Mulmodel/rnn/strided_slice_136model/rnn/strided_slice_137*
T0*
_output_shapes
: 
v
model/rnn/Shape_156Shape#model/rnn/non_local_theta_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_138/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_138/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_138/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_138StridedSlicemodel/rnn/Shape_156!model/rnn/strided_slice_138/stack#model/rnn/strided_slice_138/stack_1#model/rnn/strided_slice_138/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
?
model/rnn/Reshape_54/shapePackmodel/rnn/strided_slice_135model/rnn/mul_27model/rnn/strided_slice_138*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_54Reshape#model/rnn/non_local_theta_9/BiasAddmodel/rnn/Reshape_54/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
t
model/rnn/Shape_157Shape!model/rnn/non_local_phi_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_139/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_139/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_139/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_139StridedSlicemodel/rnn/Shape_157!model/rnn/strided_slice_139/stack#model/rnn/strided_slice_139/stack_1#model/rnn/strided_slice_139/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
t
model/rnn/Shape_158Shape!model/rnn/non_local_phi_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_140/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_140/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_140/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_140StridedSlicemodel/rnn/Shape_158!model/rnn/strided_slice_140/stack#model/rnn/strided_slice_140/stack_1#model/rnn/strided_slice_140/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
model/rnn/Shape_159Shape!model/rnn/non_local_phi_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_141/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_141/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_141/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_141StridedSlicemodel/rnn/Shape_159!model/rnn/strided_slice_141/stack#model/rnn/strided_slice_141/stack_1#model/rnn/strided_slice_141/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/mul_28Mulmodel/rnn/strided_slice_140model/rnn/strided_slice_141*
T0*
_output_shapes
: 
t
model/rnn/Shape_160Shape!model/rnn/non_local_phi_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_142/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_142/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_142/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_142StridedSlicemodel/rnn/Shape_160!model/rnn/strided_slice_142/stack#model/rnn/strided_slice_142/stack_1#model/rnn/strided_slice_142/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
?
model/rnn/Reshape_55/shapePackmodel/rnn/strided_slice_139model/rnn/mul_28model/rnn/strided_slice_142*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_55Reshape!model/rnn/non_local_phi_9/BiasAddmodel/rnn/Reshape_55/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
o
model/rnn/transpose_9/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_9	Transposemodel/rnn/Reshape_55model/rnn/transpose_9/perm*
Tperm0*
T0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_18BatchMatMulmodel/rnn/Reshape_54model/rnn/transpose_9*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
?
model/rnn/add_26Addmodel/rnn/MatMul_18model/rnn/add_23*
T0*=
_output_shapes+
):'???????????????????????????
c
model/rnn/Shape_161Shapemodel/rnn/add_26*
T0*
out_type0*
_output_shapes
:
R
model/rnn/Rank_9Const*
value	B :*
dtype0*
_output_shapes
: 
c
model/rnn/Shape_162Shapemodel/rnn/add_26*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Sub_9/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
model/rnn/Sub_9Submodel/rnn/Rank_9model/rnn/Sub_9/y*
T0*
_output_shapes
: 
j
model/rnn/Slice_9/beginPackmodel/rnn/Sub_9*
T0*

axis *
N*
_output_shapes
:
`
model/rnn/Slice_9/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_9Slicemodel/rnn/Shape_162model/rnn/Slice_9/beginmodel/rnn/Slice_9/size*
T0*
Index0*
_output_shapes
:
n
model/rnn/concat_9/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Y
model/rnn/concat_9/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_9ConcatV2model/rnn/concat_9/values_0model/rnn/Slice_9model/rnn/concat_9/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
model/rnn/Reshape_56Reshapemodel/rnn/add_26model/rnn/concat_9*
T0*
Tshape0*0
_output_shapes
:??????????????????
o
model/rnn/Softmax_9Softmaxmodel/rnn/Reshape_56*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_57Reshapemodel/rnn/Softmax_9model/rnn/Shape_161*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
r
model/rnn/Shape_163Shapemodel/rnn/non_local_g_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_143/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_143/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_143/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_143StridedSlicemodel/rnn/Shape_163!model/rnn/strided_slice_143/stack#model/rnn/strided_slice_143/stack_1#model/rnn/strided_slice_143/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
r
model/rnn/Shape_164Shapemodel/rnn/non_local_g_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_144/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_144/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_144/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_144StridedSlicemodel/rnn/Shape_164!model/rnn/strided_slice_144/stack#model/rnn/strided_slice_144/stack_1#model/rnn/strided_slice_144/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/Shape_165Shapemodel/rnn/non_local_g_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_145/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_145/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_145/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_145StridedSlicemodel/rnn/Shape_165!model/rnn/strided_slice_145/stack#model/rnn/strided_slice_145/stack_1#model/rnn/strided_slice_145/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
r
model/rnn/mul_29Mulmodel/rnn/strided_slice_144model/rnn/strided_slice_145*
T0*
_output_shapes
: 
r
model/rnn/Shape_166Shapemodel/rnn/non_local_g_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_146/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_146/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_146/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_146StridedSlicemodel/rnn/Shape_166!model/rnn/strided_slice_146/stack#model/rnn/strided_slice_146/stack_1#model/rnn/strided_slice_146/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_58/shapePackmodel/rnn/strided_slice_143model/rnn/mul_29model/rnn/strided_slice_146*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_58Reshapemodel/rnn/non_local_g_9/BiasAddmodel/rnn/Reshape_58/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_19BatchMatMulmodel/rnn/Reshape_57model/rnn/Reshape_58*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
f
model/rnn/Shape_167Shapemodel/rnn/MatMul_19*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_147/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_147/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_147/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_147StridedSlicemodel/rnn/Shape_167!model/rnn/strided_slice_147/stack#model/rnn/strided_slice_147/stack_1#model/rnn/strided_slice_147/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
model/rnn/Shape_168Shape!model/rnn/non_local_phi_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_148/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_148/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_148/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_148StridedSlicemodel/rnn/Shape_168!model/rnn/strided_slice_148/stack#model/rnn/strided_slice_148/stack_1#model/rnn/strided_slice_148/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
model/rnn/Shape_169Shape!model/rnn/non_local_phi_9/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_149/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_149/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_149/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_149StridedSlicemodel/rnn/Shape_169!model/rnn/strided_slice_149/stack#model/rnn/strided_slice_149/stack_1#model/rnn/strided_slice_149/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
_
model/rnn/Reshape_59/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_59/shapePackmodel/rnn/strided_slice_147model/rnn/strided_slice_148model/rnn/strided_slice_149model/rnn/Reshape_59/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_59Reshapemodel/rnn/MatMul_19model/rnn/Reshape_59/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_27Addmodel/rnn/Relu_18model/rnn/Reshape_59*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_28/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_28/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_28/gamma
VariableV2*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_28/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
-model/rnn/batch_normalization_28/gamma/AssignAssign&model/rnn/batch_normalization_28/gamma7model/rnn/batch_normalization_28/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_28/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_28/gamma/readIdentity&model/rnn/batch_normalization_28/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_28/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_28/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_28/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_28/beta
VariableV2*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_28/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_28/beta/AssignAssign%model/rnn/batch_normalization_28/beta7model/rnn/batch_normalization_28/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_28/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_28/beta/readIdentity%model/rnn/batch_normalization_28/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_28/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_28/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_28/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_28/moving_mean
VariableV2*?
_class5
31loc:@model/rnn/batch_normalization_28/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
3model/rnn/batch_normalization_28/moving_mean/AssignAssign,model/rnn/batch_normalization_28/moving_mean>model/rnn/batch_normalization_28/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_28/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_28/moving_mean/readIdentity,model/rnn/batch_normalization_28/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_28/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_28/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_28/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_28/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_28/moving_variance*
	container *
shape:?
?
7model/rnn/batch_normalization_28/moving_variance/AssignAssign0model/rnn/batch_normalization_28/moving_varianceAmodel/rnn/batch_normalization_28/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_28/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_28/moving_variance/readIdentity0model/rnn/batch_normalization_28/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_28/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_28/FusedBatchNormFusedBatchNormmodel/rnn/Add_27+model/rnn/batch_normalization_28/gamma/read*model/rnn/batch_normalization_28/beta/read1model/rnn/batch_normalization_28/moving_mean/read5model/rnn/batch_normalization_28/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_28/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
p
model/rnn/RB1_a_9/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_9/Conv2DConv2D/model/rnn/batch_normalization_28/FusedBatchNormmodel/rnn/RB1_a/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/RB1_a_9/BiasAddBiasAddmodel/rnn/RB1_a_9/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_29/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_29/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_29/gamma
VariableV2*9
_class/
-+loc:@model/rnn/batch_normalization_29/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
-model/rnn/batch_normalization_29/gamma/AssignAssign&model/rnn/batch_normalization_29/gamma7model/rnn/batch_normalization_29/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_29/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_29/gamma/readIdentity&model/rnn/batch_normalization_29/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_29/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_29/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_29/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_29/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_29/beta*
	container *
shape:?
?
,model/rnn/batch_normalization_29/beta/AssignAssign%model/rnn/batch_normalization_29/beta7model/rnn/batch_normalization_29/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_29/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_29/beta/readIdentity%model/rnn/batch_normalization_29/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_29/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_29/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_29/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_29/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_29/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
3model/rnn/batch_normalization_29/moving_mean/AssignAssign,model/rnn/batch_normalization_29/moving_mean>model/rnn/batch_normalization_29/moving_mean/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_29/moving_mean*
validate_shape(*
_output_shapes	
:?
?
1model/rnn/batch_normalization_29/moving_mean/readIdentity,model/rnn/batch_normalization_29/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_29/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_29/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_29/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_29/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_29/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_29/moving_variance/AssignAssign0model/rnn/batch_normalization_29/moving_varianceAmodel/rnn/batch_normalization_29/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_29/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_29/moving_variance/readIdentity0model/rnn/batch_normalization_29/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_29/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_29/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_9/BiasAdd+model/rnn/batch_normalization_29/gamma/read*model/rnn/batch_normalization_29/beta/read1model/rnn/batch_normalization_29/moving_mean/read5model/rnn/batch_normalization_29/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_29/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_19Relu/model/rnn/batch_normalization_29/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
p
model/rnn/RB1_b_9/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_9/Conv2DConv2Dmodel/rnn/Relu_19model/rnn/RB1_b/kernel/read*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
model/rnn/RB1_b_9/BiasAddBiasAddmodel/rnn/RB1_b_9/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_28Addmodel/rnn/RB1_b_9/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_30/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_30/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_30/gamma
VariableV2*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_30/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
-model/rnn/batch_normalization_30/gamma/AssignAssign&model/rnn/batch_normalization_30/gamma7model/rnn/batch_normalization_30/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_30/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_30/gamma/readIdentity&model/rnn/batch_normalization_30/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_30/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_30/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_30/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_30/beta
VariableV2*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_30/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_30/beta/AssignAssign%model/rnn/batch_normalization_30/beta7model/rnn/batch_normalization_30/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_30/beta*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_30/beta/readIdentity%model/rnn/batch_normalization_30/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_30/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_30/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_30/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_30/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_30/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
3model/rnn/batch_normalization_30/moving_mean/AssignAssign,model/rnn/batch_normalization_30/moving_mean>model/rnn/batch_normalization_30/moving_mean/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_30/moving_mean*
validate_shape(*
_output_shapes	
:?
?
1model/rnn/batch_normalization_30/moving_mean/readIdentity,model/rnn/batch_normalization_30/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_30/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_30/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_30/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_30/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_30/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_30/moving_variance/AssignAssign0model/rnn/batch_normalization_30/moving_varianceAmodel/rnn/batch_normalization_30/moving_variance/Initializer/ones*
T0*C
_class9
75loc:@model/rnn/batch_normalization_30/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
5model/rnn/batch_normalization_30/moving_variance/readIdentity0model/rnn/batch_normalization_30/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_30/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_30/FusedBatchNormFusedBatchNormmodel/rnn/Add_28+model/rnn/batch_normalization_30/gamma/read*model/rnn/batch_normalization_30/beta/read1model/rnn/batch_normalization_30/moving_mean/read5model/rnn/batch_normalization_30/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_30/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_20Relu/model/rnn/batch_normalization_30/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
{
*model/rnn/non_local_theta_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
#model/rnn/non_local_theta_10/Conv2DConv2Dmodel/rnn/Relu_20%model/rnn/non_local_theta/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
$model/rnn/non_local_theta_10/BiasAddBiasAdd#model/rnn/non_local_theta_10/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
y
(model/rnn/non_local_phi_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
!model/rnn/non_local_phi_10/Conv2DConv2Dmodel/rnn/Relu_20#model/rnn/non_local_phi/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
"model/rnn/non_local_phi_10/BiasAddBiasAdd!model/rnn/non_local_phi_10/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
w
&model/rnn/non_local_g_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_10/Conv2DConv2Dmodel/rnn/Relu_20!model/rnn/non_local_g/kernel/read*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
 model/rnn/non_local_g_10/BiasAddBiasAddmodel/rnn/non_local_g_10/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
w
model/rnn/Shape_170Shape$model/rnn/non_local_theta_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_150/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_150/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_150/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_150StridedSlicemodel/rnn/Shape_170!model/rnn/strided_slice_150/stack#model/rnn/strided_slice_150/stack_1#model/rnn/strided_slice_150/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
w
model/rnn/Shape_171Shape$model/rnn/non_local_theta_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_151/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_151/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_151/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_151StridedSlicemodel/rnn/Shape_171!model/rnn/strided_slice_151/stack#model/rnn/strided_slice_151/stack_1#model/rnn/strided_slice_151/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
w
model/rnn/Shape_172Shape$model/rnn/non_local_theta_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_152/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_152/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_152/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_152StridedSlicemodel/rnn/Shape_172!model/rnn/strided_slice_152/stack#model/rnn/strided_slice_152/stack_1#model/rnn/strided_slice_152/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
r
model/rnn/mul_30Mulmodel/rnn/strided_slice_151model/rnn/strided_slice_152*
T0*
_output_shapes
: 
w
model/rnn/Shape_173Shape$model/rnn/non_local_theta_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_153/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_153/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_153/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_153StridedSlicemodel/rnn/Shape_173!model/rnn/strided_slice_153/stack#model/rnn/strided_slice_153/stack_1#model/rnn/strided_slice_153/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
?
model/rnn/Reshape_60/shapePackmodel/rnn/strided_slice_150model/rnn/mul_30model/rnn/strided_slice_153*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_60Reshape$model/rnn/non_local_theta_10/BiasAddmodel/rnn/Reshape_60/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
u
model/rnn/Shape_174Shape"model/rnn/non_local_phi_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_154/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_154/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_154/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_154StridedSlicemodel/rnn/Shape_174!model/rnn/strided_slice_154/stack#model/rnn/strided_slice_154/stack_1#model/rnn/strided_slice_154/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
u
model/rnn/Shape_175Shape"model/rnn/non_local_phi_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_155/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_155/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_155/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_155StridedSlicemodel/rnn/Shape_175!model/rnn/strided_slice_155/stack#model/rnn/strided_slice_155/stack_1#model/rnn/strided_slice_155/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
model/rnn/Shape_176Shape"model/rnn/non_local_phi_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_156/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_156/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_156/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_156StridedSlicemodel/rnn/Shape_176!model/rnn/strided_slice_156/stack#model/rnn/strided_slice_156/stack_1#model/rnn/strided_slice_156/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/mul_31Mulmodel/rnn/strided_slice_155model/rnn/strided_slice_156*
T0*
_output_shapes
: 
u
model/rnn/Shape_177Shape"model/rnn/non_local_phi_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_157/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_157/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_157/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_157StridedSlicemodel/rnn/Shape_177!model/rnn/strided_slice_157/stack#model/rnn/strided_slice_157/stack_1#model/rnn/strided_slice_157/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_61/shapePackmodel/rnn/strided_slice_154model/rnn/mul_31model/rnn/strided_slice_157*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_61Reshape"model/rnn/non_local_phi_10/BiasAddmodel/rnn/Reshape_61/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
p
model/rnn/transpose_10/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_10	Transposemodel/rnn/Reshape_61model/rnn/transpose_10/perm*
T0*=
_output_shapes+
):'???????????????????????????*
Tperm0
?
model/rnn/MatMul_20BatchMatMulmodel/rnn/Reshape_60model/rnn/transpose_10*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
?
model/rnn/add_29Addmodel/rnn/MatMul_20model/rnn/add_26*
T0*=
_output_shapes+
):'???????????????????????????
c
model/rnn/Shape_178Shapemodel/rnn/add_29*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Rank_10Const*
value	B :*
dtype0*
_output_shapes
: 
c
model/rnn/Shape_179Shapemodel/rnn/add_29*
T0*
out_type0*
_output_shapes
:
T
model/rnn/Sub_10/yConst*
value	B :*
dtype0*
_output_shapes
: 
_
model/rnn/Sub_10Submodel/rnn/Rank_10model/rnn/Sub_10/y*
T0*
_output_shapes
: 
l
model/rnn/Slice_10/beginPackmodel/rnn/Sub_10*
T0*

axis *
N*
_output_shapes
:
a
model/rnn/Slice_10/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_10Slicemodel/rnn/Shape_179model/rnn/Slice_10/beginmodel/rnn/Slice_10/size*
T0*
Index0*
_output_shapes
:
o
model/rnn/concat_10/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Z
model/rnn/concat_10/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_10ConcatV2model/rnn/concat_10/values_0model/rnn/Slice_10model/rnn/concat_10/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
model/rnn/Reshape_62Reshapemodel/rnn/add_29model/rnn/concat_10*
T0*
Tshape0*0
_output_shapes
:??????????????????
p
model/rnn/Softmax_10Softmaxmodel/rnn/Reshape_62*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_63Reshapemodel/rnn/Softmax_10model/rnn/Shape_178*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
s
model/rnn/Shape_180Shape model/rnn/non_local_g_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_158/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_158/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_158/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_158StridedSlicemodel/rnn/Shape_180!model/rnn/strided_slice_158/stack#model/rnn/strided_slice_158/stack_1#model/rnn/strided_slice_158/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
model/rnn/Shape_181Shape model/rnn/non_local_g_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_159/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_159/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_159/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_159StridedSlicemodel/rnn/Shape_181!model/rnn/strided_slice_159/stack#model/rnn/strided_slice_159/stack_1#model/rnn/strided_slice_159/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
s
model/rnn/Shape_182Shape model/rnn/non_local_g_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_160/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_160/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_160/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_160StridedSlicemodel/rnn/Shape_182!model/rnn/strided_slice_160/stack#model/rnn/strided_slice_160/stack_1#model/rnn/strided_slice_160/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/mul_32Mulmodel/rnn/strided_slice_159model/rnn/strided_slice_160*
T0*
_output_shapes
: 
s
model/rnn/Shape_183Shape model/rnn/non_local_g_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_161/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_161/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_161/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_161StridedSlicemodel/rnn/Shape_183!model/rnn/strided_slice_161/stack#model/rnn/strided_slice_161/stack_1#model/rnn/strided_slice_161/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
?
model/rnn/Reshape_64/shapePackmodel/rnn/strided_slice_158model/rnn/mul_32model/rnn/strided_slice_161*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_64Reshape model/rnn/non_local_g_10/BiasAddmodel/rnn/Reshape_64/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_21BatchMatMulmodel/rnn/Reshape_63model/rnn/Reshape_64*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
f
model/rnn/Shape_184Shapemodel/rnn/MatMul_21*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_162/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_162/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_162/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_162StridedSlicemodel/rnn/Shape_184!model/rnn/strided_slice_162/stack#model/rnn/strided_slice_162/stack_1#model/rnn/strided_slice_162/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
model/rnn/Shape_185Shape"model/rnn/non_local_phi_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_163/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_163/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_163/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_163StridedSlicemodel/rnn/Shape_185!model/rnn/strided_slice_163/stack#model/rnn/strided_slice_163/stack_1#model/rnn/strided_slice_163/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
u
model/rnn/Shape_186Shape"model/rnn/non_local_phi_10/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_164/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_164/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_164/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_164StridedSlicemodel/rnn/Shape_186!model/rnn/strided_slice_164/stack#model/rnn/strided_slice_164/stack_1#model/rnn/strided_slice_164/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
_
model/rnn/Reshape_65/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_65/shapePackmodel/rnn/strided_slice_162model/rnn/strided_slice_163model/rnn/strided_slice_164model/rnn/Reshape_65/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_65Reshapemodel/rnn/MatMul_21model/rnn/Reshape_65/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_30Addmodel/rnn/Relu_20model/rnn/Reshape_65*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_31/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_31/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_31/gamma
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_31/gamma*
	container *
shape:?
?
-model/rnn/batch_normalization_31/gamma/AssignAssign&model/rnn/batch_normalization_31/gamma7model/rnn/batch_normalization_31/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_31/gamma*
validate_shape(*
_output_shapes	
:?
?
+model/rnn/batch_normalization_31/gamma/readIdentity&model/rnn/batch_normalization_31/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_31/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_31/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_31/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_31/beta
VariableV2*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_31/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_31/beta/AssignAssign%model/rnn/batch_normalization_31/beta7model/rnn/batch_normalization_31/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_31/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_31/beta/readIdentity%model/rnn/batch_normalization_31/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_31/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_31/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_31/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_31/moving_mean
VariableV2*?
_class5
31loc:@model/rnn/batch_normalization_31/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
3model/rnn/batch_normalization_31/moving_mean/AssignAssign,model/rnn/batch_normalization_31/moving_mean>model/rnn/batch_normalization_31/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_31/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_31/moving_mean/readIdentity,model/rnn/batch_normalization_31/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_31/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_31/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_31/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_31/moving_variance
VariableV2*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_31/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
7model/rnn/batch_normalization_31/moving_variance/AssignAssign0model/rnn/batch_normalization_31/moving_varianceAmodel/rnn/batch_normalization_31/moving_variance/Initializer/ones*
T0*C
_class9
75loc:@model/rnn/batch_normalization_31/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
5model/rnn/batch_normalization_31/moving_variance/readIdentity0model/rnn/batch_normalization_31/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_31/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_31/FusedBatchNormFusedBatchNormmodel/rnn/Add_30+model/rnn/batch_normalization_31/gamma/read*model/rnn/batch_normalization_31/beta/read1model/rnn/batch_normalization_31/moving_mean/read5model/rnn/batch_normalization_31/moving_variance/read*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?*
epsilon%o?:
k
&model/rnn/batch_normalization_31/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
q
 model/rnn/RB1_a_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_10/Conv2DConv2D/model/rnn/batch_normalization_31/FusedBatchNormmodel/rnn/RB1_a/kernel/read*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
model/rnn/RB1_a_10/BiasAddBiasAddmodel/rnn/RB1_a_10/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_32/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_32/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_32/gamma
VariableV2*9
_class/
-+loc:@model/rnn/batch_normalization_32/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
-model/rnn/batch_normalization_32/gamma/AssignAssign&model/rnn/batch_normalization_32/gamma7model/rnn/batch_normalization_32/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_32/gamma*
validate_shape(*
_output_shapes	
:?
?
+model/rnn/batch_normalization_32/gamma/readIdentity&model/rnn/batch_normalization_32/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_32/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_32/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_32/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_32/beta
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_32/beta*
	container *
shape:?
?
,model/rnn/batch_normalization_32/beta/AssignAssign%model/rnn/batch_normalization_32/beta7model/rnn/batch_normalization_32/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_32/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_32/beta/readIdentity%model/rnn/batch_normalization_32/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_32/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_32/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_32/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_32/moving_mean
VariableV2*?
_class5
31loc:@model/rnn/batch_normalization_32/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
3model/rnn/batch_normalization_32/moving_mean/AssignAssign,model/rnn/batch_normalization_32/moving_mean>model/rnn/batch_normalization_32/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_32/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_32/moving_mean/readIdentity,model/rnn/batch_normalization_32/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_32/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_32/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_32/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_32/moving_variance
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *C
_class9
75loc:@model/rnn/batch_normalization_32/moving_variance*
	container *
shape:?
?
7model/rnn/batch_normalization_32/moving_variance/AssignAssign0model/rnn/batch_normalization_32/moving_varianceAmodel/rnn/batch_normalization_32/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_32/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_32/moving_variance/readIdentity0model/rnn/batch_normalization_32/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_32/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_32/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_10/BiasAdd+model/rnn/batch_normalization_32/gamma/read*model/rnn/batch_normalization_32/beta/read1model/rnn/batch_normalization_32/moving_mean/read5model/rnn/batch_normalization_32/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_32/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_21Relu/model/rnn/batch_normalization_32/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
q
 model/rnn/RB1_b_10/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_10/Conv2DConv2Dmodel/rnn/Relu_21model/rnn/RB1_b/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/RB1_b_10/BiasAddBiasAddmodel/rnn/RB1_b_10/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_31Addmodel/rnn/RB1_b_10/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_33/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_33/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_33/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_33/gamma*
	container 
?
-model/rnn/batch_normalization_33/gamma/AssignAssign&model/rnn/batch_normalization_33/gamma7model/rnn/batch_normalization_33/gamma/Initializer/ones*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_33/gamma*
validate_shape(*
_output_shapes	
:?
?
+model/rnn/batch_normalization_33/gamma/readIdentity&model/rnn/batch_normalization_33/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_33/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_33/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_33/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_33/beta
VariableV2*8
_class.
,*loc:@model/rnn/batch_normalization_33/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
,model/rnn/batch_normalization_33/beta/AssignAssign%model/rnn/batch_normalization_33/beta7model/rnn/batch_normalization_33/beta/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_33/beta*
validate_shape(*
_output_shapes	
:?
?
*model/rnn/batch_normalization_33/beta/readIdentity%model/rnn/batch_normalization_33/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_33/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_33/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_33/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_33/moving_mean
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_33/moving_mean*
	container 
?
3model/rnn/batch_normalization_33/moving_mean/AssignAssign,model/rnn/batch_normalization_33/moving_mean>model/rnn/batch_normalization_33/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_33/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_33/moving_mean/readIdentity,model/rnn/batch_normalization_33/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_33/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_33/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_33/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_33/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_33/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_33/moving_variance/AssignAssign0model/rnn/batch_normalization_33/moving_varianceAmodel/rnn/batch_normalization_33/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_33/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_33/moving_variance/readIdentity0model/rnn/batch_normalization_33/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_33/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_33/FusedBatchNormFusedBatchNormmodel/rnn/Add_31+model/rnn/batch_normalization_33/gamma/read*model/rnn/batch_normalization_33/beta/read1model/rnn/batch_normalization_33/moving_mean/read5model/rnn/batch_normalization_33/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_33/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_22Relu/model/rnn/batch_normalization_33/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
{
*model/rnn/non_local_theta_11/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
#model/rnn/non_local_theta_11/Conv2DConv2Dmodel/rnn/Relu_22%model/rnn/non_local_theta/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????@
?
$model/rnn/non_local_theta_11/BiasAddBiasAdd#model/rnn/non_local_theta_11/Conv2D#model/rnn/non_local_theta/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
y
(model/rnn/non_local_phi_11/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
!model/rnn/non_local_phi_11/Conv2DConv2Dmodel/rnn/Relu_22#model/rnn/non_local_phi/kernel/read*A
_output_shapes/
-:+???????????????????????????@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
"model/rnn/non_local_phi_11/BiasAddBiasAdd!model/rnn/non_local_phi_11/Conv2D!model/rnn/non_local_phi/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????@
w
&model/rnn/non_local_g_11/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/non_local_g_11/Conv2DConv2Dmodel/rnn/Relu_22!model/rnn/non_local_g/kernel/read*
paddingSAME*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
 model/rnn/non_local_g_11/BiasAddBiasAddmodel/rnn/non_local_g_11/Conv2Dmodel/rnn/non_local_g/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
w
model/rnn/Shape_187Shape$model/rnn/non_local_theta_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_165/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_165/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_165/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_165StridedSlicemodel/rnn/Shape_187!model/rnn/strided_slice_165/stack#model/rnn/strided_slice_165/stack_1#model/rnn/strided_slice_165/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
w
model/rnn/Shape_188Shape$model/rnn/non_local_theta_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_166/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_166/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_166/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_166StridedSlicemodel/rnn/Shape_188!model/rnn/strided_slice_166/stack#model/rnn/strided_slice_166/stack_1#model/rnn/strided_slice_166/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
w
model/rnn/Shape_189Shape$model/rnn/non_local_theta_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_167/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_167/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_167/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_167StridedSlicemodel/rnn/Shape_189!model/rnn/strided_slice_167/stack#model/rnn/strided_slice_167/stack_1#model/rnn/strided_slice_167/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
r
model/rnn/mul_33Mulmodel/rnn/strided_slice_166model/rnn/strided_slice_167*
T0*
_output_shapes
: 
w
model/rnn/Shape_190Shape$model/rnn/non_local_theta_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_168/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_168/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_168/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_168StridedSlicemodel/rnn/Shape_190!model/rnn/strided_slice_168/stack#model/rnn/strided_slice_168/stack_1#model/rnn/strided_slice_168/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_66/shapePackmodel/rnn/strided_slice_165model/rnn/mul_33model/rnn/strided_slice_168*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_66Reshape$model/rnn/non_local_theta_11/BiasAddmodel/rnn/Reshape_66/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
u
model/rnn/Shape_191Shape"model/rnn/non_local_phi_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_169/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_169/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_169/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_169StridedSlicemodel/rnn/Shape_191!model/rnn/strided_slice_169/stack#model/rnn/strided_slice_169/stack_1#model/rnn/strided_slice_169/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
model/rnn/Shape_192Shape"model/rnn/non_local_phi_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_170/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_170/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_170/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_170StridedSlicemodel/rnn/Shape_192!model/rnn/strided_slice_170/stack#model/rnn/strided_slice_170/stack_1#model/rnn/strided_slice_170/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
u
model/rnn/Shape_193Shape"model/rnn/non_local_phi_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_171/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_171/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_171/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_171StridedSlicemodel/rnn/Shape_193!model/rnn/strided_slice_171/stack#model/rnn/strided_slice_171/stack_1#model/rnn/strided_slice_171/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
model/rnn/mul_34Mulmodel/rnn/strided_slice_170model/rnn/strided_slice_171*
T0*
_output_shapes
: 
u
model/rnn/Shape_194Shape"model/rnn/non_local_phi_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_172/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_172/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_172/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_172StridedSlicemodel/rnn/Shape_194!model/rnn/strided_slice_172/stack#model/rnn/strided_slice_172/stack_1#model/rnn/strided_slice_172/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_67/shapePackmodel/rnn/strided_slice_169model/rnn/mul_34model/rnn/strided_slice_172*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_67Reshape"model/rnn/non_local_phi_11/BiasAddmodel/rnn/Reshape_67/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
p
model/rnn/transpose_11/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
model/rnn/transpose_11	Transposemodel/rnn/Reshape_67model/rnn/transpose_11/perm*
T0*=
_output_shapes+
):'???????????????????????????*
Tperm0
?
model/rnn/MatMul_22BatchMatMulmodel/rnn/Reshape_66model/rnn/transpose_11*
T0*=
_output_shapes+
):'???????????????????????????*
adj_x( *
adj_y( 
?
model/rnn/add_32Addmodel/rnn/MatMul_22model/rnn/add_29*
T0*=
_output_shapes+
):'???????????????????????????
c
model/rnn/Shape_195Shapemodel/rnn/add_32*
T0*
out_type0*
_output_shapes
:
S
model/rnn/Rank_11Const*
value	B :*
dtype0*
_output_shapes
: 
c
model/rnn/Shape_196Shapemodel/rnn/add_32*
T0*
out_type0*
_output_shapes
:
T
model/rnn/Sub_11/yConst*
value	B :*
dtype0*
_output_shapes
: 
_
model/rnn/Sub_11Submodel/rnn/Rank_11model/rnn/Sub_11/y*
T0*
_output_shapes
: 
l
model/rnn/Slice_11/beginPackmodel/rnn/Sub_11*
T0*

axis *
N*
_output_shapes
:
a
model/rnn/Slice_11/sizeConst*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/Slice_11Slicemodel/rnn/Shape_196model/rnn/Slice_11/beginmodel/rnn/Slice_11/size*
T0*
Index0*
_output_shapes
:
o
model/rnn/concat_11/values_0Const*
valueB:
?????????*
dtype0*
_output_shapes
:
Z
model/rnn/concat_11/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
model/rnn/concat_11ConcatV2model/rnn/concat_11/values_0model/rnn/Slice_11model/rnn/concat_11/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
model/rnn/Reshape_68Reshapemodel/rnn/add_32model/rnn/concat_11*
T0*
Tshape0*0
_output_shapes
:??????????????????
p
model/rnn/Softmax_11Softmaxmodel/rnn/Reshape_68*
T0*0
_output_shapes
:??????????????????
?
model/rnn/Reshape_69Reshapemodel/rnn/Softmax_11model/rnn/Shape_195*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
s
model/rnn/Shape_197Shape model/rnn/non_local_g_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_173/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_173/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_173/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_173StridedSlicemodel/rnn/Shape_197!model/rnn/strided_slice_173/stack#model/rnn/strided_slice_173/stack_1#model/rnn/strided_slice_173/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
s
model/rnn/Shape_198Shape model/rnn/non_local_g_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_174/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_174/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_174/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_174StridedSlicemodel/rnn/Shape_198!model/rnn/strided_slice_174/stack#model/rnn/strided_slice_174/stack_1#model/rnn/strided_slice_174/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
model/rnn/Shape_199Shape model/rnn/non_local_g_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_175/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_175/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_175/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_175StridedSlicemodel/rnn/Shape_199!model/rnn/strided_slice_175/stack#model/rnn/strided_slice_175/stack_1#model/rnn/strided_slice_175/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
r
model/rnn/mul_35Mulmodel/rnn/strided_slice_174model/rnn/strided_slice_175*
T0*
_output_shapes
: 
s
model/rnn/Shape_200Shape model/rnn/non_local_g_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_176/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_176/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_176/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_176StridedSlicemodel/rnn/Shape_200!model/rnn/strided_slice_176/stack#model/rnn/strided_slice_176/stack_1#model/rnn/strided_slice_176/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
model/rnn/Reshape_70/shapePackmodel/rnn/strided_slice_173model/rnn/mul_35model/rnn/strided_slice_176*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_70Reshape model/rnn/non_local_g_11/BiasAddmodel/rnn/Reshape_70/shape*
T0*
Tshape0*=
_output_shapes+
):'???????????????????????????
?
model/rnn/MatMul_23BatchMatMulmodel/rnn/Reshape_69model/rnn/Reshape_70*
adj_x( *
adj_y( *
T0*=
_output_shapes+
):'???????????????????????????
f
model/rnn/Shape_201Shapemodel/rnn/MatMul_23*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_177/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_177/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_177/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_177StridedSlicemodel/rnn/Shape_201!model/rnn/strided_slice_177/stack#model/rnn/strided_slice_177/stack_1#model/rnn/strided_slice_177/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
u
model/rnn/Shape_202Shape"model/rnn/non_local_phi_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_178/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_178/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_178/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_178StridedSlicemodel/rnn/Shape_202!model/rnn/strided_slice_178/stack#model/rnn/strided_slice_178/stack_1#model/rnn/strided_slice_178/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
u
model/rnn/Shape_203Shape"model/rnn/non_local_phi_11/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
!model/rnn/strided_slice_179/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_179/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#model/rnn/strided_slice_179/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
model/rnn/strided_slice_179StridedSlicemodel/rnn/Shape_203!model/rnn/strided_slice_179/stack#model/rnn/strided_slice_179/stack_1#model/rnn/strided_slice_179/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
_
model/rnn/Reshape_71/shape/3Const*
value
B :?*
dtype0*
_output_shapes
: 
?
model/rnn/Reshape_71/shapePackmodel/rnn/strided_slice_177model/rnn/strided_slice_178model/rnn/strided_slice_179model/rnn/Reshape_71/shape/3*
T0*

axis *
N*
_output_shapes
:
?
model/rnn/Reshape_71Reshapemodel/rnn/MatMul_23model/rnn/Reshape_71/shape*
T0*
Tshape0*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_33Addmodel/rnn/Relu_22model/rnn/Reshape_71*
T0*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_34/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_34/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_34/gamma
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *9
_class/
-+loc:@model/rnn/batch_normalization_34/gamma*
	container 
?
-model/rnn/batch_normalization_34/gamma/AssignAssign&model/rnn/batch_normalization_34/gamma7model/rnn/batch_normalization_34/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_34/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_34/gamma/readIdentity&model/rnn/batch_normalization_34/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_34/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_34/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_34/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_34/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *8
_class.
,*loc:@model/rnn/batch_normalization_34/beta*
	container 
?
,model/rnn/batch_normalization_34/beta/AssignAssign%model/rnn/batch_normalization_34/beta7model/rnn/batch_normalization_34/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_34/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_34/beta/readIdentity%model/rnn/batch_normalization_34/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_34/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_34/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_34/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_34/moving_mean
VariableV2*
shared_name *?
_class5
31loc:@model/rnn/batch_normalization_34/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
3model/rnn/batch_normalization_34/moving_mean/AssignAssign,model/rnn/batch_normalization_34/moving_mean>model/rnn/batch_normalization_34/moving_mean/Initializer/zeros*
T0*?
_class5
31loc:@model/rnn/batch_normalization_34/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
1model/rnn/batch_normalization_34/moving_mean/readIdentity,model/rnn/batch_normalization_34/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_34/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_34/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_34/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_34/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_34/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_34/moving_variance/AssignAssign0model/rnn/batch_normalization_34/moving_varianceAmodel/rnn/batch_normalization_34/moving_variance/Initializer/ones*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_34/moving_variance*
validate_shape(*
_output_shapes	
:?
?
5model/rnn/batch_normalization_34/moving_variance/readIdentity0model/rnn/batch_normalization_34/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_34/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_34/FusedBatchNormFusedBatchNormmodel/rnn/Add_33+model/rnn/batch_normalization_34/gamma/read*model/rnn/batch_normalization_34/beta/read1model/rnn/batch_normalization_34/moving_mean/read5model/rnn/batch_normalization_34/moving_variance/read*
epsilon%o?:*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?
k
&model/rnn/batch_normalization_34/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
q
 model/rnn/RB1_a_11/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_a_11/Conv2DConv2D/model/rnn/batch_normalization_34/FusedBatchNormmodel/rnn/RB1_a/kernel/read*B
_output_shapes0
.:,????????????????????????????*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
model/rnn/RB1_a_11/BiasAddBiasAddmodel/rnn/RB1_a_11/Conv2Dmodel/rnn/RB1_a/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
7model/rnn/batch_normalization_35/gamma/Initializer/onesConst*
valueB?*  ??*9
_class/
-+loc:@model/rnn/batch_normalization_35/gamma*
dtype0*
_output_shapes	
:?
?
&model/rnn/batch_normalization_35/gamma
VariableV2*9
_class/
-+loc:@model/rnn/batch_normalization_35/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
-model/rnn/batch_normalization_35/gamma/AssignAssign&model/rnn/batch_normalization_35/gamma7model/rnn/batch_normalization_35/gamma/Initializer/ones*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_35/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
+model/rnn/batch_normalization_35/gamma/readIdentity&model/rnn/batch_normalization_35/gamma*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_35/gamma*
_output_shapes	
:?
?
7model/rnn/batch_normalization_35/beta/Initializer/zerosConst*
valueB?*    *8
_class.
,*loc:@model/rnn/batch_normalization_35/beta*
dtype0*
_output_shapes	
:?
?
%model/rnn/batch_normalization_35/beta
VariableV2*8
_class.
,*loc:@model/rnn/batch_normalization_35/beta*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
,model/rnn/batch_normalization_35/beta/AssignAssign%model/rnn/batch_normalization_35/beta7model/rnn/batch_normalization_35/beta/Initializer/zeros*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_35/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
*model/rnn/batch_normalization_35/beta/readIdentity%model/rnn/batch_normalization_35/beta*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_35/beta*
_output_shapes	
:?
?
>model/rnn/batch_normalization_35/moving_mean/Initializer/zerosConst*
valueB?*    *?
_class5
31loc:@model/rnn/batch_normalization_35/moving_mean*
dtype0*
_output_shapes	
:?
?
,model/rnn/batch_normalization_35/moving_mean
VariableV2*?
_class5
31loc:@model/rnn/batch_normalization_35/moving_mean*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
3model/rnn/batch_normalization_35/moving_mean/AssignAssign,model/rnn/batch_normalization_35/moving_mean>model/rnn/batch_normalization_35/moving_mean/Initializer/zeros*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_35/moving_mean*
validate_shape(*
_output_shapes	
:?
?
1model/rnn/batch_normalization_35/moving_mean/readIdentity,model/rnn/batch_normalization_35/moving_mean*
T0*?
_class5
31loc:@model/rnn/batch_normalization_35/moving_mean*
_output_shapes	
:?
?
Amodel/rnn/batch_normalization_35/moving_variance/Initializer/onesConst*
valueB?*  ??*C
_class9
75loc:@model/rnn/batch_normalization_35/moving_variance*
dtype0*
_output_shapes	
:?
?
0model/rnn/batch_normalization_35/moving_variance
VariableV2*C
_class9
75loc:@model/rnn/batch_normalization_35/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
7model/rnn/batch_normalization_35/moving_variance/AssignAssign0model/rnn/batch_normalization_35/moving_varianceAmodel/rnn/batch_normalization_35/moving_variance/Initializer/ones*
T0*C
_class9
75loc:@model/rnn/batch_normalization_35/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
5model/rnn/batch_normalization_35/moving_variance/readIdentity0model/rnn/batch_normalization_35/moving_variance*
T0*C
_class9
75loc:@model/rnn/batch_normalization_35/moving_variance*
_output_shapes	
:?
?
/model/rnn/batch_normalization_35/FusedBatchNormFusedBatchNormmodel/rnn/RB1_a_11/BiasAdd+model/rnn/batch_normalization_35/gamma/read*model/rnn/batch_normalization_35/beta/read1model/rnn/batch_normalization_35/moving_mean/read5model/rnn/batch_normalization_35/moving_variance/read*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?*
epsilon%o?:
k
&model/rnn/batch_normalization_35/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?
model/rnn/Relu_23Relu/model/rnn/batch_normalization_35/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
q
 model/rnn/RB1_b_11/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/rnn/RB1_b_11/Conv2DConv2Dmodel/rnn/Relu_23model/rnn/RB1_b/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/RB1_b_11/BiasAddBiasAddmodel/rnn/RB1_b_11/Conv2Dmodel/rnn/RB1_b/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,????????????????????????????
?
model/rnn/Add_34Addmodel/rnn/RB1_b_11/BiasAddmodel/conv1/BiasAdd*
T0*B
_output_shapes0
.:,????????????????????????????
?
2model/batch_normalization_1/gamma/Initializer/onesConst*
valueB?*  ??*4
_class*
(&loc:@model/batch_normalization_1/gamma*
dtype0*
_output_shapes	
:?
?
!model/batch_normalization_1/gamma
VariableV2*
shared_name *4
_class*
(&loc:@model/batch_normalization_1/gamma*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
(model/batch_normalization_1/gamma/AssignAssign!model/batch_normalization_1/gamma2model/batch_normalization_1/gamma/Initializer/ones*
use_locking(*
T0*4
_class*
(&loc:@model/batch_normalization_1/gamma*
validate_shape(*
_output_shapes	
:?
?
&model/batch_normalization_1/gamma/readIdentity!model/batch_normalization_1/gamma*
T0*4
_class*
(&loc:@model/batch_normalization_1/gamma*
_output_shapes	
:?
?
2model/batch_normalization_1/beta/Initializer/zerosConst*
valueB?*    *3
_class)
'%loc:@model/batch_normalization_1/beta*
dtype0*
_output_shapes	
:?
?
 model/batch_normalization_1/beta
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *3
_class)
'%loc:@model/batch_normalization_1/beta*
	container 
?
'model/batch_normalization_1/beta/AssignAssign model/batch_normalization_1/beta2model/batch_normalization_1/beta/Initializer/zeros*
T0*3
_class)
'%loc:@model/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
%model/batch_normalization_1/beta/readIdentity model/batch_normalization_1/beta*
T0*3
_class)
'%loc:@model/batch_normalization_1/beta*
_output_shapes	
:?
?
9model/batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB?*    *:
_class0
.,loc:@model/batch_normalization_1/moving_mean*
dtype0*
_output_shapes	
:?
?
'model/batch_normalization_1/moving_mean
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *:
_class0
.,loc:@model/batch_normalization_1/moving_mean*
	container *
shape:?
?
.model/batch_normalization_1/moving_mean/AssignAssign'model/batch_normalization_1/moving_mean9model/batch_normalization_1/moving_mean/Initializer/zeros*
T0*:
_class0
.,loc:@model/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
,model/batch_normalization_1/moving_mean/readIdentity'model/batch_normalization_1/moving_mean*
T0*:
_class0
.,loc:@model/batch_normalization_1/moving_mean*
_output_shapes	
:?
?
<model/batch_normalization_1/moving_variance/Initializer/onesConst*
valueB?*  ??*>
_class4
20loc:@model/batch_normalization_1/moving_variance*
dtype0*
_output_shapes	
:?
?
+model/batch_normalization_1/moving_variance
VariableV2*>
_class4
20loc:@model/batch_normalization_1/moving_variance*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
2model/batch_normalization_1/moving_variance/AssignAssign+model/batch_normalization_1/moving_variance<model/batch_normalization_1/moving_variance/Initializer/ones*
use_locking(*
T0*>
_class4
20loc:@model/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
0model/batch_normalization_1/moving_variance/readIdentity+model/batch_normalization_1/moving_variance*
T0*>
_class4
20loc:@model/batch_normalization_1/moving_variance*
_output_shapes	
:?
?
*model/batch_normalization_1/FusedBatchNormFusedBatchNormmodel/rnn/Add_34&model/batch_normalization_1/gamma/read%model/batch_normalization_1/beta/read,model/batch_normalization_1/moving_mean/read0model/batch_normalization_1/moving_variance/read*
T0*
data_formatNHWC*
is_training( *^
_output_shapesL
J:,????????????????????????????:?:?:?:?*
epsilon%o?:
f
!model/batch_normalization_1/ConstConst*
valueB
 *?p}?*
dtype0*
_output_shapes
: 
?

model/ReluRelu*model/batch_normalization_1/FusedBatchNorm*
T0*B
_output_shapes0
.:,????????????????????????????
?
6model/conv_end/kernel/Initializer/random_uniform/shapeConst*%
valueB"      ?      *(
_class
loc:@model/conv_end/kernel*
dtype0*
_output_shapes
:
?
4model/conv_end/kernel/Initializer/random_uniform/minConst*
valueB
 *I:??*(
_class
loc:@model/conv_end/kernel*
dtype0*
_output_shapes
: 
?
4model/conv_end/kernel/Initializer/random_uniform/maxConst*
valueB
 *I:?=*(
_class
loc:@model/conv_end/kernel*
dtype0*
_output_shapes
: 
?
>model/conv_end/kernel/Initializer/random_uniform/RandomUniformRandomUniform6model/conv_end/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:?*

seed *
T0*(
_class
loc:@model/conv_end/kernel*
seed2 
?
4model/conv_end/kernel/Initializer/random_uniform/subSub4model/conv_end/kernel/Initializer/random_uniform/max4model/conv_end/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@model/conv_end/kernel*
_output_shapes
: 
?
4model/conv_end/kernel/Initializer/random_uniform/mulMul>model/conv_end/kernel/Initializer/random_uniform/RandomUniform4model/conv_end/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@model/conv_end/kernel*'
_output_shapes
:?
?
0model/conv_end/kernel/Initializer/random_uniformAdd4model/conv_end/kernel/Initializer/random_uniform/mul4model/conv_end/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@model/conv_end/kernel*'
_output_shapes
:?
?
model/conv_end/kernel
VariableV2*
shared_name *(
_class
loc:@model/conv_end/kernel*
	container *
shape:?*
dtype0*'
_output_shapes
:?
?
model/conv_end/kernel/AssignAssignmodel/conv_end/kernel0model/conv_end/kernel/Initializer/random_uniform*
T0*(
_class
loc:@model/conv_end/kernel*
validate_shape(*'
_output_shapes
:?*
use_locking(
?
model/conv_end/kernel/readIdentitymodel/conv_end/kernel*
T0*(
_class
loc:@model/conv_end/kernel*'
_output_shapes
:?
?
%model/conv_end/bias/Initializer/zerosConst*
valueB*    *&
_class
loc:@model/conv_end/bias*
dtype0*
_output_shapes
:
?
model/conv_end/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *&
_class
loc:@model/conv_end/bias*
	container 
?
model/conv_end/bias/AssignAssignmodel/conv_end/bias%model/conv_end/bias/Initializer/zeros*
T0*&
_class
loc:@model/conv_end/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
model/conv_end/bias/readIdentitymodel/conv_end/bias*
T0*&
_class
loc:@model/conv_end/bias*
_output_shapes
:
m
model/conv_end/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
?
model/conv_end/Conv2DConv2D
model/Relumodel/conv_end/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*A
_output_shapes/
-:+???????????????????????????
?
model/conv_end/BiasAddBiasAddmodel/conv_end/Conv2Dmodel/conv_end/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+???????????????????????????
P
model/div/yConst*
valueB
 *  C*
dtype0*
_output_shapes
: 
?
	model/divRealDivmodel/conv_end/BiasAddmodel/div/y*
T0*A
_output_shapes/
-:+???????????????????????????
p
	model/addAdd	model/divReshape*
T0*A
_output_shapes/
-:+???????????????????????????
b
model/clip_by_value/Minimum/yConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
model/clip_by_value/MinimumMinimum	model/addmodel/clip_by_value/Minimum/y*
T0*A
_output_shapes/
-:+???????????????????????????
Z
model/clip_by_value/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
model/clip_by_valueMaximummodel/clip_by_value/Minimummodel/clip_by_value/y*
T0*A
_output_shapes/
-:+???????????????????????????
?@
initNoOp&^model/batch_normalization/beta/Assign'^model/batch_normalization/gamma/Assign-^model/batch_normalization/moving_mean/Assign1^model/batch_normalization/moving_variance/Assign(^model/batch_normalization_1/beta/Assign)^model/batch_normalization_1/gamma/Assign/^model/batch_normalization_1/moving_mean/Assign3^model/batch_normalization_1/moving_variance/Assign^model/conv1/bias/Assign^model/conv1/kernel/Assign^model/conv_end/bias/Assign^model/conv_end/kernel/Assign^model/rnn/RB1_a/bias/Assign^model/rnn/RB1_a/kernel/Assign^model/rnn/RB1_b/bias/Assign^model/rnn/RB1_b/kernel/Assign*^model/rnn/batch_normalization/beta/Assign+^model/rnn/batch_normalization/gamma/Assign1^model/rnn/batch_normalization/moving_mean/Assign5^model/rnn/batch_normalization/moving_variance/Assign,^model/rnn/batch_normalization_1/beta/Assign-^model/rnn/batch_normalization_1/gamma/Assign3^model/rnn/batch_normalization_1/moving_mean/Assign7^model/rnn/batch_normalization_1/moving_variance/Assign-^model/rnn/batch_normalization_10/beta/Assign.^model/rnn/batch_normalization_10/gamma/Assign4^model/rnn/batch_normalization_10/moving_mean/Assign8^model/rnn/batch_normalization_10/moving_variance/Assign-^model/rnn/batch_normalization_11/beta/Assign.^model/rnn/batch_normalization_11/gamma/Assign4^model/rnn/batch_normalization_11/moving_mean/Assign8^model/rnn/batch_normalization_11/moving_variance/Assign-^model/rnn/batch_normalization_12/beta/Assign.^model/rnn/batch_normalization_12/gamma/Assign4^model/rnn/batch_normalization_12/moving_mean/Assign8^model/rnn/batch_normalization_12/moving_variance/Assign-^model/rnn/batch_normalization_13/beta/Assign.^model/rnn/batch_normalization_13/gamma/Assign4^model/rnn/batch_normalization_13/moving_mean/Assign8^model/rnn/batch_normalization_13/moving_variance/Assign-^model/rnn/batch_normalization_14/beta/Assign.^model/rnn/batch_normalization_14/gamma/Assign4^model/rnn/batch_normalization_14/moving_mean/Assign8^model/rnn/batch_normalization_14/moving_variance/Assign-^model/rnn/batch_normalization_15/beta/Assign.^model/rnn/batch_normalization_15/gamma/Assign4^model/rnn/batch_normalization_15/moving_mean/Assign8^model/rnn/batch_normalization_15/moving_variance/Assign-^model/rnn/batch_normalization_16/beta/Assign.^model/rnn/batch_normalization_16/gamma/Assign4^model/rnn/batch_normalization_16/moving_mean/Assign8^model/rnn/batch_normalization_16/moving_variance/Assign-^model/rnn/batch_normalization_17/beta/Assign.^model/rnn/batch_normalization_17/gamma/Assign4^model/rnn/batch_normalization_17/moving_mean/Assign8^model/rnn/batch_normalization_17/moving_variance/Assign-^model/rnn/batch_normalization_18/beta/Assign.^model/rnn/batch_normalization_18/gamma/Assign4^model/rnn/batch_normalization_18/moving_mean/Assign8^model/rnn/batch_normalization_18/moving_variance/Assign-^model/rnn/batch_normalization_19/beta/Assign.^model/rnn/batch_normalization_19/gamma/Assign4^model/rnn/batch_normalization_19/moving_mean/Assign8^model/rnn/batch_normalization_19/moving_variance/Assign,^model/rnn/batch_normalization_2/beta/Assign-^model/rnn/batch_normalization_2/gamma/Assign3^model/rnn/batch_normalization_2/moving_mean/Assign7^model/rnn/batch_normalization_2/moving_variance/Assign-^model/rnn/batch_normalization_20/beta/Assign.^model/rnn/batch_normalization_20/gamma/Assign4^model/rnn/batch_normalization_20/moving_mean/Assign8^model/rnn/batch_normalization_20/moving_variance/Assign-^model/rnn/batch_normalization_21/beta/Assign.^model/rnn/batch_normalization_21/gamma/Assign4^model/rnn/batch_normalization_21/moving_mean/Assign8^model/rnn/batch_normalization_21/moving_variance/Assign-^model/rnn/batch_normalization_22/beta/Assign.^model/rnn/batch_normalization_22/gamma/Assign4^model/rnn/batch_normalization_22/moving_mean/Assign8^model/rnn/batch_normalization_22/moving_variance/Assign-^model/rnn/batch_normalization_23/beta/Assign.^model/rnn/batch_normalization_23/gamma/Assign4^model/rnn/batch_normalization_23/moving_mean/Assign8^model/rnn/batch_normalization_23/moving_variance/Assign-^model/rnn/batch_normalization_24/beta/Assign.^model/rnn/batch_normalization_24/gamma/Assign4^model/rnn/batch_normalization_24/moving_mean/Assign8^model/rnn/batch_normalization_24/moving_variance/Assign-^model/rnn/batch_normalization_25/beta/Assign.^model/rnn/batch_normalization_25/gamma/Assign4^model/rnn/batch_normalization_25/moving_mean/Assign8^model/rnn/batch_normalization_25/moving_variance/Assign-^model/rnn/batch_normalization_26/beta/Assign.^model/rnn/batch_normalization_26/gamma/Assign4^model/rnn/batch_normalization_26/moving_mean/Assign8^model/rnn/batch_normalization_26/moving_variance/Assign-^model/rnn/batch_normalization_27/beta/Assign.^model/rnn/batch_normalization_27/gamma/Assign4^model/rnn/batch_normalization_27/moving_mean/Assign8^model/rnn/batch_normalization_27/moving_variance/Assign-^model/rnn/batch_normalization_28/beta/Assign.^model/rnn/batch_normalization_28/gamma/Assign4^model/rnn/batch_normalization_28/moving_mean/Assign8^model/rnn/batch_normalization_28/moving_variance/Assign-^model/rnn/batch_normalization_29/beta/Assign.^model/rnn/batch_normalization_29/gamma/Assign4^model/rnn/batch_normalization_29/moving_mean/Assign8^model/rnn/batch_normalization_29/moving_variance/Assign,^model/rnn/batch_normalization_3/beta/Assign-^model/rnn/batch_normalization_3/gamma/Assign3^model/rnn/batch_normalization_3/moving_mean/Assign7^model/rnn/batch_normalization_3/moving_variance/Assign-^model/rnn/batch_normalization_30/beta/Assign.^model/rnn/batch_normalization_30/gamma/Assign4^model/rnn/batch_normalization_30/moving_mean/Assign8^model/rnn/batch_normalization_30/moving_variance/Assign-^model/rnn/batch_normalization_31/beta/Assign.^model/rnn/batch_normalization_31/gamma/Assign4^model/rnn/batch_normalization_31/moving_mean/Assign8^model/rnn/batch_normalization_31/moving_variance/Assign-^model/rnn/batch_normalization_32/beta/Assign.^model/rnn/batch_normalization_32/gamma/Assign4^model/rnn/batch_normalization_32/moving_mean/Assign8^model/rnn/batch_normalization_32/moving_variance/Assign-^model/rnn/batch_normalization_33/beta/Assign.^model/rnn/batch_normalization_33/gamma/Assign4^model/rnn/batch_normalization_33/moving_mean/Assign8^model/rnn/batch_normalization_33/moving_variance/Assign-^model/rnn/batch_normalization_34/beta/Assign.^model/rnn/batch_normalization_34/gamma/Assign4^model/rnn/batch_normalization_34/moving_mean/Assign8^model/rnn/batch_normalization_34/moving_variance/Assign-^model/rnn/batch_normalization_35/beta/Assign.^model/rnn/batch_normalization_35/gamma/Assign4^model/rnn/batch_normalization_35/moving_mean/Assign8^model/rnn/batch_normalization_35/moving_variance/Assign,^model/rnn/batch_normalization_4/beta/Assign-^model/rnn/batch_normalization_4/gamma/Assign3^model/rnn/batch_normalization_4/moving_mean/Assign7^model/rnn/batch_normalization_4/moving_variance/Assign,^model/rnn/batch_normalization_5/beta/Assign-^model/rnn/batch_normalization_5/gamma/Assign3^model/rnn/batch_normalization_5/moving_mean/Assign7^model/rnn/batch_normalization_5/moving_variance/Assign,^model/rnn/batch_normalization_6/beta/Assign-^model/rnn/batch_normalization_6/gamma/Assign3^model/rnn/batch_normalization_6/moving_mean/Assign7^model/rnn/batch_normalization_6/moving_variance/Assign,^model/rnn/batch_normalization_7/beta/Assign-^model/rnn/batch_normalization_7/gamma/Assign3^model/rnn/batch_normalization_7/moving_mean/Assign7^model/rnn/batch_normalization_7/moving_variance/Assign,^model/rnn/batch_normalization_8/beta/Assign-^model/rnn/batch_normalization_8/gamma/Assign3^model/rnn/batch_normalization_8/moving_mean/Assign7^model/rnn/batch_normalization_8/moving_variance/Assign,^model/rnn/batch_normalization_9/beta/Assign-^model/rnn/batch_normalization_9/gamma/Assign3^model/rnn/batch_normalization_9/moving_mean/Assign7^model/rnn/batch_normalization_9/moving_variance/Assign"^model/rnn/non_local_g/bias/Assign$^model/rnn/non_local_g/kernel/Assign$^model/rnn/non_local_phi/bias/Assign&^model/rnn/non_local_phi/kernel/Assign&^model/rnn/non_local_theta/bias/Assign(^model/rnn/non_local_theta/kernel/Assign

init_1NoOp
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?6
save/SaveV2/tensor_namesConst*?6
value?6B?6?Bmodel/batch_normalization/betaBmodel/batch_normalization/gammaB%model/batch_normalization/moving_meanB)model/batch_normalization/moving_varianceB model/batch_normalization_1/betaB!model/batch_normalization_1/gammaB'model/batch_normalization_1/moving_meanB+model/batch_normalization_1/moving_varianceBmodel/conv1/biasBmodel/conv1/kernelBmodel/conv_end/biasBmodel/conv_end/kernelBmodel/rnn/RB1_a/biasBmodel/rnn/RB1_a/kernelBmodel/rnn/RB1_b/biasBmodel/rnn/RB1_b/kernelB"model/rnn/batch_normalization/betaB#model/rnn/batch_normalization/gammaB)model/rnn/batch_normalization/moving_meanB-model/rnn/batch_normalization/moving_varianceB$model/rnn/batch_normalization_1/betaB%model/rnn/batch_normalization_1/gammaB+model/rnn/batch_normalization_1/moving_meanB/model/rnn/batch_normalization_1/moving_varianceB%model/rnn/batch_normalization_10/betaB&model/rnn/batch_normalization_10/gammaB,model/rnn/batch_normalization_10/moving_meanB0model/rnn/batch_normalization_10/moving_varianceB%model/rnn/batch_normalization_11/betaB&model/rnn/batch_normalization_11/gammaB,model/rnn/batch_normalization_11/moving_meanB0model/rnn/batch_normalization_11/moving_varianceB%model/rnn/batch_normalization_12/betaB&model/rnn/batch_normalization_12/gammaB,model/rnn/batch_normalization_12/moving_meanB0model/rnn/batch_normalization_12/moving_varianceB%model/rnn/batch_normalization_13/betaB&model/rnn/batch_normalization_13/gammaB,model/rnn/batch_normalization_13/moving_meanB0model/rnn/batch_normalization_13/moving_varianceB%model/rnn/batch_normalization_14/betaB&model/rnn/batch_normalization_14/gammaB,model/rnn/batch_normalization_14/moving_meanB0model/rnn/batch_normalization_14/moving_varianceB%model/rnn/batch_normalization_15/betaB&model/rnn/batch_normalization_15/gammaB,model/rnn/batch_normalization_15/moving_meanB0model/rnn/batch_normalization_15/moving_varianceB%model/rnn/batch_normalization_16/betaB&model/rnn/batch_normalization_16/gammaB,model/rnn/batch_normalization_16/moving_meanB0model/rnn/batch_normalization_16/moving_varianceB%model/rnn/batch_normalization_17/betaB&model/rnn/batch_normalization_17/gammaB,model/rnn/batch_normalization_17/moving_meanB0model/rnn/batch_normalization_17/moving_varianceB%model/rnn/batch_normalization_18/betaB&model/rnn/batch_normalization_18/gammaB,model/rnn/batch_normalization_18/moving_meanB0model/rnn/batch_normalization_18/moving_varianceB%model/rnn/batch_normalization_19/betaB&model/rnn/batch_normalization_19/gammaB,model/rnn/batch_normalization_19/moving_meanB0model/rnn/batch_normalization_19/moving_varianceB$model/rnn/batch_normalization_2/betaB%model/rnn/batch_normalization_2/gammaB+model/rnn/batch_normalization_2/moving_meanB/model/rnn/batch_normalization_2/moving_varianceB%model/rnn/batch_normalization_20/betaB&model/rnn/batch_normalization_20/gammaB,model/rnn/batch_normalization_20/moving_meanB0model/rnn/batch_normalization_20/moving_varianceB%model/rnn/batch_normalization_21/betaB&model/rnn/batch_normalization_21/gammaB,model/rnn/batch_normalization_21/moving_meanB0model/rnn/batch_normalization_21/moving_varianceB%model/rnn/batch_normalization_22/betaB&model/rnn/batch_normalization_22/gammaB,model/rnn/batch_normalization_22/moving_meanB0model/rnn/batch_normalization_22/moving_varianceB%model/rnn/batch_normalization_23/betaB&model/rnn/batch_normalization_23/gammaB,model/rnn/batch_normalization_23/moving_meanB0model/rnn/batch_normalization_23/moving_varianceB%model/rnn/batch_normalization_24/betaB&model/rnn/batch_normalization_24/gammaB,model/rnn/batch_normalization_24/moving_meanB0model/rnn/batch_normalization_24/moving_varianceB%model/rnn/batch_normalization_25/betaB&model/rnn/batch_normalization_25/gammaB,model/rnn/batch_normalization_25/moving_meanB0model/rnn/batch_normalization_25/moving_varianceB%model/rnn/batch_normalization_26/betaB&model/rnn/batch_normalization_26/gammaB,model/rnn/batch_normalization_26/moving_meanB0model/rnn/batch_normalization_26/moving_varianceB%model/rnn/batch_normalization_27/betaB&model/rnn/batch_normalization_27/gammaB,model/rnn/batch_normalization_27/moving_meanB0model/rnn/batch_normalization_27/moving_varianceB%model/rnn/batch_normalization_28/betaB&model/rnn/batch_normalization_28/gammaB,model/rnn/batch_normalization_28/moving_meanB0model/rnn/batch_normalization_28/moving_varianceB%model/rnn/batch_normalization_29/betaB&model/rnn/batch_normalization_29/gammaB,model/rnn/batch_normalization_29/moving_meanB0model/rnn/batch_normalization_29/moving_varianceB$model/rnn/batch_normalization_3/betaB%model/rnn/batch_normalization_3/gammaB+model/rnn/batch_normalization_3/moving_meanB/model/rnn/batch_normalization_3/moving_varianceB%model/rnn/batch_normalization_30/betaB&model/rnn/batch_normalization_30/gammaB,model/rnn/batch_normalization_30/moving_meanB0model/rnn/batch_normalization_30/moving_varianceB%model/rnn/batch_normalization_31/betaB&model/rnn/batch_normalization_31/gammaB,model/rnn/batch_normalization_31/moving_meanB0model/rnn/batch_normalization_31/moving_varianceB%model/rnn/batch_normalization_32/betaB&model/rnn/batch_normalization_32/gammaB,model/rnn/batch_normalization_32/moving_meanB0model/rnn/batch_normalization_32/moving_varianceB%model/rnn/batch_normalization_33/betaB&model/rnn/batch_normalization_33/gammaB,model/rnn/batch_normalization_33/moving_meanB0model/rnn/batch_normalization_33/moving_varianceB%model/rnn/batch_normalization_34/betaB&model/rnn/batch_normalization_34/gammaB,model/rnn/batch_normalization_34/moving_meanB0model/rnn/batch_normalization_34/moving_varianceB%model/rnn/batch_normalization_35/betaB&model/rnn/batch_normalization_35/gammaB,model/rnn/batch_normalization_35/moving_meanB0model/rnn/batch_normalization_35/moving_varianceB$model/rnn/batch_normalization_4/betaB%model/rnn/batch_normalization_4/gammaB+model/rnn/batch_normalization_4/moving_meanB/model/rnn/batch_normalization_4/moving_varianceB$model/rnn/batch_normalization_5/betaB%model/rnn/batch_normalization_5/gammaB+model/rnn/batch_normalization_5/moving_meanB/model/rnn/batch_normalization_5/moving_varianceB$model/rnn/batch_normalization_6/betaB%model/rnn/batch_normalization_6/gammaB+model/rnn/batch_normalization_6/moving_meanB/model/rnn/batch_normalization_6/moving_varianceB$model/rnn/batch_normalization_7/betaB%model/rnn/batch_normalization_7/gammaB+model/rnn/batch_normalization_7/moving_meanB/model/rnn/batch_normalization_7/moving_varianceB$model/rnn/batch_normalization_8/betaB%model/rnn/batch_normalization_8/gammaB+model/rnn/batch_normalization_8/moving_meanB/model/rnn/batch_normalization_8/moving_varianceB$model/rnn/batch_normalization_9/betaB%model/rnn/batch_normalization_9/gammaB+model/rnn/batch_normalization_9/moving_meanB/model/rnn/batch_normalization_9/moving_varianceBmodel/rnn/non_local_g/biasBmodel/rnn/non_local_g/kernelBmodel/rnn/non_local_phi/biasBmodel/rnn/non_local_phi/kernelBmodel/rnn/non_local_theta/biasB model/rnn/non_local_theta/kernel*
dtype0*
_output_shapes	
:?
?
save/SaveV2/shape_and_slicesConst*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:?
?8
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesmodel/batch_normalization/betamodel/batch_normalization/gamma%model/batch_normalization/moving_mean)model/batch_normalization/moving_variance model/batch_normalization_1/beta!model/batch_normalization_1/gamma'model/batch_normalization_1/moving_mean+model/batch_normalization_1/moving_variancemodel/conv1/biasmodel/conv1/kernelmodel/conv_end/biasmodel/conv_end/kernelmodel/rnn/RB1_a/biasmodel/rnn/RB1_a/kernelmodel/rnn/RB1_b/biasmodel/rnn/RB1_b/kernel"model/rnn/batch_normalization/beta#model/rnn/batch_normalization/gamma)model/rnn/batch_normalization/moving_mean-model/rnn/batch_normalization/moving_variance$model/rnn/batch_normalization_1/beta%model/rnn/batch_normalization_1/gamma+model/rnn/batch_normalization_1/moving_mean/model/rnn/batch_normalization_1/moving_variance%model/rnn/batch_normalization_10/beta&model/rnn/batch_normalization_10/gamma,model/rnn/batch_normalization_10/moving_mean0model/rnn/batch_normalization_10/moving_variance%model/rnn/batch_normalization_11/beta&model/rnn/batch_normalization_11/gamma,model/rnn/batch_normalization_11/moving_mean0model/rnn/batch_normalization_11/moving_variance%model/rnn/batch_normalization_12/beta&model/rnn/batch_normalization_12/gamma,model/rnn/batch_normalization_12/moving_mean0model/rnn/batch_normalization_12/moving_variance%model/rnn/batch_normalization_13/beta&model/rnn/batch_normalization_13/gamma,model/rnn/batch_normalization_13/moving_mean0model/rnn/batch_normalization_13/moving_variance%model/rnn/batch_normalization_14/beta&model/rnn/batch_normalization_14/gamma,model/rnn/batch_normalization_14/moving_mean0model/rnn/batch_normalization_14/moving_variance%model/rnn/batch_normalization_15/beta&model/rnn/batch_normalization_15/gamma,model/rnn/batch_normalization_15/moving_mean0model/rnn/batch_normalization_15/moving_variance%model/rnn/batch_normalization_16/beta&model/rnn/batch_normalization_16/gamma,model/rnn/batch_normalization_16/moving_mean0model/rnn/batch_normalization_16/moving_variance%model/rnn/batch_normalization_17/beta&model/rnn/batch_normalization_17/gamma,model/rnn/batch_normalization_17/moving_mean0model/rnn/batch_normalization_17/moving_variance%model/rnn/batch_normalization_18/beta&model/rnn/batch_normalization_18/gamma,model/rnn/batch_normalization_18/moving_mean0model/rnn/batch_normalization_18/moving_variance%model/rnn/batch_normalization_19/beta&model/rnn/batch_normalization_19/gamma,model/rnn/batch_normalization_19/moving_mean0model/rnn/batch_normalization_19/moving_variance$model/rnn/batch_normalization_2/beta%model/rnn/batch_normalization_2/gamma+model/rnn/batch_normalization_2/moving_mean/model/rnn/batch_normalization_2/moving_variance%model/rnn/batch_normalization_20/beta&model/rnn/batch_normalization_20/gamma,model/rnn/batch_normalization_20/moving_mean0model/rnn/batch_normalization_20/moving_variance%model/rnn/batch_normalization_21/beta&model/rnn/batch_normalization_21/gamma,model/rnn/batch_normalization_21/moving_mean0model/rnn/batch_normalization_21/moving_variance%model/rnn/batch_normalization_22/beta&model/rnn/batch_normalization_22/gamma,model/rnn/batch_normalization_22/moving_mean0model/rnn/batch_normalization_22/moving_variance%model/rnn/batch_normalization_23/beta&model/rnn/batch_normalization_23/gamma,model/rnn/batch_normalization_23/moving_mean0model/rnn/batch_normalization_23/moving_variance%model/rnn/batch_normalization_24/beta&model/rnn/batch_normalization_24/gamma,model/rnn/batch_normalization_24/moving_mean0model/rnn/batch_normalization_24/moving_variance%model/rnn/batch_normalization_25/beta&model/rnn/batch_normalization_25/gamma,model/rnn/batch_normalization_25/moving_mean0model/rnn/batch_normalization_25/moving_variance%model/rnn/batch_normalization_26/beta&model/rnn/batch_normalization_26/gamma,model/rnn/batch_normalization_26/moving_mean0model/rnn/batch_normalization_26/moving_variance%model/rnn/batch_normalization_27/beta&model/rnn/batch_normalization_27/gamma,model/rnn/batch_normalization_27/moving_mean0model/rnn/batch_normalization_27/moving_variance%model/rnn/batch_normalization_28/beta&model/rnn/batch_normalization_28/gamma,model/rnn/batch_normalization_28/moving_mean0model/rnn/batch_normalization_28/moving_variance%model/rnn/batch_normalization_29/beta&model/rnn/batch_normalization_29/gamma,model/rnn/batch_normalization_29/moving_mean0model/rnn/batch_normalization_29/moving_variance$model/rnn/batch_normalization_3/beta%model/rnn/batch_normalization_3/gamma+model/rnn/batch_normalization_3/moving_mean/model/rnn/batch_normalization_3/moving_variance%model/rnn/batch_normalization_30/beta&model/rnn/batch_normalization_30/gamma,model/rnn/batch_normalization_30/moving_mean0model/rnn/batch_normalization_30/moving_variance%model/rnn/batch_normalization_31/beta&model/rnn/batch_normalization_31/gamma,model/rnn/batch_normalization_31/moving_mean0model/rnn/batch_normalization_31/moving_variance%model/rnn/batch_normalization_32/beta&model/rnn/batch_normalization_32/gamma,model/rnn/batch_normalization_32/moving_mean0model/rnn/batch_normalization_32/moving_variance%model/rnn/batch_normalization_33/beta&model/rnn/batch_normalization_33/gamma,model/rnn/batch_normalization_33/moving_mean0model/rnn/batch_normalization_33/moving_variance%model/rnn/batch_normalization_34/beta&model/rnn/batch_normalization_34/gamma,model/rnn/batch_normalization_34/moving_mean0model/rnn/batch_normalization_34/moving_variance%model/rnn/batch_normalization_35/beta&model/rnn/batch_normalization_35/gamma,model/rnn/batch_normalization_35/moving_mean0model/rnn/batch_normalization_35/moving_variance$model/rnn/batch_normalization_4/beta%model/rnn/batch_normalization_4/gamma+model/rnn/batch_normalization_4/moving_mean/model/rnn/batch_normalization_4/moving_variance$model/rnn/batch_normalization_5/beta%model/rnn/batch_normalization_5/gamma+model/rnn/batch_normalization_5/moving_mean/model/rnn/batch_normalization_5/moving_variance$model/rnn/batch_normalization_6/beta%model/rnn/batch_normalization_6/gamma+model/rnn/batch_normalization_6/moving_mean/model/rnn/batch_normalization_6/moving_variance$model/rnn/batch_normalization_7/beta%model/rnn/batch_normalization_7/gamma+model/rnn/batch_normalization_7/moving_mean/model/rnn/batch_normalization_7/moving_variance$model/rnn/batch_normalization_8/beta%model/rnn/batch_normalization_8/gamma+model/rnn/batch_normalization_8/moving_mean/model/rnn/batch_normalization_8/moving_variance$model/rnn/batch_normalization_9/beta%model/rnn/batch_normalization_9/gamma+model/rnn/batch_normalization_9/moving_mean/model/rnn/batch_normalization_9/moving_variancemodel/rnn/non_local_g/biasmodel/rnn/non_local_g/kernelmodel/rnn/non_local_phi/biasmodel/rnn/non_local_phi/kernelmodel/rnn/non_local_theta/bias model/rnn/non_local_theta/kernel*?
dtypes?
?2?
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?6
save/RestoreV2/tensor_namesConst*?6
value?6B?6?Bmodel/batch_normalization/betaBmodel/batch_normalization/gammaB%model/batch_normalization/moving_meanB)model/batch_normalization/moving_varianceB model/batch_normalization_1/betaB!model/batch_normalization_1/gammaB'model/batch_normalization_1/moving_meanB+model/batch_normalization_1/moving_varianceBmodel/conv1/biasBmodel/conv1/kernelBmodel/conv_end/biasBmodel/conv_end/kernelBmodel/rnn/RB1_a/biasBmodel/rnn/RB1_a/kernelBmodel/rnn/RB1_b/biasBmodel/rnn/RB1_b/kernelB"model/rnn/batch_normalization/betaB#model/rnn/batch_normalization/gammaB)model/rnn/batch_normalization/moving_meanB-model/rnn/batch_normalization/moving_varianceB$model/rnn/batch_normalization_1/betaB%model/rnn/batch_normalization_1/gammaB+model/rnn/batch_normalization_1/moving_meanB/model/rnn/batch_normalization_1/moving_varianceB%model/rnn/batch_normalization_10/betaB&model/rnn/batch_normalization_10/gammaB,model/rnn/batch_normalization_10/moving_meanB0model/rnn/batch_normalization_10/moving_varianceB%model/rnn/batch_normalization_11/betaB&model/rnn/batch_normalization_11/gammaB,model/rnn/batch_normalization_11/moving_meanB0model/rnn/batch_normalization_11/moving_varianceB%model/rnn/batch_normalization_12/betaB&model/rnn/batch_normalization_12/gammaB,model/rnn/batch_normalization_12/moving_meanB0model/rnn/batch_normalization_12/moving_varianceB%model/rnn/batch_normalization_13/betaB&model/rnn/batch_normalization_13/gammaB,model/rnn/batch_normalization_13/moving_meanB0model/rnn/batch_normalization_13/moving_varianceB%model/rnn/batch_normalization_14/betaB&model/rnn/batch_normalization_14/gammaB,model/rnn/batch_normalization_14/moving_meanB0model/rnn/batch_normalization_14/moving_varianceB%model/rnn/batch_normalization_15/betaB&model/rnn/batch_normalization_15/gammaB,model/rnn/batch_normalization_15/moving_meanB0model/rnn/batch_normalization_15/moving_varianceB%model/rnn/batch_normalization_16/betaB&model/rnn/batch_normalization_16/gammaB,model/rnn/batch_normalization_16/moving_meanB0model/rnn/batch_normalization_16/moving_varianceB%model/rnn/batch_normalization_17/betaB&model/rnn/batch_normalization_17/gammaB,model/rnn/batch_normalization_17/moving_meanB0model/rnn/batch_normalization_17/moving_varianceB%model/rnn/batch_normalization_18/betaB&model/rnn/batch_normalization_18/gammaB,model/rnn/batch_normalization_18/moving_meanB0model/rnn/batch_normalization_18/moving_varianceB%model/rnn/batch_normalization_19/betaB&model/rnn/batch_normalization_19/gammaB,model/rnn/batch_normalization_19/moving_meanB0model/rnn/batch_normalization_19/moving_varianceB$model/rnn/batch_normalization_2/betaB%model/rnn/batch_normalization_2/gammaB+model/rnn/batch_normalization_2/moving_meanB/model/rnn/batch_normalization_2/moving_varianceB%model/rnn/batch_normalization_20/betaB&model/rnn/batch_normalization_20/gammaB,model/rnn/batch_normalization_20/moving_meanB0model/rnn/batch_normalization_20/moving_varianceB%model/rnn/batch_normalization_21/betaB&model/rnn/batch_normalization_21/gammaB,model/rnn/batch_normalization_21/moving_meanB0model/rnn/batch_normalization_21/moving_varianceB%model/rnn/batch_normalization_22/betaB&model/rnn/batch_normalization_22/gammaB,model/rnn/batch_normalization_22/moving_meanB0model/rnn/batch_normalization_22/moving_varianceB%model/rnn/batch_normalization_23/betaB&model/rnn/batch_normalization_23/gammaB,model/rnn/batch_normalization_23/moving_meanB0model/rnn/batch_normalization_23/moving_varianceB%model/rnn/batch_normalization_24/betaB&model/rnn/batch_normalization_24/gammaB,model/rnn/batch_normalization_24/moving_meanB0model/rnn/batch_normalization_24/moving_varianceB%model/rnn/batch_normalization_25/betaB&model/rnn/batch_normalization_25/gammaB,model/rnn/batch_normalization_25/moving_meanB0model/rnn/batch_normalization_25/moving_varianceB%model/rnn/batch_normalization_26/betaB&model/rnn/batch_normalization_26/gammaB,model/rnn/batch_normalization_26/moving_meanB0model/rnn/batch_normalization_26/moving_varianceB%model/rnn/batch_normalization_27/betaB&model/rnn/batch_normalization_27/gammaB,model/rnn/batch_normalization_27/moving_meanB0model/rnn/batch_normalization_27/moving_varianceB%model/rnn/batch_normalization_28/betaB&model/rnn/batch_normalization_28/gammaB,model/rnn/batch_normalization_28/moving_meanB0model/rnn/batch_normalization_28/moving_varianceB%model/rnn/batch_normalization_29/betaB&model/rnn/batch_normalization_29/gammaB,model/rnn/batch_normalization_29/moving_meanB0model/rnn/batch_normalization_29/moving_varianceB$model/rnn/batch_normalization_3/betaB%model/rnn/batch_normalization_3/gammaB+model/rnn/batch_normalization_3/moving_meanB/model/rnn/batch_normalization_3/moving_varianceB%model/rnn/batch_normalization_30/betaB&model/rnn/batch_normalization_30/gammaB,model/rnn/batch_normalization_30/moving_meanB0model/rnn/batch_normalization_30/moving_varianceB%model/rnn/batch_normalization_31/betaB&model/rnn/batch_normalization_31/gammaB,model/rnn/batch_normalization_31/moving_meanB0model/rnn/batch_normalization_31/moving_varianceB%model/rnn/batch_normalization_32/betaB&model/rnn/batch_normalization_32/gammaB,model/rnn/batch_normalization_32/moving_meanB0model/rnn/batch_normalization_32/moving_varianceB%model/rnn/batch_normalization_33/betaB&model/rnn/batch_normalization_33/gammaB,model/rnn/batch_normalization_33/moving_meanB0model/rnn/batch_normalization_33/moving_varianceB%model/rnn/batch_normalization_34/betaB&model/rnn/batch_normalization_34/gammaB,model/rnn/batch_normalization_34/moving_meanB0model/rnn/batch_normalization_34/moving_varianceB%model/rnn/batch_normalization_35/betaB&model/rnn/batch_normalization_35/gammaB,model/rnn/batch_normalization_35/moving_meanB0model/rnn/batch_normalization_35/moving_varianceB$model/rnn/batch_normalization_4/betaB%model/rnn/batch_normalization_4/gammaB+model/rnn/batch_normalization_4/moving_meanB/model/rnn/batch_normalization_4/moving_varianceB$model/rnn/batch_normalization_5/betaB%model/rnn/batch_normalization_5/gammaB+model/rnn/batch_normalization_5/moving_meanB/model/rnn/batch_normalization_5/moving_varianceB$model/rnn/batch_normalization_6/betaB%model/rnn/batch_normalization_6/gammaB+model/rnn/batch_normalization_6/moving_meanB/model/rnn/batch_normalization_6/moving_varianceB$model/rnn/batch_normalization_7/betaB%model/rnn/batch_normalization_7/gammaB+model/rnn/batch_normalization_7/moving_meanB/model/rnn/batch_normalization_7/moving_varianceB$model/rnn/batch_normalization_8/betaB%model/rnn/batch_normalization_8/gammaB+model/rnn/batch_normalization_8/moving_meanB/model/rnn/batch_normalization_8/moving_varianceB$model/rnn/batch_normalization_9/betaB%model/rnn/batch_normalization_9/gammaB+model/rnn/batch_normalization_9/moving_meanB/model/rnn/batch_normalization_9/moving_varianceBmodel/rnn/non_local_g/biasBmodel/rnn/non_local_g/kernelBmodel/rnn/non_local_phi/biasBmodel/rnn/non_local_phi/kernelBmodel/rnn/non_local_theta/biasB model/rnn/non_local_theta/kernel*
dtype0*
_output_shapes	
:?
?
save/RestoreV2/shape_and_slicesConst*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:?
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?
?
save/AssignAssignmodel/batch_normalization/betasave/RestoreV2*
use_locking(*
T0*1
_class'
%#loc:@model/batch_normalization/beta*
validate_shape(*
_output_shapes
:
?
save/Assign_1Assignmodel/batch_normalization/gammasave/RestoreV2:1*
T0*2
_class(
&$loc:@model/batch_normalization/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
?
save/Assign_2Assign%model/batch_normalization/moving_meansave/RestoreV2:2*
T0*8
_class.
,*loc:@model/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
?
save/Assign_3Assign)model/batch_normalization/moving_variancesave/RestoreV2:3*
T0*<
_class2
0.loc:@model/batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:*
use_locking(
?
save/Assign_4Assign model/batch_normalization_1/betasave/RestoreV2:4*
use_locking(*
T0*3
_class)
'%loc:@model/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_5Assign!model/batch_normalization_1/gammasave/RestoreV2:5*
T0*4
_class*
(&loc:@model/batch_normalization_1/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_6Assign'model/batch_normalization_1/moving_meansave/RestoreV2:6*
T0*:
_class0
.,loc:@model/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_7Assign+model/batch_normalization_1/moving_variancesave/RestoreV2:7*
use_locking(*
T0*>
_class4
20loc:@model/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_8Assignmodel/conv1/biassave/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@model/conv1/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_9Assignmodel/conv1/kernelsave/RestoreV2:9*
use_locking(*
T0*%
_class
loc:@model/conv1/kernel*
validate_shape(*'
_output_shapes
:?
?
save/Assign_10Assignmodel/conv_end/biassave/RestoreV2:10*
use_locking(*
T0*&
_class
loc:@model/conv_end/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_11Assignmodel/conv_end/kernelsave/RestoreV2:11*
T0*(
_class
loc:@model/conv_end/kernel*
validate_shape(*'
_output_shapes
:?*
use_locking(
?
save/Assign_12Assignmodel/rnn/RB1_a/biassave/RestoreV2:12*
T0*'
_class
loc:@model/rnn/RB1_a/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_13Assignmodel/rnn/RB1_a/kernelsave/RestoreV2:13*
T0*)
_class
loc:@model/rnn/RB1_a/kernel*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
save/Assign_14Assignmodel/rnn/RB1_b/biassave/RestoreV2:14*
T0*'
_class
loc:@model/rnn/RB1_b/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_15Assignmodel/rnn/RB1_b/kernelsave/RestoreV2:15*
use_locking(*
T0*)
_class
loc:@model/rnn/RB1_b/kernel*
validate_shape(*(
_output_shapes
:??
?
save/Assign_16Assign"model/rnn/batch_normalization/betasave/RestoreV2:16*
use_locking(*
T0*5
_class+
)'loc:@model/rnn/batch_normalization/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_17Assign#model/rnn/batch_normalization/gammasave/RestoreV2:17*
use_locking(*
T0*6
_class,
*(loc:@model/rnn/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_18Assign)model/rnn/batch_normalization/moving_meansave/RestoreV2:18*
use_locking(*
T0*<
_class2
0.loc:@model/rnn/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_19Assign-model/rnn/batch_normalization/moving_variancesave/RestoreV2:19*
use_locking(*
T0*@
_class6
42loc:@model/rnn/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_20Assign$model/rnn/batch_normalization_1/betasave/RestoreV2:20*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_21Assign%model/rnn/batch_normalization_1/gammasave/RestoreV2:21*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_1/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_22Assign+model/rnn/batch_normalization_1/moving_meansave/RestoreV2:22*
use_locking(*
T0*>
_class4
20loc:@model/rnn/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_23Assign/model/rnn/batch_normalization_1/moving_variancesave/RestoreV2:23*
T0*B
_class8
64loc:@model/rnn/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_24Assign%model/rnn/batch_normalization_10/betasave/RestoreV2:24*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_10/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_25Assign&model/rnn/batch_normalization_10/gammasave/RestoreV2:25*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_10/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_26Assign,model/rnn/batch_normalization_10/moving_meansave/RestoreV2:26*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_10/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_27Assign0model/rnn/batch_normalization_10/moving_variancesave/RestoreV2:27*
T0*C
_class9
75loc:@model/rnn/batch_normalization_10/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_28Assign%model/rnn/batch_normalization_11/betasave/RestoreV2:28*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_11/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_29Assign&model/rnn/batch_normalization_11/gammasave/RestoreV2:29*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_11/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_30Assign,model/rnn/batch_normalization_11/moving_meansave/RestoreV2:30*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_11/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_31Assign0model/rnn/batch_normalization_11/moving_variancesave/RestoreV2:31*
T0*C
_class9
75loc:@model/rnn/batch_normalization_11/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_32Assign%model/rnn/batch_normalization_12/betasave/RestoreV2:32*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_12/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_33Assign&model/rnn/batch_normalization_12/gammasave/RestoreV2:33*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_12/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_34Assign,model/rnn/batch_normalization_12/moving_meansave/RestoreV2:34*
T0*?
_class5
31loc:@model/rnn/batch_normalization_12/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_35Assign0model/rnn/batch_normalization_12/moving_variancesave/RestoreV2:35*
T0*C
_class9
75loc:@model/rnn/batch_normalization_12/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_36Assign%model/rnn/batch_normalization_13/betasave/RestoreV2:36*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_13/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_37Assign&model/rnn/batch_normalization_13/gammasave/RestoreV2:37*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_13/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_38Assign,model/rnn/batch_normalization_13/moving_meansave/RestoreV2:38*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_13/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_39Assign0model/rnn/batch_normalization_13/moving_variancesave/RestoreV2:39*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_13/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_40Assign%model/rnn/batch_normalization_14/betasave/RestoreV2:40*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_14/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_41Assign&model/rnn/batch_normalization_14/gammasave/RestoreV2:41*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_14/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_42Assign,model/rnn/batch_normalization_14/moving_meansave/RestoreV2:42*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_14/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_43Assign0model/rnn/batch_normalization_14/moving_variancesave/RestoreV2:43*
T0*C
_class9
75loc:@model/rnn/batch_normalization_14/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_44Assign%model/rnn/batch_normalization_15/betasave/RestoreV2:44*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_15/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_45Assign&model/rnn/batch_normalization_15/gammasave/RestoreV2:45*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_15/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_46Assign,model/rnn/batch_normalization_15/moving_meansave/RestoreV2:46*
T0*?
_class5
31loc:@model/rnn/batch_normalization_15/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_47Assign0model/rnn/batch_normalization_15/moving_variancesave/RestoreV2:47*
T0*C
_class9
75loc:@model/rnn/batch_normalization_15/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_48Assign%model/rnn/batch_normalization_16/betasave/RestoreV2:48*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_16/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_49Assign&model/rnn/batch_normalization_16/gammasave/RestoreV2:49*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_16/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_50Assign,model/rnn/batch_normalization_16/moving_meansave/RestoreV2:50*
T0*?
_class5
31loc:@model/rnn/batch_normalization_16/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_51Assign0model/rnn/batch_normalization_16/moving_variancesave/RestoreV2:51*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_16/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_52Assign%model/rnn/batch_normalization_17/betasave/RestoreV2:52*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_17/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_53Assign&model/rnn/batch_normalization_17/gammasave/RestoreV2:53*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_17/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_54Assign,model/rnn/batch_normalization_17/moving_meansave/RestoreV2:54*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_17/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_55Assign0model/rnn/batch_normalization_17/moving_variancesave/RestoreV2:55*
T0*C
_class9
75loc:@model/rnn/batch_normalization_17/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_56Assign%model/rnn/batch_normalization_18/betasave/RestoreV2:56*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_18/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_57Assign&model/rnn/batch_normalization_18/gammasave/RestoreV2:57*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_18/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_58Assign,model/rnn/batch_normalization_18/moving_meansave/RestoreV2:58*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_18/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_59Assign0model/rnn/batch_normalization_18/moving_variancesave/RestoreV2:59*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_18/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_60Assign%model/rnn/batch_normalization_19/betasave/RestoreV2:60*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_19/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_61Assign&model/rnn/batch_normalization_19/gammasave/RestoreV2:61*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_19/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_62Assign,model/rnn/batch_normalization_19/moving_meansave/RestoreV2:62*
T0*?
_class5
31loc:@model/rnn/batch_normalization_19/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_63Assign0model/rnn/batch_normalization_19/moving_variancesave/RestoreV2:63*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_19/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_64Assign$model/rnn/batch_normalization_2/betasave/RestoreV2:64*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_2/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_65Assign%model/rnn/batch_normalization_2/gammasave/RestoreV2:65*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_66Assign+model/rnn/batch_normalization_2/moving_meansave/RestoreV2:66*
T0*>
_class4
20loc:@model/rnn/batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_67Assign/model/rnn/batch_normalization_2/moving_variancesave/RestoreV2:67*
T0*B
_class8
64loc:@model/rnn/batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_68Assign%model/rnn/batch_normalization_20/betasave/RestoreV2:68*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_20/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_69Assign&model/rnn/batch_normalization_20/gammasave/RestoreV2:69*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_20/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_70Assign,model/rnn/batch_normalization_20/moving_meansave/RestoreV2:70*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_20/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_71Assign0model/rnn/batch_normalization_20/moving_variancesave/RestoreV2:71*
T0*C
_class9
75loc:@model/rnn/batch_normalization_20/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_72Assign%model/rnn/batch_normalization_21/betasave/RestoreV2:72*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_21/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_73Assign&model/rnn/batch_normalization_21/gammasave/RestoreV2:73*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_21/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_74Assign,model/rnn/batch_normalization_21/moving_meansave/RestoreV2:74*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_21/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_75Assign0model/rnn/batch_normalization_21/moving_variancesave/RestoreV2:75*
T0*C
_class9
75loc:@model/rnn/batch_normalization_21/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_76Assign%model/rnn/batch_normalization_22/betasave/RestoreV2:76*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_22/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_77Assign&model/rnn/batch_normalization_22/gammasave/RestoreV2:77*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_22/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_78Assign,model/rnn/batch_normalization_22/moving_meansave/RestoreV2:78*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_22/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_79Assign0model/rnn/batch_normalization_22/moving_variancesave/RestoreV2:79*
T0*C
_class9
75loc:@model/rnn/batch_normalization_22/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_80Assign%model/rnn/batch_normalization_23/betasave/RestoreV2:80*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_23/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_81Assign&model/rnn/batch_normalization_23/gammasave/RestoreV2:81*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_23/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_82Assign,model/rnn/batch_normalization_23/moving_meansave/RestoreV2:82*
T0*?
_class5
31loc:@model/rnn/batch_normalization_23/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_83Assign0model/rnn/batch_normalization_23/moving_variancesave/RestoreV2:83*
T0*C
_class9
75loc:@model/rnn/batch_normalization_23/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_84Assign%model/rnn/batch_normalization_24/betasave/RestoreV2:84*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_24/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_85Assign&model/rnn/batch_normalization_24/gammasave/RestoreV2:85*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_24/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_86Assign,model/rnn/batch_normalization_24/moving_meansave/RestoreV2:86*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_24/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_87Assign0model/rnn/batch_normalization_24/moving_variancesave/RestoreV2:87*
T0*C
_class9
75loc:@model/rnn/batch_normalization_24/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_88Assign%model/rnn/batch_normalization_25/betasave/RestoreV2:88*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_25/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_89Assign&model/rnn/batch_normalization_25/gammasave/RestoreV2:89*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_25/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_90Assign,model/rnn/batch_normalization_25/moving_meansave/RestoreV2:90*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_25/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_91Assign0model/rnn/batch_normalization_25/moving_variancesave/RestoreV2:91*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_25/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_92Assign%model/rnn/batch_normalization_26/betasave/RestoreV2:92*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_26/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_93Assign&model/rnn/batch_normalization_26/gammasave/RestoreV2:93*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_26/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_94Assign,model/rnn/batch_normalization_26/moving_meansave/RestoreV2:94*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_26/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_95Assign0model/rnn/batch_normalization_26/moving_variancesave/RestoreV2:95*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_26/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_96Assign%model/rnn/batch_normalization_27/betasave/RestoreV2:96*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_27/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_97Assign&model/rnn/batch_normalization_27/gammasave/RestoreV2:97*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_27/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_98Assign,model/rnn/batch_normalization_27/moving_meansave/RestoreV2:98*
T0*?
_class5
31loc:@model/rnn/batch_normalization_27/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_99Assign0model/rnn/batch_normalization_27/moving_variancesave/RestoreV2:99*
T0*C
_class9
75loc:@model/rnn/batch_normalization_27/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_100Assign%model/rnn/batch_normalization_28/betasave/RestoreV2:100*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_28/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_101Assign&model/rnn/batch_normalization_28/gammasave/RestoreV2:101*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_28/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_102Assign,model/rnn/batch_normalization_28/moving_meansave/RestoreV2:102*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_28/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_103Assign0model/rnn/batch_normalization_28/moving_variancesave/RestoreV2:103*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_28/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_104Assign%model/rnn/batch_normalization_29/betasave/RestoreV2:104*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_29/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_105Assign&model/rnn/batch_normalization_29/gammasave/RestoreV2:105*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_29/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_106Assign,model/rnn/batch_normalization_29/moving_meansave/RestoreV2:106*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_29/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_107Assign0model/rnn/batch_normalization_29/moving_variancesave/RestoreV2:107*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_29/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_108Assign$model/rnn/batch_normalization_3/betasave/RestoreV2:108*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_109Assign%model/rnn/batch_normalization_3/gammasave/RestoreV2:109*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_110Assign+model/rnn/batch_normalization_3/moving_meansave/RestoreV2:110*
T0*>
_class4
20loc:@model/rnn/batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_111Assign/model/rnn/batch_normalization_3/moving_variancesave/RestoreV2:111*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_112Assign%model/rnn/batch_normalization_30/betasave/RestoreV2:112*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_30/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_113Assign&model/rnn/batch_normalization_30/gammasave/RestoreV2:113*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_30/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_114Assign,model/rnn/batch_normalization_30/moving_meansave/RestoreV2:114*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_30/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_115Assign0model/rnn/batch_normalization_30/moving_variancesave/RestoreV2:115*
T0*C
_class9
75loc:@model/rnn/batch_normalization_30/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_116Assign%model/rnn/batch_normalization_31/betasave/RestoreV2:116*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_31/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_117Assign&model/rnn/batch_normalization_31/gammasave/RestoreV2:117*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_31/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_118Assign,model/rnn/batch_normalization_31/moving_meansave/RestoreV2:118*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_31/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_119Assign0model/rnn/batch_normalization_31/moving_variancesave/RestoreV2:119*
T0*C
_class9
75loc:@model/rnn/batch_normalization_31/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_120Assign%model/rnn/batch_normalization_32/betasave/RestoreV2:120*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_32/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_121Assign&model/rnn/batch_normalization_32/gammasave/RestoreV2:121*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_32/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_122Assign,model/rnn/batch_normalization_32/moving_meansave/RestoreV2:122*
T0*?
_class5
31loc:@model/rnn/batch_normalization_32/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_123Assign0model/rnn/batch_normalization_32/moving_variancesave/RestoreV2:123*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_32/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_124Assign%model/rnn/batch_normalization_33/betasave/RestoreV2:124*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_33/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_125Assign&model/rnn/batch_normalization_33/gammasave/RestoreV2:125*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_33/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_126Assign,model/rnn/batch_normalization_33/moving_meansave/RestoreV2:126*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_33/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_127Assign0model/rnn/batch_normalization_33/moving_variancesave/RestoreV2:127*
T0*C
_class9
75loc:@model/rnn/batch_normalization_33/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_128Assign%model/rnn/batch_normalization_34/betasave/RestoreV2:128*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_34/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_129Assign&model/rnn/batch_normalization_34/gammasave/RestoreV2:129*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_34/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_130Assign,model/rnn/batch_normalization_34/moving_meansave/RestoreV2:130*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_34/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_131Assign0model/rnn/batch_normalization_34/moving_variancesave/RestoreV2:131*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_34/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_132Assign%model/rnn/batch_normalization_35/betasave/RestoreV2:132*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_35/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_133Assign&model/rnn/batch_normalization_35/gammasave/RestoreV2:133*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_35/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_134Assign,model/rnn/batch_normalization_35/moving_meansave/RestoreV2:134*
T0*?
_class5
31loc:@model/rnn/batch_normalization_35/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_135Assign0model/rnn/batch_normalization_35/moving_variancesave/RestoreV2:135*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_35/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_136Assign$model/rnn/batch_normalization_4/betasave/RestoreV2:136*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_137Assign%model/rnn/batch_normalization_4/gammasave/RestoreV2:137*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_138Assign+model/rnn/batch_normalization_4/moving_meansave/RestoreV2:138*
use_locking(*
T0*>
_class4
20loc:@model/rnn/batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_139Assign/model/rnn/batch_normalization_4/moving_variancesave/RestoreV2:139*
T0*B
_class8
64loc:@model/rnn/batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_140Assign$model/rnn/batch_normalization_5/betasave/RestoreV2:140*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_141Assign%model/rnn/batch_normalization_5/gammasave/RestoreV2:141*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_142Assign+model/rnn/batch_normalization_5/moving_meansave/RestoreV2:142*
use_locking(*
T0*>
_class4
20loc:@model/rnn/batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_143Assign/model/rnn/batch_normalization_5/moving_variancesave/RestoreV2:143*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_144Assign$model/rnn/batch_normalization_6/betasave/RestoreV2:144*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_145Assign%model/rnn/batch_normalization_6/gammasave/RestoreV2:145*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_146Assign+model/rnn/batch_normalization_6/moving_meansave/RestoreV2:146*
T0*>
_class4
20loc:@model/rnn/batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_147Assign/model/rnn/batch_normalization_6/moving_variancesave/RestoreV2:147*
T0*B
_class8
64loc:@model/rnn/batch_normalization_6/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_148Assign$model/rnn/batch_normalization_7/betasave/RestoreV2:148*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_149Assign%model/rnn/batch_normalization_7/gammasave/RestoreV2:149*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_150Assign+model/rnn/batch_normalization_7/moving_meansave/RestoreV2:150*
T0*>
_class4
20loc:@model/rnn/batch_normalization_7/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_151Assign/model/rnn/batch_normalization_7/moving_variancesave/RestoreV2:151*
T0*B
_class8
64loc:@model/rnn/batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_152Assign$model/rnn/batch_normalization_8/betasave/RestoreV2:152*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_8/beta*
validate_shape(*
_output_shapes	
:?
?
save/Assign_153Assign%model/rnn/batch_normalization_8/gammasave/RestoreV2:153*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_8/gamma*
validate_shape(*
_output_shapes	
:?
?
save/Assign_154Assign+model/rnn/batch_normalization_8/moving_meansave/RestoreV2:154*
use_locking(*
T0*>
_class4
20loc:@model/rnn/batch_normalization_8/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_155Assign/model/rnn/batch_normalization_8/moving_variancesave/RestoreV2:155*
T0*B
_class8
64loc:@model/rnn/batch_normalization_8/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_156Assign$model/rnn/batch_normalization_9/betasave/RestoreV2:156*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_9/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_157Assign%model/rnn/batch_normalization_9/gammasave/RestoreV2:157*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_9/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_158Assign+model/rnn/batch_normalization_9/moving_meansave/RestoreV2:158*
use_locking(*
T0*>
_class4
20loc:@model/rnn/batch_normalization_9/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save/Assign_159Assign/model/rnn/batch_normalization_9/moving_variancesave/RestoreV2:159*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_9/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save/Assign_160Assignmodel/rnn/non_local_g/biassave/RestoreV2:160*
T0*-
_class#
!loc:@model/rnn/non_local_g/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_161Assignmodel/rnn/non_local_g/kernelsave/RestoreV2:161*
use_locking(*
T0*/
_class%
#!loc:@model/rnn/non_local_g/kernel*
validate_shape(*(
_output_shapes
:??
?
save/Assign_162Assignmodel/rnn/non_local_phi/biassave/RestoreV2:162*
T0*/
_class%
#!loc:@model/rnn/non_local_phi/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
save/Assign_163Assignmodel/rnn/non_local_phi/kernelsave/RestoreV2:163*
T0*1
_class'
%#loc:@model/rnn/non_local_phi/kernel*
validate_shape(*'
_output_shapes
:?@*
use_locking(
?
save/Assign_164Assignmodel/rnn/non_local_theta/biassave/RestoreV2:164*
T0*1
_class'
%#loc:@model/rnn/non_local_theta/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
save/Assign_165Assign model/rnn/non_local_theta/kernelsave/RestoreV2:165*
use_locking(*
T0*3
_class)
'%loc:@model/rnn/non_local_theta/kernel*
validate_shape(*'
_output_shapes
:?@
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_13^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_14^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_15^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_154^save/Assign_155^save/Assign_156^save/Assign_157^save/Assign_158^save/Assign_159^save/Assign_16^save/Assign_160^save/Assign_161^save/Assign_162^save/Assign_163^save/Assign_164^save/Assign_165^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_cde1fe4d27dc45e6b591e891ecf97661/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
?6
save_1/SaveV2/tensor_namesConst*?6
value?6B?6?Bmodel/batch_normalization/betaBmodel/batch_normalization/gammaB%model/batch_normalization/moving_meanB)model/batch_normalization/moving_varianceB model/batch_normalization_1/betaB!model/batch_normalization_1/gammaB'model/batch_normalization_1/moving_meanB+model/batch_normalization_1/moving_varianceBmodel/conv1/biasBmodel/conv1/kernelBmodel/conv_end/biasBmodel/conv_end/kernelBmodel/rnn/RB1_a/biasBmodel/rnn/RB1_a/kernelBmodel/rnn/RB1_b/biasBmodel/rnn/RB1_b/kernelB"model/rnn/batch_normalization/betaB#model/rnn/batch_normalization/gammaB)model/rnn/batch_normalization/moving_meanB-model/rnn/batch_normalization/moving_varianceB$model/rnn/batch_normalization_1/betaB%model/rnn/batch_normalization_1/gammaB+model/rnn/batch_normalization_1/moving_meanB/model/rnn/batch_normalization_1/moving_varianceB%model/rnn/batch_normalization_10/betaB&model/rnn/batch_normalization_10/gammaB,model/rnn/batch_normalization_10/moving_meanB0model/rnn/batch_normalization_10/moving_varianceB%model/rnn/batch_normalization_11/betaB&model/rnn/batch_normalization_11/gammaB,model/rnn/batch_normalization_11/moving_meanB0model/rnn/batch_normalization_11/moving_varianceB%model/rnn/batch_normalization_12/betaB&model/rnn/batch_normalization_12/gammaB,model/rnn/batch_normalization_12/moving_meanB0model/rnn/batch_normalization_12/moving_varianceB%model/rnn/batch_normalization_13/betaB&model/rnn/batch_normalization_13/gammaB,model/rnn/batch_normalization_13/moving_meanB0model/rnn/batch_normalization_13/moving_varianceB%model/rnn/batch_normalization_14/betaB&model/rnn/batch_normalization_14/gammaB,model/rnn/batch_normalization_14/moving_meanB0model/rnn/batch_normalization_14/moving_varianceB%model/rnn/batch_normalization_15/betaB&model/rnn/batch_normalization_15/gammaB,model/rnn/batch_normalization_15/moving_meanB0model/rnn/batch_normalization_15/moving_varianceB%model/rnn/batch_normalization_16/betaB&model/rnn/batch_normalization_16/gammaB,model/rnn/batch_normalization_16/moving_meanB0model/rnn/batch_normalization_16/moving_varianceB%model/rnn/batch_normalization_17/betaB&model/rnn/batch_normalization_17/gammaB,model/rnn/batch_normalization_17/moving_meanB0model/rnn/batch_normalization_17/moving_varianceB%model/rnn/batch_normalization_18/betaB&model/rnn/batch_normalization_18/gammaB,model/rnn/batch_normalization_18/moving_meanB0model/rnn/batch_normalization_18/moving_varianceB%model/rnn/batch_normalization_19/betaB&model/rnn/batch_normalization_19/gammaB,model/rnn/batch_normalization_19/moving_meanB0model/rnn/batch_normalization_19/moving_varianceB$model/rnn/batch_normalization_2/betaB%model/rnn/batch_normalization_2/gammaB+model/rnn/batch_normalization_2/moving_meanB/model/rnn/batch_normalization_2/moving_varianceB%model/rnn/batch_normalization_20/betaB&model/rnn/batch_normalization_20/gammaB,model/rnn/batch_normalization_20/moving_meanB0model/rnn/batch_normalization_20/moving_varianceB%model/rnn/batch_normalization_21/betaB&model/rnn/batch_normalization_21/gammaB,model/rnn/batch_normalization_21/moving_meanB0model/rnn/batch_normalization_21/moving_varianceB%model/rnn/batch_normalization_22/betaB&model/rnn/batch_normalization_22/gammaB,model/rnn/batch_normalization_22/moving_meanB0model/rnn/batch_normalization_22/moving_varianceB%model/rnn/batch_normalization_23/betaB&model/rnn/batch_normalization_23/gammaB,model/rnn/batch_normalization_23/moving_meanB0model/rnn/batch_normalization_23/moving_varianceB%model/rnn/batch_normalization_24/betaB&model/rnn/batch_normalization_24/gammaB,model/rnn/batch_normalization_24/moving_meanB0model/rnn/batch_normalization_24/moving_varianceB%model/rnn/batch_normalization_25/betaB&model/rnn/batch_normalization_25/gammaB,model/rnn/batch_normalization_25/moving_meanB0model/rnn/batch_normalization_25/moving_varianceB%model/rnn/batch_normalization_26/betaB&model/rnn/batch_normalization_26/gammaB,model/rnn/batch_normalization_26/moving_meanB0model/rnn/batch_normalization_26/moving_varianceB%model/rnn/batch_normalization_27/betaB&model/rnn/batch_normalization_27/gammaB,model/rnn/batch_normalization_27/moving_meanB0model/rnn/batch_normalization_27/moving_varianceB%model/rnn/batch_normalization_28/betaB&model/rnn/batch_normalization_28/gammaB,model/rnn/batch_normalization_28/moving_meanB0model/rnn/batch_normalization_28/moving_varianceB%model/rnn/batch_normalization_29/betaB&model/rnn/batch_normalization_29/gammaB,model/rnn/batch_normalization_29/moving_meanB0model/rnn/batch_normalization_29/moving_varianceB$model/rnn/batch_normalization_3/betaB%model/rnn/batch_normalization_3/gammaB+model/rnn/batch_normalization_3/moving_meanB/model/rnn/batch_normalization_3/moving_varianceB%model/rnn/batch_normalization_30/betaB&model/rnn/batch_normalization_30/gammaB,model/rnn/batch_normalization_30/moving_meanB0model/rnn/batch_normalization_30/moving_varianceB%model/rnn/batch_normalization_31/betaB&model/rnn/batch_normalization_31/gammaB,model/rnn/batch_normalization_31/moving_meanB0model/rnn/batch_normalization_31/moving_varianceB%model/rnn/batch_normalization_32/betaB&model/rnn/batch_normalization_32/gammaB,model/rnn/batch_normalization_32/moving_meanB0model/rnn/batch_normalization_32/moving_varianceB%model/rnn/batch_normalization_33/betaB&model/rnn/batch_normalization_33/gammaB,model/rnn/batch_normalization_33/moving_meanB0model/rnn/batch_normalization_33/moving_varianceB%model/rnn/batch_normalization_34/betaB&model/rnn/batch_normalization_34/gammaB,model/rnn/batch_normalization_34/moving_meanB0model/rnn/batch_normalization_34/moving_varianceB%model/rnn/batch_normalization_35/betaB&model/rnn/batch_normalization_35/gammaB,model/rnn/batch_normalization_35/moving_meanB0model/rnn/batch_normalization_35/moving_varianceB$model/rnn/batch_normalization_4/betaB%model/rnn/batch_normalization_4/gammaB+model/rnn/batch_normalization_4/moving_meanB/model/rnn/batch_normalization_4/moving_varianceB$model/rnn/batch_normalization_5/betaB%model/rnn/batch_normalization_5/gammaB+model/rnn/batch_normalization_5/moving_meanB/model/rnn/batch_normalization_5/moving_varianceB$model/rnn/batch_normalization_6/betaB%model/rnn/batch_normalization_6/gammaB+model/rnn/batch_normalization_6/moving_meanB/model/rnn/batch_normalization_6/moving_varianceB$model/rnn/batch_normalization_7/betaB%model/rnn/batch_normalization_7/gammaB+model/rnn/batch_normalization_7/moving_meanB/model/rnn/batch_normalization_7/moving_varianceB$model/rnn/batch_normalization_8/betaB%model/rnn/batch_normalization_8/gammaB+model/rnn/batch_normalization_8/moving_meanB/model/rnn/batch_normalization_8/moving_varianceB$model/rnn/batch_normalization_9/betaB%model/rnn/batch_normalization_9/gammaB+model/rnn/batch_normalization_9/moving_meanB/model/rnn/batch_normalization_9/moving_varianceBmodel/rnn/non_local_g/biasBmodel/rnn/non_local_g/kernelBmodel/rnn/non_local_phi/biasBmodel/rnn/non_local_phi/kernelBmodel/rnn/non_local_theta/biasB model/rnn/non_local_theta/kernel*
dtype0*
_output_shapes	
:?
?
save_1/SaveV2/shape_and_slicesConst*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:?
?8
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesmodel/batch_normalization/betamodel/batch_normalization/gamma%model/batch_normalization/moving_mean)model/batch_normalization/moving_variance model/batch_normalization_1/beta!model/batch_normalization_1/gamma'model/batch_normalization_1/moving_mean+model/batch_normalization_1/moving_variancemodel/conv1/biasmodel/conv1/kernelmodel/conv_end/biasmodel/conv_end/kernelmodel/rnn/RB1_a/biasmodel/rnn/RB1_a/kernelmodel/rnn/RB1_b/biasmodel/rnn/RB1_b/kernel"model/rnn/batch_normalization/beta#model/rnn/batch_normalization/gamma)model/rnn/batch_normalization/moving_mean-model/rnn/batch_normalization/moving_variance$model/rnn/batch_normalization_1/beta%model/rnn/batch_normalization_1/gamma+model/rnn/batch_normalization_1/moving_mean/model/rnn/batch_normalization_1/moving_variance%model/rnn/batch_normalization_10/beta&model/rnn/batch_normalization_10/gamma,model/rnn/batch_normalization_10/moving_mean0model/rnn/batch_normalization_10/moving_variance%model/rnn/batch_normalization_11/beta&model/rnn/batch_normalization_11/gamma,model/rnn/batch_normalization_11/moving_mean0model/rnn/batch_normalization_11/moving_variance%model/rnn/batch_normalization_12/beta&model/rnn/batch_normalization_12/gamma,model/rnn/batch_normalization_12/moving_mean0model/rnn/batch_normalization_12/moving_variance%model/rnn/batch_normalization_13/beta&model/rnn/batch_normalization_13/gamma,model/rnn/batch_normalization_13/moving_mean0model/rnn/batch_normalization_13/moving_variance%model/rnn/batch_normalization_14/beta&model/rnn/batch_normalization_14/gamma,model/rnn/batch_normalization_14/moving_mean0model/rnn/batch_normalization_14/moving_variance%model/rnn/batch_normalization_15/beta&model/rnn/batch_normalization_15/gamma,model/rnn/batch_normalization_15/moving_mean0model/rnn/batch_normalization_15/moving_variance%model/rnn/batch_normalization_16/beta&model/rnn/batch_normalization_16/gamma,model/rnn/batch_normalization_16/moving_mean0model/rnn/batch_normalization_16/moving_variance%model/rnn/batch_normalization_17/beta&model/rnn/batch_normalization_17/gamma,model/rnn/batch_normalization_17/moving_mean0model/rnn/batch_normalization_17/moving_variance%model/rnn/batch_normalization_18/beta&model/rnn/batch_normalization_18/gamma,model/rnn/batch_normalization_18/moving_mean0model/rnn/batch_normalization_18/moving_variance%model/rnn/batch_normalization_19/beta&model/rnn/batch_normalization_19/gamma,model/rnn/batch_normalization_19/moving_mean0model/rnn/batch_normalization_19/moving_variance$model/rnn/batch_normalization_2/beta%model/rnn/batch_normalization_2/gamma+model/rnn/batch_normalization_2/moving_mean/model/rnn/batch_normalization_2/moving_variance%model/rnn/batch_normalization_20/beta&model/rnn/batch_normalization_20/gamma,model/rnn/batch_normalization_20/moving_mean0model/rnn/batch_normalization_20/moving_variance%model/rnn/batch_normalization_21/beta&model/rnn/batch_normalization_21/gamma,model/rnn/batch_normalization_21/moving_mean0model/rnn/batch_normalization_21/moving_variance%model/rnn/batch_normalization_22/beta&model/rnn/batch_normalization_22/gamma,model/rnn/batch_normalization_22/moving_mean0model/rnn/batch_normalization_22/moving_variance%model/rnn/batch_normalization_23/beta&model/rnn/batch_normalization_23/gamma,model/rnn/batch_normalization_23/moving_mean0model/rnn/batch_normalization_23/moving_variance%model/rnn/batch_normalization_24/beta&model/rnn/batch_normalization_24/gamma,model/rnn/batch_normalization_24/moving_mean0model/rnn/batch_normalization_24/moving_variance%model/rnn/batch_normalization_25/beta&model/rnn/batch_normalization_25/gamma,model/rnn/batch_normalization_25/moving_mean0model/rnn/batch_normalization_25/moving_variance%model/rnn/batch_normalization_26/beta&model/rnn/batch_normalization_26/gamma,model/rnn/batch_normalization_26/moving_mean0model/rnn/batch_normalization_26/moving_variance%model/rnn/batch_normalization_27/beta&model/rnn/batch_normalization_27/gamma,model/rnn/batch_normalization_27/moving_mean0model/rnn/batch_normalization_27/moving_variance%model/rnn/batch_normalization_28/beta&model/rnn/batch_normalization_28/gamma,model/rnn/batch_normalization_28/moving_mean0model/rnn/batch_normalization_28/moving_variance%model/rnn/batch_normalization_29/beta&model/rnn/batch_normalization_29/gamma,model/rnn/batch_normalization_29/moving_mean0model/rnn/batch_normalization_29/moving_variance$model/rnn/batch_normalization_3/beta%model/rnn/batch_normalization_3/gamma+model/rnn/batch_normalization_3/moving_mean/model/rnn/batch_normalization_3/moving_variance%model/rnn/batch_normalization_30/beta&model/rnn/batch_normalization_30/gamma,model/rnn/batch_normalization_30/moving_mean0model/rnn/batch_normalization_30/moving_variance%model/rnn/batch_normalization_31/beta&model/rnn/batch_normalization_31/gamma,model/rnn/batch_normalization_31/moving_mean0model/rnn/batch_normalization_31/moving_variance%model/rnn/batch_normalization_32/beta&model/rnn/batch_normalization_32/gamma,model/rnn/batch_normalization_32/moving_mean0model/rnn/batch_normalization_32/moving_variance%model/rnn/batch_normalization_33/beta&model/rnn/batch_normalization_33/gamma,model/rnn/batch_normalization_33/moving_mean0model/rnn/batch_normalization_33/moving_variance%model/rnn/batch_normalization_34/beta&model/rnn/batch_normalization_34/gamma,model/rnn/batch_normalization_34/moving_mean0model/rnn/batch_normalization_34/moving_variance%model/rnn/batch_normalization_35/beta&model/rnn/batch_normalization_35/gamma,model/rnn/batch_normalization_35/moving_mean0model/rnn/batch_normalization_35/moving_variance$model/rnn/batch_normalization_4/beta%model/rnn/batch_normalization_4/gamma+model/rnn/batch_normalization_4/moving_mean/model/rnn/batch_normalization_4/moving_variance$model/rnn/batch_normalization_5/beta%model/rnn/batch_normalization_5/gamma+model/rnn/batch_normalization_5/moving_mean/model/rnn/batch_normalization_5/moving_variance$model/rnn/batch_normalization_6/beta%model/rnn/batch_normalization_6/gamma+model/rnn/batch_normalization_6/moving_mean/model/rnn/batch_normalization_6/moving_variance$model/rnn/batch_normalization_7/beta%model/rnn/batch_normalization_7/gamma+model/rnn/batch_normalization_7/moving_mean/model/rnn/batch_normalization_7/moving_variance$model/rnn/batch_normalization_8/beta%model/rnn/batch_normalization_8/gamma+model/rnn/batch_normalization_8/moving_mean/model/rnn/batch_normalization_8/moving_variance$model/rnn/batch_normalization_9/beta%model/rnn/batch_normalization_9/gamma+model/rnn/batch_normalization_9/moving_mean/model/rnn/batch_normalization_9/moving_variancemodel/rnn/non_local_g/biasmodel/rnn/non_local_g/kernelmodel/rnn/non_local_phi/biasmodel/rnn/non_local_phi/kernelmodel/rnn/non_local_theta/bias model/rnn/non_local_theta/kernel*?
dtypes?
?2?
?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
?
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
?
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
?6
save_1/RestoreV2/tensor_namesConst*?6
value?6B?6?Bmodel/batch_normalization/betaBmodel/batch_normalization/gammaB%model/batch_normalization/moving_meanB)model/batch_normalization/moving_varianceB model/batch_normalization_1/betaB!model/batch_normalization_1/gammaB'model/batch_normalization_1/moving_meanB+model/batch_normalization_1/moving_varianceBmodel/conv1/biasBmodel/conv1/kernelBmodel/conv_end/biasBmodel/conv_end/kernelBmodel/rnn/RB1_a/biasBmodel/rnn/RB1_a/kernelBmodel/rnn/RB1_b/biasBmodel/rnn/RB1_b/kernelB"model/rnn/batch_normalization/betaB#model/rnn/batch_normalization/gammaB)model/rnn/batch_normalization/moving_meanB-model/rnn/batch_normalization/moving_varianceB$model/rnn/batch_normalization_1/betaB%model/rnn/batch_normalization_1/gammaB+model/rnn/batch_normalization_1/moving_meanB/model/rnn/batch_normalization_1/moving_varianceB%model/rnn/batch_normalization_10/betaB&model/rnn/batch_normalization_10/gammaB,model/rnn/batch_normalization_10/moving_meanB0model/rnn/batch_normalization_10/moving_varianceB%model/rnn/batch_normalization_11/betaB&model/rnn/batch_normalization_11/gammaB,model/rnn/batch_normalization_11/moving_meanB0model/rnn/batch_normalization_11/moving_varianceB%model/rnn/batch_normalization_12/betaB&model/rnn/batch_normalization_12/gammaB,model/rnn/batch_normalization_12/moving_meanB0model/rnn/batch_normalization_12/moving_varianceB%model/rnn/batch_normalization_13/betaB&model/rnn/batch_normalization_13/gammaB,model/rnn/batch_normalization_13/moving_meanB0model/rnn/batch_normalization_13/moving_varianceB%model/rnn/batch_normalization_14/betaB&model/rnn/batch_normalization_14/gammaB,model/rnn/batch_normalization_14/moving_meanB0model/rnn/batch_normalization_14/moving_varianceB%model/rnn/batch_normalization_15/betaB&model/rnn/batch_normalization_15/gammaB,model/rnn/batch_normalization_15/moving_meanB0model/rnn/batch_normalization_15/moving_varianceB%model/rnn/batch_normalization_16/betaB&model/rnn/batch_normalization_16/gammaB,model/rnn/batch_normalization_16/moving_meanB0model/rnn/batch_normalization_16/moving_varianceB%model/rnn/batch_normalization_17/betaB&model/rnn/batch_normalization_17/gammaB,model/rnn/batch_normalization_17/moving_meanB0model/rnn/batch_normalization_17/moving_varianceB%model/rnn/batch_normalization_18/betaB&model/rnn/batch_normalization_18/gammaB,model/rnn/batch_normalization_18/moving_meanB0model/rnn/batch_normalization_18/moving_varianceB%model/rnn/batch_normalization_19/betaB&model/rnn/batch_normalization_19/gammaB,model/rnn/batch_normalization_19/moving_meanB0model/rnn/batch_normalization_19/moving_varianceB$model/rnn/batch_normalization_2/betaB%model/rnn/batch_normalization_2/gammaB+model/rnn/batch_normalization_2/moving_meanB/model/rnn/batch_normalization_2/moving_varianceB%model/rnn/batch_normalization_20/betaB&model/rnn/batch_normalization_20/gammaB,model/rnn/batch_normalization_20/moving_meanB0model/rnn/batch_normalization_20/moving_varianceB%model/rnn/batch_normalization_21/betaB&model/rnn/batch_normalization_21/gammaB,model/rnn/batch_normalization_21/moving_meanB0model/rnn/batch_normalization_21/moving_varianceB%model/rnn/batch_normalization_22/betaB&model/rnn/batch_normalization_22/gammaB,model/rnn/batch_normalization_22/moving_meanB0model/rnn/batch_normalization_22/moving_varianceB%model/rnn/batch_normalization_23/betaB&model/rnn/batch_normalization_23/gammaB,model/rnn/batch_normalization_23/moving_meanB0model/rnn/batch_normalization_23/moving_varianceB%model/rnn/batch_normalization_24/betaB&model/rnn/batch_normalization_24/gammaB,model/rnn/batch_normalization_24/moving_meanB0model/rnn/batch_normalization_24/moving_varianceB%model/rnn/batch_normalization_25/betaB&model/rnn/batch_normalization_25/gammaB,model/rnn/batch_normalization_25/moving_meanB0model/rnn/batch_normalization_25/moving_varianceB%model/rnn/batch_normalization_26/betaB&model/rnn/batch_normalization_26/gammaB,model/rnn/batch_normalization_26/moving_meanB0model/rnn/batch_normalization_26/moving_varianceB%model/rnn/batch_normalization_27/betaB&model/rnn/batch_normalization_27/gammaB,model/rnn/batch_normalization_27/moving_meanB0model/rnn/batch_normalization_27/moving_varianceB%model/rnn/batch_normalization_28/betaB&model/rnn/batch_normalization_28/gammaB,model/rnn/batch_normalization_28/moving_meanB0model/rnn/batch_normalization_28/moving_varianceB%model/rnn/batch_normalization_29/betaB&model/rnn/batch_normalization_29/gammaB,model/rnn/batch_normalization_29/moving_meanB0model/rnn/batch_normalization_29/moving_varianceB$model/rnn/batch_normalization_3/betaB%model/rnn/batch_normalization_3/gammaB+model/rnn/batch_normalization_3/moving_meanB/model/rnn/batch_normalization_3/moving_varianceB%model/rnn/batch_normalization_30/betaB&model/rnn/batch_normalization_30/gammaB,model/rnn/batch_normalization_30/moving_meanB0model/rnn/batch_normalization_30/moving_varianceB%model/rnn/batch_normalization_31/betaB&model/rnn/batch_normalization_31/gammaB,model/rnn/batch_normalization_31/moving_meanB0model/rnn/batch_normalization_31/moving_varianceB%model/rnn/batch_normalization_32/betaB&model/rnn/batch_normalization_32/gammaB,model/rnn/batch_normalization_32/moving_meanB0model/rnn/batch_normalization_32/moving_varianceB%model/rnn/batch_normalization_33/betaB&model/rnn/batch_normalization_33/gammaB,model/rnn/batch_normalization_33/moving_meanB0model/rnn/batch_normalization_33/moving_varianceB%model/rnn/batch_normalization_34/betaB&model/rnn/batch_normalization_34/gammaB,model/rnn/batch_normalization_34/moving_meanB0model/rnn/batch_normalization_34/moving_varianceB%model/rnn/batch_normalization_35/betaB&model/rnn/batch_normalization_35/gammaB,model/rnn/batch_normalization_35/moving_meanB0model/rnn/batch_normalization_35/moving_varianceB$model/rnn/batch_normalization_4/betaB%model/rnn/batch_normalization_4/gammaB+model/rnn/batch_normalization_4/moving_meanB/model/rnn/batch_normalization_4/moving_varianceB$model/rnn/batch_normalization_5/betaB%model/rnn/batch_normalization_5/gammaB+model/rnn/batch_normalization_5/moving_meanB/model/rnn/batch_normalization_5/moving_varianceB$model/rnn/batch_normalization_6/betaB%model/rnn/batch_normalization_6/gammaB+model/rnn/batch_normalization_6/moving_meanB/model/rnn/batch_normalization_6/moving_varianceB$model/rnn/batch_normalization_7/betaB%model/rnn/batch_normalization_7/gammaB+model/rnn/batch_normalization_7/moving_meanB/model/rnn/batch_normalization_7/moving_varianceB$model/rnn/batch_normalization_8/betaB%model/rnn/batch_normalization_8/gammaB+model/rnn/batch_normalization_8/moving_meanB/model/rnn/batch_normalization_8/moving_varianceB$model/rnn/batch_normalization_9/betaB%model/rnn/batch_normalization_9/gammaB+model/rnn/batch_normalization_9/moving_meanB/model/rnn/batch_normalization_9/moving_varianceBmodel/rnn/non_local_g/biasBmodel/rnn/non_local_g/kernelBmodel/rnn/non_local_phi/biasBmodel/rnn/non_local_phi/kernelBmodel/rnn/non_local_theta/biasB model/rnn/non_local_theta/kernel*
dtype0*
_output_shapes	
:?
?
!save_1/RestoreV2/shape_and_slicesConst*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:?
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*?
dtypes?
?2?*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
?
save_1/AssignAssignmodel/batch_normalization/betasave_1/RestoreV2*
T0*1
_class'
%#loc:@model/batch_normalization/beta*
validate_shape(*
_output_shapes
:*
use_locking(
?
save_1/Assign_1Assignmodel/batch_normalization/gammasave_1/RestoreV2:1*
use_locking(*
T0*2
_class(
&$loc:@model/batch_normalization/gamma*
validate_shape(*
_output_shapes
:
?
save_1/Assign_2Assign%model/batch_normalization/moving_meansave_1/RestoreV2:2*
use_locking(*
T0*8
_class.
,*loc:@model/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:
?
save_1/Assign_3Assign)model/batch_normalization/moving_variancesave_1/RestoreV2:3*
use_locking(*
T0*<
_class2
0.loc:@model/batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:
?
save_1/Assign_4Assign model/batch_normalization_1/betasave_1/RestoreV2:4*
T0*3
_class)
'%loc:@model/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_5Assign!model/batch_normalization_1/gammasave_1/RestoreV2:5*
T0*4
_class*
(&loc:@model/batch_normalization_1/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_6Assign'model/batch_normalization_1/moving_meansave_1/RestoreV2:6*
T0*:
_class0
.,loc:@model/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_7Assign+model/batch_normalization_1/moving_variancesave_1/RestoreV2:7*
use_locking(*
T0*>
_class4
20loc:@model/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_8Assignmodel/conv1/biassave_1/RestoreV2:8*
use_locking(*
T0*#
_class
loc:@model/conv1/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_9Assignmodel/conv1/kernelsave_1/RestoreV2:9*
use_locking(*
T0*%
_class
loc:@model/conv1/kernel*
validate_shape(*'
_output_shapes
:?
?
save_1/Assign_10Assignmodel/conv_end/biassave_1/RestoreV2:10*
use_locking(*
T0*&
_class
loc:@model/conv_end/bias*
validate_shape(*
_output_shapes
:
?
save_1/Assign_11Assignmodel/conv_end/kernelsave_1/RestoreV2:11*
T0*(
_class
loc:@model/conv_end/kernel*
validate_shape(*'
_output_shapes
:?*
use_locking(
?
save_1/Assign_12Assignmodel/rnn/RB1_a/biassave_1/RestoreV2:12*
use_locking(*
T0*'
_class
loc:@model/rnn/RB1_a/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_13Assignmodel/rnn/RB1_a/kernelsave_1/RestoreV2:13*
T0*)
_class
loc:@model/rnn/RB1_a/kernel*
validate_shape(*(
_output_shapes
:??*
use_locking(
?
save_1/Assign_14Assignmodel/rnn/RB1_b/biassave_1/RestoreV2:14*
T0*'
_class
loc:@model/rnn/RB1_b/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_15Assignmodel/rnn/RB1_b/kernelsave_1/RestoreV2:15*
use_locking(*
T0*)
_class
loc:@model/rnn/RB1_b/kernel*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_16Assign"model/rnn/batch_normalization/betasave_1/RestoreV2:16*
use_locking(*
T0*5
_class+
)'loc:@model/rnn/batch_normalization/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_17Assign#model/rnn/batch_normalization/gammasave_1/RestoreV2:17*
use_locking(*
T0*6
_class,
*(loc:@model/rnn/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_18Assign)model/rnn/batch_normalization/moving_meansave_1/RestoreV2:18*
use_locking(*
T0*<
_class2
0.loc:@model/rnn/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_19Assign-model/rnn/batch_normalization/moving_variancesave_1/RestoreV2:19*
T0*@
_class6
42loc:@model/rnn/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_20Assign$model/rnn/batch_normalization_1/betasave_1/RestoreV2:20*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_21Assign%model/rnn/batch_normalization_1/gammasave_1/RestoreV2:21*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_1/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_22Assign+model/rnn/batch_normalization_1/moving_meansave_1/RestoreV2:22*
use_locking(*
T0*>
_class4
20loc:@model/rnn/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_23Assign/model/rnn/batch_normalization_1/moving_variancesave_1/RestoreV2:23*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_24Assign%model/rnn/batch_normalization_10/betasave_1/RestoreV2:24*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_10/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_25Assign&model/rnn/batch_normalization_10/gammasave_1/RestoreV2:25*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_10/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_26Assign,model/rnn/batch_normalization_10/moving_meansave_1/RestoreV2:26*
T0*?
_class5
31loc:@model/rnn/batch_normalization_10/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_27Assign0model/rnn/batch_normalization_10/moving_variancesave_1/RestoreV2:27*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_10/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_28Assign%model/rnn/batch_normalization_11/betasave_1/RestoreV2:28*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_11/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_29Assign&model/rnn/batch_normalization_11/gammasave_1/RestoreV2:29*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_11/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_30Assign,model/rnn/batch_normalization_11/moving_meansave_1/RestoreV2:30*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_11/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_31Assign0model/rnn/batch_normalization_11/moving_variancesave_1/RestoreV2:31*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_11/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_32Assign%model/rnn/batch_normalization_12/betasave_1/RestoreV2:32*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_12/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_33Assign&model/rnn/batch_normalization_12/gammasave_1/RestoreV2:33*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_12/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_34Assign,model/rnn/batch_normalization_12/moving_meansave_1/RestoreV2:34*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_12/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_35Assign0model/rnn/batch_normalization_12/moving_variancesave_1/RestoreV2:35*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_12/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_36Assign%model/rnn/batch_normalization_13/betasave_1/RestoreV2:36*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_13/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_37Assign&model/rnn/batch_normalization_13/gammasave_1/RestoreV2:37*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_13/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_38Assign,model/rnn/batch_normalization_13/moving_meansave_1/RestoreV2:38*
T0*?
_class5
31loc:@model/rnn/batch_normalization_13/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_39Assign0model/rnn/batch_normalization_13/moving_variancesave_1/RestoreV2:39*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_13/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_40Assign%model/rnn/batch_normalization_14/betasave_1/RestoreV2:40*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_14/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_41Assign&model/rnn/batch_normalization_14/gammasave_1/RestoreV2:41*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_14/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_42Assign,model/rnn/batch_normalization_14/moving_meansave_1/RestoreV2:42*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_14/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_43Assign0model/rnn/batch_normalization_14/moving_variancesave_1/RestoreV2:43*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_14/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_44Assign%model/rnn/batch_normalization_15/betasave_1/RestoreV2:44*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_15/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_45Assign&model/rnn/batch_normalization_15/gammasave_1/RestoreV2:45*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_15/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_46Assign,model/rnn/batch_normalization_15/moving_meansave_1/RestoreV2:46*
T0*?
_class5
31loc:@model/rnn/batch_normalization_15/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_47Assign0model/rnn/batch_normalization_15/moving_variancesave_1/RestoreV2:47*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_15/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_48Assign%model/rnn/batch_normalization_16/betasave_1/RestoreV2:48*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_16/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_49Assign&model/rnn/batch_normalization_16/gammasave_1/RestoreV2:49*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_16/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_50Assign,model/rnn/batch_normalization_16/moving_meansave_1/RestoreV2:50*
T0*?
_class5
31loc:@model/rnn/batch_normalization_16/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_51Assign0model/rnn/batch_normalization_16/moving_variancesave_1/RestoreV2:51*
T0*C
_class9
75loc:@model/rnn/batch_normalization_16/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_52Assign%model/rnn/batch_normalization_17/betasave_1/RestoreV2:52*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_17/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_53Assign&model/rnn/batch_normalization_17/gammasave_1/RestoreV2:53*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_17/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_54Assign,model/rnn/batch_normalization_17/moving_meansave_1/RestoreV2:54*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_17/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_55Assign0model/rnn/batch_normalization_17/moving_variancesave_1/RestoreV2:55*
T0*C
_class9
75loc:@model/rnn/batch_normalization_17/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_56Assign%model/rnn/batch_normalization_18/betasave_1/RestoreV2:56*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_18/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_57Assign&model/rnn/batch_normalization_18/gammasave_1/RestoreV2:57*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_18/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_58Assign,model/rnn/batch_normalization_18/moving_meansave_1/RestoreV2:58*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_18/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_59Assign0model/rnn/batch_normalization_18/moving_variancesave_1/RestoreV2:59*
T0*C
_class9
75loc:@model/rnn/batch_normalization_18/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_60Assign%model/rnn/batch_normalization_19/betasave_1/RestoreV2:60*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_19/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_61Assign&model/rnn/batch_normalization_19/gammasave_1/RestoreV2:61*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_19/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_62Assign,model/rnn/batch_normalization_19/moving_meansave_1/RestoreV2:62*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_19/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_63Assign0model/rnn/batch_normalization_19/moving_variancesave_1/RestoreV2:63*
T0*C
_class9
75loc:@model/rnn/batch_normalization_19/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_64Assign$model/rnn/batch_normalization_2/betasave_1/RestoreV2:64*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_2/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_65Assign%model/rnn/batch_normalization_2/gammasave_1/RestoreV2:65*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_2/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_66Assign+model/rnn/batch_normalization_2/moving_meansave_1/RestoreV2:66*
T0*>
_class4
20loc:@model/rnn/batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_67Assign/model/rnn/batch_normalization_2/moving_variancesave_1/RestoreV2:67*
T0*B
_class8
64loc:@model/rnn/batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_68Assign%model/rnn/batch_normalization_20/betasave_1/RestoreV2:68*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_20/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_69Assign&model/rnn/batch_normalization_20/gammasave_1/RestoreV2:69*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_20/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_70Assign,model/rnn/batch_normalization_20/moving_meansave_1/RestoreV2:70*
T0*?
_class5
31loc:@model/rnn/batch_normalization_20/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_71Assign0model/rnn/batch_normalization_20/moving_variancesave_1/RestoreV2:71*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_20/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_72Assign%model/rnn/batch_normalization_21/betasave_1/RestoreV2:72*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_21/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_73Assign&model/rnn/batch_normalization_21/gammasave_1/RestoreV2:73*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_21/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_74Assign,model/rnn/batch_normalization_21/moving_meansave_1/RestoreV2:74*
T0*?
_class5
31loc:@model/rnn/batch_normalization_21/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_75Assign0model/rnn/batch_normalization_21/moving_variancesave_1/RestoreV2:75*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_21/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_76Assign%model/rnn/batch_normalization_22/betasave_1/RestoreV2:76*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_22/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_77Assign&model/rnn/batch_normalization_22/gammasave_1/RestoreV2:77*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_22/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_78Assign,model/rnn/batch_normalization_22/moving_meansave_1/RestoreV2:78*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_22/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_79Assign0model/rnn/batch_normalization_22/moving_variancesave_1/RestoreV2:79*
T0*C
_class9
75loc:@model/rnn/batch_normalization_22/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_80Assign%model/rnn/batch_normalization_23/betasave_1/RestoreV2:80*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_23/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_81Assign&model/rnn/batch_normalization_23/gammasave_1/RestoreV2:81*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_23/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_82Assign,model/rnn/batch_normalization_23/moving_meansave_1/RestoreV2:82*
T0*?
_class5
31loc:@model/rnn/batch_normalization_23/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_83Assign0model/rnn/batch_normalization_23/moving_variancesave_1/RestoreV2:83*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_23/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_84Assign%model/rnn/batch_normalization_24/betasave_1/RestoreV2:84*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_24/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_85Assign&model/rnn/batch_normalization_24/gammasave_1/RestoreV2:85*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_24/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_86Assign,model/rnn/batch_normalization_24/moving_meansave_1/RestoreV2:86*
T0*?
_class5
31loc:@model/rnn/batch_normalization_24/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_87Assign0model/rnn/batch_normalization_24/moving_variancesave_1/RestoreV2:87*
T0*C
_class9
75loc:@model/rnn/batch_normalization_24/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_88Assign%model/rnn/batch_normalization_25/betasave_1/RestoreV2:88*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_25/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_89Assign&model/rnn/batch_normalization_25/gammasave_1/RestoreV2:89*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_25/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_90Assign,model/rnn/batch_normalization_25/moving_meansave_1/RestoreV2:90*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_25/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_91Assign0model/rnn/batch_normalization_25/moving_variancesave_1/RestoreV2:91*
T0*C
_class9
75loc:@model/rnn/batch_normalization_25/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_92Assign%model/rnn/batch_normalization_26/betasave_1/RestoreV2:92*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_26/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_93Assign&model/rnn/batch_normalization_26/gammasave_1/RestoreV2:93*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_26/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_94Assign,model/rnn/batch_normalization_26/moving_meansave_1/RestoreV2:94*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_26/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_95Assign0model/rnn/batch_normalization_26/moving_variancesave_1/RestoreV2:95*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_26/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_96Assign%model/rnn/batch_normalization_27/betasave_1/RestoreV2:96*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_27/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_97Assign&model/rnn/batch_normalization_27/gammasave_1/RestoreV2:97*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_27/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_98Assign,model/rnn/batch_normalization_27/moving_meansave_1/RestoreV2:98*
T0*?
_class5
31loc:@model/rnn/batch_normalization_27/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_99Assign0model/rnn/batch_normalization_27/moving_variancesave_1/RestoreV2:99*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_27/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_100Assign%model/rnn/batch_normalization_28/betasave_1/RestoreV2:100*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_28/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_101Assign&model/rnn/batch_normalization_28/gammasave_1/RestoreV2:101*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_28/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_102Assign,model/rnn/batch_normalization_28/moving_meansave_1/RestoreV2:102*
T0*?
_class5
31loc:@model/rnn/batch_normalization_28/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_103Assign0model/rnn/batch_normalization_28/moving_variancesave_1/RestoreV2:103*
T0*C
_class9
75loc:@model/rnn/batch_normalization_28/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_104Assign%model/rnn/batch_normalization_29/betasave_1/RestoreV2:104*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_29/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_105Assign&model/rnn/batch_normalization_29/gammasave_1/RestoreV2:105*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_29/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_106Assign,model/rnn/batch_normalization_29/moving_meansave_1/RestoreV2:106*
T0*?
_class5
31loc:@model/rnn/batch_normalization_29/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_107Assign0model/rnn/batch_normalization_29/moving_variancesave_1/RestoreV2:107*
T0*C
_class9
75loc:@model/rnn/batch_normalization_29/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_108Assign$model/rnn/batch_normalization_3/betasave_1/RestoreV2:108*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_3/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_109Assign%model/rnn/batch_normalization_3/gammasave_1/RestoreV2:109*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_3/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_110Assign+model/rnn/batch_normalization_3/moving_meansave_1/RestoreV2:110*
use_locking(*
T0*>
_class4
20loc:@model/rnn/batch_normalization_3/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_111Assign/model/rnn/batch_normalization_3/moving_variancesave_1/RestoreV2:111*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_3/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_112Assign%model/rnn/batch_normalization_30/betasave_1/RestoreV2:112*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_30/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_113Assign&model/rnn/batch_normalization_30/gammasave_1/RestoreV2:113*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_30/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_114Assign,model/rnn/batch_normalization_30/moving_meansave_1/RestoreV2:114*
T0*?
_class5
31loc:@model/rnn/batch_normalization_30/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_115Assign0model/rnn/batch_normalization_30/moving_variancesave_1/RestoreV2:115*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_30/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_116Assign%model/rnn/batch_normalization_31/betasave_1/RestoreV2:116*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_31/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_117Assign&model/rnn/batch_normalization_31/gammasave_1/RestoreV2:117*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_31/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_118Assign,model/rnn/batch_normalization_31/moving_meansave_1/RestoreV2:118*
T0*?
_class5
31loc:@model/rnn/batch_normalization_31/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_119Assign0model/rnn/batch_normalization_31/moving_variancesave_1/RestoreV2:119*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_31/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_120Assign%model/rnn/batch_normalization_32/betasave_1/RestoreV2:120*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_32/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_121Assign&model/rnn/batch_normalization_32/gammasave_1/RestoreV2:121*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_32/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_122Assign,model/rnn/batch_normalization_32/moving_meansave_1/RestoreV2:122*
T0*?
_class5
31loc:@model/rnn/batch_normalization_32/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_123Assign0model/rnn/batch_normalization_32/moving_variancesave_1/RestoreV2:123*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_32/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_124Assign%model/rnn/batch_normalization_33/betasave_1/RestoreV2:124*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_33/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_125Assign&model/rnn/batch_normalization_33/gammasave_1/RestoreV2:125*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_33/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_126Assign,model/rnn/batch_normalization_33/moving_meansave_1/RestoreV2:126*
use_locking(*
T0*?
_class5
31loc:@model/rnn/batch_normalization_33/moving_mean*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_127Assign0model/rnn/batch_normalization_33/moving_variancesave_1/RestoreV2:127*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_33/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_128Assign%model/rnn/batch_normalization_34/betasave_1/RestoreV2:128*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_34/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_129Assign&model/rnn/batch_normalization_34/gammasave_1/RestoreV2:129*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_34/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_130Assign,model/rnn/batch_normalization_34/moving_meansave_1/RestoreV2:130*
T0*?
_class5
31loc:@model/rnn/batch_normalization_34/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_131Assign0model/rnn/batch_normalization_34/moving_variancesave_1/RestoreV2:131*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_34/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_132Assign%model/rnn/batch_normalization_35/betasave_1/RestoreV2:132*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_35/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_133Assign&model/rnn/batch_normalization_35/gammasave_1/RestoreV2:133*
use_locking(*
T0*9
_class/
-+loc:@model/rnn/batch_normalization_35/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_134Assign,model/rnn/batch_normalization_35/moving_meansave_1/RestoreV2:134*
T0*?
_class5
31loc:@model/rnn/batch_normalization_35/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_135Assign0model/rnn/batch_normalization_35/moving_variancesave_1/RestoreV2:135*
use_locking(*
T0*C
_class9
75loc:@model/rnn/batch_normalization_35/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_136Assign$model/rnn/batch_normalization_4/betasave_1/RestoreV2:136*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_4/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_137Assign%model/rnn/batch_normalization_4/gammasave_1/RestoreV2:137*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_4/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_138Assign+model/rnn/batch_normalization_4/moving_meansave_1/RestoreV2:138*
T0*>
_class4
20loc:@model/rnn/batch_normalization_4/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_139Assign/model/rnn/batch_normalization_4/moving_variancesave_1/RestoreV2:139*
T0*B
_class8
64loc:@model/rnn/batch_normalization_4/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_140Assign$model/rnn/batch_normalization_5/betasave_1/RestoreV2:140*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_5/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_141Assign%model/rnn/batch_normalization_5/gammasave_1/RestoreV2:141*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_5/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_142Assign+model/rnn/batch_normalization_5/moving_meansave_1/RestoreV2:142*
T0*>
_class4
20loc:@model/rnn/batch_normalization_5/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_143Assign/model/rnn/batch_normalization_5/moving_variancesave_1/RestoreV2:143*
T0*B
_class8
64loc:@model/rnn/batch_normalization_5/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_144Assign$model/rnn/batch_normalization_6/betasave_1/RestoreV2:144*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_6/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_145Assign%model/rnn/batch_normalization_6/gammasave_1/RestoreV2:145*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_6/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_146Assign+model/rnn/batch_normalization_6/moving_meansave_1/RestoreV2:146*
T0*>
_class4
20loc:@model/rnn/batch_normalization_6/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_147Assign/model/rnn/batch_normalization_6/moving_variancesave_1/RestoreV2:147*
T0*B
_class8
64loc:@model/rnn/batch_normalization_6/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_148Assign$model/rnn/batch_normalization_7/betasave_1/RestoreV2:148*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_7/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_149Assign%model/rnn/batch_normalization_7/gammasave_1/RestoreV2:149*
use_locking(*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_7/gamma*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_150Assign+model/rnn/batch_normalization_7/moving_meansave_1/RestoreV2:150*
T0*>
_class4
20loc:@model/rnn/batch_normalization_7/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_151Assign/model/rnn/batch_normalization_7/moving_variancesave_1/RestoreV2:151*
T0*B
_class8
64loc:@model/rnn/batch_normalization_7/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_152Assign$model/rnn/batch_normalization_8/betasave_1/RestoreV2:152*
use_locking(*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_8/beta*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_153Assign%model/rnn/batch_normalization_8/gammasave_1/RestoreV2:153*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_8/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_154Assign+model/rnn/batch_normalization_8/moving_meansave_1/RestoreV2:154*
T0*>
_class4
20loc:@model/rnn/batch_normalization_8/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_155Assign/model/rnn/batch_normalization_8/moving_variancesave_1/RestoreV2:155*
use_locking(*
T0*B
_class8
64loc:@model/rnn/batch_normalization_8/moving_variance*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_156Assign$model/rnn/batch_normalization_9/betasave_1/RestoreV2:156*
T0*7
_class-
+)loc:@model/rnn/batch_normalization_9/beta*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_157Assign%model/rnn/batch_normalization_9/gammasave_1/RestoreV2:157*
T0*8
_class.
,*loc:@model/rnn/batch_normalization_9/gamma*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_158Assign+model/rnn/batch_normalization_9/moving_meansave_1/RestoreV2:158*
T0*>
_class4
20loc:@model/rnn/batch_normalization_9/moving_mean*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_159Assign/model/rnn/batch_normalization_9/moving_variancesave_1/RestoreV2:159*
T0*B
_class8
64loc:@model/rnn/batch_normalization_9/moving_variance*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_160Assignmodel/rnn/non_local_g/biassave_1/RestoreV2:160*
use_locking(*
T0*-
_class#
!loc:@model/rnn/non_local_g/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_161Assignmodel/rnn/non_local_g/kernelsave_1/RestoreV2:161*
use_locking(*
T0*/
_class%
#!loc:@model/rnn/non_local_g/kernel*
validate_shape(*(
_output_shapes
:??
?
save_1/Assign_162Assignmodel/rnn/non_local_phi/biassave_1/RestoreV2:162*
T0*/
_class%
#!loc:@model/rnn/non_local_phi/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
save_1/Assign_163Assignmodel/rnn/non_local_phi/kernelsave_1/RestoreV2:163*
T0*1
_class'
%#loc:@model/rnn/non_local_phi/kernel*
validate_shape(*'
_output_shapes
:?@*
use_locking(
?
save_1/Assign_164Assignmodel/rnn/non_local_theta/biassave_1/RestoreV2:164*
T0*1
_class'
%#loc:@model/rnn/non_local_theta/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
save_1/Assign_165Assign model/rnn/non_local_theta/kernelsave_1/RestoreV2:165*
T0*3
_class)
'%loc:@model/rnn/non_local_theta/kernel*
validate_shape(*'
_output_shapes
:?@*
use_locking(
?
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_106^save_1/Assign_107^save_1/Assign_108^save_1/Assign_109^save_1/Assign_11^save_1/Assign_110^save_1/Assign_111^save_1/Assign_112^save_1/Assign_113^save_1/Assign_114^save_1/Assign_115^save_1/Assign_116^save_1/Assign_117^save_1/Assign_118^save_1/Assign_119^save_1/Assign_12^save_1/Assign_120^save_1/Assign_121^save_1/Assign_122^save_1/Assign_123^save_1/Assign_124^save_1/Assign_125^save_1/Assign_126^save_1/Assign_127^save_1/Assign_128^save_1/Assign_129^save_1/Assign_13^save_1/Assign_130^save_1/Assign_131^save_1/Assign_132^save_1/Assign_133^save_1/Assign_134^save_1/Assign_135^save_1/Assign_136^save_1/Assign_137^save_1/Assign_138^save_1/Assign_139^save_1/Assign_14^save_1/Assign_140^save_1/Assign_141^save_1/Assign_142^save_1/Assign_143^save_1/Assign_144^save_1/Assign_145^save_1/Assign_146^save_1/Assign_147^save_1/Assign_148^save_1/Assign_149^save_1/Assign_15^save_1/Assign_150^save_1/Assign_151^save_1/Assign_152^save_1/Assign_153^save_1/Assign_154^save_1/Assign_155^save_1/Assign_156^save_1/Assign_157^save_1/Assign_158^save_1/Assign_159^save_1/Assign_16^save_1/Assign_160^save_1/Assign_161^save_1/Assign_162^save_1/Assign_163^save_1/Assign_164^save_1/Assign_165^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_8^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_9^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"??
	variables????
?
!model/batch_normalization/gamma:0&model/batch_normalization/gamma/Assign&model/batch_normalization/gamma/read:022model/batch_normalization/gamma/Initializer/ones:08
?
 model/batch_normalization/beta:0%model/batch_normalization/beta/Assign%model/batch_normalization/beta/read:022model/batch_normalization/beta/Initializer/zeros:08
?
'model/batch_normalization/moving_mean:0,model/batch_normalization/moving_mean/Assign,model/batch_normalization/moving_mean/read:029model/batch_normalization/moving_mean/Initializer/zeros:0
?
+model/batch_normalization/moving_variance:00model/batch_normalization/moving_variance/Assign0model/batch_normalization/moving_variance/read:02<model/batch_normalization/moving_variance/Initializer/ones:0

model/conv1/kernel:0model/conv1/kernel/Assignmodel/conv1/kernel/read:02/model/conv1/kernel/Initializer/random_uniform:08
n
model/conv1/bias:0model/conv1/bias/Assignmodel/conv1/bias/read:02$model/conv1/bias/Initializer/zeros:08
?
%model/rnn/batch_normalization/gamma:0*model/rnn/batch_normalization/gamma/Assign*model/rnn/batch_normalization/gamma/read:026model/rnn/batch_normalization/gamma/Initializer/ones:08
?
$model/rnn/batch_normalization/beta:0)model/rnn/batch_normalization/beta/Assign)model/rnn/batch_normalization/beta/read:026model/rnn/batch_normalization/beta/Initializer/zeros:08
?
+model/rnn/batch_normalization/moving_mean:00model/rnn/batch_normalization/moving_mean/Assign0model/rnn/batch_normalization/moving_mean/read:02=model/rnn/batch_normalization/moving_mean/Initializer/zeros:0
?
/model/rnn/batch_normalization/moving_variance:04model/rnn/batch_normalization/moving_variance/Assign4model/rnn/batch_normalization/moving_variance/read:02@model/rnn/batch_normalization/moving_variance/Initializer/ones:0
?
"model/rnn/non_local_theta/kernel:0'model/rnn/non_local_theta/kernel/Assign'model/rnn/non_local_theta/kernel/read:02=model/rnn/non_local_theta/kernel/Initializer/random_uniform:08
?
 model/rnn/non_local_theta/bias:0%model/rnn/non_local_theta/bias/Assign%model/rnn/non_local_theta/bias/read:022model/rnn/non_local_theta/bias/Initializer/zeros:08
?
 model/rnn/non_local_phi/kernel:0%model/rnn/non_local_phi/kernel/Assign%model/rnn/non_local_phi/kernel/read:02;model/rnn/non_local_phi/kernel/Initializer/random_uniform:08
?
model/rnn/non_local_phi/bias:0#model/rnn/non_local_phi/bias/Assign#model/rnn/non_local_phi/bias/read:020model/rnn/non_local_phi/bias/Initializer/zeros:08
?
model/rnn/non_local_g/kernel:0#model/rnn/non_local_g/kernel/Assign#model/rnn/non_local_g/kernel/read:020model/rnn/non_local_g/kernel/Initializer/zeros:08
?
model/rnn/non_local_g/bias:0!model/rnn/non_local_g/bias/Assign!model/rnn/non_local_g/bias/read:02.model/rnn/non_local_g/bias/Initializer/zeros:08
?
'model/rnn/batch_normalization_1/gamma:0,model/rnn/batch_normalization_1/gamma/Assign,model/rnn/batch_normalization_1/gamma/read:028model/rnn/batch_normalization_1/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_1/beta:0+model/rnn/batch_normalization_1/beta/Assign+model/rnn/batch_normalization_1/beta/read:028model/rnn/batch_normalization_1/beta/Initializer/zeros:08
?
-model/rnn/batch_normalization_1/moving_mean:02model/rnn/batch_normalization_1/moving_mean/Assign2model/rnn/batch_normalization_1/moving_mean/read:02?model/rnn/batch_normalization_1/moving_mean/Initializer/zeros:0
?
1model/rnn/batch_normalization_1/moving_variance:06model/rnn/batch_normalization_1/moving_variance/Assign6model/rnn/batch_normalization_1/moving_variance/read:02Bmodel/rnn/batch_normalization_1/moving_variance/Initializer/ones:0
?
model/rnn/RB1_a/kernel:0model/rnn/RB1_a/kernel/Assignmodel/rnn/RB1_a/kernel/read:023model/rnn/RB1_a/kernel/Initializer/random_uniform:08
~
model/rnn/RB1_a/bias:0model/rnn/RB1_a/bias/Assignmodel/rnn/RB1_a/bias/read:02(model/rnn/RB1_a/bias/Initializer/zeros:08
?
'model/rnn/batch_normalization_2/gamma:0,model/rnn/batch_normalization_2/gamma/Assign,model/rnn/batch_normalization_2/gamma/read:028model/rnn/batch_normalization_2/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_2/beta:0+model/rnn/batch_normalization_2/beta/Assign+model/rnn/batch_normalization_2/beta/read:028model/rnn/batch_normalization_2/beta/Initializer/zeros:08
?
-model/rnn/batch_normalization_2/moving_mean:02model/rnn/batch_normalization_2/moving_mean/Assign2model/rnn/batch_normalization_2/moving_mean/read:02?model/rnn/batch_normalization_2/moving_mean/Initializer/zeros:0
?
1model/rnn/batch_normalization_2/moving_variance:06model/rnn/batch_normalization_2/moving_variance/Assign6model/rnn/batch_normalization_2/moving_variance/read:02Bmodel/rnn/batch_normalization_2/moving_variance/Initializer/ones:0
?
model/rnn/RB1_b/kernel:0model/rnn/RB1_b/kernel/Assignmodel/rnn/RB1_b/kernel/read:023model/rnn/RB1_b/kernel/Initializer/random_uniform:08
~
model/rnn/RB1_b/bias:0model/rnn/RB1_b/bias/Assignmodel/rnn/RB1_b/bias/read:02(model/rnn/RB1_b/bias/Initializer/zeros:08
?
'model/rnn/batch_normalization_3/gamma:0,model/rnn/batch_normalization_3/gamma/Assign,model/rnn/batch_normalization_3/gamma/read:028model/rnn/batch_normalization_3/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_3/beta:0+model/rnn/batch_normalization_3/beta/Assign+model/rnn/batch_normalization_3/beta/read:028model/rnn/batch_normalization_3/beta/Initializer/zeros:08
?
-model/rnn/batch_normalization_3/moving_mean:02model/rnn/batch_normalization_3/moving_mean/Assign2model/rnn/batch_normalization_3/moving_mean/read:02?model/rnn/batch_normalization_3/moving_mean/Initializer/zeros:0
?
1model/rnn/batch_normalization_3/moving_variance:06model/rnn/batch_normalization_3/moving_variance/Assign6model/rnn/batch_normalization_3/moving_variance/read:02Bmodel/rnn/batch_normalization_3/moving_variance/Initializer/ones:0
?
'model/rnn/batch_normalization_4/gamma:0,model/rnn/batch_normalization_4/gamma/Assign,model/rnn/batch_normalization_4/gamma/read:028model/rnn/batch_normalization_4/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_4/beta:0+model/rnn/batch_normalization_4/beta/Assign+model/rnn/batch_normalization_4/beta/read:028model/rnn/batch_normalization_4/beta/Initializer/zeros:08
?
-model/rnn/batch_normalization_4/moving_mean:02model/rnn/batch_normalization_4/moving_mean/Assign2model/rnn/batch_normalization_4/moving_mean/read:02?model/rnn/batch_normalization_4/moving_mean/Initializer/zeros:0
?
1model/rnn/batch_normalization_4/moving_variance:06model/rnn/batch_normalization_4/moving_variance/Assign6model/rnn/batch_normalization_4/moving_variance/read:02Bmodel/rnn/batch_normalization_4/moving_variance/Initializer/ones:0
?
'model/rnn/batch_normalization_5/gamma:0,model/rnn/batch_normalization_5/gamma/Assign,model/rnn/batch_normalization_5/gamma/read:028model/rnn/batch_normalization_5/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_5/beta:0+model/rnn/batch_normalization_5/beta/Assign+model/rnn/batch_normalization_5/beta/read:028model/rnn/batch_normalization_5/beta/Initializer/zeros:08
?
-model/rnn/batch_normalization_5/moving_mean:02model/rnn/batch_normalization_5/moving_mean/Assign2model/rnn/batch_normalization_5/moving_mean/read:02?model/rnn/batch_normalization_5/moving_mean/Initializer/zeros:0
?
1model/rnn/batch_normalization_5/moving_variance:06model/rnn/batch_normalization_5/moving_variance/Assign6model/rnn/batch_normalization_5/moving_variance/read:02Bmodel/rnn/batch_normalization_5/moving_variance/Initializer/ones:0
?
'model/rnn/batch_normalization_6/gamma:0,model/rnn/batch_normalization_6/gamma/Assign,model/rnn/batch_normalization_6/gamma/read:028model/rnn/batch_normalization_6/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_6/beta:0+model/rnn/batch_normalization_6/beta/Assign+model/rnn/batch_normalization_6/beta/read:028model/rnn/batch_normalization_6/beta/Initializer/zeros:08
?
-model/rnn/batch_normalization_6/moving_mean:02model/rnn/batch_normalization_6/moving_mean/Assign2model/rnn/batch_normalization_6/moving_mean/read:02?model/rnn/batch_normalization_6/moving_mean/Initializer/zeros:0
?
1model/rnn/batch_normalization_6/moving_variance:06model/rnn/batch_normalization_6/moving_variance/Assign6model/rnn/batch_normalization_6/moving_variance/read:02Bmodel/rnn/batch_normalization_6/moving_variance/Initializer/ones:0
?
'model/rnn/batch_normalization_7/gamma:0,model/rnn/batch_normalization_7/gamma/Assign,model/rnn/batch_normalization_7/gamma/read:028model/rnn/batch_normalization_7/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_7/beta:0+model/rnn/batch_normalization_7/beta/Assign+model/rnn/batch_normalization_7/beta/read:028model/rnn/batch_normalization_7/beta/Initializer/zeros:08
?
-model/rnn/batch_normalization_7/moving_mean:02model/rnn/batch_normalization_7/moving_mean/Assign2model/rnn/batch_normalization_7/moving_mean/read:02?model/rnn/batch_normalization_7/moving_mean/Initializer/zeros:0
?
1model/rnn/batch_normalization_7/moving_variance:06model/rnn/batch_normalization_7/moving_variance/Assign6model/rnn/batch_normalization_7/moving_variance/read:02Bmodel/rnn/batch_normalization_7/moving_variance/Initializer/ones:0
?
'model/rnn/batch_normalization_8/gamma:0,model/rnn/batch_normalization_8/gamma/Assign,model/rnn/batch_normalization_8/gamma/read:028model/rnn/batch_normalization_8/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_8/beta:0+model/rnn/batch_normalization_8/beta/Assign+model/rnn/batch_normalization_8/beta/read:028model/rnn/batch_normalization_8/beta/Initializer/zeros:08
?
-model/rnn/batch_normalization_8/moving_mean:02model/rnn/batch_normalization_8/moving_mean/Assign2model/rnn/batch_normalization_8/moving_mean/read:02?model/rnn/batch_normalization_8/moving_mean/Initializer/zeros:0
?
1model/rnn/batch_normalization_8/moving_variance:06model/rnn/batch_normalization_8/moving_variance/Assign6model/rnn/batch_normalization_8/moving_variance/read:02Bmodel/rnn/batch_normalization_8/moving_variance/Initializer/ones:0
?
'model/rnn/batch_normalization_9/gamma:0,model/rnn/batch_normalization_9/gamma/Assign,model/rnn/batch_normalization_9/gamma/read:028model/rnn/batch_normalization_9/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_9/beta:0+model/rnn/batch_normalization_9/beta/Assign+model/rnn/batch_normalization_9/beta/read:028model/rnn/batch_normalization_9/beta/Initializer/zeros:08
?
-model/rnn/batch_normalization_9/moving_mean:02model/rnn/batch_normalization_9/moving_mean/Assign2model/rnn/batch_normalization_9/moving_mean/read:02?model/rnn/batch_normalization_9/moving_mean/Initializer/zeros:0
?
1model/rnn/batch_normalization_9/moving_variance:06model/rnn/batch_normalization_9/moving_variance/Assign6model/rnn/batch_normalization_9/moving_variance/read:02Bmodel/rnn/batch_normalization_9/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_10/gamma:0-model/rnn/batch_normalization_10/gamma/Assign-model/rnn/batch_normalization_10/gamma/read:029model/rnn/batch_normalization_10/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_10/beta:0,model/rnn/batch_normalization_10/beta/Assign,model/rnn/batch_normalization_10/beta/read:029model/rnn/batch_normalization_10/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_10/moving_mean:03model/rnn/batch_normalization_10/moving_mean/Assign3model/rnn/batch_normalization_10/moving_mean/read:02@model/rnn/batch_normalization_10/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_10/moving_variance:07model/rnn/batch_normalization_10/moving_variance/Assign7model/rnn/batch_normalization_10/moving_variance/read:02Cmodel/rnn/batch_normalization_10/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_11/gamma:0-model/rnn/batch_normalization_11/gamma/Assign-model/rnn/batch_normalization_11/gamma/read:029model/rnn/batch_normalization_11/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_11/beta:0,model/rnn/batch_normalization_11/beta/Assign,model/rnn/batch_normalization_11/beta/read:029model/rnn/batch_normalization_11/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_11/moving_mean:03model/rnn/batch_normalization_11/moving_mean/Assign3model/rnn/batch_normalization_11/moving_mean/read:02@model/rnn/batch_normalization_11/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_11/moving_variance:07model/rnn/batch_normalization_11/moving_variance/Assign7model/rnn/batch_normalization_11/moving_variance/read:02Cmodel/rnn/batch_normalization_11/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_12/gamma:0-model/rnn/batch_normalization_12/gamma/Assign-model/rnn/batch_normalization_12/gamma/read:029model/rnn/batch_normalization_12/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_12/beta:0,model/rnn/batch_normalization_12/beta/Assign,model/rnn/batch_normalization_12/beta/read:029model/rnn/batch_normalization_12/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_12/moving_mean:03model/rnn/batch_normalization_12/moving_mean/Assign3model/rnn/batch_normalization_12/moving_mean/read:02@model/rnn/batch_normalization_12/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_12/moving_variance:07model/rnn/batch_normalization_12/moving_variance/Assign7model/rnn/batch_normalization_12/moving_variance/read:02Cmodel/rnn/batch_normalization_12/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_13/gamma:0-model/rnn/batch_normalization_13/gamma/Assign-model/rnn/batch_normalization_13/gamma/read:029model/rnn/batch_normalization_13/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_13/beta:0,model/rnn/batch_normalization_13/beta/Assign,model/rnn/batch_normalization_13/beta/read:029model/rnn/batch_normalization_13/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_13/moving_mean:03model/rnn/batch_normalization_13/moving_mean/Assign3model/rnn/batch_normalization_13/moving_mean/read:02@model/rnn/batch_normalization_13/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_13/moving_variance:07model/rnn/batch_normalization_13/moving_variance/Assign7model/rnn/batch_normalization_13/moving_variance/read:02Cmodel/rnn/batch_normalization_13/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_14/gamma:0-model/rnn/batch_normalization_14/gamma/Assign-model/rnn/batch_normalization_14/gamma/read:029model/rnn/batch_normalization_14/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_14/beta:0,model/rnn/batch_normalization_14/beta/Assign,model/rnn/batch_normalization_14/beta/read:029model/rnn/batch_normalization_14/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_14/moving_mean:03model/rnn/batch_normalization_14/moving_mean/Assign3model/rnn/batch_normalization_14/moving_mean/read:02@model/rnn/batch_normalization_14/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_14/moving_variance:07model/rnn/batch_normalization_14/moving_variance/Assign7model/rnn/batch_normalization_14/moving_variance/read:02Cmodel/rnn/batch_normalization_14/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_15/gamma:0-model/rnn/batch_normalization_15/gamma/Assign-model/rnn/batch_normalization_15/gamma/read:029model/rnn/batch_normalization_15/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_15/beta:0,model/rnn/batch_normalization_15/beta/Assign,model/rnn/batch_normalization_15/beta/read:029model/rnn/batch_normalization_15/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_15/moving_mean:03model/rnn/batch_normalization_15/moving_mean/Assign3model/rnn/batch_normalization_15/moving_mean/read:02@model/rnn/batch_normalization_15/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_15/moving_variance:07model/rnn/batch_normalization_15/moving_variance/Assign7model/rnn/batch_normalization_15/moving_variance/read:02Cmodel/rnn/batch_normalization_15/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_16/gamma:0-model/rnn/batch_normalization_16/gamma/Assign-model/rnn/batch_normalization_16/gamma/read:029model/rnn/batch_normalization_16/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_16/beta:0,model/rnn/batch_normalization_16/beta/Assign,model/rnn/batch_normalization_16/beta/read:029model/rnn/batch_normalization_16/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_16/moving_mean:03model/rnn/batch_normalization_16/moving_mean/Assign3model/rnn/batch_normalization_16/moving_mean/read:02@model/rnn/batch_normalization_16/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_16/moving_variance:07model/rnn/batch_normalization_16/moving_variance/Assign7model/rnn/batch_normalization_16/moving_variance/read:02Cmodel/rnn/batch_normalization_16/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_17/gamma:0-model/rnn/batch_normalization_17/gamma/Assign-model/rnn/batch_normalization_17/gamma/read:029model/rnn/batch_normalization_17/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_17/beta:0,model/rnn/batch_normalization_17/beta/Assign,model/rnn/batch_normalization_17/beta/read:029model/rnn/batch_normalization_17/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_17/moving_mean:03model/rnn/batch_normalization_17/moving_mean/Assign3model/rnn/batch_normalization_17/moving_mean/read:02@model/rnn/batch_normalization_17/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_17/moving_variance:07model/rnn/batch_normalization_17/moving_variance/Assign7model/rnn/batch_normalization_17/moving_variance/read:02Cmodel/rnn/batch_normalization_17/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_18/gamma:0-model/rnn/batch_normalization_18/gamma/Assign-model/rnn/batch_normalization_18/gamma/read:029model/rnn/batch_normalization_18/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_18/beta:0,model/rnn/batch_normalization_18/beta/Assign,model/rnn/batch_normalization_18/beta/read:029model/rnn/batch_normalization_18/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_18/moving_mean:03model/rnn/batch_normalization_18/moving_mean/Assign3model/rnn/batch_normalization_18/moving_mean/read:02@model/rnn/batch_normalization_18/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_18/moving_variance:07model/rnn/batch_normalization_18/moving_variance/Assign7model/rnn/batch_normalization_18/moving_variance/read:02Cmodel/rnn/batch_normalization_18/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_19/gamma:0-model/rnn/batch_normalization_19/gamma/Assign-model/rnn/batch_normalization_19/gamma/read:029model/rnn/batch_normalization_19/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_19/beta:0,model/rnn/batch_normalization_19/beta/Assign,model/rnn/batch_normalization_19/beta/read:029model/rnn/batch_normalization_19/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_19/moving_mean:03model/rnn/batch_normalization_19/moving_mean/Assign3model/rnn/batch_normalization_19/moving_mean/read:02@model/rnn/batch_normalization_19/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_19/moving_variance:07model/rnn/batch_normalization_19/moving_variance/Assign7model/rnn/batch_normalization_19/moving_variance/read:02Cmodel/rnn/batch_normalization_19/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_20/gamma:0-model/rnn/batch_normalization_20/gamma/Assign-model/rnn/batch_normalization_20/gamma/read:029model/rnn/batch_normalization_20/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_20/beta:0,model/rnn/batch_normalization_20/beta/Assign,model/rnn/batch_normalization_20/beta/read:029model/rnn/batch_normalization_20/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_20/moving_mean:03model/rnn/batch_normalization_20/moving_mean/Assign3model/rnn/batch_normalization_20/moving_mean/read:02@model/rnn/batch_normalization_20/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_20/moving_variance:07model/rnn/batch_normalization_20/moving_variance/Assign7model/rnn/batch_normalization_20/moving_variance/read:02Cmodel/rnn/batch_normalization_20/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_21/gamma:0-model/rnn/batch_normalization_21/gamma/Assign-model/rnn/batch_normalization_21/gamma/read:029model/rnn/batch_normalization_21/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_21/beta:0,model/rnn/batch_normalization_21/beta/Assign,model/rnn/batch_normalization_21/beta/read:029model/rnn/batch_normalization_21/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_21/moving_mean:03model/rnn/batch_normalization_21/moving_mean/Assign3model/rnn/batch_normalization_21/moving_mean/read:02@model/rnn/batch_normalization_21/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_21/moving_variance:07model/rnn/batch_normalization_21/moving_variance/Assign7model/rnn/batch_normalization_21/moving_variance/read:02Cmodel/rnn/batch_normalization_21/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_22/gamma:0-model/rnn/batch_normalization_22/gamma/Assign-model/rnn/batch_normalization_22/gamma/read:029model/rnn/batch_normalization_22/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_22/beta:0,model/rnn/batch_normalization_22/beta/Assign,model/rnn/batch_normalization_22/beta/read:029model/rnn/batch_normalization_22/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_22/moving_mean:03model/rnn/batch_normalization_22/moving_mean/Assign3model/rnn/batch_normalization_22/moving_mean/read:02@model/rnn/batch_normalization_22/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_22/moving_variance:07model/rnn/batch_normalization_22/moving_variance/Assign7model/rnn/batch_normalization_22/moving_variance/read:02Cmodel/rnn/batch_normalization_22/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_23/gamma:0-model/rnn/batch_normalization_23/gamma/Assign-model/rnn/batch_normalization_23/gamma/read:029model/rnn/batch_normalization_23/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_23/beta:0,model/rnn/batch_normalization_23/beta/Assign,model/rnn/batch_normalization_23/beta/read:029model/rnn/batch_normalization_23/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_23/moving_mean:03model/rnn/batch_normalization_23/moving_mean/Assign3model/rnn/batch_normalization_23/moving_mean/read:02@model/rnn/batch_normalization_23/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_23/moving_variance:07model/rnn/batch_normalization_23/moving_variance/Assign7model/rnn/batch_normalization_23/moving_variance/read:02Cmodel/rnn/batch_normalization_23/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_24/gamma:0-model/rnn/batch_normalization_24/gamma/Assign-model/rnn/batch_normalization_24/gamma/read:029model/rnn/batch_normalization_24/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_24/beta:0,model/rnn/batch_normalization_24/beta/Assign,model/rnn/batch_normalization_24/beta/read:029model/rnn/batch_normalization_24/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_24/moving_mean:03model/rnn/batch_normalization_24/moving_mean/Assign3model/rnn/batch_normalization_24/moving_mean/read:02@model/rnn/batch_normalization_24/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_24/moving_variance:07model/rnn/batch_normalization_24/moving_variance/Assign7model/rnn/batch_normalization_24/moving_variance/read:02Cmodel/rnn/batch_normalization_24/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_25/gamma:0-model/rnn/batch_normalization_25/gamma/Assign-model/rnn/batch_normalization_25/gamma/read:029model/rnn/batch_normalization_25/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_25/beta:0,model/rnn/batch_normalization_25/beta/Assign,model/rnn/batch_normalization_25/beta/read:029model/rnn/batch_normalization_25/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_25/moving_mean:03model/rnn/batch_normalization_25/moving_mean/Assign3model/rnn/batch_normalization_25/moving_mean/read:02@model/rnn/batch_normalization_25/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_25/moving_variance:07model/rnn/batch_normalization_25/moving_variance/Assign7model/rnn/batch_normalization_25/moving_variance/read:02Cmodel/rnn/batch_normalization_25/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_26/gamma:0-model/rnn/batch_normalization_26/gamma/Assign-model/rnn/batch_normalization_26/gamma/read:029model/rnn/batch_normalization_26/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_26/beta:0,model/rnn/batch_normalization_26/beta/Assign,model/rnn/batch_normalization_26/beta/read:029model/rnn/batch_normalization_26/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_26/moving_mean:03model/rnn/batch_normalization_26/moving_mean/Assign3model/rnn/batch_normalization_26/moving_mean/read:02@model/rnn/batch_normalization_26/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_26/moving_variance:07model/rnn/batch_normalization_26/moving_variance/Assign7model/rnn/batch_normalization_26/moving_variance/read:02Cmodel/rnn/batch_normalization_26/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_27/gamma:0-model/rnn/batch_normalization_27/gamma/Assign-model/rnn/batch_normalization_27/gamma/read:029model/rnn/batch_normalization_27/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_27/beta:0,model/rnn/batch_normalization_27/beta/Assign,model/rnn/batch_normalization_27/beta/read:029model/rnn/batch_normalization_27/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_27/moving_mean:03model/rnn/batch_normalization_27/moving_mean/Assign3model/rnn/batch_normalization_27/moving_mean/read:02@model/rnn/batch_normalization_27/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_27/moving_variance:07model/rnn/batch_normalization_27/moving_variance/Assign7model/rnn/batch_normalization_27/moving_variance/read:02Cmodel/rnn/batch_normalization_27/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_28/gamma:0-model/rnn/batch_normalization_28/gamma/Assign-model/rnn/batch_normalization_28/gamma/read:029model/rnn/batch_normalization_28/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_28/beta:0,model/rnn/batch_normalization_28/beta/Assign,model/rnn/batch_normalization_28/beta/read:029model/rnn/batch_normalization_28/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_28/moving_mean:03model/rnn/batch_normalization_28/moving_mean/Assign3model/rnn/batch_normalization_28/moving_mean/read:02@model/rnn/batch_normalization_28/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_28/moving_variance:07model/rnn/batch_normalization_28/moving_variance/Assign7model/rnn/batch_normalization_28/moving_variance/read:02Cmodel/rnn/batch_normalization_28/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_29/gamma:0-model/rnn/batch_normalization_29/gamma/Assign-model/rnn/batch_normalization_29/gamma/read:029model/rnn/batch_normalization_29/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_29/beta:0,model/rnn/batch_normalization_29/beta/Assign,model/rnn/batch_normalization_29/beta/read:029model/rnn/batch_normalization_29/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_29/moving_mean:03model/rnn/batch_normalization_29/moving_mean/Assign3model/rnn/batch_normalization_29/moving_mean/read:02@model/rnn/batch_normalization_29/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_29/moving_variance:07model/rnn/batch_normalization_29/moving_variance/Assign7model/rnn/batch_normalization_29/moving_variance/read:02Cmodel/rnn/batch_normalization_29/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_30/gamma:0-model/rnn/batch_normalization_30/gamma/Assign-model/rnn/batch_normalization_30/gamma/read:029model/rnn/batch_normalization_30/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_30/beta:0,model/rnn/batch_normalization_30/beta/Assign,model/rnn/batch_normalization_30/beta/read:029model/rnn/batch_normalization_30/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_30/moving_mean:03model/rnn/batch_normalization_30/moving_mean/Assign3model/rnn/batch_normalization_30/moving_mean/read:02@model/rnn/batch_normalization_30/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_30/moving_variance:07model/rnn/batch_normalization_30/moving_variance/Assign7model/rnn/batch_normalization_30/moving_variance/read:02Cmodel/rnn/batch_normalization_30/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_31/gamma:0-model/rnn/batch_normalization_31/gamma/Assign-model/rnn/batch_normalization_31/gamma/read:029model/rnn/batch_normalization_31/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_31/beta:0,model/rnn/batch_normalization_31/beta/Assign,model/rnn/batch_normalization_31/beta/read:029model/rnn/batch_normalization_31/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_31/moving_mean:03model/rnn/batch_normalization_31/moving_mean/Assign3model/rnn/batch_normalization_31/moving_mean/read:02@model/rnn/batch_normalization_31/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_31/moving_variance:07model/rnn/batch_normalization_31/moving_variance/Assign7model/rnn/batch_normalization_31/moving_variance/read:02Cmodel/rnn/batch_normalization_31/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_32/gamma:0-model/rnn/batch_normalization_32/gamma/Assign-model/rnn/batch_normalization_32/gamma/read:029model/rnn/batch_normalization_32/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_32/beta:0,model/rnn/batch_normalization_32/beta/Assign,model/rnn/batch_normalization_32/beta/read:029model/rnn/batch_normalization_32/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_32/moving_mean:03model/rnn/batch_normalization_32/moving_mean/Assign3model/rnn/batch_normalization_32/moving_mean/read:02@model/rnn/batch_normalization_32/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_32/moving_variance:07model/rnn/batch_normalization_32/moving_variance/Assign7model/rnn/batch_normalization_32/moving_variance/read:02Cmodel/rnn/batch_normalization_32/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_33/gamma:0-model/rnn/batch_normalization_33/gamma/Assign-model/rnn/batch_normalization_33/gamma/read:029model/rnn/batch_normalization_33/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_33/beta:0,model/rnn/batch_normalization_33/beta/Assign,model/rnn/batch_normalization_33/beta/read:029model/rnn/batch_normalization_33/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_33/moving_mean:03model/rnn/batch_normalization_33/moving_mean/Assign3model/rnn/batch_normalization_33/moving_mean/read:02@model/rnn/batch_normalization_33/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_33/moving_variance:07model/rnn/batch_normalization_33/moving_variance/Assign7model/rnn/batch_normalization_33/moving_variance/read:02Cmodel/rnn/batch_normalization_33/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_34/gamma:0-model/rnn/batch_normalization_34/gamma/Assign-model/rnn/batch_normalization_34/gamma/read:029model/rnn/batch_normalization_34/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_34/beta:0,model/rnn/batch_normalization_34/beta/Assign,model/rnn/batch_normalization_34/beta/read:029model/rnn/batch_normalization_34/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_34/moving_mean:03model/rnn/batch_normalization_34/moving_mean/Assign3model/rnn/batch_normalization_34/moving_mean/read:02@model/rnn/batch_normalization_34/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_34/moving_variance:07model/rnn/batch_normalization_34/moving_variance/Assign7model/rnn/batch_normalization_34/moving_variance/read:02Cmodel/rnn/batch_normalization_34/moving_variance/Initializer/ones:0
?
(model/rnn/batch_normalization_35/gamma:0-model/rnn/batch_normalization_35/gamma/Assign-model/rnn/batch_normalization_35/gamma/read:029model/rnn/batch_normalization_35/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_35/beta:0,model/rnn/batch_normalization_35/beta/Assign,model/rnn/batch_normalization_35/beta/read:029model/rnn/batch_normalization_35/beta/Initializer/zeros:08
?
.model/rnn/batch_normalization_35/moving_mean:03model/rnn/batch_normalization_35/moving_mean/Assign3model/rnn/batch_normalization_35/moving_mean/read:02@model/rnn/batch_normalization_35/moving_mean/Initializer/zeros:0
?
2model/rnn/batch_normalization_35/moving_variance:07model/rnn/batch_normalization_35/moving_variance/Assign7model/rnn/batch_normalization_35/moving_variance/read:02Cmodel/rnn/batch_normalization_35/moving_variance/Initializer/ones:0
?
#model/batch_normalization_1/gamma:0(model/batch_normalization_1/gamma/Assign(model/batch_normalization_1/gamma/read:024model/batch_normalization_1/gamma/Initializer/ones:08
?
"model/batch_normalization_1/beta:0'model/batch_normalization_1/beta/Assign'model/batch_normalization_1/beta/read:024model/batch_normalization_1/beta/Initializer/zeros:08
?
)model/batch_normalization_1/moving_mean:0.model/batch_normalization_1/moving_mean/Assign.model/batch_normalization_1/moving_mean/read:02;model/batch_normalization_1/moving_mean/Initializer/zeros:0
?
-model/batch_normalization_1/moving_variance:02model/batch_normalization_1/moving_variance/Assign2model/batch_normalization_1/moving_variance/read:02>model/batch_normalization_1/moving_variance/Initializer/ones:0
?
model/conv_end/kernel:0model/conv_end/kernel/Assignmodel/conv_end/kernel/read:022model/conv_end/kernel/Initializer/random_uniform:08
z
model/conv_end/bias:0model/conv_end/bias/Assignmodel/conv_end/bias/read:02'model/conv_end/bias/Initializer/zeros:08"ڄ
trainable_variables????
?
!model/batch_normalization/gamma:0&model/batch_normalization/gamma/Assign&model/batch_normalization/gamma/read:022model/batch_normalization/gamma/Initializer/ones:08
?
 model/batch_normalization/beta:0%model/batch_normalization/beta/Assign%model/batch_normalization/beta/read:022model/batch_normalization/beta/Initializer/zeros:08

model/conv1/kernel:0model/conv1/kernel/Assignmodel/conv1/kernel/read:02/model/conv1/kernel/Initializer/random_uniform:08
n
model/conv1/bias:0model/conv1/bias/Assignmodel/conv1/bias/read:02$model/conv1/bias/Initializer/zeros:08
?
%model/rnn/batch_normalization/gamma:0*model/rnn/batch_normalization/gamma/Assign*model/rnn/batch_normalization/gamma/read:026model/rnn/batch_normalization/gamma/Initializer/ones:08
?
$model/rnn/batch_normalization/beta:0)model/rnn/batch_normalization/beta/Assign)model/rnn/batch_normalization/beta/read:026model/rnn/batch_normalization/beta/Initializer/zeros:08
?
"model/rnn/non_local_theta/kernel:0'model/rnn/non_local_theta/kernel/Assign'model/rnn/non_local_theta/kernel/read:02=model/rnn/non_local_theta/kernel/Initializer/random_uniform:08
?
 model/rnn/non_local_theta/bias:0%model/rnn/non_local_theta/bias/Assign%model/rnn/non_local_theta/bias/read:022model/rnn/non_local_theta/bias/Initializer/zeros:08
?
 model/rnn/non_local_phi/kernel:0%model/rnn/non_local_phi/kernel/Assign%model/rnn/non_local_phi/kernel/read:02;model/rnn/non_local_phi/kernel/Initializer/random_uniform:08
?
model/rnn/non_local_phi/bias:0#model/rnn/non_local_phi/bias/Assign#model/rnn/non_local_phi/bias/read:020model/rnn/non_local_phi/bias/Initializer/zeros:08
?
model/rnn/non_local_g/kernel:0#model/rnn/non_local_g/kernel/Assign#model/rnn/non_local_g/kernel/read:020model/rnn/non_local_g/kernel/Initializer/zeros:08
?
model/rnn/non_local_g/bias:0!model/rnn/non_local_g/bias/Assign!model/rnn/non_local_g/bias/read:02.model/rnn/non_local_g/bias/Initializer/zeros:08
?
'model/rnn/batch_normalization_1/gamma:0,model/rnn/batch_normalization_1/gamma/Assign,model/rnn/batch_normalization_1/gamma/read:028model/rnn/batch_normalization_1/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_1/beta:0+model/rnn/batch_normalization_1/beta/Assign+model/rnn/batch_normalization_1/beta/read:028model/rnn/batch_normalization_1/beta/Initializer/zeros:08
?
model/rnn/RB1_a/kernel:0model/rnn/RB1_a/kernel/Assignmodel/rnn/RB1_a/kernel/read:023model/rnn/RB1_a/kernel/Initializer/random_uniform:08
~
model/rnn/RB1_a/bias:0model/rnn/RB1_a/bias/Assignmodel/rnn/RB1_a/bias/read:02(model/rnn/RB1_a/bias/Initializer/zeros:08
?
'model/rnn/batch_normalization_2/gamma:0,model/rnn/batch_normalization_2/gamma/Assign,model/rnn/batch_normalization_2/gamma/read:028model/rnn/batch_normalization_2/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_2/beta:0+model/rnn/batch_normalization_2/beta/Assign+model/rnn/batch_normalization_2/beta/read:028model/rnn/batch_normalization_2/beta/Initializer/zeros:08
?
model/rnn/RB1_b/kernel:0model/rnn/RB1_b/kernel/Assignmodel/rnn/RB1_b/kernel/read:023model/rnn/RB1_b/kernel/Initializer/random_uniform:08
~
model/rnn/RB1_b/bias:0model/rnn/RB1_b/bias/Assignmodel/rnn/RB1_b/bias/read:02(model/rnn/RB1_b/bias/Initializer/zeros:08
?
'model/rnn/batch_normalization_3/gamma:0,model/rnn/batch_normalization_3/gamma/Assign,model/rnn/batch_normalization_3/gamma/read:028model/rnn/batch_normalization_3/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_3/beta:0+model/rnn/batch_normalization_3/beta/Assign+model/rnn/batch_normalization_3/beta/read:028model/rnn/batch_normalization_3/beta/Initializer/zeros:08
?
'model/rnn/batch_normalization_4/gamma:0,model/rnn/batch_normalization_4/gamma/Assign,model/rnn/batch_normalization_4/gamma/read:028model/rnn/batch_normalization_4/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_4/beta:0+model/rnn/batch_normalization_4/beta/Assign+model/rnn/batch_normalization_4/beta/read:028model/rnn/batch_normalization_4/beta/Initializer/zeros:08
?
'model/rnn/batch_normalization_5/gamma:0,model/rnn/batch_normalization_5/gamma/Assign,model/rnn/batch_normalization_5/gamma/read:028model/rnn/batch_normalization_5/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_5/beta:0+model/rnn/batch_normalization_5/beta/Assign+model/rnn/batch_normalization_5/beta/read:028model/rnn/batch_normalization_5/beta/Initializer/zeros:08
?
'model/rnn/batch_normalization_6/gamma:0,model/rnn/batch_normalization_6/gamma/Assign,model/rnn/batch_normalization_6/gamma/read:028model/rnn/batch_normalization_6/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_6/beta:0+model/rnn/batch_normalization_6/beta/Assign+model/rnn/batch_normalization_6/beta/read:028model/rnn/batch_normalization_6/beta/Initializer/zeros:08
?
'model/rnn/batch_normalization_7/gamma:0,model/rnn/batch_normalization_7/gamma/Assign,model/rnn/batch_normalization_7/gamma/read:028model/rnn/batch_normalization_7/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_7/beta:0+model/rnn/batch_normalization_7/beta/Assign+model/rnn/batch_normalization_7/beta/read:028model/rnn/batch_normalization_7/beta/Initializer/zeros:08
?
'model/rnn/batch_normalization_8/gamma:0,model/rnn/batch_normalization_8/gamma/Assign,model/rnn/batch_normalization_8/gamma/read:028model/rnn/batch_normalization_8/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_8/beta:0+model/rnn/batch_normalization_8/beta/Assign+model/rnn/batch_normalization_8/beta/read:028model/rnn/batch_normalization_8/beta/Initializer/zeros:08
?
'model/rnn/batch_normalization_9/gamma:0,model/rnn/batch_normalization_9/gamma/Assign,model/rnn/batch_normalization_9/gamma/read:028model/rnn/batch_normalization_9/gamma/Initializer/ones:08
?
&model/rnn/batch_normalization_9/beta:0+model/rnn/batch_normalization_9/beta/Assign+model/rnn/batch_normalization_9/beta/read:028model/rnn/batch_normalization_9/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_10/gamma:0-model/rnn/batch_normalization_10/gamma/Assign-model/rnn/batch_normalization_10/gamma/read:029model/rnn/batch_normalization_10/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_10/beta:0,model/rnn/batch_normalization_10/beta/Assign,model/rnn/batch_normalization_10/beta/read:029model/rnn/batch_normalization_10/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_11/gamma:0-model/rnn/batch_normalization_11/gamma/Assign-model/rnn/batch_normalization_11/gamma/read:029model/rnn/batch_normalization_11/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_11/beta:0,model/rnn/batch_normalization_11/beta/Assign,model/rnn/batch_normalization_11/beta/read:029model/rnn/batch_normalization_11/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_12/gamma:0-model/rnn/batch_normalization_12/gamma/Assign-model/rnn/batch_normalization_12/gamma/read:029model/rnn/batch_normalization_12/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_12/beta:0,model/rnn/batch_normalization_12/beta/Assign,model/rnn/batch_normalization_12/beta/read:029model/rnn/batch_normalization_12/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_13/gamma:0-model/rnn/batch_normalization_13/gamma/Assign-model/rnn/batch_normalization_13/gamma/read:029model/rnn/batch_normalization_13/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_13/beta:0,model/rnn/batch_normalization_13/beta/Assign,model/rnn/batch_normalization_13/beta/read:029model/rnn/batch_normalization_13/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_14/gamma:0-model/rnn/batch_normalization_14/gamma/Assign-model/rnn/batch_normalization_14/gamma/read:029model/rnn/batch_normalization_14/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_14/beta:0,model/rnn/batch_normalization_14/beta/Assign,model/rnn/batch_normalization_14/beta/read:029model/rnn/batch_normalization_14/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_15/gamma:0-model/rnn/batch_normalization_15/gamma/Assign-model/rnn/batch_normalization_15/gamma/read:029model/rnn/batch_normalization_15/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_15/beta:0,model/rnn/batch_normalization_15/beta/Assign,model/rnn/batch_normalization_15/beta/read:029model/rnn/batch_normalization_15/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_16/gamma:0-model/rnn/batch_normalization_16/gamma/Assign-model/rnn/batch_normalization_16/gamma/read:029model/rnn/batch_normalization_16/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_16/beta:0,model/rnn/batch_normalization_16/beta/Assign,model/rnn/batch_normalization_16/beta/read:029model/rnn/batch_normalization_16/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_17/gamma:0-model/rnn/batch_normalization_17/gamma/Assign-model/rnn/batch_normalization_17/gamma/read:029model/rnn/batch_normalization_17/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_17/beta:0,model/rnn/batch_normalization_17/beta/Assign,model/rnn/batch_normalization_17/beta/read:029model/rnn/batch_normalization_17/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_18/gamma:0-model/rnn/batch_normalization_18/gamma/Assign-model/rnn/batch_normalization_18/gamma/read:029model/rnn/batch_normalization_18/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_18/beta:0,model/rnn/batch_normalization_18/beta/Assign,model/rnn/batch_normalization_18/beta/read:029model/rnn/batch_normalization_18/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_19/gamma:0-model/rnn/batch_normalization_19/gamma/Assign-model/rnn/batch_normalization_19/gamma/read:029model/rnn/batch_normalization_19/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_19/beta:0,model/rnn/batch_normalization_19/beta/Assign,model/rnn/batch_normalization_19/beta/read:029model/rnn/batch_normalization_19/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_20/gamma:0-model/rnn/batch_normalization_20/gamma/Assign-model/rnn/batch_normalization_20/gamma/read:029model/rnn/batch_normalization_20/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_20/beta:0,model/rnn/batch_normalization_20/beta/Assign,model/rnn/batch_normalization_20/beta/read:029model/rnn/batch_normalization_20/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_21/gamma:0-model/rnn/batch_normalization_21/gamma/Assign-model/rnn/batch_normalization_21/gamma/read:029model/rnn/batch_normalization_21/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_21/beta:0,model/rnn/batch_normalization_21/beta/Assign,model/rnn/batch_normalization_21/beta/read:029model/rnn/batch_normalization_21/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_22/gamma:0-model/rnn/batch_normalization_22/gamma/Assign-model/rnn/batch_normalization_22/gamma/read:029model/rnn/batch_normalization_22/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_22/beta:0,model/rnn/batch_normalization_22/beta/Assign,model/rnn/batch_normalization_22/beta/read:029model/rnn/batch_normalization_22/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_23/gamma:0-model/rnn/batch_normalization_23/gamma/Assign-model/rnn/batch_normalization_23/gamma/read:029model/rnn/batch_normalization_23/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_23/beta:0,model/rnn/batch_normalization_23/beta/Assign,model/rnn/batch_normalization_23/beta/read:029model/rnn/batch_normalization_23/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_24/gamma:0-model/rnn/batch_normalization_24/gamma/Assign-model/rnn/batch_normalization_24/gamma/read:029model/rnn/batch_normalization_24/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_24/beta:0,model/rnn/batch_normalization_24/beta/Assign,model/rnn/batch_normalization_24/beta/read:029model/rnn/batch_normalization_24/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_25/gamma:0-model/rnn/batch_normalization_25/gamma/Assign-model/rnn/batch_normalization_25/gamma/read:029model/rnn/batch_normalization_25/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_25/beta:0,model/rnn/batch_normalization_25/beta/Assign,model/rnn/batch_normalization_25/beta/read:029model/rnn/batch_normalization_25/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_26/gamma:0-model/rnn/batch_normalization_26/gamma/Assign-model/rnn/batch_normalization_26/gamma/read:029model/rnn/batch_normalization_26/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_26/beta:0,model/rnn/batch_normalization_26/beta/Assign,model/rnn/batch_normalization_26/beta/read:029model/rnn/batch_normalization_26/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_27/gamma:0-model/rnn/batch_normalization_27/gamma/Assign-model/rnn/batch_normalization_27/gamma/read:029model/rnn/batch_normalization_27/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_27/beta:0,model/rnn/batch_normalization_27/beta/Assign,model/rnn/batch_normalization_27/beta/read:029model/rnn/batch_normalization_27/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_28/gamma:0-model/rnn/batch_normalization_28/gamma/Assign-model/rnn/batch_normalization_28/gamma/read:029model/rnn/batch_normalization_28/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_28/beta:0,model/rnn/batch_normalization_28/beta/Assign,model/rnn/batch_normalization_28/beta/read:029model/rnn/batch_normalization_28/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_29/gamma:0-model/rnn/batch_normalization_29/gamma/Assign-model/rnn/batch_normalization_29/gamma/read:029model/rnn/batch_normalization_29/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_29/beta:0,model/rnn/batch_normalization_29/beta/Assign,model/rnn/batch_normalization_29/beta/read:029model/rnn/batch_normalization_29/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_30/gamma:0-model/rnn/batch_normalization_30/gamma/Assign-model/rnn/batch_normalization_30/gamma/read:029model/rnn/batch_normalization_30/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_30/beta:0,model/rnn/batch_normalization_30/beta/Assign,model/rnn/batch_normalization_30/beta/read:029model/rnn/batch_normalization_30/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_31/gamma:0-model/rnn/batch_normalization_31/gamma/Assign-model/rnn/batch_normalization_31/gamma/read:029model/rnn/batch_normalization_31/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_31/beta:0,model/rnn/batch_normalization_31/beta/Assign,model/rnn/batch_normalization_31/beta/read:029model/rnn/batch_normalization_31/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_32/gamma:0-model/rnn/batch_normalization_32/gamma/Assign-model/rnn/batch_normalization_32/gamma/read:029model/rnn/batch_normalization_32/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_32/beta:0,model/rnn/batch_normalization_32/beta/Assign,model/rnn/batch_normalization_32/beta/read:029model/rnn/batch_normalization_32/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_33/gamma:0-model/rnn/batch_normalization_33/gamma/Assign-model/rnn/batch_normalization_33/gamma/read:029model/rnn/batch_normalization_33/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_33/beta:0,model/rnn/batch_normalization_33/beta/Assign,model/rnn/batch_normalization_33/beta/read:029model/rnn/batch_normalization_33/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_34/gamma:0-model/rnn/batch_normalization_34/gamma/Assign-model/rnn/batch_normalization_34/gamma/read:029model/rnn/batch_normalization_34/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_34/beta:0,model/rnn/batch_normalization_34/beta/Assign,model/rnn/batch_normalization_34/beta/read:029model/rnn/batch_normalization_34/beta/Initializer/zeros:08
?
(model/rnn/batch_normalization_35/gamma:0-model/rnn/batch_normalization_35/gamma/Assign-model/rnn/batch_normalization_35/gamma/read:029model/rnn/batch_normalization_35/gamma/Initializer/ones:08
?
'model/rnn/batch_normalization_35/beta:0,model/rnn/batch_normalization_35/beta/Assign,model/rnn/batch_normalization_35/beta/read:029model/rnn/batch_normalization_35/beta/Initializer/zeros:08
?
#model/batch_normalization_1/gamma:0(model/batch_normalization_1/gamma/Assign(model/batch_normalization_1/gamma/read:024model/batch_normalization_1/gamma/Initializer/ones:08
?
"model/batch_normalization_1/beta:0'model/batch_normalization_1/beta/Assign'model/batch_normalization_1/beta/read:024model/batch_normalization_1/beta/Initializer/zeros:08
?
model/conv_end/kernel:0model/conv_end/kernel/Assignmodel/conv_end/kernel/read:022model/conv_end/kernel/Initializer/random_uniform:08
z
model/conv_end/bias:0model/conv_end/bias/Assignmodel/conv_end/bias/read:02'model/conv_end/bias/Initializer/zeros:08*?
serving_default?
D
inputs:
	Reshape:0+???????????????????????????P
outputF
model/clip_by_value:0+???????????????????????????tensorflow/serving/predict