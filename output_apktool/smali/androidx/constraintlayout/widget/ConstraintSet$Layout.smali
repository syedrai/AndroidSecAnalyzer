.class public Landroidx/constraintlayout/widget/ConstraintSet$Layout;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# static fields
.field private static final BARRIER_ALLOWS_GONE_WIDGETS:I = 0x4b

.field private static final BARRIER_DIRECTION:I = 0x48

.field private static final BARRIER_MARGIN:I = 0x49

.field private static final BASELINE_MARGIN:I = 0x50

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field private static final BASELINE_TO_BOTTOM:I = 0x4e

.field private static final BASELINE_TO_TOP:I = 0x4d

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field private static final CHAIN_USE_RTL:I = 0x47

.field private static final CIRCLE:I = 0x3d

.field private static final CIRCLE_ANGLE:I = 0x3f

.field private static final CIRCLE_RADIUS:I = 0x3e

.field private static final CONSTRAINED_HEIGHT:I = 0x58

.field private static final CONSTRAINED_WIDTH:I = 0x57

.field private static final CONSTRAINT_REFERENCED_IDS:I = 0x4a

.field private static final CONSTRAINT_TAG:I = 0x59

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field private static final GONE_BASELINE_MARGIN:I = 0x4f

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final GUIDE_USE_RTL:I = 0x5a

.field private static final HEIGHT_DEFAULT:I = 0x52

.field private static final HEIGHT_MAX:I = 0x53

.field private static final HEIGHT_MIN:I = 0x55

.field private static final HEIGHT_PERCENT:I = 0x46

.field private static final HORIZONTAL_BIAS:I = 0x14

.field private static final HORIZONTAL_STYLE:I = 0x27

.field private static final HORIZONTAL_WEIGHT:I = 0x25

.field private static final LAYOUT_CONSTRAINT_HEIGHT:I = 0x2a

.field private static final LAYOUT_CONSTRAINT_WIDTH:I = 0x29

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_WIDTH:I = 0x16

.field private static final LAYOUT_WRAP_BEHAVIOR:I = 0x4c

.field private static final LEFT_MARGIN:I = 0x17

.field private static final LEFT_TO_LEFT:I = 0x18

.field private static final LEFT_TO_RIGHT:I = 0x19

.field private static final ORIENTATION:I = 0x1a

.field private static final RIGHT_MARGIN:I = 0x1b

.field private static final RIGHT_TO_LEFT:I = 0x1c

.field private static final RIGHT_TO_RIGHT:I = 0x1d

.field private static final START_MARGIN:I = 0x1e

.field private static final START_TO_END:I = 0x1f

.field private static final START_TO_START:I = 0x20

.field private static final TOP_MARGIN:I = 0x21

.field private static final TOP_TO_BOTTOM:I = 0x22

.field private static final TOP_TO_TOP:I = 0x23

.field public static final UNSET:I = -0x1

.field public static final UNSET_GONE_MARGIN:I = -0x80000000

.field private static final UNUSED:I = 0x5b

.field private static final VERTICAL_BIAS:I = 0x24

.field private static final VERTICAL_STYLE:I = 0x28

.field private static final VERTICAL_WEIGHT:I = 0x26

.field private static final WIDTH_DEFAULT:I = 0x51

.field private static final WIDTH_MAX:I = 0x54

.field private static final WIDTH_MIN:I = 0x56

.field private static final WIDTH_PERCENT:I = 0x45

.field private static sMapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public baselineMargin:I

.field public baselineToBaseline:I

.field public baselineToBottom:I

.field public baselineToTop:I

.field public bottomMargin:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endMargin:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBaselineMargin:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public guidelineUseRtl:Z

.field public heightDefault:I

.field public heightMax:I

.field public heightMin:I

.field public heightPercent:F

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field public horizontalWeight:F

.field public leftMargin:I

.field public leftToLeft:I

.field public leftToRight:I

.field public mApply:Z

.field public mBarrierAllowsGoneWidgets:Z

.field public mBarrierDirection:I

.field public mBarrierMargin:I

.field public mConstraintTag:Ljava/lang/String;

.field public mHeight:I

.field public mHelperType:I

.field public mIsGuideline:Z

.field public mOverride:Z

