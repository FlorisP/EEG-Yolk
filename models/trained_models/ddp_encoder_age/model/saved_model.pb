??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
0
Neg
x"T
y"T"
Ttype:
2
	
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	?*
dtype0
?
$Adam/instance_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/instance_normalization_3/beta/v
?
8Adam/instance_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp$Adam/instance_normalization_3/beta/v*
_output_shapes	
:?*
dtype0
?
%Adam/instance_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/instance_normalization_3/gamma/v
?
9Adam/instance_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/instance_normalization_3/gamma/v*
_output_shapes	
:?*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/p_re_lu_2/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/p_re_lu_2/alpha/v
?
*Adam/p_re_lu_2/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_2/alpha/v*
_output_shapes
:	?*
dtype0
?
$Adam/instance_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/instance_normalization_2/beta/v
?
8Adam/instance_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp$Adam/instance_normalization_2/beta/v*
_output_shapes	
:?*
dtype0
?
%Adam/instance_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/instance_normalization_2/gamma/v
?
9Adam/instance_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/instance_normalization_2/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv1d_2/bias/v
z
(Adam/conv1d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv1d_2/kernel/v
?
*Adam/conv1d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_2/kernel/v*$
_output_shapes
:??*
dtype0
?
Adam/p_re_lu_1/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/p_re_lu_1/alpha/v
?
*Adam/p_re_lu_1/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_1/alpha/v*
_output_shapes
:	?*
dtype0
?
$Adam/instance_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/instance_normalization_1/beta/v
?
8Adam/instance_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp$Adam/instance_normalization_1/beta/v*
_output_shapes	
:?*
dtype0
?
%Adam/instance_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/instance_normalization_1/gamma/v
?
9Adam/instance_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp%Adam/instance_normalization_1/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv1d_1/bias/v
z
(Adam/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv1d_1/kernel/v
?
*Adam/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/v*$
_output_shapes
:??*
dtype0
?
Adam/p_re_lu/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_nameAdam/p_re_lu/alpha/v
~
(Adam/p_re_lu/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu/alpha/v*
_output_shapes
:	?*
dtype0
?
"Adam/instance_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/instance_normalization/beta/v
?
6Adam/instance_normalization/beta/v/Read/ReadVariableOpReadVariableOp"Adam/instance_normalization/beta/v*
_output_shapes	
:?*
dtype0
?
#Adam/instance_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/instance_normalization/gamma/v
?
7Adam/instance_normalization/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/instance_normalization/gamma/v*
_output_shapes	
:?*
dtype0
}
Adam/conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/conv1d/bias/v
v
&Adam/conv1d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*%
shared_nameAdam/conv1d/kernel/v
?
(Adam/conv1d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/v*$
_output_shapes
:??*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	?*
dtype0
?
$Adam/instance_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/instance_normalization_3/beta/m
?
8Adam/instance_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp$Adam/instance_normalization_3/beta/m*
_output_shapes	
:?*
dtype0
?
%Adam/instance_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/instance_normalization_3/gamma/m
?
9Adam/instance_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/instance_normalization_3/gamma/m*
_output_shapes	
:?*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/p_re_lu_2/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/p_re_lu_2/alpha/m
?
*Adam/p_re_lu_2/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_2/alpha/m*
_output_shapes
:	?*
dtype0
?
$Adam/instance_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/instance_normalization_2/beta/m
?
8Adam/instance_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp$Adam/instance_normalization_2/beta/m*
_output_shapes	
:?*
dtype0
?
%Adam/instance_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/instance_normalization_2/gamma/m
?
9Adam/instance_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/instance_normalization_2/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv1d_2/bias/m
z
(Adam/conv1d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv1d_2/kernel/m
?
*Adam/conv1d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_2/kernel/m*$
_output_shapes
:??*
dtype0
?
Adam/p_re_lu_1/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/p_re_lu_1/alpha/m
?
*Adam/p_re_lu_1/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu_1/alpha/m*
_output_shapes
:	?*
dtype0
?
$Adam/instance_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/instance_normalization_1/beta/m
?
8Adam/instance_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp$Adam/instance_normalization_1/beta/m*
_output_shapes	
:?*
dtype0
?
%Adam/instance_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%Adam/instance_normalization_1/gamma/m
?
9Adam/instance_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp%Adam/instance_normalization_1/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv1d_1/bias/m
z
(Adam/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv1d_1/kernel/m
?
*Adam/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/m*$
_output_shapes
:??*
dtype0
?
Adam/p_re_lu/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_nameAdam/p_re_lu/alpha/m
~
(Adam/p_re_lu/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu/alpha/m*
_output_shapes
:	?*
dtype0
?
"Adam/instance_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/instance_normalization/beta/m
?
6Adam/instance_normalization/beta/m/Read/ReadVariableOpReadVariableOp"Adam/instance_normalization/beta/m*
_output_shapes	
:?*
dtype0
?
#Adam/instance_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/instance_normalization/gamma/m
?
7Adam/instance_normalization/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/instance_normalization/gamma/m*
_output_shapes	
:?*
dtype0
}
Adam/conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/conv1d/bias/m
v
&Adam/conv1d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*%
shared_nameAdam/conv1d/kernel/m
?
(Adam/conv1d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/m*$
_output_shapes
:??*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?*
dtype0
?
instance_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameinstance_normalization_3/beta
?
1instance_normalization_3/beta/Read/ReadVariableOpReadVariableOpinstance_normalization_3/beta*
_output_shapes	
:?*
dtype0
?
instance_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name instance_normalization_3/gamma
?
2instance_normalization_3/gamma/Read/ReadVariableOpReadVariableOpinstance_normalization_3/gamma*
_output_shapes	
:?*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
{
p_re_lu_2/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namep_re_lu_2/alpha
t
#p_re_lu_2/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_2/alpha*
_output_shapes
:	?*
dtype0
?
instance_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameinstance_normalization_2/beta
?
1instance_normalization_2/beta/Read/ReadVariableOpReadVariableOpinstance_normalization_2/beta*
_output_shapes	
:?*
dtype0
?
instance_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name instance_normalization_2/gamma
?
2instance_normalization_2/gamma/Read/ReadVariableOpReadVariableOpinstance_normalization_2/gamma*
_output_shapes	
:?*
dtype0
s
conv1d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv1d_2/bias
l
!conv1d_2/bias/Read/ReadVariableOpReadVariableOpconv1d_2/bias*
_output_shapes	
:?*
dtype0
?
conv1d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv1d_2/kernel
y
#conv1d_2/kernel/Read/ReadVariableOpReadVariableOpconv1d_2/kernel*$
_output_shapes
:??*
dtype0
{
p_re_lu_1/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namep_re_lu_1/alpha
t
#p_re_lu_1/alpha/Read/ReadVariableOpReadVariableOpp_re_lu_1/alpha*
_output_shapes
:	?*
dtype0
?
instance_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameinstance_normalization_1/beta
?
1instance_normalization_1/beta/Read/ReadVariableOpReadVariableOpinstance_normalization_1/beta*
_output_shapes	
:?*
dtype0
?
instance_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name instance_normalization_1/gamma
?
2instance_normalization_1/gamma/Read/ReadVariableOpReadVariableOpinstance_normalization_1/gamma*
_output_shapes	
:?*
dtype0
s
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv1d_1/bias
l
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes	
:?*
dtype0
?
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv1d_1/kernel
y
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*$
_output_shapes
:??*
dtype0
w
p_re_lu/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namep_re_lu/alpha
p
!p_re_lu/alpha/Read/ReadVariableOpReadVariableOpp_re_lu/alpha*
_output_shapes
:	?*
dtype0
?
instance_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameinstance_normalization/beta
?
/instance_normalization/beta/Read/ReadVariableOpReadVariableOpinstance_normalization/beta*
_output_shapes	
:?*
dtype0
?
instance_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameinstance_normalization/gamma
?
0instance_normalization/gamma/Read/ReadVariableOpReadVariableOpinstance_normalization/gamma*
_output_shapes	
:?*
dtype0
o
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv1d/bias
h
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes	
:?*
dtype0
|
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*
shared_nameconv1d/kernel
u
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*$
_output_shapes
:??*
dtype0

NoOpNoOp
ӵ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer_with_weights-9
layer-19
layer_with_weights-10
layer-20
layer-21
layer_with_weights-11
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 
signatures*
* 
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op*
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
	0gamma
1beta*
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8shared_axes
	9alpha*
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@_random_generator* 
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
?
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias
 O_jit_compiled_convolution_op*
?
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
	Vgamma
Wbeta*
?
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^shared_axes
	_alpha*
?
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
f_random_generator* 
?
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses* 
?
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

skernel
tbias
 u_jit_compiled_convolution_op*
?
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses
	|gamma
}beta*
?
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?shared_axes

?alpha*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

?gamma
	?beta*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias*
?
'0
(1
02
13
94
M5
N6
V7
W8
_9
s10
t11
|12
}13
?14
?15
?16
?17
?18
?19
?20*
?
'0
(1
02
13
94
M5
N6
V7
W8
_9
s10
t11
|12
}13
?14
?15
?16
?17
?18
?19
?20*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
* 
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate'm?(m?0m?1m?9m?Mm?Nm?Vm?Wm?_m?sm?tm?|m?}m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?'v?(v?0v?1v?9v?Mv?Nv?Vv?Wv?_v?sv?tv?|v?}v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?*

?serving_default* 

'0
(1*

'0
(1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
]W
VARIABLE_VALUEconv1d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv1d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

00
11*

00
11*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ke
VARIABLE_VALUEinstance_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEinstance_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*

90*

90*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
\V
VARIABLE_VALUEp_re_lu/alpha5layer_with_weights-2/alpha/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

M0
N1*

M0
N1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

V0
W1*

V0
W1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
mg
VARIABLE_VALUEinstance_normalization_1/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEinstance_normalization_1/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*

_0*

_0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
^X
VARIABLE_VALUEp_re_lu_1/alpha5layer_with_weights-5/alpha/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

s0
t1*

s0
t1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEconv1d_2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

|0
}1*

|0
}1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
mg
VARIABLE_VALUEinstance_normalization_2/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEinstance_normalization_2/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*

?0*

?0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
* 
^X
VARIABLE_VALUEp_re_lu_2/alpha5layer_with_weights-8/alpha/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
nh
VARIABLE_VALUEinstance_normalization_3/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEinstance_normalization_3/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_1/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22*

?0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv1d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv1d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/instance_normalization/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/instance_normalization/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/p_re_lu/alpha/mQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv1d_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE%Adam/instance_normalization_1/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/instance_normalization_1/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/p_re_lu_1/alpha/mQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv1d_2/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_2/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE%Adam/instance_normalization_2/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/instance_normalization_2/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/p_re_lu_2/alpha/mQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE%Adam/instance_normalization_3/gamma/mRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/instance_normalization_3/beta/mQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_1/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_1/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv1d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv1d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/instance_normalization/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/instance_normalization/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/p_re_lu/alpha/vQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv1d_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE%Adam/instance_normalization_1/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/instance_normalization_1/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/p_re_lu_1/alpha/vQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv1d_2/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_2/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE%Adam/instance_normalization_2/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/instance_normalization_2/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/p_re_lu_2/alpha/vQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE%Adam/instance_normalization_3/gamma/vRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/instance_normalization_3/beta/vQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_1/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_1/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_input_1Placeholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv1d/kernelconv1d/biasinstance_normalization/gammainstance_normalization/betap_re_lu/alphaconv1d_1/kernelconv1d_1/biasinstance_normalization_1/gammainstance_normalization_1/betap_re_lu_1/alphaconv1d_2/kernelconv1d_2/biasinstance_normalization_2/gammainstance_normalization_2/betap_re_lu_2/alphadense/kernel
dense/biasinstance_normalization_3/gammainstance_normalization_3/betadense_1/kerneldense_1/bias*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_30046
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp0instance_normalization/gamma/Read/ReadVariableOp/instance_normalization/beta/Read/ReadVariableOp!p_re_lu/alpha/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp2instance_normalization_1/gamma/Read/ReadVariableOp1instance_normalization_1/beta/Read/ReadVariableOp#p_re_lu_1/alpha/Read/ReadVariableOp#conv1d_2/kernel/Read/ReadVariableOp!conv1d_2/bias/Read/ReadVariableOp2instance_normalization_2/gamma/Read/ReadVariableOp1instance_normalization_2/beta/Read/ReadVariableOp#p_re_lu_2/alpha/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp2instance_normalization_3/gamma/Read/ReadVariableOp1instance_normalization_3/beta/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(Adam/conv1d/kernel/m/Read/ReadVariableOp&Adam/conv1d/bias/m/Read/ReadVariableOp7Adam/instance_normalization/gamma/m/Read/ReadVariableOp6Adam/instance_normalization/beta/m/Read/ReadVariableOp(Adam/p_re_lu/alpha/m/Read/ReadVariableOp*Adam/conv1d_1/kernel/m/Read/ReadVariableOp(Adam/conv1d_1/bias/m/Read/ReadVariableOp9Adam/instance_normalization_1/gamma/m/Read/ReadVariableOp8Adam/instance_normalization_1/beta/m/Read/ReadVariableOp*Adam/p_re_lu_1/alpha/m/Read/ReadVariableOp*Adam/conv1d_2/kernel/m/Read/ReadVariableOp(Adam/conv1d_2/bias/m/Read/ReadVariableOp9Adam/instance_normalization_2/gamma/m/Read/ReadVariableOp8Adam/instance_normalization_2/beta/m/Read/ReadVariableOp*Adam/p_re_lu_2/alpha/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp9Adam/instance_normalization_3/gamma/m/Read/ReadVariableOp8Adam/instance_normalization_3/beta/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp(Adam/conv1d/kernel/v/Read/ReadVariableOp&Adam/conv1d/bias/v/Read/ReadVariableOp7Adam/instance_normalization/gamma/v/Read/ReadVariableOp6Adam/instance_normalization/beta/v/Read/ReadVariableOp(Adam/p_re_lu/alpha/v/Read/ReadVariableOp*Adam/conv1d_1/kernel/v/Read/ReadVariableOp(Adam/conv1d_1/bias/v/Read/ReadVariableOp9Adam/instance_normalization_1/gamma/v/Read/ReadVariableOp8Adam/instance_normalization_1/beta/v/Read/ReadVariableOp*Adam/p_re_lu_1/alpha/v/Read/ReadVariableOp*Adam/conv1d_2/kernel/v/Read/ReadVariableOp(Adam/conv1d_2/bias/v/Read/ReadVariableOp9Adam/instance_normalization_2/gamma/v/Read/ReadVariableOp8Adam/instance_normalization_2/beta/v/Read/ReadVariableOp*Adam/p_re_lu_2/alpha/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp9Adam/instance_normalization_3/gamma/v/Read/ReadVariableOp8Adam/instance_normalization_3/beta/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*S
TinL
J2H	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_31480
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d/kernelconv1d/biasinstance_normalization/gammainstance_normalization/betap_re_lu/alphaconv1d_1/kernelconv1d_1/biasinstance_normalization_1/gammainstance_normalization_1/betap_re_lu_1/alphaconv1d_2/kernelconv1d_2/biasinstance_normalization_2/gammainstance_normalization_2/betap_re_lu_2/alphadense/kernel
dense/biasinstance_normalization_3/gammainstance_normalization_3/betadense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv1d/kernel/mAdam/conv1d/bias/m#Adam/instance_normalization/gamma/m"Adam/instance_normalization/beta/mAdam/p_re_lu/alpha/mAdam/conv1d_1/kernel/mAdam/conv1d_1/bias/m%Adam/instance_normalization_1/gamma/m$Adam/instance_normalization_1/beta/mAdam/p_re_lu_1/alpha/mAdam/conv1d_2/kernel/mAdam/conv1d_2/bias/m%Adam/instance_normalization_2/gamma/m$Adam/instance_normalization_2/beta/mAdam/p_re_lu_2/alpha/mAdam/dense/kernel/mAdam/dense/bias/m%Adam/instance_normalization_3/gamma/m$Adam/instance_normalization_3/beta/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv1d/kernel/vAdam/conv1d/bias/v#Adam/instance_normalization/gamma/v"Adam/instance_normalization/beta/vAdam/p_re_lu/alpha/vAdam/conv1d_1/kernel/vAdam/conv1d_1/bias/v%Adam/instance_normalization_1/gamma/v$Adam/instance_normalization_1/beta/vAdam/p_re_lu_1/alpha/vAdam/conv1d_2/kernel/vAdam/conv1d_2/bias/v%Adam/instance_normalization_2/gamma/v$Adam/instance_normalization_2/beta/vAdam/p_re_lu_2/alpha/vAdam/dense/kernel/vAdam/dense/bias/v%Adam/instance_normalization_3/gamma/v$Adam/instance_normalization_3/beta/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*R
TinK
I2G*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_31700??
?
?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_29182

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
T
(__inference_multiply_layer_call_fn_31123
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_multiply_layer_call_and_return_conditional_losses_29276e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????:??????????:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
%__inference_dense_layer_call_fn_31138

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_29309t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_flatten_layer_call_fn_31222

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_29366a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_31228

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_1_layer_call_fn_30907

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_29580t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

a
B__inference_dropout_layer_call_and_return_conditional_losses_30793

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_29001

inputs*
readvariableop_resource:	?
identity??ReadVariableOpT
ReluReluinputs*
T0*5
_output_shapes#
!:???????????????????g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype0L
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:	?T
Neg_1Neginputs*
T0*5
_output_shapes#
!:???????????????????Y
Relu_1Relu	Neg_1:y:0*
T0*5
_output_shapes#
!:???????????????????i
mulMulNeg:y:0Relu_1:activations:0*
T0*5
_output_shapes#
!:???????????????????i
addAddV2Relu:activations:0mul:z:0*
T0*5
_output_shapes#
!:???????????????????d
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:???????????????????W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:???????????????????: 2 
ReadVariableOpReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
B
&__inference_lambda_layer_call_fn_31096

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_29268e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?]
?

@__inference_model_layer_call_and_return_conditional_losses_29385

inputs$
conv1d_29029:??
conv1d_29031:	?+
instance_normalization_29074:	?+
instance_normalization_29076:	? 
p_re_lu_29079:	?&
conv1d_1_29106:??
conv1d_1_29108:	?-
instance_normalization_1_29151:	?-
instance_normalization_1_29153:	?"
p_re_lu_1_29156:	?&
conv1d_2_29183:??
conv1d_2_29185:	?-
instance_normalization_2_29228:	?-
instance_normalization_2_29230:	?"
p_re_lu_2_29233:	?
dense_29310:
??
dense_29312:	?-
instance_normalization_3_29355:	?-
instance_normalization_3_29357:	? 
dense_1_29379:	?
dense_1_29381:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?.instance_normalization/StatefulPartitionedCall?0instance_normalization_1/StatefulPartitionedCall?0instance_normalization_2/StatefulPartitionedCall?0instance_normalization_3/StatefulPartitionedCall?p_re_lu/StatefulPartitionedCall?!p_re_lu_1/StatefulPartitionedCall?!p_re_lu_2/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_29029conv1d_29031*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_29028?
.instance_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0instance_normalization_29074instance_normalization_29076*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_instance_normalization_layer_call_and_return_conditional_losses_29073?
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall7instance_normalization/StatefulPartitionedCall:output:0p_re_lu_29079*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_28929?
dropout/PartitionedCallPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29087?
max_pooling1d/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_28946?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0conv1d_1_29106conv1d_1_29108*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_29105?
0instance_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0instance_normalization_1_29151instance_normalization_1_29153*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_1_layer_call_and_return_conditional_losses_29150?
!p_re_lu_1/StatefulPartitionedCallStatefulPartitionedCall9instance_normalization_1/StatefulPartitionedCall:output:0p_re_lu_1_29156*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_28965?
dropout_1/PartitionedCallPartitionedCall*p_re_lu_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_29164?
max_pooling1d_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_28982?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0conv1d_2_29183conv1d_2_29185*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_29182?
0instance_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0instance_normalization_2_29228instance_normalization_2_29230*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_2_layer_call_and_return_conditional_losses_29227?
!p_re_lu_2/StatefulPartitionedCallStatefulPartitionedCall9instance_normalization_2/StatefulPartitionedCall:output:0p_re_lu_2_29233*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_29001?
dropout_2/PartitionedCallPartitionedCall*p_re_lu_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_29241?
lambda_1/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_29251?
softmax/PartitionedCallPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_29258?
lambda/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_29268?
multiply/PartitionedCallPartitionedCall softmax/PartitionedCall:output:0lambda/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_multiply_layer_call_and_return_conditional_losses_29276?
dense/StatefulPartitionedCallStatefulPartitionedCall!multiply/PartitionedCall:output:0dense_29310dense_29312*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_29309?
0instance_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0instance_normalization_3_29355instance_normalization_3_29357*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_3_layer_call_and_return_conditional_losses_29354?
flatten/PartitionedCallPartitionedCall9instance_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_29366?
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_29379dense_1_29381*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_29378w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall/^instance_normalization/StatefulPartitionedCall1^instance_normalization_1/StatefulPartitionedCall1^instance_normalization_2/StatefulPartitionedCall1^instance_normalization_3/StatefulPartitionedCall ^p_re_lu/StatefulPartitionedCall"^p_re_lu_1/StatefulPartitionedCall"^p_re_lu_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2`
.instance_normalization/StatefulPartitionedCall.instance_normalization/StatefulPartitionedCall2d
0instance_normalization_1/StatefulPartitionedCall0instance_normalization_1/StatefulPartitionedCall2d
0instance_normalization_2/StatefulPartitionedCall0instance_normalization_2/StatefulPartitionedCall2d
0instance_normalization_3/StatefulPartitionedCall0instance_normalization_3/StatefulPartitionedCall2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall2F
!p_re_lu_1/StatefulPartitionedCall!p_re_lu_1/StatefulPartitionedCall2F
!p_re_lu_2/StatefulPartitionedCall!p_re_lu_2/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
C__inference_lambda_1_layer_call_and_return_conditional_losses_31081

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_maskc
IdentityIdentitystrided_slice:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_softmax_layer_call_and_return_conditional_losses_31091

inputs
identityQ
SoftmaxSoftmaxinputs*
T0*,
_output_shapes
:??????????^
IdentityIdentitySoftmax:softmax:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
B
&__inference_lambda_layer_call_fn_31101

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_29489e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_29366

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_instance_normalization_1_layer_call_fn_30839

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_1_layer_call_and_return_conditional_losses_29150t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
__inference__traced_save_31480
file_prefix,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop;
7savev2_instance_normalization_gamma_read_readvariableop:
6savev2_instance_normalization_beta_read_readvariableop,
(savev2_p_re_lu_alpha_read_readvariableop.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop=
9savev2_instance_normalization_1_gamma_read_readvariableop<
8savev2_instance_normalization_1_beta_read_readvariableop.
*savev2_p_re_lu_1_alpha_read_readvariableop.
*savev2_conv1d_2_kernel_read_readvariableop,
(savev2_conv1d_2_bias_read_readvariableop=
9savev2_instance_normalization_2_gamma_read_readvariableop<
8savev2_instance_normalization_2_beta_read_readvariableop.
*savev2_p_re_lu_2_alpha_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop=
9savev2_instance_normalization_3_gamma_read_readvariableop<
8savev2_instance_normalization_3_beta_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_adam_conv1d_kernel_m_read_readvariableop1
-savev2_adam_conv1d_bias_m_read_readvariableopB
>savev2_adam_instance_normalization_gamma_m_read_readvariableopA
=savev2_adam_instance_normalization_beta_m_read_readvariableop3
/savev2_adam_p_re_lu_alpha_m_read_readvariableop5
1savev2_adam_conv1d_1_kernel_m_read_readvariableop3
/savev2_adam_conv1d_1_bias_m_read_readvariableopD
@savev2_adam_instance_normalization_1_gamma_m_read_readvariableopC
?savev2_adam_instance_normalization_1_beta_m_read_readvariableop5
1savev2_adam_p_re_lu_1_alpha_m_read_readvariableop5
1savev2_adam_conv1d_2_kernel_m_read_readvariableop3
/savev2_adam_conv1d_2_bias_m_read_readvariableopD
@savev2_adam_instance_normalization_2_gamma_m_read_readvariableopC
?savev2_adam_instance_normalization_2_beta_m_read_readvariableop5
1savev2_adam_p_re_lu_2_alpha_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableopD
@savev2_adam_instance_normalization_3_gamma_m_read_readvariableopC
?savev2_adam_instance_normalization_3_beta_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop3
/savev2_adam_conv1d_kernel_v_read_readvariableop1
-savev2_adam_conv1d_bias_v_read_readvariableopB
>savev2_adam_instance_normalization_gamma_v_read_readvariableopA
=savev2_adam_instance_normalization_beta_v_read_readvariableop3
/savev2_adam_p_re_lu_alpha_v_read_readvariableop5
1savev2_adam_conv1d_1_kernel_v_read_readvariableop3
/savev2_adam_conv1d_1_bias_v_read_readvariableopD
@savev2_adam_instance_normalization_1_gamma_v_read_readvariableopC
?savev2_adam_instance_normalization_1_beta_v_read_readvariableop5
1savev2_adam_p_re_lu_1_alpha_v_read_readvariableop5
1savev2_adam_conv1d_2_kernel_v_read_readvariableop3
/savev2_adam_conv1d_2_bias_v_read_readvariableopD
@savev2_adam_instance_normalization_2_gamma_v_read_readvariableopC
?savev2_adam_instance_normalization_2_beta_v_read_readvariableop5
1savev2_adam_p_re_lu_2_alpha_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableopD
@savev2_adam_instance_normalization_3_gamma_v_read_readvariableopC
?savev2_adam_instance_normalization_3_beta_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*?'
value?'B?'GB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*?
value?B?GB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop7savev2_instance_normalization_gamma_read_readvariableop6savev2_instance_normalization_beta_read_readvariableop(savev2_p_re_lu_alpha_read_readvariableop*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop9savev2_instance_normalization_1_gamma_read_readvariableop8savev2_instance_normalization_1_beta_read_readvariableop*savev2_p_re_lu_1_alpha_read_readvariableop*savev2_conv1d_2_kernel_read_readvariableop(savev2_conv1d_2_bias_read_readvariableop9savev2_instance_normalization_2_gamma_read_readvariableop8savev2_instance_normalization_2_beta_read_readvariableop*savev2_p_re_lu_2_alpha_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop9savev2_instance_normalization_3_gamma_read_readvariableop8savev2_instance_normalization_3_beta_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_adam_conv1d_kernel_m_read_readvariableop-savev2_adam_conv1d_bias_m_read_readvariableop>savev2_adam_instance_normalization_gamma_m_read_readvariableop=savev2_adam_instance_normalization_beta_m_read_readvariableop/savev2_adam_p_re_lu_alpha_m_read_readvariableop1savev2_adam_conv1d_1_kernel_m_read_readvariableop/savev2_adam_conv1d_1_bias_m_read_readvariableop@savev2_adam_instance_normalization_1_gamma_m_read_readvariableop?savev2_adam_instance_normalization_1_beta_m_read_readvariableop1savev2_adam_p_re_lu_1_alpha_m_read_readvariableop1savev2_adam_conv1d_2_kernel_m_read_readvariableop/savev2_adam_conv1d_2_bias_m_read_readvariableop@savev2_adam_instance_normalization_2_gamma_m_read_readvariableop?savev2_adam_instance_normalization_2_beta_m_read_readvariableop1savev2_adam_p_re_lu_2_alpha_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop@savev2_adam_instance_normalization_3_gamma_m_read_readvariableop?savev2_adam_instance_normalization_3_beta_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop/savev2_adam_conv1d_kernel_v_read_readvariableop-savev2_adam_conv1d_bias_v_read_readvariableop>savev2_adam_instance_normalization_gamma_v_read_readvariableop=savev2_adam_instance_normalization_beta_v_read_readvariableop/savev2_adam_p_re_lu_alpha_v_read_readvariableop1savev2_adam_conv1d_1_kernel_v_read_readvariableop/savev2_adam_conv1d_1_bias_v_read_readvariableop@savev2_adam_instance_normalization_1_gamma_v_read_readvariableop?savev2_adam_instance_normalization_1_beta_v_read_readvariableop1savev2_adam_p_re_lu_1_alpha_v_read_readvariableop1savev2_adam_conv1d_2_kernel_v_read_readvariableop/savev2_adam_conv1d_2_bias_v_read_readvariableop@savev2_adam_instance_normalization_2_gamma_v_read_readvariableop?savev2_adam_instance_normalization_2_beta_v_read_readvariableop1savev2_adam_p_re_lu_2_alpha_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop@savev2_adam_instance_normalization_3_gamma_v_read_readvariableop?savev2_adam_instance_normalization_3_beta_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *U
dtypesK
I2G	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :??:?:?:?:	?:??:?:?:?:	?:??:?:?:?:	?:
??:?:?:?:	?:: : : : : : : :??:?:?:?:	?:??:?:?:?:	?:??:?:?:?:	?:
??:?:?:?:	?::??:?:?:?:	?:??:?:?:?:	?:??:?:?:?:	?:
??:?:?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:*&
$
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?:*&
$
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!	

_output_shapes	
:?:%
!

_output_shapes
:	?:*&
$
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :*&
$
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:! 

_output_shapes	
:?:%!!

_output_shapes
:	?:*"&
$
_output_shapes
:??:!#

_output_shapes	
:?:!$

_output_shapes	
:?:!%

_output_shapes	
:?:%&!

_output_shapes
:	?:*'&
$
_output_shapes
:??:!(

_output_shapes	
:?:!)

_output_shapes	
:?:!*

_output_shapes	
:?:%+!

_output_shapes
:	?:&,"
 
_output_shapes
:
??:!-

_output_shapes	
:?:!.

_output_shapes	
:?:!/

_output_shapes	
:?:%0!

_output_shapes
:	?: 1

_output_shapes
::*2&
$
_output_shapes
:??:!3

_output_shapes	
:?:!4

_output_shapes	
:?:!5

_output_shapes	
:?:%6!

_output_shapes
:	?:*7&
$
_output_shapes
:??:!8

_output_shapes	
:?:!9

_output_shapes	
:?:!:

_output_shapes	
:?:%;!

_output_shapes
:	?:*<&
$
_output_shapes
:??:!=

_output_shapes	
:?:!>

_output_shapes	
:?:!?

_output_shapes	
:?:%@!

_output_shapes
:	?:&A"
 
_output_shapes
:
??:!B

_output_shapes	
:?:!C

_output_shapes	
:?:!D

_output_shapes	
:?:%E!

_output_shapes
:	?: F

_output_shapes
::G

_output_shapes
: 
?
f
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_30937

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
I
-__inference_max_pooling1d_layer_call_fn_30798

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_28946v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?%
?
S__inference_instance_normalization_1_layer_call_and_return_conditional_losses_30878

inputs.
reshape_readvariableop_resource:	?0
!reshape_1_readvariableop_resource:	?
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:???????????
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(s
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:?*
dtype0b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         x
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*#
_output_shapes
:?w
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ~
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*#
_output_shapes
:?T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:??????????r
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*,
_output_shapes
:??????????h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????t
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
|
'__inference_p_re_lu_layer_call_fn_30754

inputs
unknown:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_28929}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:???????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_29855
input_1
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?!
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?!
	unknown_9:??

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:
??

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?
&__inference_conv1d_layer_call_fn_30684

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_29028t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?a
?
@__inference_model_layer_call_and_return_conditional_losses_29763

inputs$
conv1d_29698:??
conv1d_29700:	?+
instance_normalization_29703:	?+
instance_normalization_29705:	? 
p_re_lu_29708:	?&
conv1d_1_29713:??
conv1d_1_29715:	?-
instance_normalization_1_29718:	?-
instance_normalization_1_29720:	?"
p_re_lu_1_29723:	?&
conv1d_2_29728:??
conv1d_2_29730:	?-
instance_normalization_2_29733:	?-
instance_normalization_2_29735:	?"
p_re_lu_2_29738:	?
dense_29746:
??
dense_29748:	?-
instance_normalization_3_29751:	?-
instance_normalization_3_29753:	? 
dense_1_29757:	?
dense_1_29759:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?.instance_normalization/StatefulPartitionedCall?0instance_normalization_1/StatefulPartitionedCall?0instance_normalization_2/StatefulPartitionedCall?0instance_normalization_3/StatefulPartitionedCall?p_re_lu/StatefulPartitionedCall?!p_re_lu_1/StatefulPartitionedCall?!p_re_lu_2/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_29698conv1d_29700*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_29028?
.instance_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0instance_normalization_29703instance_normalization_29705*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_instance_normalization_layer_call_and_return_conditional_losses_29073?
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall7instance_normalization/StatefulPartitionedCall:output:0p_re_lu_29708*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_28929?
dropout/StatefulPartitionedCallStatefulPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29623?
max_pooling1d/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_28946?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0conv1d_1_29713conv1d_1_29715*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_29105?
0instance_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0instance_normalization_1_29718instance_normalization_1_29720*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_1_layer_call_and_return_conditional_losses_29150?
!p_re_lu_1/StatefulPartitionedCallStatefulPartitionedCall9instance_normalization_1/StatefulPartitionedCall:output:0p_re_lu_1_29723*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_28965?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall*p_re_lu_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_29580?
max_pooling1d_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_28982?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0conv1d_2_29728conv1d_2_29730*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_29182?
0instance_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0instance_normalization_2_29733instance_normalization_2_29735*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_2_layer_call_and_return_conditional_losses_29227?
!p_re_lu_2/StatefulPartitionedCallStatefulPartitionedCall9instance_normalization_2/StatefulPartitionedCall:output:0p_re_lu_2_29738*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_29001?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall*p_re_lu_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_29537?
lambda_1/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_29514?
softmax/PartitionedCallPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_29258?
lambda/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_29489?
multiply/PartitionedCallPartitionedCall softmax/PartitionedCall:output:0lambda/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_multiply_layer_call_and_return_conditional_losses_29276?
dense/StatefulPartitionedCallStatefulPartitionedCall!multiply/PartitionedCall:output:0dense_29746dense_29748*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_29309?
0instance_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0instance_normalization_3_29751instance_normalization_3_29753*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_3_layer_call_and_return_conditional_losses_29354?
flatten/PartitionedCallPartitionedCall9instance_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_29366?
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_29757dense_1_29759*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_29378w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall/^instance_normalization/StatefulPartitionedCall1^instance_normalization_1/StatefulPartitionedCall1^instance_normalization_2/StatefulPartitionedCall1^instance_normalization_3/StatefulPartitionedCall ^p_re_lu/StatefulPartitionedCall"^p_re_lu_1/StatefulPartitionedCall"^p_re_lu_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2`
.instance_normalization/StatefulPartitionedCall.instance_normalization/StatefulPartitionedCall2d
0instance_normalization_1/StatefulPartitionedCall0instance_normalization_1/StatefulPartitionedCall2d
0instance_normalization_2/StatefulPartitionedCall0instance_normalization_2/StatefulPartitionedCall2d
0instance_normalization_3/StatefulPartitionedCall0instance_normalization_3/StatefulPartitionedCall2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall2F
!p_re_lu_1/StatefulPartitionedCall!p_re_lu_1/StatefulPartitionedCall2F
!p_re_lu_2/StatefulPartitionedCall!p_re_lu_2/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_31043

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
@__inference_dense_layer_call_and_return_conditional_losses_29309

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????[
SigmoidSigmoidBiasAdd:output:0*
T0*,
_output_shapes
:??????????_
IdentityIdentitySigmoid:y:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?]
?

@__inference_model_layer_call_and_return_conditional_losses_29923
input_1$
conv1d_29858:??
conv1d_29860:	?+
instance_normalization_29863:	?+
instance_normalization_29865:	? 
p_re_lu_29868:	?&
conv1d_1_29873:??
conv1d_1_29875:	?-
instance_normalization_1_29878:	?-
instance_normalization_1_29880:	?"
p_re_lu_1_29883:	?&
conv1d_2_29888:??
conv1d_2_29890:	?-
instance_normalization_2_29893:	?-
instance_normalization_2_29895:	?"
p_re_lu_2_29898:	?
dense_29906:
??
dense_29908:	?-
instance_normalization_3_29911:	?-
instance_normalization_3_29913:	? 
dense_1_29917:	?
dense_1_29919:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?.instance_normalization/StatefulPartitionedCall?0instance_normalization_1/StatefulPartitionedCall?0instance_normalization_2/StatefulPartitionedCall?0instance_normalization_3/StatefulPartitionedCall?p_re_lu/StatefulPartitionedCall?!p_re_lu_1/StatefulPartitionedCall?!p_re_lu_2/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv1d_29858conv1d_29860*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_29028?
.instance_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0instance_normalization_29863instance_normalization_29865*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_instance_normalization_layer_call_and_return_conditional_losses_29073?
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall7instance_normalization/StatefulPartitionedCall:output:0p_re_lu_29868*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_28929?
dropout/PartitionedCallPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29087?
max_pooling1d/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_28946?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0conv1d_1_29873conv1d_1_29875*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_29105?
0instance_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0instance_normalization_1_29878instance_normalization_1_29880*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_1_layer_call_and_return_conditional_losses_29150?
!p_re_lu_1/StatefulPartitionedCallStatefulPartitionedCall9instance_normalization_1/StatefulPartitionedCall:output:0p_re_lu_1_29883*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_28965?
dropout_1/PartitionedCallPartitionedCall*p_re_lu_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_29164?
max_pooling1d_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_28982?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0conv1d_2_29888conv1d_2_29890*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_29182?
0instance_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0instance_normalization_2_29893instance_normalization_2_29895*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_2_layer_call_and_return_conditional_losses_29227?
!p_re_lu_2/StatefulPartitionedCallStatefulPartitionedCall9instance_normalization_2/StatefulPartitionedCall:output:0p_re_lu_2_29898*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_29001?
dropout_2/PartitionedCallPartitionedCall*p_re_lu_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_29241?
lambda_1/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_29251?
softmax/PartitionedCallPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_29258?
lambda/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_29268?
multiply/PartitionedCallPartitionedCall softmax/PartitionedCall:output:0lambda/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_multiply_layer_call_and_return_conditional_losses_29276?
dense/StatefulPartitionedCallStatefulPartitionedCall!multiply/PartitionedCall:output:0dense_29906dense_29908*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_29309?
0instance_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0instance_normalization_3_29911instance_normalization_3_29913*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_3_layer_call_and_return_conditional_losses_29354?
flatten/PartitionedCallPartitionedCall9instance_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_29366?
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_29917dense_1_29919*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_29378w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall/^instance_normalization/StatefulPartitionedCall1^instance_normalization_1/StatefulPartitionedCall1^instance_normalization_2/StatefulPartitionedCall1^instance_normalization_3/StatefulPartitionedCall ^p_re_lu/StatefulPartitionedCall"^p_re_lu_1/StatefulPartitionedCall"^p_re_lu_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2`
.instance_normalization/StatefulPartitionedCall.instance_normalization/StatefulPartitionedCall2d
0instance_normalization_1/StatefulPartitionedCall0instance_normalization_1/StatefulPartitionedCall2d
0instance_normalization_2/StatefulPartitionedCall0instance_normalization_2/StatefulPartitionedCall2d
0instance_normalization_3/StatefulPartitionedCall0instance_normalization_3/StatefulPartitionedCall2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall2F
!p_re_lu_1/StatefulPartitionedCall!p_re_lu_1/StatefulPartitionedCall2F
!p_re_lu_2/StatefulPartitionedCall!p_re_lu_2/StatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_30781

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_instance_normalization_2_layer_call_fn_30970

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_2_layer_call_and_return_conditional_losses_29227t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
]
A__inference_lambda_layer_call_and_return_conditional_losses_29268

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_maskc
IdentityIdentitystrided_slice:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_29164

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_31055

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
]
A__inference_lambda_layer_call_and_return_conditional_losses_31117

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_maskc
IdentityIdentitystrided_slice:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_29241

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
'__inference_dropout_layer_call_fn_30776

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29623t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
@__inference_model_layer_call_and_return_conditional_losses_30397

inputsJ
2conv1d_conv1d_expanddims_1_readvariableop_resource:??5
&conv1d_biasadd_readvariableop_resource:	?E
6instance_normalization_reshape_readvariableop_resource:	?G
8instance_normalization_reshape_1_readvariableop_resource:	?2
p_re_lu_readvariableop_resource:	?L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:??7
(conv1d_1_biasadd_readvariableop_resource:	?G
8instance_normalization_1_reshape_readvariableop_resource:	?I
:instance_normalization_1_reshape_1_readvariableop_resource:	?4
!p_re_lu_1_readvariableop_resource:	?L
4conv1d_2_conv1d_expanddims_1_readvariableop_resource:??7
(conv1d_2_biasadd_readvariableop_resource:	?G
8instance_normalization_2_reshape_readvariableop_resource:	?I
:instance_normalization_2_reshape_1_readvariableop_resource:	?4
!p_re_lu_2_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?G
8instance_normalization_3_reshape_readvariableop_resource:	?I
:instance_normalization_3_reshape_1_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?5
'dense_1_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?-instance_normalization/Reshape/ReadVariableOp?/instance_normalization/Reshape_1/ReadVariableOp?/instance_normalization_1/Reshape/ReadVariableOp?1instance_normalization_1/Reshape_1/ReadVariableOp?/instance_normalization_2/Reshape/ReadVariableOp?1instance_normalization_2/Reshape_1/ReadVariableOp?/instance_normalization_3/Reshape/ReadVariableOp?1instance_normalization_3/Reshape_1/ReadVariableOp?p_re_lu/ReadVariableOp?p_re_lu_1/ReadVariableOp?p_re_lu_2/ReadVariableOpg
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDimsinputs%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????c
instance_normalization/ShapeShapeconv1d/BiasAdd:output:0*
T0*
_output_shapes
:t
*instance_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,instance_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,instance_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$instance_normalization/strided_sliceStridedSlice%instance_normalization/Shape:output:03instance_normalization/strided_slice/stack:output:05instance_normalization/strided_slice/stack_1:output:05instance_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
,instance_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&instance_normalization/strided_slice_1StridedSlice%instance_normalization/Shape:output:05instance_normalization/strided_slice_1/stack:output:07instance_normalization/strided_slice_1/stack_1:output:07instance_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
,instance_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&instance_normalization/strided_slice_2StridedSlice%instance_normalization/Shape:output:05instance_normalization/strided_slice_2/stack:output:07instance_normalization/strided_slice_2/stack_1:output:07instance_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5instance_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
#instance_normalization/moments/meanMeanconv1d/BiasAdd:output:0>instance_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
+instance_normalization/moments/StopGradientStopGradient,instance_normalization/moments/mean:output:0*
T0*,
_output_shapes
:???????????
0instance_normalization/moments/SquaredDifferenceSquaredDifferenceconv1d/BiasAdd:output:04instance_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
9instance_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
'instance_normalization/moments/varianceMean4instance_normalization/moments/SquaredDifference:z:0Binstance_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
-instance_normalization/Reshape/ReadVariableOpReadVariableOp6instance_normalization_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0y
$instance_normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      ?   ?
instance_normalization/ReshapeReshape5instance_normalization/Reshape/ReadVariableOp:value:0-instance_normalization/Reshape/shape:output:0*
T0*#
_output_shapes
:??
/instance_normalization/Reshape_1/ReadVariableOpReadVariableOp8instance_normalization_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0{
&instance_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      ?   ?
 instance_normalization/Reshape_1Reshape7instance_normalization/Reshape_1/ReadVariableOp:value:0/instance_normalization/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?k
&instance_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$instance_normalization/batchnorm/addAddV20instance_normalization/moments/variance:output:0/instance_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
&instance_normalization/batchnorm/RsqrtRsqrt(instance_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
$instance_normalization/batchnorm/mulMul*instance_normalization/batchnorm/Rsqrt:y:0'instance_normalization/Reshape:output:0*
T0*,
_output_shapes
:???????????
&instance_normalization/batchnorm/mul_1Mulconv1d/BiasAdd:output:0(instance_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization/batchnorm/mul_2Mul,instance_normalization/moments/mean:output:0(instance_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
$instance_normalization/batchnorm/subSub)instance_normalization/Reshape_1:output:0*instance_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization/batchnorm/add_1AddV2*instance_normalization/batchnorm/mul_1:z:0(instance_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????w
p_re_lu/ReluRelu*instance_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????w
p_re_lu/ReadVariableOpReadVariableOpp_re_lu_readvariableop_resource*
_output_shapes
:	?*
dtype0\
p_re_lu/NegNegp_re_lu/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
p_re_lu/Neg_1Neg*instance_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????`
p_re_lu/Relu_1Relup_re_lu/Neg_1:y:0*
T0*,
_output_shapes
:??????????x
p_re_lu/mulMulp_re_lu/Neg:y:0p_re_lu/Relu_1:activations:0*
T0*,
_output_shapes
:??????????x
p_re_lu/addAddV2p_re_lu/Relu:activations:0p_re_lu/mul:z:0*
T0*,
_output_shapes
:??????????d
dropout/IdentityIdentityp_re_lu/add:z:0*
T0*,
_output_shapes
:??????????^
max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
max_pooling1d/ExpandDims
ExpandDimsdropout/Identity:output:0%max_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
max_pooling1d/MaxPoolMaxPool!max_pooling1d/ExpandDims:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
?
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDimsmax_pooling1d/Squeeze:output:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????g
instance_normalization_1/ShapeShapeconv1d_1/BiasAdd:output:0*
T0*
_output_shapes
:v
,instance_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.instance_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&instance_normalization_1/strided_sliceStridedSlice'instance_normalization_1/Shape:output:05instance_normalization_1/strided_slice/stack:output:07instance_normalization_1/strided_slice/stack_1:output:07instance_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_1/strided_slice_1StridedSlice'instance_normalization_1/Shape:output:07instance_normalization_1/strided_slice_1/stack:output:09instance_normalization_1/strided_slice_1/stack_1:output:09instance_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_1/strided_slice_2StridedSlice'instance_normalization_1/Shape:output:07instance_normalization_1/strided_slice_2/stack:output:09instance_normalization_1/strided_slice_2/stack_1:output:09instance_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7instance_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
%instance_normalization_1/moments/meanMeanconv1d_1/BiasAdd:output:0@instance_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
-instance_normalization_1/moments/StopGradientStopGradient.instance_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:???????????
2instance_normalization_1/moments/SquaredDifferenceSquaredDifferenceconv1d_1/BiasAdd:output:06instance_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
;instance_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
)instance_normalization_1/moments/varianceMean6instance_normalization_1/moments/SquaredDifference:z:0Dinstance_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
/instance_normalization_1/Reshape/ReadVariableOpReadVariableOp8instance_normalization_1_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0{
&instance_normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
 instance_normalization_1/ReshapeReshape7instance_normalization_1/Reshape/ReadVariableOp:value:0/instance_normalization_1/Reshape/shape:output:0*
T0*#
_output_shapes
:??
1instance_normalization_1/Reshape_1/ReadVariableOpReadVariableOp:instance_normalization_1_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0}
(instance_normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
"instance_normalization_1/Reshape_1Reshape9instance_normalization_1/Reshape_1/ReadVariableOp:value:01instance_normalization_1/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?m
(instance_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
&instance_normalization_1/batchnorm/addAddV22instance_normalization_1/moments/variance:output:01instance_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_1/batchnorm/RsqrtRsqrt*instance_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_1/batchnorm/mulMul,instance_normalization_1/batchnorm/Rsqrt:y:0)instance_normalization_1/Reshape:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_1/batchnorm/mul_1Mulconv1d_1/BiasAdd:output:0*instance_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_1/batchnorm/mul_2Mul.instance_normalization_1/moments/mean:output:0*instance_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_1/batchnorm/subSub+instance_normalization_1/Reshape_1:output:0,instance_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_1/batchnorm/add_1AddV2,instance_normalization_1/batchnorm/mul_1:z:0*instance_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????{
p_re_lu_1/ReluRelu,instance_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????{
p_re_lu_1/ReadVariableOpReadVariableOp!p_re_lu_1_readvariableop_resource*
_output_shapes
:	?*
dtype0`
p_re_lu_1/NegNeg p_re_lu_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?{
p_re_lu_1/Neg_1Neg,instance_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????d
p_re_lu_1/Relu_1Relup_re_lu_1/Neg_1:y:0*
T0*,
_output_shapes
:??????????~
p_re_lu_1/mulMulp_re_lu_1/Neg:y:0p_re_lu_1/Relu_1:activations:0*
T0*,
_output_shapes
:??????????~
p_re_lu_1/addAddV2p_re_lu_1/Relu:activations:0p_re_lu_1/mul:z:0*
T0*,
_output_shapes
:??????????h
dropout_1/IdentityIdentityp_re_lu_1/add:z:0*
T0*,
_output_shapes
:??????????`
max_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
max_pooling1d_1/ExpandDims
ExpandDimsdropout_1/Identity:output:0'max_pooling1d_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
max_pooling1d_1/MaxPoolMaxPool#max_pooling1d_1/ExpandDims:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
?
max_pooling1d_1/SqueezeSqueeze max_pooling1d_1/MaxPool:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
i
conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_2/Conv1D/ExpandDims
ExpandDims max_pooling1d_1/Squeeze:output:0'conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0b
 conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_2/Conv1D/ExpandDims_1
ExpandDims3conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d_2/Conv1DConv2D#conv1d_2/Conv1D/ExpandDims:output:0%conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_2/Conv1D/SqueezeSqueezeconv1d_2/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d_2/BiasAddBiasAdd conv1d_2/Conv1D/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????g
instance_normalization_2/ShapeShapeconv1d_2/BiasAdd:output:0*
T0*
_output_shapes
:v
,instance_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.instance_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&instance_normalization_2/strided_sliceStridedSlice'instance_normalization_2/Shape:output:05instance_normalization_2/strided_slice/stack:output:07instance_normalization_2/strided_slice/stack_1:output:07instance_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_2/strided_slice_1StridedSlice'instance_normalization_2/Shape:output:07instance_normalization_2/strided_slice_1/stack:output:09instance_normalization_2/strided_slice_1/stack_1:output:09instance_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_2/strided_slice_2StridedSlice'instance_normalization_2/Shape:output:07instance_normalization_2/strided_slice_2/stack:output:09instance_normalization_2/strided_slice_2/stack_1:output:09instance_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7instance_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
%instance_normalization_2/moments/meanMeanconv1d_2/BiasAdd:output:0@instance_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
-instance_normalization_2/moments/StopGradientStopGradient.instance_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:???????????
2instance_normalization_2/moments/SquaredDifferenceSquaredDifferenceconv1d_2/BiasAdd:output:06instance_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
;instance_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
)instance_normalization_2/moments/varianceMean6instance_normalization_2/moments/SquaredDifference:z:0Dinstance_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
/instance_normalization_2/Reshape/ReadVariableOpReadVariableOp8instance_normalization_2_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0{
&instance_normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
 instance_normalization_2/ReshapeReshape7instance_normalization_2/Reshape/ReadVariableOp:value:0/instance_normalization_2/Reshape/shape:output:0*
T0*#
_output_shapes
:??
1instance_normalization_2/Reshape_1/ReadVariableOpReadVariableOp:instance_normalization_2_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0}
(instance_normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
"instance_normalization_2/Reshape_1Reshape9instance_normalization_2/Reshape_1/ReadVariableOp:value:01instance_normalization_2/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?m
(instance_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
&instance_normalization_2/batchnorm/addAddV22instance_normalization_2/moments/variance:output:01instance_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_2/batchnorm/RsqrtRsqrt*instance_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_2/batchnorm/mulMul,instance_normalization_2/batchnorm/Rsqrt:y:0)instance_normalization_2/Reshape:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_2/batchnorm/mul_1Mulconv1d_2/BiasAdd:output:0*instance_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_2/batchnorm/mul_2Mul.instance_normalization_2/moments/mean:output:0*instance_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_2/batchnorm/subSub+instance_normalization_2/Reshape_1:output:0,instance_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_2/batchnorm/add_1AddV2,instance_normalization_2/batchnorm/mul_1:z:0*instance_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????{
p_re_lu_2/ReluRelu,instance_normalization_2/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????{
p_re_lu_2/ReadVariableOpReadVariableOp!p_re_lu_2_readvariableop_resource*
_output_shapes
:	?*
dtype0`
p_re_lu_2/NegNeg p_re_lu_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?{
p_re_lu_2/Neg_1Neg,instance_normalization_2/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????d
p_re_lu_2/Relu_1Relup_re_lu_2/Neg_1:y:0*
T0*,
_output_shapes
:??????????~
p_re_lu_2/mulMulp_re_lu_2/Neg:y:0p_re_lu_2/Relu_1:activations:0*
T0*,
_output_shapes
:??????????~
p_re_lu_2/addAddV2p_re_lu_2/Relu:activations:0p_re_lu_2/mul:z:0*
T0*,
_output_shapes
:??????????h
dropout_2/IdentityIdentityp_re_lu_2/add:z:0*
T0*,
_output_shapes
:??????????q
lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           s
lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
lambda_1/strided_sliceStridedSlicedropout_2/Identity:output:0%lambda_1/strided_slice/stack:output:0'lambda_1/strided_slice/stack_1:output:0'lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_maskr
softmax/SoftmaxSoftmaxlambda_1/strided_slice:output:0*
T0*,
_output_shapes
:??????????o
lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            q
lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           q
lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
lambda/strided_sliceStridedSlicedropout_2/Identity:output:0#lambda/strided_slice/stack:output:0%lambda/strided_slice/stack_1:output:0%lambda/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask?
multiply/mulMulsoftmax/Softmax:softmax:0lambda/strided_slice:output:0*
T0*,
_output_shapes
:???????????
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       U
dense/Tensordot/ShapeShapemultiply/mul:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/transpose	Transposemultiply/mul:z:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????g
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*,
_output_shapes
:??????????_
instance_normalization_3/ShapeShapedense/Sigmoid:y:0*
T0*
_output_shapes
:v
,instance_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.instance_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&instance_normalization_3/strided_sliceStridedSlice'instance_normalization_3/Shape:output:05instance_normalization_3/strided_slice/stack:output:07instance_normalization_3/strided_slice/stack_1:output:07instance_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_3/strided_slice_1StridedSlice'instance_normalization_3/Shape:output:07instance_normalization_3/strided_slice_1/stack:output:09instance_normalization_3/strided_slice_1/stack_1:output:09instance_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_3/strided_slice_2StridedSlice'instance_normalization_3/Shape:output:07instance_normalization_3/strided_slice_2/stack:output:09instance_normalization_3/strided_slice_2/stack_1:output:09instance_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7instance_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
%instance_normalization_3/moments/meanMeandense/Sigmoid:y:0@instance_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
-instance_normalization_3/moments/StopGradientStopGradient.instance_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:???????????
2instance_normalization_3/moments/SquaredDifferenceSquaredDifferencedense/Sigmoid:y:06instance_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
;instance_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
)instance_normalization_3/moments/varianceMean6instance_normalization_3/moments/SquaredDifference:z:0Dinstance_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
/instance_normalization_3/Reshape/ReadVariableOpReadVariableOp8instance_normalization_3_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0{
&instance_normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
 instance_normalization_3/ReshapeReshape7instance_normalization_3/Reshape/ReadVariableOp:value:0/instance_normalization_3/Reshape/shape:output:0*
T0*#
_output_shapes
:??
1instance_normalization_3/Reshape_1/ReadVariableOpReadVariableOp:instance_normalization_3_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0}
(instance_normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
"instance_normalization_3/Reshape_1Reshape9instance_normalization_3/Reshape_1/ReadVariableOp:value:01instance_normalization_3/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?m
(instance_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
&instance_normalization_3/batchnorm/addAddV22instance_normalization_3/moments/variance:output:01instance_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_3/batchnorm/RsqrtRsqrt*instance_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_3/batchnorm/mulMul,instance_normalization_3/batchnorm/Rsqrt:y:0)instance_normalization_3/Reshape:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_3/batchnorm/mul_1Muldense/Sigmoid:y:0*instance_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_3/batchnorm/mul_2Mul.instance_normalization_3/moments/mean:output:0*instance_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_3/batchnorm/subSub+instance_normalization_3/Reshape_1:output:0,instance_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_3/batchnorm/add_1AddV2,instance_normalization_3/batchnorm/mul_1:z:0*instance_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten/ReshapeReshape,instance_normalization_3/batchnorm/add_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp.^instance_normalization/Reshape/ReadVariableOp0^instance_normalization/Reshape_1/ReadVariableOp0^instance_normalization_1/Reshape/ReadVariableOp2^instance_normalization_1/Reshape_1/ReadVariableOp0^instance_normalization_2/Reshape/ReadVariableOp2^instance_normalization_2/Reshape_1/ReadVariableOp0^instance_normalization_3/Reshape/ReadVariableOp2^instance_normalization_3/Reshape_1/ReadVariableOp^p_re_lu/ReadVariableOp^p_re_lu_1/ReadVariableOp^p_re_lu_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2^
-instance_normalization/Reshape/ReadVariableOp-instance_normalization/Reshape/ReadVariableOp2b
/instance_normalization/Reshape_1/ReadVariableOp/instance_normalization/Reshape_1/ReadVariableOp2b
/instance_normalization_1/Reshape/ReadVariableOp/instance_normalization_1/Reshape/ReadVariableOp2f
1instance_normalization_1/Reshape_1/ReadVariableOp1instance_normalization_1/Reshape_1/ReadVariableOp2b
/instance_normalization_2/Reshape/ReadVariableOp/instance_normalization_2/Reshape/ReadVariableOp2f
1instance_normalization_2/Reshape_1/ReadVariableOp1instance_normalization_2/Reshape_1/ReadVariableOp2b
/instance_normalization_3/Reshape/ReadVariableOp/instance_normalization_3/Reshape/ReadVariableOp2f
1instance_normalization_3/Reshape_1/ReadVariableOp1instance_normalization_3/Reshape_1/ReadVariableOp20
p_re_lu/ReadVariableOpp_re_lu/ReadVariableOp24
p_re_lu_1/ReadVariableOpp_re_lu_1/ReadVariableOp24
p_re_lu_2/ReadVariableOpp_re_lu_2/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_1_layer_call_fn_30902

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_29164e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_29537

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?a
?
@__inference_model_layer_call_and_return_conditional_losses_29991
input_1$
conv1d_29926:??
conv1d_29928:	?+
instance_normalization_29931:	?+
instance_normalization_29933:	? 
p_re_lu_29936:	?&
conv1d_1_29941:??
conv1d_1_29943:	?-
instance_normalization_1_29946:	?-
instance_normalization_1_29948:	?"
p_re_lu_1_29951:	?&
conv1d_2_29956:??
conv1d_2_29958:	?-
instance_normalization_2_29961:	?-
instance_normalization_2_29963:	?"
p_re_lu_2_29966:	?
dense_29974:
??
dense_29976:	?-
instance_normalization_3_29979:	?-
instance_normalization_3_29981:	? 
dense_1_29985:	?
dense_1_29987:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?.instance_normalization/StatefulPartitionedCall?0instance_normalization_1/StatefulPartitionedCall?0instance_normalization_2/StatefulPartitionedCall?0instance_normalization_3/StatefulPartitionedCall?p_re_lu/StatefulPartitionedCall?!p_re_lu_1/StatefulPartitionedCall?!p_re_lu_2/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv1d_29926conv1d_29928*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_29028?
.instance_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0instance_normalization_29931instance_normalization_29933*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_instance_normalization_layer_call_and_return_conditional_losses_29073?
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall7instance_normalization/StatefulPartitionedCall:output:0p_re_lu_29936*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_28929?
dropout/StatefulPartitionedCallStatefulPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29623?
max_pooling1d/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_28946?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0conv1d_1_29941conv1d_1_29943*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_29105?
0instance_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0instance_normalization_1_29946instance_normalization_1_29948*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_1_layer_call_and_return_conditional_losses_29150?
!p_re_lu_1/StatefulPartitionedCallStatefulPartitionedCall9instance_normalization_1/StatefulPartitionedCall:output:0p_re_lu_1_29951*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_28965?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall*p_re_lu_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_29580?
max_pooling1d_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_28982?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_1/PartitionedCall:output:0conv1d_2_29956conv1d_2_29958*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_29182?
0instance_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0instance_normalization_2_29961instance_normalization_2_29963*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_2_layer_call_and_return_conditional_losses_29227?
!p_re_lu_2/StatefulPartitionedCallStatefulPartitionedCall9instance_normalization_2/StatefulPartitionedCall:output:0p_re_lu_2_29966*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_29001?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall*p_re_lu_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_29537?
lambda_1/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_29514?
softmax/PartitionedCallPartitionedCall!lambda_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_29258?
lambda/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_29489?
multiply/PartitionedCallPartitionedCall softmax/PartitionedCall:output:0lambda/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_multiply_layer_call_and_return_conditional_losses_29276?
dense/StatefulPartitionedCallStatefulPartitionedCall!multiply/PartitionedCall:output:0dense_29974dense_29976*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_29309?
0instance_normalization_3/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0instance_normalization_3_29979instance_normalization_3_29981*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_3_layer_call_and_return_conditional_losses_29354?
flatten/PartitionedCallPartitionedCall9instance_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_29366?
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_29985dense_1_29987*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_29378w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall/^instance_normalization/StatefulPartitionedCall1^instance_normalization_1/StatefulPartitionedCall1^instance_normalization_2/StatefulPartitionedCall1^instance_normalization_3/StatefulPartitionedCall ^p_re_lu/StatefulPartitionedCall"^p_re_lu_1/StatefulPartitionedCall"^p_re_lu_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2`
.instance_normalization/StatefulPartitionedCall.instance_normalization/StatefulPartitionedCall2d
0instance_normalization_1/StatefulPartitionedCall0instance_normalization_1/StatefulPartitionedCall2d
0instance_normalization_2/StatefulPartitionedCall0instance_normalization_2/StatefulPartitionedCall2d
0instance_normalization_3/StatefulPartitionedCall0instance_normalization_3/StatefulPartitionedCall2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall2F
!p_re_lu_1/StatefulPartitionedCall!p_re_lu_1/StatefulPartitionedCall2F
!p_re_lu_2/StatefulPartitionedCall!p_re_lu_2/StatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_30924

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
@__inference_dense_layer_call_and_return_conditional_losses_31169

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????[
SigmoidSigmoidBiasAdd:output:0*
T0*,
_output_shapes
:??????????_
IdentityIdentitySigmoid:y:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_p_re_lu_layer_call_and_return_conditional_losses_28929

inputs*
readvariableop_resource:	?
identity??ReadVariableOpT
ReluReluinputs*
T0*5
_output_shapes#
!:???????????????????g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype0L
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:	?T
Neg_1Neginputs*
T0*5
_output_shapes#
!:???????????????????Y
Relu_1Relu	Neg_1:y:0*
T0*5
_output_shapes#
!:???????????????????i
mulMulNeg:y:0Relu_1:activations:0*
T0*5
_output_shapes#
!:???????????????????i
addAddV2Relu:activations:0mul:z:0*
T0*5
_output_shapes#
!:???????????????????d
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:???????????????????W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:???????????????????: 2 
ReadVariableOpReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?%
?
S__inference_instance_normalization_1_layer_call_and_return_conditional_losses_29150

inputs.
reshape_readvariableop_resource:	?0
!reshape_1_readvariableop_resource:	?
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:???????????
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(s
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:?*
dtype0b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         x
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*#
_output_shapes
:?w
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ~
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*#
_output_shapes
:?T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:??????????r
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*,
_output_shapes
:??????????h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????t
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_29028

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_30961

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_30912

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_30806

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_28913
input_1P
8model_conv1d_conv1d_expanddims_1_readvariableop_resource:??;
,model_conv1d_biasadd_readvariableop_resource:	?K
<model_instance_normalization_reshape_readvariableop_resource:	?M
>model_instance_normalization_reshape_1_readvariableop_resource:	?8
%model_p_re_lu_readvariableop_resource:	?R
:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource:??=
.model_conv1d_1_biasadd_readvariableop_resource:	?M
>model_instance_normalization_1_reshape_readvariableop_resource:	?O
@model_instance_normalization_1_reshape_1_readvariableop_resource:	?:
'model_p_re_lu_1_readvariableop_resource:	?R
:model_conv1d_2_conv1d_expanddims_1_readvariableop_resource:??=
.model_conv1d_2_biasadd_readvariableop_resource:	?M
>model_instance_normalization_2_reshape_readvariableop_resource:	?O
@model_instance_normalization_2_reshape_1_readvariableop_resource:	?:
'model_p_re_lu_2_readvariableop_resource:	?A
-model_dense_tensordot_readvariableop_resource:
??:
+model_dense_biasadd_readvariableop_resource:	?M
>model_instance_normalization_3_reshape_readvariableop_resource:	?O
@model_instance_normalization_3_reshape_1_readvariableop_resource:	??
,model_dense_1_matmul_readvariableop_resource:	?;
-model_dense_1_biasadd_readvariableop_resource:
identity??#model/conv1d/BiasAdd/ReadVariableOp?/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp?%model/conv1d_1/BiasAdd/ReadVariableOp?1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?%model/conv1d_2/BiasAdd/ReadVariableOp?1model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?$model/dense/Tensordot/ReadVariableOp?$model/dense_1/BiasAdd/ReadVariableOp?#model/dense_1/MatMul/ReadVariableOp?3model/instance_normalization/Reshape/ReadVariableOp?5model/instance_normalization/Reshape_1/ReadVariableOp?5model/instance_normalization_1/Reshape/ReadVariableOp?7model/instance_normalization_1/Reshape_1/ReadVariableOp?5model/instance_normalization_2/Reshape/ReadVariableOp?7model/instance_normalization_2/Reshape_1/ReadVariableOp?5model/instance_normalization_3/Reshape/ReadVariableOp?7model/instance_normalization_3/Reshape_1/ReadVariableOp?model/p_re_lu/ReadVariableOp?model/p_re_lu_1/ReadVariableOp?model/p_re_lu_2/ReadVariableOpm
"model/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
model/conv1d/Conv1D/ExpandDims
ExpandDimsinput_1+model/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8model_conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0f
$model/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
 model/conv1d/Conv1D/ExpandDims_1
ExpandDims7model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0-model/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model/conv1d/Conv1DConv2D'model/conv1d/Conv1D/ExpandDims:output:0)model/conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
model/conv1d/Conv1D/SqueezeSqueezemodel/conv1d/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
#model/conv1d/BiasAdd/ReadVariableOpReadVariableOp,model_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/conv1d/BiasAddBiasAdd$model/conv1d/Conv1D/Squeeze:output:0+model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????o
"model/instance_normalization/ShapeShapemodel/conv1d/BiasAdd:output:0*
T0*
_output_shapes
:z
0model/instance_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model/instance_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model/instance_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*model/instance_normalization/strided_sliceStridedSlice+model/instance_normalization/Shape:output:09model/instance_normalization/strided_slice/stack:output:0;model/instance_normalization/strided_slice/stack_1:output:0;model/instance_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model/instance_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model/instance_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model/instance_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,model/instance_normalization/strided_slice_1StridedSlice+model/instance_normalization/Shape:output:0;model/instance_normalization/strided_slice_1/stack:output:0=model/instance_normalization/strided_slice_1/stack_1:output:0=model/instance_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2model/instance_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4model/instance_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model/instance_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,model/instance_normalization/strided_slice_2StridedSlice+model/instance_normalization/Shape:output:0;model/instance_normalization/strided_slice_2/stack:output:0=model/instance_normalization/strided_slice_2/stack_1:output:0=model/instance_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model/instance_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
)model/instance_normalization/moments/meanMeanmodel/conv1d/BiasAdd:output:0Dmodel/instance_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
1model/instance_normalization/moments/StopGradientStopGradient2model/instance_normalization/moments/mean:output:0*
T0*,
_output_shapes
:???????????
6model/instance_normalization/moments/SquaredDifferenceSquaredDifferencemodel/conv1d/BiasAdd:output:0:model/instance_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
?model/instance_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
-model/instance_normalization/moments/varianceMean:model/instance_normalization/moments/SquaredDifference:z:0Hmodel/instance_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
3model/instance_normalization/Reshape/ReadVariableOpReadVariableOp<model_instance_normalization_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0
*model/instance_normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      ?   ?
$model/instance_normalization/ReshapeReshape;model/instance_normalization/Reshape/ReadVariableOp:value:03model/instance_normalization/Reshape/shape:output:0*
T0*#
_output_shapes
:??
5model/instance_normalization/Reshape_1/ReadVariableOpReadVariableOp>model_instance_normalization_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,model/instance_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      ?   ?
&model/instance_normalization/Reshape_1Reshape=model/instance_normalization/Reshape_1/ReadVariableOp:value:05model/instance_normalization/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?q
,model/instance_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
*model/instance_normalization/batchnorm/addAddV26model/instance_normalization/moments/variance:output:05model/instance_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
,model/instance_normalization/batchnorm/RsqrtRsqrt.model/instance_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
*model/instance_normalization/batchnorm/mulMul0model/instance_normalization/batchnorm/Rsqrt:y:0-model/instance_normalization/Reshape:output:0*
T0*,
_output_shapes
:???????????
,model/instance_normalization/batchnorm/mul_1Mulmodel/conv1d/BiasAdd:output:0.model/instance_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
,model/instance_normalization/batchnorm/mul_2Mul2model/instance_normalization/moments/mean:output:0.model/instance_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
*model/instance_normalization/batchnorm/subSub/model/instance_normalization/Reshape_1:output:00model/instance_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
,model/instance_normalization/batchnorm/add_1AddV20model/instance_normalization/batchnorm/mul_1:z:0.model/instance_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:???????????
model/p_re_lu/ReluRelu0model/instance_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:???????????
model/p_re_lu/ReadVariableOpReadVariableOp%model_p_re_lu_readvariableop_resource*
_output_shapes
:	?*
dtype0h
model/p_re_lu/NegNeg$model/p_re_lu/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
model/p_re_lu/Neg_1Neg0model/instance_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????l
model/p_re_lu/Relu_1Relumodel/p_re_lu/Neg_1:y:0*
T0*,
_output_shapes
:???????????
model/p_re_lu/mulMulmodel/p_re_lu/Neg:y:0"model/p_re_lu/Relu_1:activations:0*
T0*,
_output_shapes
:???????????
model/p_re_lu/addAddV2 model/p_re_lu/Relu:activations:0model/p_re_lu/mul:z:0*
T0*,
_output_shapes
:??????????p
model/dropout/IdentityIdentitymodel/p_re_lu/add:z:0*
T0*,
_output_shapes
:??????????d
"model/max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
model/max_pooling1d/ExpandDims
ExpandDimsmodel/dropout/Identity:output:0+model/max_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
model/max_pooling1d/MaxPoolMaxPool'model/max_pooling1d/ExpandDims:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
?
model/max_pooling1d/SqueezeSqueeze$model/max_pooling1d/MaxPool:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
o
$model/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 model/conv1d_1/Conv1D/ExpandDims
ExpandDims$model/max_pooling1d/Squeeze:output:0-model/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0h
&model/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
"model/conv1d_1/Conv1D/ExpandDims_1
ExpandDims9model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0/model/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model/conv1d_1/Conv1DConv2D)model/conv1d_1/Conv1D/ExpandDims:output:0+model/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
model/conv1d_1/Conv1D/SqueezeSqueezemodel/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
%model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/conv1d_1/BiasAddBiasAdd&model/conv1d_1/Conv1D/Squeeze:output:0-model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????s
$model/instance_normalization_1/ShapeShapemodel/conv1d_1/BiasAdd:output:0*
T0*
_output_shapes
:|
2model/instance_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model/instance_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model/instance_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,model/instance_normalization_1/strided_sliceStridedSlice-model/instance_normalization_1/Shape:output:0;model/instance_normalization_1/strided_slice/stack:output:0=model/instance_normalization_1/strided_slice/stack_1:output:0=model/instance_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4model/instance_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.model/instance_normalization_1/strided_slice_1StridedSlice-model/instance_normalization_1/Shape:output:0=model/instance_normalization_1/strided_slice_1/stack:output:0?model/instance_normalization_1/strided_slice_1/stack_1:output:0?model/instance_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4model/instance_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.model/instance_normalization_1/strided_slice_2StridedSlice-model/instance_normalization_1/Shape:output:0=model/instance_normalization_1/strided_slice_2/stack:output:0?model/instance_normalization_1/strided_slice_2/stack_1:output:0?model/instance_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
=model/instance_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
+model/instance_normalization_1/moments/meanMeanmodel/conv1d_1/BiasAdd:output:0Fmodel/instance_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
3model/instance_normalization_1/moments/StopGradientStopGradient4model/instance_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:???????????
8model/instance_normalization_1/moments/SquaredDifferenceSquaredDifferencemodel/conv1d_1/BiasAdd:output:0<model/instance_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
Amodel/instance_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
/model/instance_normalization_1/moments/varianceMean<model/instance_normalization_1/moments/SquaredDifference:z:0Jmodel/instance_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
5model/instance_normalization_1/Reshape/ReadVariableOpReadVariableOp>model_instance_normalization_1_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,model/instance_normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
&model/instance_normalization_1/ReshapeReshape=model/instance_normalization_1/Reshape/ReadVariableOp:value:05model/instance_normalization_1/Reshape/shape:output:0*
T0*#
_output_shapes
:??
7model/instance_normalization_1/Reshape_1/ReadVariableOpReadVariableOp@model_instance_normalization_1_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.model/instance_normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
(model/instance_normalization_1/Reshape_1Reshape?model/instance_normalization_1/Reshape_1/ReadVariableOp:value:07model/instance_normalization_1/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?s
.model/instance_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
,model/instance_normalization_1/batchnorm/addAddV28model/instance_normalization_1/moments/variance:output:07model/instance_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_1/batchnorm/RsqrtRsqrt0model/instance_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
,model/instance_normalization_1/batchnorm/mulMul2model/instance_normalization_1/batchnorm/Rsqrt:y:0/model/instance_normalization_1/Reshape:output:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_1/batchnorm/mul_1Mulmodel/conv1d_1/BiasAdd:output:00model/instance_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_1/batchnorm/mul_2Mul4model/instance_normalization_1/moments/mean:output:00model/instance_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
,model/instance_normalization_1/batchnorm/subSub1model/instance_normalization_1/Reshape_1:output:02model/instance_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_1/batchnorm/add_1AddV22model/instance_normalization_1/batchnorm/mul_1:z:00model/instance_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:???????????
model/p_re_lu_1/ReluRelu2model/instance_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:???????????
model/p_re_lu_1/ReadVariableOpReadVariableOp'model_p_re_lu_1_readvariableop_resource*
_output_shapes
:	?*
dtype0l
model/p_re_lu_1/NegNeg&model/p_re_lu_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
model/p_re_lu_1/Neg_1Neg2model/instance_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????p
model/p_re_lu_1/Relu_1Relumodel/p_re_lu_1/Neg_1:y:0*
T0*,
_output_shapes
:???????????
model/p_re_lu_1/mulMulmodel/p_re_lu_1/Neg:y:0$model/p_re_lu_1/Relu_1:activations:0*
T0*,
_output_shapes
:???????????
model/p_re_lu_1/addAddV2"model/p_re_lu_1/Relu:activations:0model/p_re_lu_1/mul:z:0*
T0*,
_output_shapes
:??????????t
model/dropout_1/IdentityIdentitymodel/p_re_lu_1/add:z:0*
T0*,
_output_shapes
:??????????f
$model/max_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
 model/max_pooling1d_1/ExpandDims
ExpandDims!model/dropout_1/Identity:output:0-model/max_pooling1d_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
model/max_pooling1d_1/MaxPoolMaxPool)model/max_pooling1d_1/ExpandDims:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
?
model/max_pooling1d_1/SqueezeSqueeze&model/max_pooling1d_1/MaxPool:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
o
$model/conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 model/conv1d_2/Conv1D/ExpandDims
ExpandDims&model/max_pooling1d_1/Squeeze:output:0-model/conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
1model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp:model_conv1d_2_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0h
&model/conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
"model/conv1d_2/Conv1D/ExpandDims_1
ExpandDims9model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:0/model/conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
model/conv1d_2/Conv1DConv2D)model/conv1d_2/Conv1D/ExpandDims:output:0+model/conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
model/conv1d_2/Conv1D/SqueezeSqueezemodel/conv1d_2/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
%model/conv1d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv1d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/conv1d_2/BiasAddBiasAdd&model/conv1d_2/Conv1D/Squeeze:output:0-model/conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????s
$model/instance_normalization_2/ShapeShapemodel/conv1d_2/BiasAdd:output:0*
T0*
_output_shapes
:|
2model/instance_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model/instance_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model/instance_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,model/instance_normalization_2/strided_sliceStridedSlice-model/instance_normalization_2/Shape:output:0;model/instance_normalization_2/strided_slice/stack:output:0=model/instance_normalization_2/strided_slice/stack_1:output:0=model/instance_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4model/instance_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.model/instance_normalization_2/strided_slice_1StridedSlice-model/instance_normalization_2/Shape:output:0=model/instance_normalization_2/strided_slice_1/stack:output:0?model/instance_normalization_2/strided_slice_1/stack_1:output:0?model/instance_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4model/instance_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.model/instance_normalization_2/strided_slice_2StridedSlice-model/instance_normalization_2/Shape:output:0=model/instance_normalization_2/strided_slice_2/stack:output:0?model/instance_normalization_2/strided_slice_2/stack_1:output:0?model/instance_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
=model/instance_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
+model/instance_normalization_2/moments/meanMeanmodel/conv1d_2/BiasAdd:output:0Fmodel/instance_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
3model/instance_normalization_2/moments/StopGradientStopGradient4model/instance_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:???????????
8model/instance_normalization_2/moments/SquaredDifferenceSquaredDifferencemodel/conv1d_2/BiasAdd:output:0<model/instance_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
Amodel/instance_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
/model/instance_normalization_2/moments/varianceMean<model/instance_normalization_2/moments/SquaredDifference:z:0Jmodel/instance_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
5model/instance_normalization_2/Reshape/ReadVariableOpReadVariableOp>model_instance_normalization_2_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,model/instance_normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
&model/instance_normalization_2/ReshapeReshape=model/instance_normalization_2/Reshape/ReadVariableOp:value:05model/instance_normalization_2/Reshape/shape:output:0*
T0*#
_output_shapes
:??
7model/instance_normalization_2/Reshape_1/ReadVariableOpReadVariableOp@model_instance_normalization_2_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.model/instance_normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
(model/instance_normalization_2/Reshape_1Reshape?model/instance_normalization_2/Reshape_1/ReadVariableOp:value:07model/instance_normalization_2/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?s
.model/instance_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
,model/instance_normalization_2/batchnorm/addAddV28model/instance_normalization_2/moments/variance:output:07model/instance_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_2/batchnorm/RsqrtRsqrt0model/instance_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
,model/instance_normalization_2/batchnorm/mulMul2model/instance_normalization_2/batchnorm/Rsqrt:y:0/model/instance_normalization_2/Reshape:output:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_2/batchnorm/mul_1Mulmodel/conv1d_2/BiasAdd:output:00model/instance_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_2/batchnorm/mul_2Mul4model/instance_normalization_2/moments/mean:output:00model/instance_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
,model/instance_normalization_2/batchnorm/subSub1model/instance_normalization_2/Reshape_1:output:02model/instance_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_2/batchnorm/add_1AddV22model/instance_normalization_2/batchnorm/mul_1:z:00model/instance_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:???????????
model/p_re_lu_2/ReluRelu2model/instance_normalization_2/batchnorm/add_1:z:0*
T0*,
_output_shapes
:???????????
model/p_re_lu_2/ReadVariableOpReadVariableOp'model_p_re_lu_2_readvariableop_resource*
_output_shapes
:	?*
dtype0l
model/p_re_lu_2/NegNeg&model/p_re_lu_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	??
model/p_re_lu_2/Neg_1Neg2model/instance_normalization_2/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????p
model/p_re_lu_2/Relu_1Relumodel/p_re_lu_2/Neg_1:y:0*
T0*,
_output_shapes
:???????????
model/p_re_lu_2/mulMulmodel/p_re_lu_2/Neg:y:0$model/p_re_lu_2/Relu_1:activations:0*
T0*,
_output_shapes
:???????????
model/p_re_lu_2/addAddV2"model/p_re_lu_2/Relu:activations:0model/p_re_lu_2/mul:z:0*
T0*,
_output_shapes
:??????????t
model/dropout_2/IdentityIdentitymodel/p_re_lu_2/add:z:0*
T0*,
_output_shapes
:??????????w
"model/lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           y
$model/lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            y
$model/lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
model/lambda_1/strided_sliceStridedSlice!model/dropout_2/Identity:output:0+model/lambda_1/strided_slice/stack:output:0-model/lambda_1/strided_slice/stack_1:output:0-model/lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask~
model/softmax/SoftmaxSoftmax%model/lambda_1/strided_slice:output:0*
T0*,
_output_shapes
:??????????u
 model/lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            w
"model/lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           w
"model/lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
model/lambda/strided_sliceStridedSlice!model/dropout_2/Identity:output:0)model/lambda/strided_slice/stack:output:0+model/lambda/strided_slice/stack_1:output:0+model/lambda/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask?
model/multiply/mulMulmodel/softmax/Softmax:softmax:0#model/lambda/strided_slice:output:0*
T0*,
_output_shapes
:???????????
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0d
model/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
model/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
model/dense/Tensordot/ShapeShapemodel/multiply/mul:z:0*
T0*
_output_shapes
:e
#model/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
model/dense/Tensordot/GatherV2GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/free:output:0,model/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
%model/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
 model/dense/Tensordot/GatherV2_1GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/axes:output:0.model/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
model/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
model/dense/Tensordot/ProdProd'model/dense/Tensordot/GatherV2:output:0$model/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: g
model/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
model/dense/Tensordot/Prod_1Prod)model/dense/Tensordot/GatherV2_1:output:0&model/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: c
!model/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
model/dense/Tensordot/transpose	Transposemodel/multiply/mul:z:0%model/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
model/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?e
#model/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????s
model/dense/SigmoidSigmoidmodel/dense/BiasAdd:output:0*
T0*,
_output_shapes
:??????????k
$model/instance_normalization_3/ShapeShapemodel/dense/Sigmoid:y:0*
T0*
_output_shapes
:|
2model/instance_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model/instance_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model/instance_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,model/instance_normalization_3/strided_sliceStridedSlice-model/instance_normalization_3/Shape:output:0;model/instance_normalization_3/strided_slice/stack:output:0=model/instance_normalization_3/strided_slice/stack_1:output:0=model/instance_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4model/instance_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.model/instance_normalization_3/strided_slice_1StridedSlice-model/instance_normalization_3/Shape:output:0=model/instance_normalization_3/strided_slice_1/stack:output:0?model/instance_normalization_3/strided_slice_1/stack_1:output:0?model/instance_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
4model/instance_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6model/instance_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.model/instance_normalization_3/strided_slice_2StridedSlice-model/instance_normalization_3/Shape:output:0=model/instance_normalization_3/strided_slice_2/stack:output:0?model/instance_normalization_3/strided_slice_2/stack_1:output:0?model/instance_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
=model/instance_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
+model/instance_normalization_3/moments/meanMeanmodel/dense/Sigmoid:y:0Fmodel/instance_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
3model/instance_normalization_3/moments/StopGradientStopGradient4model/instance_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:???????????
8model/instance_normalization_3/moments/SquaredDifferenceSquaredDifferencemodel/dense/Sigmoid:y:0<model/instance_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
Amodel/instance_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
/model/instance_normalization_3/moments/varianceMean<model/instance_normalization_3/moments/SquaredDifference:z:0Jmodel/instance_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
5model/instance_normalization_3/Reshape/ReadVariableOpReadVariableOp>model_instance_normalization_3_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,model/instance_normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
&model/instance_normalization_3/ReshapeReshape=model/instance_normalization_3/Reshape/ReadVariableOp:value:05model/instance_normalization_3/Reshape/shape:output:0*
T0*#
_output_shapes
:??
7model/instance_normalization_3/Reshape_1/ReadVariableOpReadVariableOp@model_instance_normalization_3_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.model/instance_normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
(model/instance_normalization_3/Reshape_1Reshape?model/instance_normalization_3/Reshape_1/ReadVariableOp:value:07model/instance_normalization_3/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?s
.model/instance_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
,model/instance_normalization_3/batchnorm/addAddV28model/instance_normalization_3/moments/variance:output:07model/instance_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_3/batchnorm/RsqrtRsqrt0model/instance_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
,model/instance_normalization_3/batchnorm/mulMul2model/instance_normalization_3/batchnorm/Rsqrt:y:0/model/instance_normalization_3/Reshape:output:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_3/batchnorm/mul_1Mulmodel/dense/Sigmoid:y:00model/instance_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_3/batchnorm/mul_2Mul4model/instance_normalization_3/moments/mean:output:00model/instance_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
,model/instance_normalization_3/batchnorm/subSub1model/instance_normalization_3/Reshape_1:output:02model/instance_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
.model/instance_normalization_3/batchnorm/add_1AddV22model/instance_normalization_3/batchnorm/mul_1:z:00model/instance_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model/flatten/ReshapeReshape2model/instance_normalization_3/batchnorm/add_1:z:0model/flatten/Const:output:0*
T0*(
_output_shapes
:???????????
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model/dense_1/MatMulMatMulmodel/flatten/Reshape:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????m
IdentityIdentitymodel/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^model/conv1d/BiasAdd/ReadVariableOp0^model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp&^model/conv1d_1/BiasAdd/ReadVariableOp2^model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp&^model/conv1d_2/BiasAdd/ReadVariableOp2^model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp4^model/instance_normalization/Reshape/ReadVariableOp6^model/instance_normalization/Reshape_1/ReadVariableOp6^model/instance_normalization_1/Reshape/ReadVariableOp8^model/instance_normalization_1/Reshape_1/ReadVariableOp6^model/instance_normalization_2/Reshape/ReadVariableOp8^model/instance_normalization_2/Reshape_1/ReadVariableOp6^model/instance_normalization_3/Reshape/ReadVariableOp8^model/instance_normalization_3/Reshape_1/ReadVariableOp^model/p_re_lu/ReadVariableOp^model/p_re_lu_1/ReadVariableOp^model/p_re_lu_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 2J
#model/conv1d/BiasAdd/ReadVariableOp#model/conv1d/BiasAdd/ReadVariableOp2b
/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2N
%model/conv1d_1/BiasAdd/ReadVariableOp%model/conv1d_1/BiasAdd/ReadVariableOp2f
1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2N
%model/conv1d_2/BiasAdd/ReadVariableOp%model/conv1d_2/BiasAdd/ReadVariableOp2f
1model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp1model/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2j
3model/instance_normalization/Reshape/ReadVariableOp3model/instance_normalization/Reshape/ReadVariableOp2n
5model/instance_normalization/Reshape_1/ReadVariableOp5model/instance_normalization/Reshape_1/ReadVariableOp2n
5model/instance_normalization_1/Reshape/ReadVariableOp5model/instance_normalization_1/Reshape/ReadVariableOp2r
7model/instance_normalization_1/Reshape_1/ReadVariableOp7model/instance_normalization_1/Reshape_1/ReadVariableOp2n
5model/instance_normalization_2/Reshape/ReadVariableOp5model/instance_normalization_2/Reshape/ReadVariableOp2r
7model/instance_normalization_2/Reshape_1/ReadVariableOp7model/instance_normalization_2/Reshape_1/ReadVariableOp2n
5model/instance_normalization_3/Reshape/ReadVariableOp5model/instance_normalization_3/Reshape/ReadVariableOp2r
7model/instance_normalization_3/Reshape_1/ReadVariableOp7model/instance_normalization_3/Reshape_1/ReadVariableOp2<
model/p_re_lu/ReadVariableOpmodel/p_re_lu/ReadVariableOp2@
model/p_re_lu_1/ReadVariableOpmodel/p_re_lu_1/ReadVariableOp2@
model/p_re_lu_2/ReadVariableOpmodel/p_re_lu_2/ReadVariableOp:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?
?
(__inference_conv1d_2_layer_call_fn_30946

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_2_layer_call_and_return_conditional_losses_29182t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
S__inference_instance_normalization_3_layer_call_and_return_conditional_losses_29354

inputs.
reshape_readvariableop_resource:	?0
!reshape_1_readvariableop_resource:	?
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:???????????
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(s
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:?*
dtype0b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         x
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*#
_output_shapes
:?w
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ~
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*#
_output_shapes
:?T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:??????????r
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*,
_output_shapes
:??????????h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????t
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_29105

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_instance_normalization_3_layer_call_fn_31178

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_instance_normalization_3_layer_call_and_return_conditional_losses_29354t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
m
C__inference_multiply_layer_call_and_return_conditional_losses_29276

inputs
inputs_1
identityS
mulMulinputsinputs_1*
T0*,
_output_shapes
:??????????T
IdentityIdentitymul:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:TP
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_28965

inputs*
readvariableop_resource:	?
identity??ReadVariableOpT
ReluReluinputs*
T0*5
_output_shapes#
!:???????????????????g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype0L
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:	?T
Neg_1Neginputs*
T0*5
_output_shapes#
!:???????????????????Y
Relu_1Relu	Neg_1:y:0*
T0*5
_output_shapes#
!:???????????????????i
mulMulNeg:y:0Relu_1:activations:0*
T0*5
_output_shapes#
!:???????????????????i
addAddV2Relu:activations:0mul:z:0*
T0*5
_output_shapes#
!:???????????????????d
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:???????????????????W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:???????????????????: 2 
ReadVariableOpReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
o
C__inference_multiply_layer_call_and_return_conditional_losses_31129
inputs_0
inputs_1
identityU
mulMulinputs_0inputs_1*
T0*,
_output_shapes
:??????????T
IdentityIdentitymul:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:??????????:??????????:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_29580

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_30046
input_1
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?!
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?!
	unknown_9:??

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:
??

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_28913o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
??
?-
!__inference__traced_restore_31700
file_prefix6
assignvariableop_conv1d_kernel:??-
assignvariableop_1_conv1d_bias:	?>
/assignvariableop_2_instance_normalization_gamma:	?=
.assignvariableop_3_instance_normalization_beta:	?3
 assignvariableop_4_p_re_lu_alpha:	?:
"assignvariableop_5_conv1d_1_kernel:??/
 assignvariableop_6_conv1d_1_bias:	?@
1assignvariableop_7_instance_normalization_1_gamma:	??
0assignvariableop_8_instance_normalization_1_beta:	?5
"assignvariableop_9_p_re_lu_1_alpha:	?;
#assignvariableop_10_conv1d_2_kernel:??0
!assignvariableop_11_conv1d_2_bias:	?A
2assignvariableop_12_instance_normalization_2_gamma:	?@
1assignvariableop_13_instance_normalization_2_beta:	?6
#assignvariableop_14_p_re_lu_2_alpha:	?4
 assignvariableop_15_dense_kernel:
??-
assignvariableop_16_dense_bias:	?A
2assignvariableop_17_instance_normalization_3_gamma:	?@
1assignvariableop_18_instance_normalization_3_beta:	?5
"assignvariableop_19_dense_1_kernel:	?.
 assignvariableop_20_dense_1_bias:'
assignvariableop_21_adam_iter:	 )
assignvariableop_22_adam_beta_1: )
assignvariableop_23_adam_beta_2: (
assignvariableop_24_adam_decay: 0
&assignvariableop_25_adam_learning_rate: #
assignvariableop_26_total: #
assignvariableop_27_count: @
(assignvariableop_28_adam_conv1d_kernel_m:??5
&assignvariableop_29_adam_conv1d_bias_m:	?F
7assignvariableop_30_adam_instance_normalization_gamma_m:	?E
6assignvariableop_31_adam_instance_normalization_beta_m:	?;
(assignvariableop_32_adam_p_re_lu_alpha_m:	?B
*assignvariableop_33_adam_conv1d_1_kernel_m:??7
(assignvariableop_34_adam_conv1d_1_bias_m:	?H
9assignvariableop_35_adam_instance_normalization_1_gamma_m:	?G
8assignvariableop_36_adam_instance_normalization_1_beta_m:	?=
*assignvariableop_37_adam_p_re_lu_1_alpha_m:	?B
*assignvariableop_38_adam_conv1d_2_kernel_m:??7
(assignvariableop_39_adam_conv1d_2_bias_m:	?H
9assignvariableop_40_adam_instance_normalization_2_gamma_m:	?G
8assignvariableop_41_adam_instance_normalization_2_beta_m:	?=
*assignvariableop_42_adam_p_re_lu_2_alpha_m:	?;
'assignvariableop_43_adam_dense_kernel_m:
??4
%assignvariableop_44_adam_dense_bias_m:	?H
9assignvariableop_45_adam_instance_normalization_3_gamma_m:	?G
8assignvariableop_46_adam_instance_normalization_3_beta_m:	?<
)assignvariableop_47_adam_dense_1_kernel_m:	?5
'assignvariableop_48_adam_dense_1_bias_m:@
(assignvariableop_49_adam_conv1d_kernel_v:??5
&assignvariableop_50_adam_conv1d_bias_v:	?F
7assignvariableop_51_adam_instance_normalization_gamma_v:	?E
6assignvariableop_52_adam_instance_normalization_beta_v:	?;
(assignvariableop_53_adam_p_re_lu_alpha_v:	?B
*assignvariableop_54_adam_conv1d_1_kernel_v:??7
(assignvariableop_55_adam_conv1d_1_bias_v:	?H
9assignvariableop_56_adam_instance_normalization_1_gamma_v:	?G
8assignvariableop_57_adam_instance_normalization_1_beta_v:	?=
*assignvariableop_58_adam_p_re_lu_1_alpha_v:	?B
*assignvariableop_59_adam_conv1d_2_kernel_v:??7
(assignvariableop_60_adam_conv1d_2_bias_v:	?H
9assignvariableop_61_adam_instance_normalization_2_gamma_v:	?G
8assignvariableop_62_adam_instance_normalization_2_beta_v:	?=
*assignvariableop_63_adam_p_re_lu_2_alpha_v:	?;
'assignvariableop_64_adam_dense_kernel_v:
??4
%assignvariableop_65_adam_dense_bias_v:	?H
9assignvariableop_66_adam_instance_normalization_3_gamma_v:	?G
8assignvariableop_67_adam_instance_normalization_3_beta_v:	?<
)assignvariableop_68_adam_dense_1_kernel_v:	?5
'assignvariableop_69_adam_dense_1_bias_v:
identity_71??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*?'
value?'B?'GB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*?
value?B?GB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*U
dtypesK
I2G	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_conv1d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_instance_normalization_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_instance_normalization_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp assignvariableop_4_p_re_lu_alphaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv1d_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv1d_1_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp1assignvariableop_7_instance_normalization_1_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_instance_normalization_1_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_p_re_lu_1_alphaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv1d_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv1d_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp2assignvariableop_12_instance_normalization_2_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_instance_normalization_2_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_p_re_lu_2_alphaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_dense_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp2assignvariableop_17_instance_normalization_3_gammaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp1assignvariableop_18_instance_normalization_3_betaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_dense_1_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_1_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_iterIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_beta_2Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_decayIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp&assignvariableop_25_adam_learning_rateIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv1d_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp&assignvariableop_29_adam_conv1d_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp7assignvariableop_30_adam_instance_normalization_gamma_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_instance_normalization_beta_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_p_re_lu_alpha_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv1d_1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv1d_1_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp9assignvariableop_35_adam_instance_normalization_1_gamma_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp8assignvariableop_36_adam_instance_normalization_1_beta_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_p_re_lu_1_alpha_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_conv1d_2_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_conv1d_2_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp9assignvariableop_40_adam_instance_normalization_2_gamma_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp8assignvariableop_41_adam_instance_normalization_2_beta_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_p_re_lu_2_alpha_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_dense_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp9assignvariableop_45_adam_instance_normalization_3_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp8assignvariableop_46_adam_instance_normalization_3_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_1_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_1_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_conv1d_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_conv1d_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp7assignvariableop_51_adam_instance_normalization_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_instance_normalization_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_p_re_lu_alpha_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp*assignvariableop_54_adam_conv1d_1_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp(assignvariableop_55_adam_conv1d_1_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp9assignvariableop_56_adam_instance_normalization_1_gamma_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp8assignvariableop_57_adam_instance_normalization_1_beta_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_p_re_lu_1_alpha_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_conv1d_2_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_conv1d_2_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp9assignvariableop_61_adam_instance_normalization_2_gamma_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp8assignvariableop_62_adam_instance_normalization_2_beta_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_p_re_lu_2_alpha_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_dense_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp%assignvariableop_65_adam_dense_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp9assignvariableop_66_adam_instance_normalization_3_gamma_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp8assignvariableop_67_adam_instance_normalization_3_beta_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_dense_1_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOp'assignvariableop_69_adam_dense_1_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_70Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_71IdentityIdentity_70:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_71Identity_71:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
E
)__inference_dropout_2_layer_call_fn_31033

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_29241e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
)__inference_p_re_lu_2_layer_call_fn_31016

inputs
unknown:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_29001}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:???????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_31247

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_30830

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
@__inference_model_layer_call_and_return_conditional_losses_30675

inputsJ
2conv1d_conv1d_expanddims_1_readvariableop_resource:??5
&conv1d_biasadd_readvariableop_resource:	?E
6instance_normalization_reshape_readvariableop_resource:	?G
8instance_normalization_reshape_1_readvariableop_resource:	?2
p_re_lu_readvariableop_resource:	?L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:??7
(conv1d_1_biasadd_readvariableop_resource:	?G
8instance_normalization_1_reshape_readvariableop_resource:	?I
:instance_normalization_1_reshape_1_readvariableop_resource:	?4
!p_re_lu_1_readvariableop_resource:	?L
4conv1d_2_conv1d_expanddims_1_readvariableop_resource:??7
(conv1d_2_biasadd_readvariableop_resource:	?G
8instance_normalization_2_reshape_readvariableop_resource:	?I
:instance_normalization_2_reshape_1_readvariableop_resource:	?4
!p_re_lu_2_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?G
8instance_normalization_3_reshape_readvariableop_resource:	?I
:instance_normalization_3_reshape_1_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?5
'dense_1_biasadd_readvariableop_resource:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?-instance_normalization/Reshape/ReadVariableOp?/instance_normalization/Reshape_1/ReadVariableOp?/instance_normalization_1/Reshape/ReadVariableOp?1instance_normalization_1/Reshape_1/ReadVariableOp?/instance_normalization_2/Reshape/ReadVariableOp?1instance_normalization_2/Reshape_1/ReadVariableOp?/instance_normalization_3/Reshape/ReadVariableOp?1instance_normalization_3/Reshape_1/ReadVariableOp?p_re_lu/ReadVariableOp?p_re_lu_1/ReadVariableOp?p_re_lu_2/ReadVariableOpg
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDimsinputs%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????c
instance_normalization/ShapeShapeconv1d/BiasAdd:output:0*
T0*
_output_shapes
:t
*instance_normalization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,instance_normalization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,instance_normalization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$instance_normalization/strided_sliceStridedSlice%instance_normalization/Shape:output:03instance_normalization/strided_slice/stack:output:05instance_normalization/strided_slice/stack_1:output:05instance_normalization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
,instance_normalization/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&instance_normalization/strided_slice_1StridedSlice%instance_normalization/Shape:output:05instance_normalization/strided_slice_1/stack:output:07instance_normalization/strided_slice_1/stack_1:output:07instance_normalization/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
,instance_normalization/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&instance_normalization/strided_slice_2StridedSlice%instance_normalization/Shape:output:05instance_normalization/strided_slice_2/stack:output:07instance_normalization/strided_slice_2/stack_1:output:07instance_normalization/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5instance_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
#instance_normalization/moments/meanMeanconv1d/BiasAdd:output:0>instance_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
+instance_normalization/moments/StopGradientStopGradient,instance_normalization/moments/mean:output:0*
T0*,
_output_shapes
:???????????
0instance_normalization/moments/SquaredDifferenceSquaredDifferenceconv1d/BiasAdd:output:04instance_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
9instance_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
'instance_normalization/moments/varianceMean4instance_normalization/moments/SquaredDifference:z:0Binstance_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
-instance_normalization/Reshape/ReadVariableOpReadVariableOp6instance_normalization_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0y
$instance_normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      ?   ?
instance_normalization/ReshapeReshape5instance_normalization/Reshape/ReadVariableOp:value:0-instance_normalization/Reshape/shape:output:0*
T0*#
_output_shapes
:??
/instance_normalization/Reshape_1/ReadVariableOpReadVariableOp8instance_normalization_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0{
&instance_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      ?   ?
 instance_normalization/Reshape_1Reshape7instance_normalization/Reshape_1/ReadVariableOp:value:0/instance_normalization/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?k
&instance_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$instance_normalization/batchnorm/addAddV20instance_normalization/moments/variance:output:0/instance_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
&instance_normalization/batchnorm/RsqrtRsqrt(instance_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
$instance_normalization/batchnorm/mulMul*instance_normalization/batchnorm/Rsqrt:y:0'instance_normalization/Reshape:output:0*
T0*,
_output_shapes
:???????????
&instance_normalization/batchnorm/mul_1Mulconv1d/BiasAdd:output:0(instance_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization/batchnorm/mul_2Mul,instance_normalization/moments/mean:output:0(instance_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
$instance_normalization/batchnorm/subSub)instance_normalization/Reshape_1:output:0*instance_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization/batchnorm/add_1AddV2*instance_normalization/batchnorm/mul_1:z:0(instance_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????w
p_re_lu/ReluRelu*instance_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????w
p_re_lu/ReadVariableOpReadVariableOpp_re_lu_readvariableop_resource*
_output_shapes
:	?*
dtype0\
p_re_lu/NegNegp_re_lu/ReadVariableOp:value:0*
T0*
_output_shapes
:	?w
p_re_lu/Neg_1Neg*instance_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????`
p_re_lu/Relu_1Relup_re_lu/Neg_1:y:0*
T0*,
_output_shapes
:??????????x
p_re_lu/mulMulp_re_lu/Neg:y:0p_re_lu/Relu_1:activations:0*
T0*,
_output_shapes
:??????????x
p_re_lu/addAddV2p_re_lu/Relu:activations:0p_re_lu/mul:z:0*
T0*,
_output_shapes
:??????????Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout/dropout/MulMulp_re_lu/add:z:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:??????????T
dropout/dropout/ShapeShapep_re_lu/add:z:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
max_pooling1d/ExpandDims
ExpandDimsdropout/dropout/Mul_1:z:0%max_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
max_pooling1d/MaxPoolMaxPool!max_pooling1d/ExpandDims:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
?
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDimsmax_pooling1d/Squeeze:output:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????g
instance_normalization_1/ShapeShapeconv1d_1/BiasAdd:output:0*
T0*
_output_shapes
:v
,instance_normalization_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.instance_normalization_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&instance_normalization_1/strided_sliceStridedSlice'instance_normalization_1/Shape:output:05instance_normalization_1/strided_slice/stack:output:07instance_normalization_1/strided_slice/stack_1:output:07instance_normalization_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_1/strided_slice_1StridedSlice'instance_normalization_1/Shape:output:07instance_normalization_1/strided_slice_1/stack:output:09instance_normalization_1/strided_slice_1/stack_1:output:09instance_normalization_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_1/strided_slice_2StridedSlice'instance_normalization_1/Shape:output:07instance_normalization_1/strided_slice_2/stack:output:09instance_normalization_1/strided_slice_2/stack_1:output:09instance_normalization_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7instance_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
%instance_normalization_1/moments/meanMeanconv1d_1/BiasAdd:output:0@instance_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
-instance_normalization_1/moments/StopGradientStopGradient.instance_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:???????????
2instance_normalization_1/moments/SquaredDifferenceSquaredDifferenceconv1d_1/BiasAdd:output:06instance_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
;instance_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
)instance_normalization_1/moments/varianceMean6instance_normalization_1/moments/SquaredDifference:z:0Dinstance_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
/instance_normalization_1/Reshape/ReadVariableOpReadVariableOp8instance_normalization_1_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0{
&instance_normalization_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
 instance_normalization_1/ReshapeReshape7instance_normalization_1/Reshape/ReadVariableOp:value:0/instance_normalization_1/Reshape/shape:output:0*
T0*#
_output_shapes
:??
1instance_normalization_1/Reshape_1/ReadVariableOpReadVariableOp:instance_normalization_1_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0}
(instance_normalization_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
"instance_normalization_1/Reshape_1Reshape9instance_normalization_1/Reshape_1/ReadVariableOp:value:01instance_normalization_1/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?m
(instance_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
&instance_normalization_1/batchnorm/addAddV22instance_normalization_1/moments/variance:output:01instance_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_1/batchnorm/RsqrtRsqrt*instance_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_1/batchnorm/mulMul,instance_normalization_1/batchnorm/Rsqrt:y:0)instance_normalization_1/Reshape:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_1/batchnorm/mul_1Mulconv1d_1/BiasAdd:output:0*instance_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_1/batchnorm/mul_2Mul.instance_normalization_1/moments/mean:output:0*instance_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_1/batchnorm/subSub+instance_normalization_1/Reshape_1:output:0,instance_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_1/batchnorm/add_1AddV2,instance_normalization_1/batchnorm/mul_1:z:0*instance_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????{
p_re_lu_1/ReluRelu,instance_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????{
p_re_lu_1/ReadVariableOpReadVariableOp!p_re_lu_1_readvariableop_resource*
_output_shapes
:	?*
dtype0`
p_re_lu_1/NegNeg p_re_lu_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?{
p_re_lu_1/Neg_1Neg,instance_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????d
p_re_lu_1/Relu_1Relup_re_lu_1/Neg_1:y:0*
T0*,
_output_shapes
:??????????~
p_re_lu_1/mulMulp_re_lu_1/Neg:y:0p_re_lu_1/Relu_1:activations:0*
T0*,
_output_shapes
:??????????~
p_re_lu_1/addAddV2p_re_lu_1/Relu:activations:0p_re_lu_1/mul:z:0*
T0*,
_output_shapes
:??????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_1/dropout/MulMulp_re_lu_1/add:z:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:??????????X
dropout_1/dropout/ShapeShapep_re_lu_1/add:z:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????`
max_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
max_pooling1d_1/ExpandDims
ExpandDimsdropout_1/dropout/Mul_1:z:0'max_pooling1d_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
max_pooling1d_1/MaxPoolMaxPool#max_pooling1d_1/ExpandDims:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
?
max_pooling1d_1/SqueezeSqueeze max_pooling1d_1/MaxPool:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
i
conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_2/Conv1D/ExpandDims
ExpandDims max_pooling1d_1/Squeeze:output:0'conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_2_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0b
 conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_2/Conv1D/ExpandDims_1
ExpandDims3conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
conv1d_2/Conv1DConv2D#conv1d_2/Conv1D/ExpandDims:output:0%conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_2/Conv1D/SqueezeSqueezeconv1d_2/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp(conv1d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv1d_2/BiasAddBiasAdd conv1d_2/Conv1D/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????g
instance_normalization_2/ShapeShapeconv1d_2/BiasAdd:output:0*
T0*
_output_shapes
:v
,instance_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.instance_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&instance_normalization_2/strided_sliceStridedSlice'instance_normalization_2/Shape:output:05instance_normalization_2/strided_slice/stack:output:07instance_normalization_2/strided_slice/stack_1:output:07instance_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_2/strided_slice_1StridedSlice'instance_normalization_2/Shape:output:07instance_normalization_2/strided_slice_1/stack:output:09instance_normalization_2/strided_slice_1/stack_1:output:09instance_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_2/strided_slice_2StridedSlice'instance_normalization_2/Shape:output:07instance_normalization_2/strided_slice_2/stack:output:09instance_normalization_2/strided_slice_2/stack_1:output:09instance_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7instance_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
%instance_normalization_2/moments/meanMeanconv1d_2/BiasAdd:output:0@instance_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
-instance_normalization_2/moments/StopGradientStopGradient.instance_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:???????????
2instance_normalization_2/moments/SquaredDifferenceSquaredDifferenceconv1d_2/BiasAdd:output:06instance_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
;instance_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
)instance_normalization_2/moments/varianceMean6instance_normalization_2/moments/SquaredDifference:z:0Dinstance_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
/instance_normalization_2/Reshape/ReadVariableOpReadVariableOp8instance_normalization_2_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0{
&instance_normalization_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
 instance_normalization_2/ReshapeReshape7instance_normalization_2/Reshape/ReadVariableOp:value:0/instance_normalization_2/Reshape/shape:output:0*
T0*#
_output_shapes
:??
1instance_normalization_2/Reshape_1/ReadVariableOpReadVariableOp:instance_normalization_2_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0}
(instance_normalization_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
"instance_normalization_2/Reshape_1Reshape9instance_normalization_2/Reshape_1/ReadVariableOp:value:01instance_normalization_2/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?m
(instance_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
&instance_normalization_2/batchnorm/addAddV22instance_normalization_2/moments/variance:output:01instance_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_2/batchnorm/RsqrtRsqrt*instance_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_2/batchnorm/mulMul,instance_normalization_2/batchnorm/Rsqrt:y:0)instance_normalization_2/Reshape:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_2/batchnorm/mul_1Mulconv1d_2/BiasAdd:output:0*instance_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_2/batchnorm/mul_2Mul.instance_normalization_2/moments/mean:output:0*instance_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_2/batchnorm/subSub+instance_normalization_2/Reshape_1:output:0,instance_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_2/batchnorm/add_1AddV2,instance_normalization_2/batchnorm/mul_1:z:0*instance_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????{
p_re_lu_2/ReluRelu,instance_normalization_2/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????{
p_re_lu_2/ReadVariableOpReadVariableOp!p_re_lu_2_readvariableop_resource*
_output_shapes
:	?*
dtype0`
p_re_lu_2/NegNeg p_re_lu_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?{
p_re_lu_2/Neg_1Neg,instance_normalization_2/batchnorm/add_1:z:0*
T0*,
_output_shapes
:??????????d
p_re_lu_2/Relu_1Relup_re_lu_2/Neg_1:y:0*
T0*,
_output_shapes
:??????????~
p_re_lu_2/mulMulp_re_lu_2/Neg:y:0p_re_lu_2/Relu_1:activations:0*
T0*,
_output_shapes
:??????????~
p_re_lu_2/addAddV2p_re_lu_2/Relu:activations:0p_re_lu_2/mul:z:0*
T0*,
_output_shapes
:??????????\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_2/dropout/MulMulp_re_lu_2/add:z:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:??????????X
dropout_2/dropout/ShapeShapep_re_lu_2/add:z:0*
T0*
_output_shapes
:?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:???????????
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:???????????
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????q
lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           s
lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
lambda_1/strided_sliceStridedSlicedropout_2/dropout/Mul_1:z:0%lambda_1/strided_slice/stack:output:0'lambda_1/strided_slice/stack_1:output:0'lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_maskr
softmax/SoftmaxSoftmaxlambda_1/strided_slice:output:0*
T0*,
_output_shapes
:??????????o
lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            q
lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           q
lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
lambda/strided_sliceStridedSlicedropout_2/dropout/Mul_1:z:0#lambda/strided_slice/stack:output:0%lambda/strided_slice/stack_1:output:0%lambda/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask?
multiply/mulMulsoftmax/Softmax:softmax:0lambda/strided_slice:output:0*
T0*,
_output_shapes
:???????????
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       U
dense/Tensordot/ShapeShapemultiply/mul:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense/Tensordot/transpose	Transposemultiply/mul:z:0dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????g
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*,
_output_shapes
:??????????_
instance_normalization_3/ShapeShapedense/Sigmoid:y:0*
T0*
_output_shapes
:v
,instance_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.instance_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.instance_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&instance_normalization_3/strided_sliceStridedSlice'instance_normalization_3/Shape:output:05instance_normalization_3/strided_slice/stack:output:07instance_normalization_3/strided_slice/stack_1:output:07instance_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_3/strided_slice_1StridedSlice'instance_normalization_3/Shape:output:07instance_normalization_3/strided_slice_1/stack:output:09instance_normalization_3/strided_slice_1/stack_1:output:09instance_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
.instance_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0instance_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(instance_normalization_3/strided_slice_2StridedSlice'instance_normalization_3/Shape:output:07instance_normalization_3/strided_slice_2/stack:output:09instance_normalization_3/strided_slice_2/stack_1:output:09instance_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
7instance_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
%instance_normalization_3/moments/meanMeandense/Sigmoid:y:0@instance_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
-instance_normalization_3/moments/StopGradientStopGradient.instance_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:???????????
2instance_normalization_3/moments/SquaredDifferenceSquaredDifferencedense/Sigmoid:y:06instance_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:???????????
;instance_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
)instance_normalization_3/moments/varianceMean6instance_normalization_3/moments/SquaredDifference:z:0Dinstance_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(?
/instance_normalization_3/Reshape/ReadVariableOpReadVariableOp8instance_normalization_3_reshape_readvariableop_resource*
_output_shapes	
:?*
dtype0{
&instance_normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
 instance_normalization_3/ReshapeReshape7instance_normalization_3/Reshape/ReadVariableOp:value:0/instance_normalization_3/Reshape/shape:output:0*
T0*#
_output_shapes
:??
1instance_normalization_3/Reshape_1/ReadVariableOpReadVariableOp:instance_normalization_3_reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0}
(instance_normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ?
"instance_normalization_3/Reshape_1Reshape9instance_normalization_3/Reshape_1/ReadVariableOp:value:01instance_normalization_3/Reshape_1/shape:output:0*
T0*#
_output_shapes
:?m
(instance_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
&instance_normalization_3/batchnorm/addAddV22instance_normalization_3/moments/variance:output:01instance_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_3/batchnorm/RsqrtRsqrt*instance_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_3/batchnorm/mulMul,instance_normalization_3/batchnorm/Rsqrt:y:0)instance_normalization_3/Reshape:output:0*
T0*,
_output_shapes
:???????????
(instance_normalization_3/batchnorm/mul_1Muldense/Sigmoid:y:0*instance_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_3/batchnorm/mul_2Mul.instance_normalization_3/moments/mean:output:0*instance_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:???????????
&instance_normalization_3/batchnorm/subSub+instance_normalization_3/Reshape_1:output:0,instance_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:???????????
(instance_normalization_3/batchnorm/add_1AddV2,instance_normalization_3/batchnorm/mul_1:z:0*instance_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten/ReshapeReshape,instance_normalization_3/batchnorm/add_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp.^instance_normalization/Reshape/ReadVariableOp0^instance_normalization/Reshape_1/ReadVariableOp0^instance_normalization_1/Reshape/ReadVariableOp2^instance_normalization_1/Reshape_1/ReadVariableOp0^instance_normalization_2/Reshape/ReadVariableOp2^instance_normalization_2/Reshape_1/ReadVariableOp0^instance_normalization_3/Reshape/ReadVariableOp2^instance_normalization_3/Reshape_1/ReadVariableOp^p_re_lu/ReadVariableOp^p_re_lu_1/ReadVariableOp^p_re_lu_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2^
-instance_normalization/Reshape/ReadVariableOp-instance_normalization/Reshape/ReadVariableOp2b
/instance_normalization/Reshape_1/ReadVariableOp/instance_normalization/Reshape_1/ReadVariableOp2b
/instance_normalization_1/Reshape/ReadVariableOp/instance_normalization_1/Reshape/ReadVariableOp2f
1instance_normalization_1/Reshape_1/ReadVariableOp1instance_normalization_1/Reshape_1/ReadVariableOp2b
/instance_normalization_2/Reshape/ReadVariableOp/instance_normalization_2/Reshape/ReadVariableOp2f
1instance_normalization_2/Reshape_1/ReadVariableOp1instance_normalization_2/Reshape_1/ReadVariableOp2b
/instance_normalization_3/Reshape/ReadVariableOp/instance_normalization_3/Reshape/ReadVariableOp2f
1instance_normalization_3/Reshape_1/ReadVariableOp1instance_normalization_3/Reshape_1/ReadVariableOp20
p_re_lu/ReadVariableOpp_re_lu/ReadVariableOp24
p_re_lu_1/ReadVariableOpp_re_lu_1/ReadVariableOp24
p_re_lu_2/ReadVariableOpp_re_lu_2/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_28946

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_29378

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_30699

inputsC
+conv1d_expanddims_1_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:??*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:???
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_conv1d_1_layer_call_fn_30815

inputs
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_29105t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
]
A__inference_lambda_layer_call_and_return_conditional_losses_31109

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_maskc
IdentityIdentitystrided_slice:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
S__inference_instance_normalization_2_layer_call_and_return_conditional_losses_29227

inputs.
reshape_readvariableop_resource:	?0
!reshape_1_readvariableop_resource:	?
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:???????????
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(s
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:?*
dtype0b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         x
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*#
_output_shapes
:?w
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ~
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*#
_output_shapes
:?T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:??????????r
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*,
_output_shapes
:??????????h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????t
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
C__inference_lambda_1_layer_call_and_return_conditional_losses_29251

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_maskc
IdentityIdentitystrided_slice:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_31028

inputs*
readvariableop_resource:	?
identity??ReadVariableOpT
ReluReluinputs*
T0*5
_output_shapes#
!:???????????????????g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype0L
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:	?T
Neg_1Neginputs*
T0*5
_output_shapes#
!:???????????????????Y
Relu_1Relu	Neg_1:y:0*
T0*5
_output_shapes#
!:???????????????????i
mulMulNeg:y:0Relu_1:activations:0*
T0*5
_output_shapes#
!:???????????????????i
addAddV2Relu:activations:0mul:z:0*
T0*5
_output_shapes#
!:???????????????????d
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:???????????????????W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:???????????????????: 2 
ReadVariableOpReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_30093

inputs
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?!
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?!
	unknown_9:??

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:
??

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29385o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_30897

inputs*
readvariableop_resource:	?
identity??ReadVariableOpT
ReluReluinputs*
T0*5
_output_shapes#
!:???????????????????g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype0L
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:	?T
Neg_1Neginputs*
T0*5
_output_shapes#
!:???????????????????Y
Relu_1Relu	Neg_1:y:0*
T0*5
_output_shapes#
!:???????????????????i
mulMulNeg:y:0Relu_1:activations:0*
T0*5
_output_shapes#
!:???????????????????i
addAddV2Relu:activations:0mul:z:0*
T0*5
_output_shapes#
!:???????????????????d
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:???????????????????W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:???????????????????: 2 
ReadVariableOpReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
^
B__inference_softmax_layer_call_and_return_conditional_losses_29258

inputs
identityQ
SoftmaxSoftmaxinputs*
T0*,
_output_shapes
:??????????^
IdentityIdentitySoftmax:softmax:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_30140

inputs
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?!
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?!
	unknown_9:??

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:
??

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_dropout_layer_call_fn_30771

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_29087e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_29087

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_softmax_layer_call_fn_31086

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_softmax_layer_call_and_return_conditional_losses_29258e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

a
B__inference_dropout_layer_call_and_return_conditional_losses_29623

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
]
A__inference_lambda_layer_call_and_return_conditional_losses_29489

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_maskc
IdentityIdentitystrided_slice:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
S__inference_instance_normalization_3_layer_call_and_return_conditional_losses_31217

inputs.
reshape_readvariableop_resource:	?0
!reshape_1_readvariableop_resource:	?
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:???????????
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(s
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:?*
dtype0b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         x
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*#
_output_shapes
:?w
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ~
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*#
_output_shapes
:?T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:??????????r
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*,
_output_shapes
:??????????h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????t
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_lambda_1_layer_call_fn_31060

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_29251e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_28982

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+????????????????????????????
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize
*
paddingVALID*
strides
?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
_
C__inference_lambda_1_layer_call_and_return_conditional_losses_29514

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_maskc
IdentityIdentitystrided_slice:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
6__inference_instance_normalization_layer_call_fn_30708

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_instance_normalization_layer_call_and_return_conditional_losses_29073t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
Q__inference_instance_normalization_layer_call_and_return_conditional_losses_30747

inputs.
reshape_readvariableop_resource:	?0
!reshape_1_readvariableop_resource:	?
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:???????????
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(s
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:?*
dtype0b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      ?   x
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*#
_output_shapes
:?w
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      ?   ~
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*#
_output_shapes
:?T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:??????????r
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*,
_output_shapes
:??????????h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????t
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
D
(__inference_lambda_1_layer_call_fn_31065

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lambda_1_layer_call_and_return_conditional_losses_29514e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_2_layer_call_fn_31038

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_29537t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
S__inference_instance_normalization_2_layer_call_and_return_conditional_losses_31009

inputs.
reshape_readvariableop_resource:	?0
!reshape_1_readvariableop_resource:	?
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:???????????
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(s
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:?*
dtype0b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         x
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*#
_output_shapes
:?w
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ~
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*#
_output_shapes
:?T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:??????????r
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*,
_output_shapes
:??????????h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????t
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
_
C__inference_lambda_1_layer_call_and_return_conditional_losses_31073

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_maskc
IdentityIdentitystrided_slice:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
Q__inference_instance_normalization_layer_call_and_return_conditional_losses_29073

inputs.
reshape_readvariableop_resource:	?0
!reshape_1_readvariableop_resource:	?
identity??Reshape/ReadVariableOp?Reshape_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:???????????
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(s
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:?*
dtype0b
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      ?   x
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*#
_output_shapes
:?w
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:?*
dtype0d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"      ?   ~
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*#
_output_shapes
:?T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:??????????b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:??????????r
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*,
_output_shapes
:??????????h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:??????????t
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:??????????w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:??????????g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling1d_1_layer_call_fn_30929

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_28982v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_dense_1_layer_call_fn_31237

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_29378o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_p_re_lu_layer_call_and_return_conditional_losses_30766

inputs*
readvariableop_resource:	?
identity??ReadVariableOpT
ReluReluinputs*
T0*5
_output_shapes#
!:???????????????????g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	?*
dtype0L
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:	?T
Neg_1Neginputs*
T0*5
_output_shapes#
!:???????????????????Y
Relu_1Relu	Neg_1:y:0*
T0*5
_output_shapes#
!:???????????????????i
mulMulNeg:y:0Relu_1:activations:0*
T0*5
_output_shapes#
!:???????????????????i
addAddV2Relu:activations:0mul:z:0*
T0*5
_output_shapes#
!:???????????????????d
IdentityIdentityadd:z:0^NoOp*
T0*5
_output_shapes#
!:???????????????????W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:???????????????????: 2 
ReadVariableOpReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_29430
input_1
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?!
	unknown_4:??
	unknown_5:	?
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?!
	unknown_9:??

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:
??

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_29385o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:??????????: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_1
?
~
)__inference_p_re_lu_1_layer_call_fn_30885

inputs
unknown:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_28965}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:???????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:???????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
@
input_15
serving_default_input_1:0??????????;
dense_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer_with_weights-9
layer-19
layer_with_weights-10
layer-20
layer-21
layer_with_weights-11
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 
signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
 )_jit_compiled_convolution_op"
_tf_keras_layer
?
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
	0gamma
1beta"
_tf_keras_layer
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses
8shared_axes
	9alpha"
_tf_keras_layer
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@_random_generator"
_tf_keras_layer
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
?
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias
 O_jit_compiled_convolution_op"
_tf_keras_layer
?
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
	Vgamma
Wbeta"
_tf_keras_layer
?
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses
^shared_axes
	_alpha"
_tf_keras_layer
?
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
f_random_generator"
_tf_keras_layer
?
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
?
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

skernel
tbias
 u_jit_compiled_convolution_op"
_tf_keras_layer
?
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses
	|gamma
}beta"
_tf_keras_layer
?
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?shared_axes

?alpha"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses

?gamma
	?beta"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias"
_tf_keras_layer
?
'0
(1
02
13
94
M5
N6
V7
W8
_9
s10
t11
|12
}13
?14
?15
?16
?17
?18
?19
?20"
trackable_list_wrapper
?
'0
(1
02
13
94
M5
N6
V7
W8
_9
s10
t11
|12
}13
?14
?15
?16
?17
?18
?19
?20"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
%__inference_model_layer_call_fn_29430
%__inference_model_layer_call_fn_30093
%__inference_model_layer_call_fn_30140
%__inference_model_layer_call_fn_29855?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
@__inference_model_layer_call_and_return_conditional_losses_30397
@__inference_model_layer_call_and_return_conditional_losses_30675
@__inference_model_layer_call_and_return_conditional_losses_29923
@__inference_model_layer_call_and_return_conditional_losses_29991?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?B?
 __inference__wrapped_model_28913input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate'm?(m?0m?1m?9m?Mm?Nm?Vm?Wm?_m?sm?tm?|m?}m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?'v?(v?0v?1v?9v?Mv?Nv?Vv?Wv?_v?sv?tv?|v?}v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
-
?serving_default"
signature_map
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
&__inference_conv1d_layer_call_fn_30684?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
A__inference_conv1d_layer_call_and_return_conditional_losses_30699?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
%:#??2conv1d/kernel
:?2conv1d/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
6__inference_instance_normalization_layer_call_fn_30708?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
Q__inference_instance_normalization_layer_call_and_return_conditional_losses_30747?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
+:)?2instance_normalization/gamma
*:(?2instance_normalization/beta
'
90"
trackable_list_wrapper
'
90"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_p_re_lu_layer_call_fn_30754?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
B__inference_p_re_lu_layer_call_and_return_conditional_losses_30766?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 :	?2p_re_lu/alpha
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
'__inference_dropout_layer_call_fn_30771
'__inference_dropout_layer_call_fn_30776?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
B__inference_dropout_layer_call_and_return_conditional_losses_30781
B__inference_dropout_layer_call_and_return_conditional_losses_30793?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_max_pooling1d_layer_call_fn_30798?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_30806?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_conv1d_1_layer_call_fn_30815?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_30830?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
':%??2conv1d_1/kernel
:?2conv1d_1/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
8__inference_instance_normalization_1_layer_call_fn_30839?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
S__inference_instance_normalization_1_layer_call_and_return_conditional_losses_30878?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
-:+?2instance_normalization_1/gamma
,:*?2instance_normalization_1/beta
'
_0"
trackable_list_wrapper
'
_0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_p_re_lu_1_layer_call_fn_30885?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_30897?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
": 	?2p_re_lu_1/alpha
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
)__inference_dropout_1_layer_call_fn_30902
)__inference_dropout_1_layer_call_fn_30907?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
D__inference_dropout_1_layer_call_and_return_conditional_losses_30912
D__inference_dropout_1_layer_call_and_return_conditional_losses_30924?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
/__inference_max_pooling1d_1_layer_call_fn_30929?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_30937?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_conv1d_2_layer_call_fn_30946?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_30961?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
':%??2conv1d_2/kernel
:?2conv1d_2/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
8__inference_instance_normalization_2_layer_call_fn_30970?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
S__inference_instance_normalization_2_layer_call_and_return_conditional_losses_31009?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
-:+?2instance_normalization_2/gamma
,:*?2instance_normalization_2/beta
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
)__inference_p_re_lu_2_layer_call_fn_31016?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_31028?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
": 	?2p_re_lu_2/alpha
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
)__inference_dropout_2_layer_call_fn_31033
)__inference_dropout_2_layer_call_fn_31038?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
D__inference_dropout_2_layer_call_and_return_conditional_losses_31043
D__inference_dropout_2_layer_call_and_return_conditional_losses_31055?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
(__inference_lambda_1_layer_call_fn_31060
(__inference_lambda_1_layer_call_fn_31065?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
C__inference_lambda_1_layer_call_and_return_conditional_losses_31073
C__inference_lambda_1_layer_call_and_return_conditional_losses_31081?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_softmax_layer_call_fn_31086?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
B__inference_softmax_layer_call_and_return_conditional_losses_31091?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
&__inference_lambda_layer_call_fn_31096
&__inference_lambda_layer_call_fn_31101?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
A__inference_lambda_layer_call_and_return_conditional_losses_31109
A__inference_lambda_layer_call_and_return_conditional_losses_31117?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_multiply_layer_call_fn_31123?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_multiply_layer_call_and_return_conditional_losses_31129?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
%__inference_dense_layer_call_fn_31138?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
@__inference_dense_layer_call_and_return_conditional_losses_31169?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 :
??2dense/kernel
:?2
dense/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
8__inference_instance_normalization_3_layer_call_fn_31178?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
S__inference_instance_normalization_3_layer_call_and_return_conditional_losses_31217?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
-:+?2instance_normalization_3/gamma
,:*?2instance_normalization_3/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_flatten_layer_call_fn_31222?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
B__inference_flatten_layer_call_and_return_conditional_losses_31228?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_dense_1_layer_call_fn_31237?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
B__inference_dense_1_layer_call_and_return_conditional_losses_31247?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
!:	?2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_model_layer_call_fn_29430input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
%__inference_model_layer_call_fn_30093inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
%__inference_model_layer_call_fn_30140inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
%__inference_model_layer_call_fn_29855input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
@__inference_model_layer_call_and_return_conditional_losses_30397inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
@__inference_model_layer_call_and_return_conditional_losses_30675inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
@__inference_model_layer_call_and_return_conditional_losses_29923input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
@__inference_model_layer_call_and_return_conditional_losses_29991input_1"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?B?
#__inference_signature_wrapper_30046input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
&__inference_conv1d_layer_call_fn_30684inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
A__inference_conv1d_layer_call_and_return_conditional_losses_30699inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
6__inference_instance_normalization_layer_call_fn_30708inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
Q__inference_instance_normalization_layer_call_and_return_conditional_losses_30747inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
'__inference_p_re_lu_layer_call_fn_30754inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_p_re_lu_layer_call_and_return_conditional_losses_30766inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
'__inference_dropout_layer_call_fn_30771inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_dropout_layer_call_fn_30776inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_dropout_layer_call_and_return_conditional_losses_30781inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_dropout_layer_call_and_return_conditional_losses_30793inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
-__inference_max_pooling1d_layer_call_fn_30798inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_30806inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
(__inference_conv1d_1_layer_call_fn_30815inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_30830inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
8__inference_instance_normalization_1_layer_call_fn_30839inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
S__inference_instance_normalization_1_layer_call_and_return_conditional_losses_30878inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
)__inference_p_re_lu_1_layer_call_fn_30885inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_30897inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
)__inference_dropout_1_layer_call_fn_30902inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
)__inference_dropout_1_layer_call_fn_30907inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_1_layer_call_and_return_conditional_losses_30912inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_1_layer_call_and_return_conditional_losses_30924inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
/__inference_max_pooling1d_1_layer_call_fn_30929inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_30937inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
(__inference_conv1d_2_layer_call_fn_30946inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_30961inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
8__inference_instance_normalization_2_layer_call_fn_30970inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
S__inference_instance_normalization_2_layer_call_and_return_conditional_losses_31009inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
)__inference_p_re_lu_2_layer_call_fn_31016inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_31028inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
)__inference_dropout_2_layer_call_fn_31033inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
)__inference_dropout_2_layer_call_fn_31038inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_2_layer_call_and_return_conditional_losses_31043inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_2_layer_call_and_return_conditional_losses_31055inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
(__inference_lambda_1_layer_call_fn_31060inputs"?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
(__inference_lambda_1_layer_call_fn_31065inputs"?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_lambda_1_layer_call_and_return_conditional_losses_31073inputs"?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
C__inference_lambda_1_layer_call_and_return_conditional_losses_31081inputs"?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
'__inference_softmax_layer_call_fn_31086inputs"?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_softmax_layer_call_and_return_conditional_losses_31091inputs"?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
&__inference_lambda_layer_call_fn_31096inputs"?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
&__inference_lambda_layer_call_fn_31101inputs"?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_lambda_layer_call_and_return_conditional_losses_31109inputs"?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_lambda_layer_call_and_return_conditional_losses_31117inputs"?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
(__inference_multiply_layer_call_fn_31123inputs/0inputs/1"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_multiply_layer_call_and_return_conditional_losses_31129inputs/0inputs/1"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
%__inference_dense_layer_call_fn_31138inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
@__inference_dense_layer_call_and_return_conditional_losses_31169inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
8__inference_instance_normalization_3_layer_call_fn_31178inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
S__inference_instance_normalization_3_layer_call_and_return_conditional_losses_31217inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
'__inference_flatten_layer_call_fn_31222inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_flatten_layer_call_and_return_conditional_losses_31228inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
'__inference_dense_1_layer_call_fn_31237inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_dense_1_layer_call_and_return_conditional_losses_31247inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
*:(??2Adam/conv1d/kernel/m
:?2Adam/conv1d/bias/m
0:.?2#Adam/instance_normalization/gamma/m
/:-?2"Adam/instance_normalization/beta/m
%:#	?2Adam/p_re_lu/alpha/m
,:*??2Adam/conv1d_1/kernel/m
!:?2Adam/conv1d_1/bias/m
2:0?2%Adam/instance_normalization_1/gamma/m
1:/?2$Adam/instance_normalization_1/beta/m
':%	?2Adam/p_re_lu_1/alpha/m
,:*??2Adam/conv1d_2/kernel/m
!:?2Adam/conv1d_2/bias/m
2:0?2%Adam/instance_normalization_2/gamma/m
1:/?2$Adam/instance_normalization_2/beta/m
':%	?2Adam/p_re_lu_2/alpha/m
%:#
??2Adam/dense/kernel/m
:?2Adam/dense/bias/m
2:0?2%Adam/instance_normalization_3/gamma/m
1:/?2$Adam/instance_normalization_3/beta/m
&:$	?2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
*:(??2Adam/conv1d/kernel/v
:?2Adam/conv1d/bias/v
0:.?2#Adam/instance_normalization/gamma/v
/:-?2"Adam/instance_normalization/beta/v
%:#	?2Adam/p_re_lu/alpha/v
,:*??2Adam/conv1d_1/kernel/v
!:?2Adam/conv1d_1/bias/v
2:0?2%Adam/instance_normalization_1/gamma/v
1:/?2$Adam/instance_normalization_1/beta/v
':%	?2Adam/p_re_lu_1/alpha/v
,:*??2Adam/conv1d_2/kernel/v
!:?2Adam/conv1d_2/bias/v
2:0?2%Adam/instance_normalization_2/gamma/v
1:/?2$Adam/instance_normalization_2/beta/v
':%	?2Adam/p_re_lu_2/alpha/v
%:#
??2Adam/dense/kernel/v
:?2Adam/dense/bias/v
2:0?2%Adam/instance_normalization_3/gamma/v
1:/?2$Adam/instance_normalization_3/beta/v
&:$	?2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v?
 __inference__wrapped_model_28913?'(019MNVW_st|}???????5?2
+?(
&?#
input_1??????????
? "1?.
,
dense_1!?
dense_1??????????
C__inference_conv1d_1_layer_call_and_return_conditional_losses_30830fMN4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
(__inference_conv1d_1_layer_call_fn_30815YMN4?1
*?'
%?"
inputs??????????
? "????????????
C__inference_conv1d_2_layer_call_and_return_conditional_losses_30961fst4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
(__inference_conv1d_2_layer_call_fn_30946Yst4?1
*?'
%?"
inputs??????????
? "????????????
A__inference_conv1d_layer_call_and_return_conditional_losses_30699f'(4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
&__inference_conv1d_layer_call_fn_30684Y'(4?1
*?'
%?"
inputs??????????
? "????????????
B__inference_dense_1_layer_call_and_return_conditional_losses_31247_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
'__inference_dense_1_layer_call_fn_31237R??0?-
&?#
!?
inputs??????????
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_31169h??4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
%__inference_dense_layer_call_fn_31138[??4?1
*?'
%?"
inputs??????????
? "????????????
D__inference_dropout_1_layer_call_and_return_conditional_losses_30912f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
D__inference_dropout_1_layer_call_and_return_conditional_losses_30924f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
)__inference_dropout_1_layer_call_fn_30902Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
)__inference_dropout_1_layer_call_fn_30907Y8?5
.?+
%?"
inputs??????????
p
? "????????????
D__inference_dropout_2_layer_call_and_return_conditional_losses_31043f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
D__inference_dropout_2_layer_call_and_return_conditional_losses_31055f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
)__inference_dropout_2_layer_call_fn_31033Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
)__inference_dropout_2_layer_call_fn_31038Y8?5
.?+
%?"
inputs??????????
p
? "????????????
B__inference_dropout_layer_call_and_return_conditional_losses_30781f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_30793f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
'__inference_dropout_layer_call_fn_30771Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
'__inference_dropout_layer_call_fn_30776Y8?5
.?+
%?"
inputs??????????
p
? "????????????
B__inference_flatten_layer_call_and_return_conditional_losses_31228^4?1
*?'
%?"
inputs??????????
? "&?#
?
0??????????
? |
'__inference_flatten_layer_call_fn_31222Q4?1
*?'
%?"
inputs??????????
? "????????????
S__inference_instance_normalization_1_layer_call_and_return_conditional_losses_30878fVW4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
8__inference_instance_normalization_1_layer_call_fn_30839YVW4?1
*?'
%?"
inputs??????????
? "????????????
S__inference_instance_normalization_2_layer_call_and_return_conditional_losses_31009f|}4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
8__inference_instance_normalization_2_layer_call_fn_30970Y|}4?1
*?'
%?"
inputs??????????
? "????????????
S__inference_instance_normalization_3_layer_call_and_return_conditional_losses_31217h??4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
8__inference_instance_normalization_3_layer_call_fn_31178[??4?1
*?'
%?"
inputs??????????
? "????????????
Q__inference_instance_normalization_layer_call_and_return_conditional_losses_30747f014?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
6__inference_instance_normalization_layer_call_fn_30708Y014?1
*?'
%?"
inputs??????????
? "????????????
C__inference_lambda_1_layer_call_and_return_conditional_losses_31073j<?9
2?/
%?"
inputs??????????

 
p 
? "*?'
 ?
0??????????
? ?
C__inference_lambda_1_layer_call_and_return_conditional_losses_31081j<?9
2?/
%?"
inputs??????????

 
p
? "*?'
 ?
0??????????
? ?
(__inference_lambda_1_layer_call_fn_31060]<?9
2?/
%?"
inputs??????????

 
p 
? "????????????
(__inference_lambda_1_layer_call_fn_31065]<?9
2?/
%?"
inputs??????????

 
p
? "????????????
A__inference_lambda_layer_call_and_return_conditional_losses_31109j<?9
2?/
%?"
inputs??????????

 
p 
? "*?'
 ?
0??????????
? ?
A__inference_lambda_layer_call_and_return_conditional_losses_31117j<?9
2?/
%?"
inputs??????????

 
p
? "*?'
 ?
0??????????
? ?
&__inference_lambda_layer_call_fn_31096]<?9
2?/
%?"
inputs??????????

 
p 
? "????????????
&__inference_lambda_layer_call_fn_31101]<?9
2?/
%?"
inputs??????????

 
p
? "????????????
J__inference_max_pooling1d_1_layer_call_and_return_conditional_losses_30937?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
/__inference_max_pooling1d_1_layer_call_fn_30929wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
H__inference_max_pooling1d_layer_call_and_return_conditional_losses_30806?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
-__inference_max_pooling1d_layer_call_fn_30798wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
@__inference_model_layer_call_and_return_conditional_losses_29923?'(019MNVW_st|}???????=?:
3?0
&?#
input_1??????????
p 

 
? "%?"
?
0?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_29991?'(019MNVW_st|}???????=?:
3?0
&?#
input_1??????????
p

 
? "%?"
?
0?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_30397?'(019MNVW_st|}???????<?9
2?/
%?"
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_30675?'(019MNVW_st|}???????<?9
2?/
%?"
inputs??????????
p

 
? "%?"
?
0?????????
? ?
%__inference_model_layer_call_fn_29430w'(019MNVW_st|}???????=?:
3?0
&?#
input_1??????????
p 

 
? "???????????
%__inference_model_layer_call_fn_29855w'(019MNVW_st|}???????=?:
3?0
&?#
input_1??????????
p

 
? "???????????
%__inference_model_layer_call_fn_30093v'(019MNVW_st|}???????<?9
2?/
%?"
inputs??????????
p 

 
? "???????????
%__inference_model_layer_call_fn_30140v'(019MNVW_st|}???????<?9
2?/
%?"
inputs??????????
p

 
? "???????????
C__inference_multiply_layer_call_and_return_conditional_losses_31129?d?a
Z?W
U?R
'?$
inputs/0??????????
'?$
inputs/1??????????
? "*?'
 ?
0??????????
? ?
(__inference_multiply_layer_call_fn_31123?d?a
Z?W
U?R
'?$
inputs/0??????????
'?$
inputs/1??????????
? "????????????
D__inference_p_re_lu_1_layer_call_and_return_conditional_losses_30897w_=?:
3?0
.?+
inputs???????????????????
? "3?0
)?&
0???????????????????
? ?
)__inference_p_re_lu_1_layer_call_fn_30885j_=?:
3?0
.?+
inputs???????????????????
? "&?#????????????????????
D__inference_p_re_lu_2_layer_call_and_return_conditional_losses_31028x?=?:
3?0
.?+
inputs???????????????????
? "3?0
)?&
0???????????????????
? ?
)__inference_p_re_lu_2_layer_call_fn_31016k?=?:
3?0
.?+
inputs???????????????????
? "&?#????????????????????
B__inference_p_re_lu_layer_call_and_return_conditional_losses_30766w9=?:
3?0
.?+
inputs???????????????????
? "3?0
)?&
0???????????????????
? ?
'__inference_p_re_lu_layer_call_fn_30754j9=?:
3?0
.?+
inputs???????????????????
? "&?#????????????????????
#__inference_signature_wrapper_30046?'(019MNVW_st|}???????@?=
? 
6?3
1
input_1&?#
input_1??????????"1?.
,
dense_1!?
dense_1??????????
B__inference_softmax_layer_call_and_return_conditional_losses_31091f8?5
.?+
%?"
inputs??????????

 
? "*?'
 ?
0??????????
? ?
'__inference_softmax_layer_call_fn_31086Y8?5
.?+
%?"
inputs??????????

 
? "???????????