       БK"	  └sноAbrain.Event:2Y#╩!'      -╝ён	J┌sноA"ЋN
\
XPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
\
YPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
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
shared_name *
shape: *
	container 
ј
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
shared_name *
shape: *
	container 
Є
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
:         
H
addAddmul	bias/read*
T0*#
_output_shapes
:         
@
subSubaddY*
T0*#
_output_shapes
:         
C
SquareSquaresub*
T0*#
_output_shapes
:         
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
 *  ђ?*
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
ї
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
ў
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*
T0*#
_output_shapes
:         *

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
Њ
gradients/loss_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
к
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/loss_grad/Shape_1
Ћ
gradients/loss_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
╩
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/loss_grad/Shape_1
Ј
gradients/loss_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
▓
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/loss_grad/Shape_1
░
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
ѕ
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0*#
_output_shapes
:         
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
:         
ѕ
gradients/Square_grad/mul_1Mulgradients/loss_grad/truedivgradients/Square_grad/mul*
T0*#
_output_shapes
:         
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
┤
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ц
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Њ
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
е
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
Ќ
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
о
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:         *-
_class#
!loc:@gradients/sub_grad/Reshape
▄
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:         */
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
┤
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┤
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Њ
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
И
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ї
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
о
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*#
_output_shapes
:         *-
_class#
!loc:@gradients/add_grad/Reshape
¤
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
┤
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
{
gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependencyX*
T0*#
_output_shapes
:         
Ъ
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
є
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ѕ
gradients/mul_grad/mul_1Mulweights/read+gradients/add_grad/tuple/control_dependency*
T0*#
_output_shapes
:         
Ц
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Ў
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
╔
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *-
_class#
!loc:@gradients/mul_grad/Reshape
▄
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*#
_output_shapes
:         */
_class%
#!loc:@gradients/mul_grad/Reshape_1
b
GradientDescent/learning_rateConst*
valueB
 *oЃ:*
_output_shapes
: *
dtype0
­
3GradientDescent/update_weights/ApplyGradientDescentApplyGradientDescentweightsGradientDescent/learning_rate+gradients/mul_grad/tuple/control_dependency*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@weights
ж
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes
: *
use_locking( *
_class
	loc:@bias
ђ
GradientDescentNoOp4^GradientDescent/update_weights/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent"ё▒l7╦/      cќЊТ	pѓ▄sноAJ┐_
Їэ
9
Add
x"T
y"T
z"T"
Ttype:
2	
ђ
ApplyGradientDescent
var"Tђ

alpha"T

delta"T
out"Tђ"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
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
2	љ
і
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
2	љ
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
і
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
Ѕ
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
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ*1.4.02
b'unknown'ЋN
\
XPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
\
YPlaceholder*#
_output_shapes
:         *
dtype0*
shape:         
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
shared_name *
shape: *
	container 
ј
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
shared_name *
shape: *
	container 
Є
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
:         
H
addAddmul	bias/read*
T0*#
_output_shapes
:         
@
subSubaddY*
T0*#
_output_shapes
:         
C
SquareSquaresub*
T0*#
_output_shapes
:         
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
 *  ђ?*
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
ї
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
ў
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*
T0*#
_output_shapes
:         *

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
Њ
gradients/loss_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
к
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/loss_grad/Shape_1
Ћ
gradients/loss_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
╩
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0*.
_class$
" loc:@gradients/loss_grad/Shape_1
Ј
gradients/loss_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1
▓
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/loss_grad/Shape_1
░
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
ѕ
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0*#
_output_shapes
:         
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
:         
ѕ
gradients/Square_grad/mul_1Mulgradients/loss_grad/truedivgradients/Square_grad/mul*
T0*#
_output_shapes
:         
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
┤
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ц
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Њ
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
е
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
Ќ
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
о
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:         *-
_class#
!loc:@gradients/sub_grad/Reshape
▄
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:         */
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
┤
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┤
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Њ
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
И
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
ї
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
о
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*#
_output_shapes
:         *-
_class#
!loc:@gradients/add_grad/Reshape
¤
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
┤
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
{
gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependencyX*
T0*#
_output_shapes
:         
Ъ
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
є
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ѕ
gradients/mul_grad/mul_1Mulweights/read+gradients/add_grad/tuple/control_dependency*
T0*#
_output_shapes
:         
Ц
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Ў
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
╔
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*
_output_shapes
: *-
_class#
!loc:@gradients/mul_grad/Reshape
▄
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*#
_output_shapes
:         */
_class%
#!loc:@gradients/mul_grad/Reshape_1
b
GradientDescent/learning_rateConst*
valueB
 *oЃ:*
_output_shapes
: *
dtype0
­
3GradientDescent/update_weights/ApplyGradientDescentApplyGradientDescentweightsGradientDescent/learning_rate+gradients/mul_grad/tuple/control_dependency*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@weights
ж
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes
: *
use_locking( *
_class
	loc:@bias
ђ
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
bias:0bias/Assignbias/read:02	Const_1:0ћЈЫј