.field public mReferenceIdString:Ljava/lang/String;

.field public mReferenceIds:[I

.field public mWidth:I

.field public mWrapBehavior:I

.field public orientation:I

.field public rightMargin:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startMargin:I

.field public startToEnd:I

.field public startToStart:I

.field public topMargin:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field public verticalWeight:F

.field public widthDefault:I

.field public widthMax:I

.field public widthMin:I

.field public widthPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1368
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 1442
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1443
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1445
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1447
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1449
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_toTopOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1450
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1452
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1454
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_toBottomOf:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1456
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1459
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1460
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1461
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1462
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1463
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1464
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_guidelineUseRtl:I

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1465
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_orientation:I

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1466
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintStart_toEndOf:I

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1467
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintStart_toStartOf:I

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1469
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintEnd_toStartOf:I

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1470
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintEnd_toEndOf:I

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1471
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginLeft:I

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1472
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginTop:I

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1473
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginRight:I

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1474
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginBottom:I

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1475
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginStart:I

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1476
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_goneMarginEnd:I

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1477
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_weight:I

    const/16 v3, 0x26

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1479
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_weight:I

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1481
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_chainStyle:I

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1483
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_chainStyle:I

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1486
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHorizontal_bias:I

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1488
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintVertical_bias:I

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1490
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintDimensionRatio:I

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1492
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintLeft_creator:I

    const/16 v3, 0x5b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1493
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1494
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1495
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1496
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1497
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginLeft:I

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1498
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginRight:I

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1499
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginStart:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1500
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginEnd:I

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1501
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginTop:I

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1502
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_marginBottom:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1503
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_width:I

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1504
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_android_layout_height:I

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1505
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth:I

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1507
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight:I

    const/16 v4, 0x2a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 1509
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constrainedWidth:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1511
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constrainedHeight:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 1513
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_wrapBehaviorInParent:I

    const/16 v3, 0x4c

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1516
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircle:I

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1517
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircleRadius:I

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1518
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintCircleAngle:I

    const/16 v3, 0x3f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1519
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth_percent:I

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1520
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight_percent:I

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1523
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_chainUseRtl:I

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1524
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierDirection:I

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1525
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierMargin:I

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1526
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_constraint_referenced_ids:I

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1528
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_barrierAllowsGoneWidgets:I

    const/16 v3, 0x4b

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1530
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth_max:I

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1532
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth_min:I

    const/16 v3, 0x56

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1534
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth_max:I

    const/16 v3, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1536
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight_min:I

    const/16 v3, 0x55

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1539
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintWidth:I

    const/16 v3, 0x57

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1540
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_layout_constraintHeight:I

    const/16 v3, 0x58

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1541
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_constraintTag:I

    const/16 v3, 0x59

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1543
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Layout_guidelineUseRtl:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1545
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 1215
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 1216
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mOverride:Z

    .line 1221
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 1222
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 1223
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 1224
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 1225
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 1226
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 1227
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 1228
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 1229
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 1230
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 1231
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 1232
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 1233
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 1234
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 1235
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 1236
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 1237
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 1238
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 1239
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 1240
    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 1241
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 1242
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 1243
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 1244
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 1245
    const/4 v4, 0x0

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 1246
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 1247
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 1248
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 1249
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 1250
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 1251
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 1252
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 1253
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 1254
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 1255
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 1256
    const/high16 v4, -0x80000000

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 1257
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 1258
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 1259
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 1260
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 1261
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 1262
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 1263
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 1264
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 1265
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 1266
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 1267
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 1268
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 1269
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 1270
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 1271
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 1272
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 1273
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 1274
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 1275
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 1276
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 1277
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 1281
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 1282
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 1284
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 1285
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    return-void
.end method


# virtual methods
.method public copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Layout;)V
    .locals 2
    .param p1, "src"    # Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 1292
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    .line 1293
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 1294
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 1295
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 1296
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 1297
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 1298
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 1299
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 1300
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 1301
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 1302
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 1303
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 1304
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 1305
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 1306
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 1307
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 1308
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 1309
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 1310
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 1311
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 1312
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 1313
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 1314
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 1315
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 1316
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 1317
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 1318
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 1319
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 1320
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 1321
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 1322
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 1323
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 1324
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 1325
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 1326
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 1327
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 1328
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 1329
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 1330
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 1331
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 1332
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 1333
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 1334
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 1335
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 1336
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 1337
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 1338
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 1339
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 1340
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 1341
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 1342
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 1343
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 1344
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 1345
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 1346
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 1347
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 1348
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 1349
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 1350
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 1351
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 1352
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    .line 1353
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 1355
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1356
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    goto :goto_0

    .line 1358
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 1360
    :goto_0
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 1361
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 1362
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 1364
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 1365
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 1366
    return-void
