       £K"	  ј0s‘÷Abrain.Event:2y№!'      -ЉД‘	Ппа0s‘÷A"ХN
\
XPlaceholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
\
YPlaceholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
J
ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
k
weights
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 
О
weights/AssignAssignweightsConst*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@weights
^
weights/readIdentityweights*
T0*
_output_shapes
: *
_class
loc:@weights
L
Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
h
bias
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 
З
bias/AssignAssignbiasConst_1*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
	loc:@bias
U
	bias/readIdentitybias*
T0*
_output_shapes
: *
_class
	loc:@bias
I
mulMulweights/readX*
T0*#
_output_shapes
:€€€€€€€€€
H
addAddmul	bias/read*
T0*#
_output_shapes
:€€€€€€€€€
@
subSubaddY*
T0*#
_output_shapes
:€€€€€€€€€
C
SquareSquaresub*
T0*#
_output_shapes
:€€€€€€€€€
Q
Const_2Const*
valueB: *
_output_shapes
:*
dtype0
[
lossMeanSquareConst_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
k
!gradients/loss_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
М
gradients/loss_grad/ReshapeReshapegradients/Fill!gradients/loss_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
_
gradients/loss_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:
Ш
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*
T0*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
a
gradients/loss_grad/Shape_1ShapeSquare*
T0*
out_type0*
_output_shapes
:
^
gradients/loss_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
У
gradients/loss_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
∆
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/loss_grad/Shape_1
Х
gradients/loss_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
 
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/loss_grad/Shape_1
П
gradients/loss_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
≤
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/loss_grad/Shape_1
∞
gradients/loss_grad/floordivFloorDivgradients/loss_grad/Prodgradients/loss_grad/Maximum*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/loss_grad/Shape_1
n
gradients/loss_grad/CastCastgradients/loss_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0
И
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0*#
_output_shapes
:€€€€€€€€€
~
gradients/Square_grad/mul/xConst^gradients/loss_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0
p
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub*
T0*#
_output_shapes
:€€€€€€€€€
И
gradients/Square_grad/mul_1Mulgradients/loss_grad/truedivgradients/Square_grad/mul*
T0*#
_output_shapes
:€€€€€€€€€
[
gradients/sub_grad/ShapeShapeadd*
T0*
out_type0*
_output_shapes
:
[
gradients/sub_grad/Shape_1ShapeY*
T0*
out_type0*
_output_shapes
:
і
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
§
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
У
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
®
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
Ч
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
÷
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*-
_class#
!loc:@gradients/sub_grad/Reshape
№
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
[
gradients/add_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:
]
gradients/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
і
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
і
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
У
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Є
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
М
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
÷
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*-
_class#
!loc:@gradients/add_grad/Reshape
ѕ
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/add_grad/Reshape_1
[
gradients/mul_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
[
gradients/mul_grad/Shape_1ShapeX*
T0*
out_type0*
_output_shapes
:
і
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
{
gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependencyX*
T0*#
_output_shapes
:€€€€€€€€€
Я
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Ж
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
И
gradients/mul_grad/mul_1Mulweights/read+gradients/add_grad/tuple/control_dependency*
T0*#
_output_shapes
:€€€€€€€€€
•
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Щ
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
…
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *-
_class#
!loc:@gradients/mul_grad/Reshape
№
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
b
GradientDescent/learning_rateConst*
valueB
 *oГ:*
_output_shapes
: *
dtype0
р
3GradientDescent/update_weights/ApplyGradientDescentApplyGradientDescentweightsGradientDescent/learning_rate+gradients/mul_grad/tuple/control_dependency*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@weights
й
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes
: *
use_locking( *
_class
	loc:@bias
А
GradientDescentNoOp4^GradientDescent/update_weights/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent"Ѕy$rЋ/      cЦУж	і8б0s‘÷AJњ_
Нч
9
Add
x"T
y"T
z"T"
Ttype:
2	
А
ApplyGradientDescent
var"TА

alpha"T

delta"T
out"TА"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	Р
К
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
К
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
0
Square
x"T
y"T"
Ttype:
	2	
9
Sub
x"T
y"T
z"T"
Ttype:
2	
Й
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И*1.4.02
b'unknown'ХN
\
XPlaceholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
\
YPlaceholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
J
ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
k
weights
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 
О
weights/AssignAssignweightsConst*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@weights
^
weights/readIdentityweights*
T0*
_output_shapes
: *
_class
loc:@weights
L
Const_1Const*
valueB
 *    *
_output_shapes
: *
dtype0
h
bias
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 
З
bias/AssignAssignbiasConst_1*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
	loc:@bias
U
	bias/readIdentitybias*
T0*
_output_shapes
: *
_class
	loc:@bias
I
mulMulweights/readX*
T0*#
_output_shapes
:€€€€€€€€€
H
addAddmul	bias/read*
T0*#
_output_shapes
:€€€€€€€€€
@
subSubaddY*
T0*#
_output_shapes
:€€€€€€€€€
C
SquareSquaresub*
T0*#
_output_shapes
:€€€€€€€€€
Q
Const_2Const*
valueB: *
_output_shapes
:*
dtype0
[
lossMeanSquareConst_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
valueB
 *  А?*
_output_shapes
: *
dtype0
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
k
!gradients/loss_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
М
gradients/loss_grad/ReshapeReshapegradients/Fill!gradients/loss_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
_
gradients/loss_grad/ShapeShapeSquare*
T0*
out_type0*
_output_shapes
:
Ш
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*
T0*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
a
gradients/loss_grad/Shape_1ShapeSquare*
T0*
out_type0*
_output_shapes
:
^
gradients/loss_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
У
gradients/loss_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
∆
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/loss_grad/Shape_1
Х
gradients/loss_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
 
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/loss_grad/Shape_1
П
gradients/loss_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
≤
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/loss_grad/Shape_1
∞
gradients/loss_grad/floordivFloorDivgradients/loss_grad/Prodgradients/loss_grad/Maximum*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/loss_grad/Shape_1
n
gradients/loss_grad/CastCastgradients/loss_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0
И
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0*#
_output_shapes
:€€€€€€€€€
~
gradients/Square_grad/mul/xConst^gradients/loss_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0
p
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub*
T0*#
_output_shapes
:€€€€€€€€€
И
gradients/Square_grad/mul_1Mulgradients/loss_grad/truedivgradients/Square_grad/mul*
T0*#
_output_shapes
:€€€€€€€€€
[
gradients/sub_grad/ShapeShapeadd*
T0*
out_type0*
_output_shapes
:
[
gradients/sub_grad/Shape_1ShapeY*
T0*
out_type0*
_output_shapes
:
і
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
§
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
У
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
®
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
Ч
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
÷
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*-
_class#
!loc:@gradients/sub_grad/Reshape
№
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
[
gradients/add_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:
]
gradients/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
і
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
і
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
У
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Є
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
М
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
÷
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*-
_class#
!loc:@gradients/add_grad/Reshape
ѕ
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/add_grad/Reshape_1
[
gradients/mul_grad/ShapeConst*
valueB *
_output_shapes
: *
dtype0
[
gradients/mul_grad/Shape_1ShapeX*
T0*
out_type0*
_output_shapes
:
і
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
{
gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependencyX*
T0*#
_output_shapes
:€€€€€€€€€
Я
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Ж
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
И
gradients/mul_grad/mul_1Mulweights/read+gradients/add_grad/tuple/control_dependency*
T0*#
_output_shapes
:€€€€€€€€€
•
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Щ
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
…
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *-
_class#
!loc:@gradients/mul_grad/Reshape
№
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*#
_output_shapes
:€€€€€€€€€*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
b
GradientDescent/learning_rateConst*
valueB
 *oГ:*
_output_shapes
: *
dtype0
р
3GradientDescent/update_weights/ApplyGradientDescentApplyGradientDescentweightsGradientDescent/learning_rate+gradients/mul_grad/tuple/control_dependency*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@weights
й
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes
: *
use_locking( *
_class
	loc:@bias
А
GradientDescentNoOp4^GradientDescent/update_weights/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent""~
trainable_variablesge
4
	weights:0weights/Assignweights/read:02Const:0
-
bias:0bias/Assignbias/read:02	Const_1:0"
train_op

GradientDescent"t
	variablesge
4
	weights:0weights/Assignweights/read:02Const:0
-
bias:0bias/Assignbias/read:02	Const_1:0O]ч•