.end method

.method public dump(Landroidx/constraintlayout/motion/widget/MotionScene;Ljava/lang/StringBuilder;)V
    .locals 12
    .param p1, "scene"    # Landroidx/constraintlayout/motion/widget/MotionScene;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 1784
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1785
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 1787
    aget-object v2, v0, v1

    .line 1788
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1789
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1790
    goto :goto_4

    .line 1794
    :cond_0
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1795
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 1796
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "\"\n"

    const-string v8, " = \""

    const-string v9, "    "

    if-ne v5, v6, :cond_2

    .line 1797
    :try_start_1
    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    .line 1798
    .local v6, "iValue":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 1799
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v10}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    move-result-object v10

    .line 1800
    .local v10, "stringId":Ljava/lang/String;
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    if-nez v10, :cond_1

    move-object v8, v6

    goto :goto_1

    :cond_1
    move-object v8, v10

    :goto_1
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1804
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1806
    .end local v6    # "iValue":Ljava/lang/Integer;
    .end local v10    # "stringId":Ljava/lang/String;
    :cond_2
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_3

    .line 1807
    move-object v6, v4

    check-cast v6, Ljava/lang/Float;

    .line 1808
    .local v6, "fValue":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_4

    .line 1809
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1813
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1806
    .end local v6    # "fValue":Ljava/lang/Float;
    :cond_3
    :goto_2
    nop

    .line 1818
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_3
    goto :goto_4

    .line 1816
    :catch_0
    move-exception v4

    .line 1817
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "ConstraintSet"

    const-string v6, "Error accessing ConstraintSet field"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1786
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1820
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1548
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1549
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    .line 1550
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 1551
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1552
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 1554
    .local v4, "attr":I
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v7, "   "

    const-string v8, "ConstraintSet"

    packed-switch v5, :pswitch_data_0

    .line 1769
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown attribute 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1770
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 1771
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1769
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1764
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unused attribute 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1765
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->sMapToConstant:Landroid/util/SparseIntArray;

    .line 1766
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1764
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    goto/16 :goto_1

    .line 1604
    :pswitch_2
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    .line 1605
    goto/16 :goto_1

    .line 1761
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 1762
    goto/16 :goto_1

    .line 1738
    :pswitch_4
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 1739
    goto/16 :goto_1

    .line 1735
    :pswitch_5
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 1736
    goto/16 :goto_1

    .line 1726
    :pswitch_6
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 1727
    goto/16 :goto_1

    .line 1723
    :pswitch_7
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 1724
    goto/16 :goto_1

    .line 1720
    :pswitch_8
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 1721
    goto/16 :goto_1

    .line 1717
    :pswitch_9
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 1718
    goto/16 :goto_1

    .line 1699
    :pswitch_a
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 1700
    goto/16 :goto_1

    .line 1696
    :pswitch_b
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 1697
    goto/16 :goto_1

    .line 1681
    :pswitch_c
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 1682
    goto/16 :goto_1

    .line 1650
    :pswitch_d
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 1651
    goto/16 :goto_1

    .line 1586
    :pswitch_e
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    .line 1587
    goto/16 :goto_1

    .line 1583
    :pswitch_f
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    .line 1584
    goto/16 :goto_1

    .line 1749
    :pswitch_10
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 1750
    goto/16 :goto_1

    .line 1758
    :pswitch_11
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 1759
    goto/16 :goto_1

    .line 1755
    :pswitch_12
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 1756
    goto/16 :goto_1

    .line 1752
    :pswitch_13
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 1753
    goto/16 :goto_1

    .line 1746
    :pswitch_14
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 1747
    goto/16 :goto_1

    .line 1741
    :pswitch_15
    const-string v5, "CURRENTLY UNSUPPORTED"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    goto/16 :goto_1

    .line 1732
    :pswitch_16
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 1733
    goto/16 :goto_1

    .line 1729
    :pswitch_17
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 1730
    goto/16 :goto_1

    .line 1629
    :pswitch_18
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 1630
    goto/16 :goto_1

    .line 1626
    :pswitch_19
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 1627
    goto/16 :goto_1

    .line 1623
    :pswitch_1a
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 1624
    goto/16 :goto_1

    .line 1693
    :pswitch_1b
    invoke-static {p0, v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 1694
    goto/16 :goto_1

    .line 1690
    :pswitch_1c
    const/4 v5, 0x0

    invoke-static {p0, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    .line 1691
    goto/16 :goto_1

    .line 1708
    :pswitch_1d
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 1709
    goto/16 :goto_1

    .line 1711
    :pswitch_1e
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 1712
    goto/16 :goto_1

    .line 1702
    :pswitch_1f
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 1703
    goto/16 :goto_1

    .line 1705
    :pswitch_20
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 1706
    goto/16 :goto_1

    .line 1656
    :pswitch_21
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 1657
    goto/16 :goto_1

    .line 1568
    :pswitch_22
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    .line 1569
    goto/16 :goto_1

    .line 1571
    :pswitch_23
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    .line 1572
    goto/16 :goto_1

    .line 1675
    :pswitch_24
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 1676
    goto/16 :goto_1

    .line 1614
    :pswitch_25
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    .line 1615
    goto/16 :goto_1

    .line 1611
    :pswitch_26
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    .line 1612
    goto/16 :goto_1

    .line 1665
    :pswitch_27
    nop

    .line 1666
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    goto/16 :goto_1

    .line 1565
    :pswitch_28
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    .line 1566
    goto/16 :goto_1

    .line 1562
    :pswitch_29
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    .line 1563
    goto/16 :goto_1

    .line 1662
    :pswitch_2a
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 1663
    goto/16 :goto_1

    .line 1608
    :pswitch_2b
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 1609
    goto/16 :goto_1

    .line 1559
    :pswitch_2c
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    .line 1560
    goto/16 :goto_1

    .line 1556
    :pswitch_2d
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    .line 1557
    goto/16 :goto_1

    .line 1659
    :pswitch_2e
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 1660
    goto/16 :goto_1

    .line 1684
    :pswitch_2f
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 1685
    goto/16 :goto_1

    .line 1687
    :pswitch_30
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 1688
    goto/16 :goto_1

    .line 1653
    :pswitch_31
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 1654
    goto/16 :goto_1

    .line 1601
    :pswitch_32
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 1602
    goto/16 :goto_1

    .line 1598
    :pswitch_33
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 1599
    goto/16 :goto_1

    .line 1595
    :pswitch_34
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 1596
    goto/16 :goto_1

    .line 1635
    :pswitch_35
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 1636
    goto/16 :goto_1

    .line 1644
    :pswitch_36
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 1645
    goto/16 :goto_1

    .line 1638
    :pswitch_37
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 1639
    goto/16 :goto_1

    .line 1632
    :pswitch_38
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 1633
    goto/16 :goto_1

    .line 1647
    :pswitch_39
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 1648
    goto :goto_1

    .line 1641
    :pswitch_3a
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 1642
    goto :goto_1

    .line 1617
    :pswitch_3b
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    .line 1618
    goto :goto_1

    .line 1620
    :pswitch_3c
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    .line 1621
    goto :goto_1

    .line 1670
    :pswitch_3d
    nop

    .line 1671
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    goto :goto_1

    .line 1592
    :pswitch_3e
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 1593
    goto :goto_1

    .line 1589
    :pswitch_3f
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 1590
    goto :goto_1

    .line 1714
    :pswitch_40
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 1715
    goto :goto_1

    .line 1574
    :pswitch_41
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    .line 1575
    goto :goto_1

    .line 1577
    :pswitch_42
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    .line 1578
    goto :goto_1

    .line 1678
    :pswitch_43
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 1679
    goto :goto_1

    .line 1580
    :pswitch_44
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    .line 1581
    nop

    .line 1551
    .end local v4    # "attr":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1775
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1776
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
