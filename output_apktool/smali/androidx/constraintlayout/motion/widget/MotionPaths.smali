.class Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x0

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field static final PERPENDICULAR:I = 0x1

.field static final SCREEN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static sNames:[Ljava/lang/String;


# instance fields
.field mAnimateCircleAngleTo:I

.field mAnimateRelativeTo:I

.field mAttributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mDrawPath:I

.field mHeight:F

.field mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mPosition:F

.field mProgress:F

.field mRelativeAngle:F

.field mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

.field mTempDelta:[D

.field mTempValue:[D

.field mTime:F

.field mWidth:F

.field mX:F

.field mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "position"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pathRotate"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->sNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 63
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 64
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 65
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 66
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 67
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 70
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 499
    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 500
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 75
    return-void
.end method

.method constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p4, "startTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p5, "endTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 63
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 64
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 65
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 66
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 67
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 70
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 499
    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 500
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 135
    iget v0, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v0, v1, :cond_0

    .line 136
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPolar(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 137
    return-void

    .line 139
    :cond_0
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    packed-switch v0, :pswitch_data_0

    .line 148
    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "parentWidth":I
    .local v0, "endTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    .local p2, "parentWidth":I
    .local p3, "parentHeight":I
    .local p4, "c":Landroidx/constraintlayout/motion/widget/KeyPosition;
    .local p5, "startTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    invoke-virtual {p0, p4, p5, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 149
    return-void

    .line 141
    .end local v0    # "endTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    .restart local p1    # "parentWidth":I
    .local p2, "parentHeight":I
    .local p3, "c":Landroidx/constraintlayout/motion/widget/KeyPosition;
    .local p4, "startTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    .local p5, "endTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 142
    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "parentWidth":I
    .restart local v0    # "endTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    .local p2, "parentWidth":I
    .local p3, "parentHeight":I
    .local p4, "c":Landroidx/constraintlayout/motion/widget/KeyPosition;
    .local p5, "startTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    return-void

    .line 144
    .end local v0    # "endTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    .restart local p1    # "parentWidth":I
    .local p2, "parentHeight":I
    .local p3, "c":Landroidx/constraintlayout/motion/widget/KeyPosition;
    .local p4, "startTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    .local p5, "endTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    :pswitch_1
    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "parentWidth":I
    .restart local v0    # "endTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    .local p2, "parentWidth":I
    .local p3, "parentHeight":I
    .local p4, "c":Landroidx/constraintlayout/motion/widget/KeyPosition;
    .local p5, "startTimePoint":Landroidx/constraintlayout/motion/widget/MotionPaths;
    invoke-virtual {p0, p4, p5, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 145
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private diff(FF)Z
    .locals 4
    .param p1, "a"    # F
    .param p2, "b"    # F

    .line 304
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x358637bd    # 1.0E-6f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 305
    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eq v0, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private static xRotate(FFFFFF)F
    .locals 2
    .param p0, "sin"    # F
    .param p1, "cos"    # F
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 292
    sub-float/2addr p4, p2

    .line 293
    sub-float/2addr p5, p3

    .line 294
    mul-float v0, p4, p1

    mul-float v1, p5, p0

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method private static yRotate(FFFFFF)F
    .locals 2
    .param p0, "sin"    # F
    .param p1, "cos"    # F
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 298
    sub-float/2addr p4, p2

    .line 299
    sub-float/2addr p5, p3

    .line 300
    mul-float v0, p4, p0

    mul-float v1, p5, p1

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 6
    .param p1, "c"    # Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 941
    move-object v0, p0

    .line 942
    .local v0, "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 943
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 944
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 945
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 946
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 947
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateCircleAngleTo:I

    .line 948
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 949
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    .line 950
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 951
    .local v1, "at":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 952
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 953
    .local v4, "attr":Landroidx/constraintlayout/widget/ConstraintAttribute;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->isContinuous()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 954
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "attr":Landroidx/constraintlayout/widget/ConstraintAttribute;
    :cond_0
    goto :goto_0

    .line 957
    :cond_1
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I
    .locals 2
    .param p1, "o"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 937
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I

    move-result p1

    return p1
.end method

.method public configureRelativeTo(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .locals 2
    .param p1, "toOrbit"    # Landroidx/constraintlayout/motion/widget/MotionController;

    .line 961
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getPos(D)[D

    move-result-object v0

    .line 962
    .local v0, "p":[D
    return-void
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V
    .locals 7
    .param p1, "points"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p2, "mask"    # [Z
    .param p3, "custom"    # [Ljava/lang/String;
    .param p4, "arcMode"    # Z

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "c":I
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v1

    .line 314
    .local v1, "diffx":Z
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v3, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v2

    .line 315
    .local v2, "diffy":Z
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "c":I
    .local v3, "c":I
    aget-boolean v4, p2, v0

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget v6, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v5

    or-int/2addr v4, v5

    aput-boolean v4, p2, v0

    .line 316
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "c":I
    .restart local v0    # "c":I
    aget-boolean v4, p2, v3

    or-int v5, v1, v2

    or-int/2addr v5, p4

    or-int/2addr v4, v5

    aput-boolean v4, p2, v3

    .line 317
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "c":I
    .restart local v3    # "c":I
    aget-boolean v4, p2, v0

    or-int v5, v1, v2

    or-int/2addr v5, p4

    or-int/2addr v4, v5

    aput-boolean v4, p2, v0

    .line 318
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "c":I
    .restart local v0    # "c":I
    aget-boolean v4, p2, v3

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v6, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v5

    or-int/2addr v4, v5

    aput-boolean v4, p2, v3

    .line 319
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "c":I
    .restart local v3    # "c":I
    aget-boolean v4, p2, v0

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v6, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v5

    or-int/2addr v4, v5

    aput-boolean v4, p2, v0

    .line 320
    return-void
.end method

.method fillStandard([D[I)V
    .locals 8
    .param p1, "data"    # [D
    .param p2, "toUse"    # [I

    .line 889
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    const/4 v6, 0x6

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v0, 0x1

    aput v1, v6, v0

    const/4 v0, 0x2

    aput v2, v6, v0

    const/4 v0, 0x3

    aput v3, v6, v0

    const/4 v0, 0x4

    aput v4, v6, v0

    const/4 v0, 0x5

    aput v5, v6, v0

    .line 890
    .local v6, "set":[F
    const/4 v0, 0x0

    .line 891
    .local v0, "c":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 892
    aget v2, p2, v1

    array-length v3, v6

    if-ge v2, v3, :cond_0

    .line 893
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "c":I
    .local v2, "c":I
    aget v3, p2, v1

    aget v3, v6, v3

    float-to-double v3, v3

    aput-wide v3, p1, v0

    move v0, v2

    .line 891
    .end local v2    # "c":I
    .restart local v0    # "c":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 896
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method getBounds([I[D[FI)V
    .locals 9
    .param p1, "toUse"    # [I
    .param p2, "data"    # [D
    .param p3, "point"    # [F
    .param p4, "offset"    # I

    .line 472
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 473
    .local v0, "v_x":F
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 474
    .local v1, "v_y":F
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 475
    .local v2, "v_width":F
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 476
    .local v3, "v_height":F
    const/4 v4, 0x0

    .local v4, "translationX":F
    const/4 v5, 0x0

    .line 477
    .local v5, "translationY":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_0

    .line 478
    aget-wide v7, p2, v6

    double-to-float v7, v7

    .line 480
    .local v7, "value":F
    aget v8, p1, v6

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 491
    :pswitch_0
    move v3, v7

    goto :goto_1

    .line 488
    :pswitch_1
    move v2, v7

    .line 489
    goto :goto_1

    .line 485
    :pswitch_2
    move v1, v7

    .line 486
    goto :goto_1

    .line 482
    :pswitch_3
    move v0, v7

    .line 483
    nop

    .line 477
    .end local v7    # "value":F
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 495
    .end local v6    # "i":I
    :cond_0
    aput v2, p3, p4

    .line 496
    add-int/lit8 v6, p4, 0x1

    aput v3, p3, v6

    .line 497
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCenter(D[I[D[FI)V
    .locals 21
    .param p1, "p"    # D
    .param p3, "toUse"    # [I
    .param p4, "data"    # [D
    .param p5, "point"    # [F
    .param p6, "offset"    # I

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 324
    .local v2, "v_x":F
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 325
    .local v3, "v_y":F
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 326
    .local v4, "v_width":F
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 327
    .local v5, "v_height":F
    const/4 v6, 0x0

    .local v6, "translationX":F
    const/4 v7, 0x0

    .line 328
    .local v7, "translationY":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v1

    if-ge v8, v9, :cond_0

    .line 329
    aget-wide v9, p4, v8

    double-to-float v9, v9

    .line 331
    .local v9, "value":F
    aget v10, v1, v8

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 342
    :pswitch_0
    move v5, v9

    goto :goto_1

    .line 339
    :pswitch_1
    move v4, v9

    .line 340
    goto :goto_1

    .line 336
    :pswitch_2
    move v3, v9

    .line 337
    goto :goto_1

    .line 333
    :pswitch_3
    move v2, v9

    .line 334
    nop

    .line 328
    .end local v9    # "value":F
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 346
    .end local v8    # "i":I
    :cond_0
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v8, :cond_1

    .line 347
    const/4 v8, 0x2

    new-array v10, v8, [F

    .line 348
    .local v10, "pos":[F
    new-array v8, v8, [F

    .line 350
    .local v8, "vel":[F
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    move-wide/from16 v12, p1

    invoke-virtual {v11, v12, v13, v10, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 351
    const/4 v11, 0x0

    aget v11, v10, v11

    .line 352
    .local v11, "rx":F
    const/4 v14, 0x1

    aget v14, v10, v14

    .line 353
    .local v14, "ry":F
    move v15, v2

    .line 354
    .local v15, "radius":F
    move/from16 v16, v3

    .line 356
    .local v16, "angle":F
    move-object/from16 v18, v10

    const/high16 v17, 0x40000000    # 2.0f

    .end local v10    # "pos":[F
    .local v18, "pos":[F
    float-to-double v9, v11

    float-to-double v0, v15

    move-wide/from16 v19, v0

    move/from16 v0, v16

    move/from16 v16, v2

    .end local v2    # "v_x":F
    .local v0, "angle":F
    .local v16, "v_x":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v19

    add-double/2addr v9, v1

    div-float v1, v4, v17

    float-to-double v1, v1

    sub-double/2addr v9, v1

    double-to-float v2, v9

    .line 357
    .end local v16    # "v_x":F
    .restart local v2    # "v_x":F
    float-to-double v9, v14

    move/from16 v16, v2

    .end local v2    # "v_x":F
    .restart local v16    # "v_x":F
    float-to-double v1, v15

    move-wide/from16 v19, v1

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v19

    sub-double/2addr v9, v1

    div-float v1, v5, v17

    float-to-double v1, v1

    sub-double/2addr v9, v1

    double-to-float v3, v9

    move/from16 v2, v16

    goto :goto_2

    .line 346
    .end local v0    # "angle":F
    .end local v8    # "vel":[F
    .end local v11    # "rx":F
    .end local v14    # "ry":F
    .end local v15    # "radius":F
    .end local v16    # "v_x":F
    .end local v18    # "pos":[F
    .restart local v2    # "v_x":F
    :cond_1
    move-wide/from16 v12, p1

    move/from16 v16, v2

    const/high16 v17, 0x40000000    # 2.0f

    .line 360
    :goto_2
    div-float v0, v4, v17

    add-float/2addr v0, v2

    add-float/2addr v0, v6

    aput v0, p5, p6

    .line 361
    add-int/lit8 v0, p6, 0x1

    div-float v1, v5, v17

    add-float/2addr v1, v3

    add-float/2addr v1, v7

    aput v1, p5, v0

    .line 362
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCenter(D[I[D[F[D[F)V
    .locals 33
    .param p1, "p"    # D
    .param p3, "toUse"    # [I
    .param p4, "data"    # [D
    .param p5, "point"    # [F
    .param p6, "vdata"    # [D
    .param p7, "velocity"    # [F

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 371
    .local v2, "v_x":F
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 372
    .local v3, "v_y":F
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 373
    .local v4, "v_width":F
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 374
    .local v5, "v_height":F
    const/4 v6, 0x0

    .line 375
    .local v6, "dv_x":F
    const/4 v7, 0x0

    .line 376
    .local v7, "dv_y":F
    const/4 v8, 0x0

    .line 377
    .local v8, "dv_width":F
    const/4 v9, 0x0

    .line 379
    .local v9, "dv_height":F
    const/4 v10, 0x0

    .local v10, "translationX":F
    const/4 v11, 0x0

    .line 380
    .local v11, "translationY":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v1

    if-ge v12, v13, :cond_0

    .line 381
    aget-wide v13, p4, v12

    double-to-float v13, v13

    .line 382
    .local v13, "value":F
    aget-wide v14, p6, v12

    double-to-float v14, v14

    .line 384
    .local v14, "dvalue":F
    aget v15, v1, v12

    packed-switch v15, :pswitch_data_0

    goto :goto_1

    .line 398
    :pswitch_0
    move v5, v13

    .line 399
    move v9, v14

    goto :goto_1

    .line 394
    :pswitch_1
    move v4, v13

    .line 395
    move v8, v14

    .line 396
    goto :goto_1

    .line 390
    :pswitch_2
    move v3, v13

    .line 391
    move v7, v14

    .line 392
    goto :goto_1

    .line 386
    :pswitch_3
    move v2, v13

    .line 387
    move v6, v14

    .line 388
    nop

    .line 380
    .end local v13    # "value":F
    .end local v14    # "dvalue":F
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 403
    .end local v12    # "i":I
    :cond_0
    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v8, v12

    add-float/2addr v13, v6

    .line 404
    .local v13, "dpos_x":F
    div-float v14, v9, v12

    add-float/2addr v14, v7

    .line 406
    .local v14, "dpos_y":F
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v15, :cond_1

    .line 407
    const/4 v15, 0x2

    const/high16 v18, 0x40000000    # 2.0f

    new-array v12, v15, [F

    .line 408
    .local v12, "pos":[F
    new-array v15, v15, [F

    .line 409
    .local v15, "vel":[F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    move/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v2, p1

    .end local v2    # "v_x":F
    .end local v3    # "v_y":F
    .local v19, "v_x":F
    .local v20, "v_y":F
    invoke-virtual {v1, v2, v3, v12, v15}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 410
    aget v1, v12, v16

    .line 411
    .local v1, "rx":F
    aget v0, v12, v17

    .line 412
    .local v0, "ry":F
    move/from16 v21, v19

    .line 413
    .local v21, "radius":F
    move/from16 v22, v20

    .line 414
    .local v22, "angle":F
    move/from16 v23, v6

    .line 415
    .local v23, "dradius":F
    move/from16 v24, v7

    .line 416
    .local v24, "dangle":F
    aget v2, v15, v16

    .line 417
    .local v2, "drx":F
    aget v3, v15, v17

    .line 419
    .local v3, "dry":F
    move/from16 v26, v4

    move/from16 v25, v5

    .end local v4    # "v_width":F
    .end local v5    # "v_height":F
    .local v25, "v_height":F
    .local v26, "v_width":F
    float-to-double v4, v1

    move/from16 v27, v1

    move-wide/from16 v28, v4

    move/from16 v1, v21

    .end local v21    # "radius":F
    .local v1, "radius":F
    .local v27, "rx":F
    float-to-double v4, v1

    move-wide/from16 v30, v4

    move/from16 v21, v6

    move/from16 v4, v22

    .end local v6    # "dv_x":F
    .end local v22    # "angle":F
    .local v4, "angle":F
    .local v21, "dv_x":F
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v30

    add-double v5, v28, v5

    move-wide/from16 v28, v5

    div-float v5, v26, v18

    float-to-double v5, v5

    sub-double v5, v28, v5

    double-to-float v5, v5

    .line 420
    .end local v19    # "v_x":F
    .local v5, "v_x":F
    move/from16 v19, v5

    .end local v5    # "v_x":F
    .restart local v19    # "v_x":F
    float-to-double v5, v0

    move-wide/from16 v28, v5

    float-to-double v5, v1

    move/from16 v22, v0

    move/from16 v30, v1

    .end local v0    # "ry":F
    .end local v1    # "radius":F
    .local v22, "ry":F
    .local v30, "radius":F
    float-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v5, v5, v0

    sub-double v5, v28, v5

    div-float v0, v25, v18

    float-to-double v0, v0

    sub-double/2addr v5, v0

    double-to-float v0, v5

    .line 421
    .end local v20    # "v_y":F
    .local v0, "v_y":F
    float-to-double v5, v2

    move-wide/from16 v28, v5

    move/from16 v1, v23

    .end local v23    # "dradius":F
    .local v1, "dradius":F
    float-to-double v5, v1

    move-wide/from16 v31, v5

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v31

    add-double v5, v28, v5

    move-wide/from16 v28, v5

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    move/from16 v20, v0

    move/from16 v0, v24

    move-wide/from16 v23, v5

    .end local v24    # "dangle":F
    .local v0, "dangle":F
    .restart local v20    # "v_y":F
    float-to-double v5, v0

    mul-double v5, v5, v23

    add-double v5, v28, v5

    double-to-float v13, v5

    .line 422
    float-to-double v5, v3

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v2    # "drx":F
    .end local v3    # "dry":F
    .local v23, "drx":F
    .local v24, "dry":F
    float-to-double v2, v1

    move/from16 v28, v1

    move-wide/from16 v31, v2

    .end local v1    # "dradius":F
    .local v28, "dradius":F
    float-to-double v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v2, v31, v1

    sub-double/2addr v5, v2

    float-to-double v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    move-wide/from16 v31, v1

    float-to-double v1, v0

    mul-double v1, v1, v31

    add-double/2addr v5, v1

    double-to-float v14, v5

    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_2

    .line 406
    .end local v0    # "dangle":F
    .end local v12    # "pos":[F
    .end local v15    # "vel":[F
    .end local v19    # "v_x":F
    .end local v20    # "v_y":F
    .end local v21    # "dv_x":F
    .end local v22    # "ry":F
    .end local v23    # "drx":F
    .end local v24    # "dry":F
    .end local v25    # "v_height":F
    .end local v26    # "v_width":F
    .end local v27    # "rx":F
    .end local v28    # "dradius":F
    .end local v30    # "radius":F
    .local v2, "v_x":F
    .local v3, "v_y":F
    .local v4, "v_width":F
    .local v5, "v_height":F
    .restart local v6    # "dv_x":F
    :cond_1
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v26, v4

    move/from16 v25, v5

    move/from16 v21, v6

    const/high16 v18, 0x40000000    # 2.0f

    .line 425
    .end local v4    # "v_width":F
    .end local v5    # "v_height":F
    .end local v6    # "dv_x":F
    .restart local v21    # "dv_x":F
    .restart local v25    # "v_height":F
    .restart local v26    # "v_width":F
    :goto_2
    div-float v4, v26, v18

    add-float/2addr v4, v2

    add-float/2addr v4, v10

    aput v4, p5, v16

    .line 426
    div-float v5, v25, v18

    add-float/2addr v5, v3

    add-float/2addr v5, v11

    aput v5, p5, v17

    .line 427
    aput v13, p7, v16

    .line 428
    aput v14, p7, v17

    .line 429
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCenterVelocity(D[I[D[FI)V
    .locals 21
    .param p1, "p"    # D
    .param p3, "toUse"    # [I
    .param p4, "data"    # [D
    .param p5, "point"    # [F
    .param p6, "offset"    # I

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 432
    .local v2, "v_x":F
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 433
    .local v3, "v_y":F
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 434
    .local v4, "v_width":F
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 435
    .local v5, "v_height":F
    const/4 v6, 0x0

    .local v6, "translationX":F
    const/4 v7, 0x0

    .line 436
    .local v7, "translationY":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v1

    if-ge v8, v9, :cond_0

    .line 437
    aget-wide v9, p4, v8

    double-to-float v9, v9

    .line 439
    .local v9, "value":F
    aget v10, v1, v8

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 450
    :pswitch_0
    move v5, v9

    goto :goto_1

    .line 447
    :pswitch_1
    move v4, v9

    .line 448
    goto :goto_1

    .line 444
    :pswitch_2
    move v3, v9

    .line 445
    goto :goto_1

    .line 441
    :pswitch_3
    move v2, v9

    .line 442
    nop

    .line 436
    .end local v9    # "value":F
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 454
    .end local v8    # "i":I
    :cond_0
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v8, :cond_1

    .line 455
    const/4 v8, 0x2

    new-array v10, v8, [F

    .line 456
    .local v10, "pos":[F
    new-array v8, v8, [F

    .line 457
    .local v8, "vel":[F
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    move-wide/from16 v12, p1

    invoke-virtual {v11, v12, v13, v10, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 458
    const/4 v11, 0x0

    aget v11, v10, v11

    .line 459
    .local v11, "rx":F
    const/4 v14, 0x1

    aget v14, v10, v14

    .line 460
    .local v14, "ry":F
    move v15, v2

    .line 461
    .local v15, "radius":F
    move/from16 v16, v3

    .line 463
    .local v16, "angle":F
    move-object/from16 v18, v10

    const/high16 v17, 0x40000000    # 2.0f

    .end local v10    # "pos":[F
    .local v18, "pos":[F
    float-to-double v9, v11

    float-to-double v0, v15

    move-wide/from16 v19, v0

    move/from16 v0, v16

    move/from16 v16, v2

    .end local v2    # "v_x":F
    .local v0, "angle":F
    .local v16, "v_x":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v19

    add-double/2addr v9, v1

    div-float v1, v4, v17

    float-to-double v1, v1

    sub-double/2addr v9, v1

    double-to-float v2, v9

    .line 464
    .end local v16    # "v_x":F
    .restart local v2    # "v_x":F
    float-to-double v9, v14

    move/from16 v16, v2

    .end local v2    # "v_x":F
    .restart local v16    # "v_x":F
    float-to-double v1, v15

    move-wide/from16 v19, v1

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v19

    sub-double/2addr v9, v1

    div-float v1, v5, v17

    float-to-double v1, v1

    sub-double/2addr v9, v1

    double-to-float v3, v9

    move/from16 v2, v16

    goto :goto_2

    .line 454
    .end local v0    # "angle":F
    .end local v8    # "vel":[F
    .end local v11    # "rx":F
    .end local v14    # "ry":F
    .end local v15    # "radius":F
    .end local v16    # "v_x":F
    .end local v18    # "pos":[F
    .restart local v2    # "v_x":F
    :cond_1
    move-wide/from16 v12, p1

    move/from16 v16, v2

    const/high16 v17, 0x40000000    # 2.0f

    .line 467
    :goto_2
    div-float v0, v4, v17

    add-float/2addr v0, v2

    add-float/2addr v0, v6

    aput v0, p5, p6

    .line 468
    add-int/lit8 v0, p6, 0x1

    div-float v1, v5, v17

    add-float/2addr v1, v3

    add-float/2addr v1, v7

    aput v1, p5, v0

    .line 469
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D
    .param p3, "offset"    # I

    .line 911
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 912
    .local v0, "a":Landroidx/constraintlayout/widget/ConstraintAttribute;
    if-nez v0, :cond_0

    .line 913
    const/4 v1, 0x0

    return v1

    .line 914
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 915
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    move-result v1

    float-to-double v3, v1

    aput-wide v3, p2, p3

    .line 916
    return v2

    .line 918
    :cond_1
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v1

    .line 919
    .local v1, "count":I
    new-array v2, v1, [F

    .line 920
    .local v2, "f":[F
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 921
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 922
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "offset":I
    .local v4, "offset":I
    aget v5, v2, v3

    float-to-double v5, v5

    aput-wide v5, p2, p3

    .line 921
    add-int/lit8 v3, v3, 0x1

    move p3, v4

    goto :goto_0

    .line 924
    .end local v3    # "i":I
    .end local v4    # "offset":I
    .restart local p3    # "offset":I
    :cond_2
    return v1
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 903
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 904
    .local v0, "a":Landroidx/constraintlayout/widget/ConstraintAttribute;
    if-nez v0, :cond_0

    .line 905
    const/4 v1, 0x0

    return v1

    .line 907
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v1

    return v1
.end method

.method getRect([I[D[FI)V
    .locals 36
    .param p1, "toUse"    # [I
    .param p2, "data"    # [D
    .param p3, "path"    # [F
    .param p4, "offset"    # I

    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 673
    .local v2, "v_x":F
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 674
    .local v3, "v_y":F
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 675
    .local v4, "v_width":F
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 676
    .local v5, "v_height":F
    const/4 v6, 0x0

    .line 677
    .local v6, "delta_path":F
    const/4 v7, 0x0

    .line 678
    .local v7, "rotation":F
    const/4 v8, 0x0

    .line 679
    .local v8, "alpha":F
    const/4 v9, 0x0

    .line 680
    .local v9, "rotationX":F
    const/4 v10, 0x0

    .line 681
    .local v10, "rotationY":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 682
    .local v11, "scaleX":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 683
    .local v12, "scaleY":F
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 684
    .local v13, "pivotX":F
    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 685
    .local v14, "pivotY":F
    const/4 v15, 0x0

    .line 686
    .local v15, "translationX":F
    const/16 v16, 0x0

    .line 688
    .local v16, "translationY":F
    const/16 v17, 0x0

    move/from16 v35, v17

    move/from16 v17, v2

    move/from16 v2, v35

    .local v2, "i":I
    .local v17, "v_x":F
    :goto_0
    move/from16 v18, v3

    .end local v3    # "v_y":F
    .local v18, "v_y":F
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 689
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    aget-wide v1, p2, v3

    double-to-float v1, v1

    .line 691
    .local v1, "value":F
    aget v2, p1, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 705
    :pswitch_0
    move v2, v1

    move v5, v2

    .end local v5    # "v_height":F
    .local v2, "v_height":F
    goto :goto_1

    .line 702
    .end local v2    # "v_height":F
    .restart local v5    # "v_height":F
    :pswitch_1
    move v2, v1

    .line 703
    .end local v4    # "v_width":F
    .local v2, "v_width":F
    move v4, v2

    goto :goto_1

    .line 699
    .end local v2    # "v_width":F
    .restart local v4    # "v_width":F
    :pswitch_2
    move v2, v1

    .line 700
    .end local v18    # "v_y":F
    .local v2, "v_y":F
    move/from16 v18, v2

    goto :goto_1

    .line 696
    .end local v2    # "v_y":F
    .restart local v18    # "v_y":F
    :pswitch_3
    move v2, v1

    .line 697
    .end local v17    # "v_x":F
    .local v2, "v_x":F
    move/from16 v17, v2

    goto :goto_1

    .line 693
    .end local v2    # "v_x":F
    .restart local v17    # "v_x":F
    :pswitch_4
    move v2, v1

    .line 694
    .end local v6    # "delta_path":F
    .local v2, "delta_path":F
    move v6, v2

    .line 688
    .end local v1    # "value":F
    .end local v2    # "delta_path":F
    .restart local v6    # "delta_path":F
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v18

    .end local v3    # "i":I
    .local v2, "i":I
    goto :goto_0

    :cond_0
    move v3, v2

    .line 710
    .end local v2    # "i":I
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v1, :cond_1

    .line 711
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenterX()F

    move-result v1

    .line 712
    .local v1, "rx":F
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenterY()F

    move-result v3

    .line 713
    .local v3, "ry":F
    move/from16 v19, v17

    .line 714
    .local v19, "radius":F
    move/from16 v20, v18

    .line 716
    .local v20, "angle":F
    move/from16 v22, v3

    const/high16 v21, 0x40000000    # 2.0f

    .end local v3    # "ry":F
    .local v22, "ry":F
    float-to-double v2, v1

    move-wide/from16 v23, v2

    move/from16 v0, v19

    move/from16 v19, v1

    .end local v1    # "rx":F
    .local v0, "radius":F
    .local v19, "rx":F
    float-to-double v1, v0

    move-wide/from16 v25, v1

    move/from16 v3, v20

    .end local v20    # "angle":F
    .local v3, "angle":F
    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v25

    add-double v1, v23, v1

    move-wide/from16 v23, v1

    div-float v1, v4, v21

    float-to-double v1, v1

    sub-double v1, v23, v1

    double-to-float v2, v1

    .line 717
    .end local v17    # "v_x":F
    .local v2, "v_x":F
    move/from16 v20, v5

    move/from16 v1, v22

    move/from16 v22, v4

    .end local v4    # "v_width":F
    .end local v5    # "v_height":F
    .local v1, "ry":F
    .local v20, "v_height":F
    .local v22, "v_width":F
    float-to-double v4, v1

    move/from16 v23, v1

    move/from16 v17, v2

    .end local v1    # "ry":F
    .end local v2    # "v_x":F
    .restart local v17    # "v_x":F
    .local v23, "ry":F
    float-to-double v1, v0

    move/from16 v24, v0

    move-wide/from16 v25, v1

    .end local v0    # "radius":F
    .local v24, "radius":F
    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v25, v0

    sub-double/2addr v4, v1

    div-float v0, v20, v21

    float-to-double v0, v0

    sub-double/2addr v4, v0

    double-to-float v0, v4

    move v3, v0

    move/from16 v2, v17

    .end local v18    # "v_y":F
    .local v0, "v_y":F
    goto :goto_2

    .line 710
    .end local v0    # "v_y":F
    .end local v3    # "angle":F
    .end local v19    # "rx":F
    .end local v20    # "v_height":F
    .end local v22    # "v_width":F
    .end local v23    # "ry":F
    .end local v24    # "radius":F
    .restart local v4    # "v_width":F
    .restart local v5    # "v_height":F
    .restart local v18    # "v_y":F
    :cond_1
    move/from16 v22, v4

    move/from16 v20, v5

    const/high16 v21, 0x40000000    # 2.0f

    .end local v4    # "v_width":F
    .end local v5    # "v_height":F
    .restart local v20    # "v_height":F
    .restart local v22    # "v_width":F
    move/from16 v3, v18

    move/from16 v2, v17

    .line 720
    .end local v17    # "v_x":F
    .end local v18    # "v_y":F
    .restart local v2    # "v_x":F
    .local v3, "v_y":F
    :goto_2
    move v0, v2

    .line 721
    .local v0, "x1":F
    move v1, v3

    .line 723
    .local v1, "y1":F
    add-float v4, v2, v22

    .line 724
    .local v4, "x2":F
    move v5, v1

    .line 726
    .local v5, "y2":F
    move/from16 v17, v4

    .line 727
    .local v17, "x3":F
    add-float v18, v3, v20

    .line 729
    .local v18, "y3":F
    move/from16 v19, v0

    .line 730
    .local v19, "x4":F
    move/from16 v23, v18

    .line 732
    .local v23, "y4":F
    div-float v24, v22, v21

    add-float v24, v0, v24

    .line 733
    .local v24, "cx":F
    div-float v25, v20, v21

    add-float v25, v1, v25

    .line 735
    .local v25, "cy":F
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v26

    if-nez v26, :cond_2

    .line 736
    sub-float v26, v4, v0

    mul-float v26, v26, v13

    add-float v24, v0, v26

    move/from16 v28, v24

    goto :goto_3

    .line 735
    :cond_2
    move/from16 v28, v24

    .line 738
    .end local v24    # "cx":F
    .local v28, "cx":F
    :goto_3
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v24

    if-nez v24, :cond_3

    .line 740
    sub-float v24, v18, v1

    mul-float v24, v24, v14

    add-float v25, v1, v24

    move/from16 v29, v25

    goto :goto_4

    .line 738
    :cond_3
    move/from16 v29, v25

    .line 742
    .end local v25    # "cy":F
    .local v29, "cy":F
    :goto_4
    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v25, v11, v24

    if-eqz v25, :cond_4

    .line 743
    add-float v25, v0, v4

    div-float v25, v25, v21

    .line 744
    .local v25, "midx":F
    sub-float v26, v0, v25

    mul-float v26, v26, v11

    add-float v0, v26, v25

    .line 745
    sub-float v26, v4, v25

    mul-float v26, v26, v11

    add-float v4, v26, v25

    .line 746
    sub-float v26, v17, v25

    mul-float v26, v26, v11

    add-float v17, v26, v25

    .line 747
    sub-float v26, v19, v25

    mul-float v26, v26, v11

    add-float v19, v26, v25

    move/from16 v30, v0

    goto :goto_5

    .line 742
    .end local v25    # "midx":F
    :cond_4
    move/from16 v30, v0

    .line 749
    .end local v0    # "x1":F
    .local v30, "x1":F
    :goto_5
    cmpl-float v0, v12, v24

    if-eqz v0, :cond_5

    .line 750
    add-float v0, v1, v18

    div-float v0, v0, v21

    .line 751
    .local v0, "midy":F
    sub-float v21, v1, v0

    mul-float v21, v21, v12

    add-float v1, v21, v0

    .line 752
    sub-float v21, v5, v0

    mul-float v21, v21, v12

    add-float v5, v21, v0

    .line 753
    sub-float v21, v18, v0

    mul-float v21, v21, v12

    add-float v18, v21, v0

    .line 754
    sub-float v21, v23, v0

    mul-float v21, v21, v12

    add-float v23, v21, v0

    move/from16 v31, v1

    goto :goto_6

    .line 749
    .end local v0    # "midy":F
    :cond_5
    move/from16 v31, v1

    .line 756
    .end local v1    # "y1":F
    .local v31, "y1":F
    :goto_6
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_6

    .line 757
    float-to-double v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 758
    .local v0, "sin":F
    move/from16 v26, v0

    .end local v0    # "sin":F
    .local v26, "sin":F
    float-to-double v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 759
    .local v0, "cos":F
    move/from16 v27, v0

    .end local v0    # "cos":F
    .local v27, "cos":F
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v0

    .line 760
    .local v0, "tx1":F
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v1

    .line 761
    move/from16 v21, v30

    move/from16 v24, v31

    .end local v30    # "x1":F
    .end local v31    # "y1":F
    .local v1, "ty1":F
    .local v21, "x1":F
    .local v24, "y1":F
    move/from16 v30, v4

    move/from16 v31, v5

    .end local v4    # "x2":F
    .end local v5    # "y2":F
    .local v30, "x2":F
    .local v31, "y2":F
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v4

    .line 762
    .local v4, "tx2":F
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v5

    .line 763
    move/from16 v25, v30

    move/from16 v32, v31

    .end local v30    # "x2":F
    .end local v31    # "y2":F
    .local v5, "ty2":F
    .local v25, "x2":F
    .local v32, "y2":F
    move/from16 v30, v17

    move/from16 v31, v18

    .end local v17    # "x3":F
    .end local v18    # "y3":F
    .local v30, "x3":F
    .local v31, "y3":F
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v17

    .line 764
    .local v17, "tx3":F
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v18

    .line 765
    move/from16 v33, v30

    move/from16 v34, v31

    .end local v30    # "x3":F
    .end local v31    # "y3":F
    .local v18, "ty3":F
    .local v33, "x3":F
    .local v34, "y3":F
    move/from16 v30, v19

    move/from16 v31, v23

    .end local v19    # "x4":F
    .end local v23    # "y4":F
    .local v30, "x4":F
    .local v31, "y4":F
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->xRotate(FFFFFF)F

    move-result v19

    .line 766
    .local v19, "tx4":F
    invoke-static/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionPaths;->yRotate(FFFFFF)F

    move-result v23

    .line 767
    .local v23, "ty4":F
    move/from16 v21, v0

    .line 768
    move/from16 v24, v1

    .line 769
    move/from16 v25, v4

    .line 770
    move/from16 v32, v5

    .line 771
    move/from16 v33, v17

    .line 772
    move/from16 v34, v18

    .line 773
    move/from16 v30, v19

    .line 774
    move/from16 v31, v23

    move/from16 v30, v21

    move/from16 v31, v24

    goto :goto_7

    .line 756
    .end local v0    # "tx1":F
    .end local v1    # "ty1":F
    .end local v21    # "x1":F
    .end local v24    # "y1":F
    .end local v25    # "x2":F
    .end local v26    # "sin":F
    .end local v27    # "cos":F
    .end local v32    # "y2":F
    .end local v33    # "x3":F
    .end local v34    # "y3":F
    .local v4, "x2":F
    .local v5, "y2":F
    .local v17, "x3":F
    .local v18, "y3":F
    .local v19, "x4":F
    .local v23, "y4":F
    .local v30, "x1":F
    .local v31, "y1":F
    :cond_6
    move/from16 v25, v4

    move/from16 v32, v5

    move/from16 v33, v17

    move/from16 v34, v18

    move/from16 v21, v30

    move/from16 v24, v31

    move/from16 v30, v19

    move/from16 v31, v23

    .end local v4    # "x2":F
    .end local v5    # "y2":F
    .end local v17    # "x3":F
    .end local v18    # "y3":F
    .end local v19    # "x4":F
    .end local v23    # "y4":F
    .restart local v21    # "x1":F
    .restart local v24    # "y1":F
    .restart local v25    # "x2":F
    .local v30, "x4":F
    .local v31, "y4":F
    .restart local v32    # "y2":F
    .restart local v33    # "x3":F
    .restart local v34    # "y3":F
    move/from16 v30, v21

    move/from16 v31, v24

    .line 777
    .end local v21    # "x1":F
    .end local v24    # "y1":F
    .end local v25    # "x2":F
    .end local v32    # "y2":F
    .end local v33    # "x3":F
    .end local v34    # "y3":F
    .restart local v4    # "x2":F
    .restart local v5    # "y2":F
    .restart local v17    # "x3":F
    .restart local v18    # "y3":F
    .restart local v19    # "x4":F
    .restart local v23    # "y4":F
    .local v30, "x1":F
    .local v31, "y1":F
    :goto_7
    add-float v30, v30, v15

    .line 778
    add-float v31, v31, v16

    .line 779
    add-float/2addr v4, v15

    .line 780
    add-float v5, v5, v16

    .line 781
    add-float v17, v17, v15

    .line 782
    add-float v18, v18, v16

    .line 783
    add-float v19, v19, v15

    .line 784
    add-float v23, v23, v16

    .line 786
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "offset":I
    .local v0, "offset":I
    aput v30, p3, p4

    .line 787
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aput v31, p3, v0

    .line 788
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aput v4, p3, v1

    .line 789
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    aput v5, p3, v0

    .line 790
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aput v17, p3, v1

    .line 791
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    aput v18, p3, v0

    .line 792
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aput v19, p3, v1

    .line 793
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    aput v23, p3, v0

    .line 794
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 899
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 23
    .param p1, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p2, "startTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p3, "endTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 84
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 85
    .local v3, "position":F
    move-object/from16 v4, p0

    .line 86
    .local v4, "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iput v3, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 88
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    move-object/from16 v6, p0

    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 89
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 90
    .local v5, "scaleWidth":F
    :goto_0
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 91
    .local v7, "scaleHeight":F
    :goto_1
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v9, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v8, v9

    .line 92
    .local v8, "scaleX":F
    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v10, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr v9, v10

    .line 94
    .local v9, "scaleY":F
    iget v10, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v10, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 96
    move v10, v3

    .line 98
    .local v10, "path":F
    iget v11, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v12, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    .line 99
    .local v11, "startCenterX":F
    iget v12, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v14, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float/2addr v14, v13

    add-float/2addr v12, v14

    .line 100
    .local v12, "startCenterY":F
    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v15, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    div-float/2addr v15, v13

    add-float/2addr v14, v15

    .line 101
    .local v14, "endCenterX":F
    iget v15, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    const/high16 v16, 0x40000000    # 2.0f

    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float v13, v13, v16

    add-float/2addr v15, v13

    .line 102
    .local v15, "endCenterY":F
    sub-float v13, v14, v11

    .line 103
    .local v13, "pathVectorX":F
    sub-float v17, v15, v12

    .line 104
    .local v17, "pathVectorY":F
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v18, v13, v10

    add-float v2, v2, v18

    mul-float v18, v8, v5

    div-float v18, v18, v16

    sub-float v2, v2, v18

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 105
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float v18, v17, v10

    add-float v2, v2, v18

    mul-float v18, v9, v7

    div-float v18, v18, v16

    sub-float v2, v2, v18

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 106
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    mul-float v18, v8, v5

    add-float v2, v2, v18

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 107
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    mul-float v18, v9, v7

    add-float v2, v2, v18

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 109
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 110
    .local v2, "dxdx":F
    :goto_2
    move/from16 v18, v2

    .end local v2    # "dxdx":F
    .local v18, "dxdx":F
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/16 v19, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 111
    .local v2, "dydx":F
    :goto_3
    move/from16 v20, v2

    .end local v2    # "dydx":F
    .local v20, "dydx":F
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 112
    .local v2, "dydy":F
    :goto_4
    move/from16 v21, v2

    .end local v2    # "dydy":F
    .local v21, "dydy":F
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    move/from16 v19, v2

    .line 113
    .local v19, "dxdy":F
    :goto_5
    const/4 v2, 0x0

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 114
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v22, v13, v18

    add-float v2, v2, v22

    mul-float v22, v17, v19

    add-float v2, v2, v22

    mul-float v22, v8, v5

    div-float v22, v22, v16

    sub-float v2, v2, v22

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 116
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float v22, v13, v20

    add-float v2, v2, v22

    mul-float v22, v17, v21

    add-float v2, v2, v22

    mul-float v22, v9, v7

    div-float v22, v22, v16

    sub-float v2, v2, v22

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 119
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 120
    iget v2, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v2, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 121
    return-void
.end method

.method initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 24
    .param p1, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p2, "startTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p3, "endTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 250
    .local v4, "position":F
    move-object/from16 v5, p0

    .line 251
    .local v5, "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 253
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 254
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 255
    .local v6, "scaleWidth":F
    :goto_0
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 257
    .local v7, "scaleHeight":F
    :goto_1
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v8, v9

    .line 258
    .local v8, "scaleX":F
    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v10, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr v9, v10

    .line 260
    .local v9, "scaleY":F
    iget v10, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v10, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 262
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 264
    .local v10, "path":F
    :goto_2
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    .line 265
    .local v11, "startCenterX":F
    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float/2addr v14, v13

    add-float/2addr v12, v14

    .line 266
    .local v12, "startCenterY":F
    iget v14, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v15, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    div-float/2addr v15, v13

    add-float/2addr v14, v15

    .line 267
    .local v14, "endCenterX":F
    iget v15, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    const/high16 v16, 0x40000000    # 2.0f

    iget v13, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float v13, v13, v16

    add-float/2addr v15, v13

    .line 268
    .local v15, "endCenterY":F
    sub-float v13, v14, v11

    .line 269
    .local v13, "pathVectorX":F
    sub-float v3, v15, v12

    .line 270
    .local v3, "pathVectorY":F
    move/from16 v17, v4

    .end local v4    # "position":F
    .local v17, "position":F
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v18, v13, v10

    add-float v4, v4, v18

    mul-float v18, v8, v6

    div-float v18, v18, v16

    sub-float v4, v4, v18

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 271
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float v18, v3, v10

    add-float v4, v4, v18

    mul-float v18, v9, v7

    div-float v18, v18, v16

    sub-float v4, v4, v18

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 272
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    mul-float v18, v8, v6

    add-float v4, v4, v18

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 273
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    mul-float v18, v9, v7

    add-float v4, v4, v18

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 274
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 275
    .local v4, "perpendicular":F
    :goto_3
    move/from16 v18, v4

    .end local v4    # "perpendicular":F
    .local v18, "perpendicular":F
    neg-float v4, v3

    .line 276
    .local v4, "perpendicularX":F
    move/from16 v19, v13

    .line 278
    .local v19, "perpendicularY":F
    mul-float v20, v4, v18

    .line 279
    .local v20, "normalX":F
    mul-float v21, v19, v18

    .line 280
    .local v21, "normalY":F
    move/from16 v22, v3

    .end local v3    # "pathVectorY":F
    .local v22, "pathVectorY":F
    const/4 v3, 0x1

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 281
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v23, v13, v10

    add-float v3, v3, v23

    mul-float v23, v8, v6

    div-float v23, v23, v16

    sub-float v3, v3, v23

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 282
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float v23, v22, v10

    add-float v3, v3, v23

    mul-float v23, v9, v7

    div-float v23, v23, v16

    sub-float v3, v3, v23

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 283
    iget v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    add-float v3, v3, v20

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 284
    iget v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float v3, v3, v21

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 286
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 287
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v3

    iput-object v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 288
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 289
    return-void
.end method

.method initPolar(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 8
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p4, "s"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p5, "e"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 154
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 155
    .local v0, "position":F
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 156
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 157
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 158
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 159
    .local v1, "scaleWidth":F
    :goto_0
    iget v2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    iget v2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 160
    .local v2, "scaleHeight":F
    :goto_1
    iget v3, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v4, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v3, v4

    .line 161
    .local v3, "scaleX":F
    iget v4, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v5, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr v4, v5

    .line 162
    .local v4, "scaleY":F
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 163
    iget v5, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    mul-float v6, v3, v1

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 164
    iget v5, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    mul-float v6, v4, v2

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 165
    iget v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    packed-switch v5, :pswitch_data_0

    .line 175
    iget v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    move v5, v0

    goto :goto_4

    .line 167
    :pswitch_0
    iget v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v6, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    sub-float/2addr v5, v6

    mul-float v5, v5, v0

    iget v6, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    add-float/2addr v5, v6

    goto :goto_2

    .line 168
    :cond_2
    iget v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v5, v5, v6

    :goto_2
    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 169
    iget v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    iget v5, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v6, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    sub-float/2addr v5, v6

    mul-float v5, v5, v0

    iget v6, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v5, v6

    goto :goto_3

    :cond_3
    iget v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_3
    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 171
    goto :goto_6

    .line 176
    :cond_4
    iget v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_4
    iget v6, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v7, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    sub-float/2addr v6, v7

    mul-float v5, v5, v6

    iget v6, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    add-float/2addr v5, v6

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 177
    iget v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 178
    move v5, v0

    goto :goto_5

    :cond_5
    iget v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_5
    iget v6, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v7, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    sub-float/2addr v6, v7

    mul-float v5, v5, v6

    iget v6, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    add-float/2addr v5, v6

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 182
    :goto_6
    iget v5, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 183
    iget-object v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 184
    iget v5, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 185
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 19
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p4, "startTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;
    .param p5, "endTimePoint"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 207
    .local v4, "position":F
    move-object/from16 v5, p0

    .line 208
    .local v5, "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 210
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 211
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 212
    .local v6, "scaleWidth":F
    :goto_0
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 214
    .local v7, "scaleHeight":F
    :goto_1
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    sub-float/2addr v8, v9

    .line 215
    .local v8, "scaleX":F
    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    iget v10, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    sub-float/2addr v9, v10

    .line 217
    .local v9, "scaleY":F
    iget v10, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    iput v10, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 219
    move v10, v4

    .line 221
    .local v10, "path":F
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    .line 222
    .local v11, "startCenterX":F
    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float/2addr v14, v13

    add-float/2addr v12, v14

    .line 223
    .local v12, "startCenterY":F
    iget v14, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v15, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    div-float/2addr v15, v13

    add-float/2addr v14, v15

    .line 224
    .local v14, "endCenterX":F
    iget v15, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    const/high16 v16, 0x40000000    # 2.0f

    iget v13, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float v13, v13, v16

    add-float/2addr v15, v13

    .line 225
    .local v15, "endCenterY":F
    sub-float v13, v14, v11

    .line 226
    .local v13, "pathVectorX":F
    sub-float v17, v15, v12

    .line 227
    .local v17, "pathVectorY":F
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    mul-float v18, v13, v10

    add-float v3, v3, v18

    mul-float v18, v8, v6

    div-float v18, v18, v16

    sub-float v3, v3, v18

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 228
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    mul-float v18, v17, v10

    add-float v3, v3, v18

    mul-float v18, v9, v7

    div-float v18, v18, v16

    sub-float v3, v3, v18

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 229
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    mul-float v16, v8, v6

    add-float v3, v3, v16

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 230
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    mul-float v16, v9, v7

    add-float v3, v3, v16

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 232
    const/4 v3, 0x2

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 233
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    .line 234
    iget v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    float-to-int v3, v3

    sub-int v3, p1, v3

    .line 235
    .end local p1    # "parentWidth":I
    .local v3, "parentWidth":I
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    move/from16 v16, v2

    int-to-float v2, v3

    mul-float v2, v2, v16

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    goto :goto_2

    .line 233
    .end local v3    # "parentWidth":I
    .restart local p1    # "parentWidth":I
    :cond_2
    move/from16 v3, p1

    .line 237
    .end local p1    # "parentWidth":I
    .restart local v3    # "parentWidth":I
    :goto_2
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 238
    iget v2, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    float-to-int v2, v2

    sub-int v2, p2, v2

    .line 239
    .end local p2    # "parentHeight":I
    .local v2, "parentHeight":I
    move/from16 p1, v3

    .end local v3    # "parentWidth":I
    .restart local p1    # "parentWidth":I
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    move/from16 v16, v3

    int-to-float v3, v2

    mul-float v3, v3, v16

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    goto :goto_3

    .line 237
    .end local v2    # "parentHeight":I
    .end local p1    # "parentWidth":I
    .restart local v3    # "parentWidth":I
    .restart local p2    # "parentHeight":I
    :cond_3
    move/from16 p1, v3

    .end local v3    # "parentWidth":I
    .restart local p1    # "parentWidth":I
    move/from16 v2, p2

    .line 242
    .end local p2    # "parentHeight":I
    .restart local v2    # "parentHeight":I
    :goto_3
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 243
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v3

    iput-object v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 244
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v3, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 245
    return-void
.end method

.method setBounds(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .line 929
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 930
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 931
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 932
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 933
    return-void
.end method

.method setDpDt(FF[F[I[D[D)V
    .locals 20
    .param p1, "locationX"    # F
    .param p2, "locationY"    # F
    .param p3, "mAnchorDpDt"    # [F
    .param p4, "toUse"    # [I
    .param p5, "deltaData"    # [D
    .param p6, "data"    # [D

    .line 813
    move-object/from16 v0, p4

    const/4 v1, 0x0

    .line 814
    .local v1, "d_x":F
    const/4 v2, 0x0

    .line 815
    .local v2, "d_y":F
    const/4 v3, 0x0

    .line 816
    .local v3, "d_width":F
    const/4 v4, 0x0

    .line 818
    .local v4, "d_height":F
    const/4 v5, 0x0

    .line 819
    .local v5, "deltaScaleX":F
    const/4 v6, 0x0

    .line 821
    .local v6, "deltaScaleY":F
    const/high16 v7, 0x7fc00000    # Float.NaN

    .line 822
    .local v7, "mPathRotate":F
    const/4 v8, 0x0

    .line 823
    .local v8, "deltaTranslationX":F
    const/4 v9, 0x0

    .line 825
    .local v9, "deltaTranslationY":F
    const-string v10, " dd = "

    .line 826
    .local v10, "mod":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v12, v0

    if-ge v11, v12, :cond_0

    .line 827
    aget-wide v12, p5, v11

    double-to-float v12, v12

    .line 828
    .local v12, "deltaV":F
    aget-wide v13, p6, v11

    double-to-float v13, v13

    .line 832
    .local v13, "value":F
    aget v14, v0, v11

    packed-switch v14, :pswitch_data_0

    goto :goto_1

    .line 845
    :pswitch_0
    move v4, v12

    goto :goto_1

    .line 842
    :pswitch_1
    move v3, v12

    .line 843
    goto :goto_1

    .line 839
    :pswitch_2
    move v2, v12

    .line 840
    goto :goto_1

    .line 836
    :pswitch_3
    move v1, v12

    .line 837
    goto :goto_1

    .line 834
    :pswitch_4
    nop

    .line 826
    .end local v12    # "deltaV":F
    .end local v13    # "value":F
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 856
    .end local v11    # "i":I
    :cond_0
    mul-float v11, v5, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float v11, v1, v11

    .line 857
    .local v11, "deltaX":F
    mul-float v13, v6, v4

    div-float/2addr v13, v12

    sub-float v12, v2, v13

    .line 858
    .local v12, "deltaY":F
    const/high16 v13, 0x3f800000    # 1.0f

    add-float v14, v5, v13

    mul-float v14, v14, v3

    .line 859
    .local v14, "deltaWidth":F
    add-float v15, v6, v13

    mul-float v15, v15, v4

    .line 860
    .local v15, "deltaHeight":F
    add-float v16, v11, v14

    .line 861
    .local v16, "deltaRight":F
    add-float v17, v12, v15

    .line 884
    .local v17, "deltaBottom":F
    sub-float v18, v13, p1

    mul-float v18, v18, v11

    mul-float v19, v16, p1

    add-float v18, v18, v19

    add-float v18, v18, v8

    const/16 v19, 0x0

    aput v18, p3, v19

    .line 885
    sub-float v13, v13, p2

    mul-float v13, v13, v12

    mul-float v18, v17, p2

    add-float v13, v13, v18

    add-float/2addr v13, v9

    const/16 v18, 0x1

    aput v13, p3, v18

    .line 886
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setView(FLandroid/view/View;[I[D[D[DZ)V
    .locals 36
    .param p1, "position"    # F
    .param p2, "view"    # Landroid/view/View;
    .param p3, "toUse"    # [I
    .param p4, "data"    # [D
    .param p5, "slope"    # [D
    .param p6, "cycle"    # [D
    .param p7, "mForceMeasure"    # Z

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 511
    .local v4, "v_x":F
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 512
    .local v5, "v_y":F
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 513
    .local v6, "v_width":F
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 514
    .local v7, "v_height":F
    const/4 v8, 0x0

    .line 515
    .local v8, "dv_x":F
    const/4 v9, 0x0

    .line 516
    .local v9, "dv_y":F
    const/4 v10, 0x0

    .line 517
    .local v10, "dv_width":F
    const/4 v11, 0x0

    .line 518
    .local v11, "dv_height":F
    const/4 v12, 0x0

    .line 519
    .local v12, "delta_path":F
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 525
    .local v13, "path_rotate":F
    array-length v14, v2

    if-eqz v14, :cond_0

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v14, v14

    const/16 v16, 0x1

    array-length v15, v2

    add-int/lit8 v15, v15, -0x1

    aget v15, v2, v15

    if-gt v14, v15, :cond_1

    .line 526
    array-length v14, v2

    add-int/lit8 v14, v14, -0x1

    aget v14, v2, v14

    add-int/lit8 v14, v14, 0x1

    .line 527
    .local v14, "scratch_data_length":I
    new-array v15, v14, [D

    iput-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 528
    new-array v15, v14, [D

    iput-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    goto :goto_0

    .line 525
    .end local v14    # "scratch_data_length":I
    :cond_0
    const/16 v16, 0x1

    .line 530
    :cond_1
    :goto_0
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    move v15, v4

    move/from16 v17, v5

    .end local v4    # "v_x":F
    .end local v5    # "v_y":F
    .local v15, "v_x":F
    .local v17, "v_y":F
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v14, v4, v5}, Ljava/util/Arrays;->fill([DD)V

    .line 531
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 532
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget v14, v2, v4

    aget-wide v18, p4, v4

    aput-wide v18, v5, v14

    .line 533
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    aget v14, v2, v4

    aget-wide v18, v3, v4

    aput-wide v18, v5, v14

    .line 531
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 536
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    move/from16 v5, v17

    .end local v17    # "v_y":F
    .restart local v4    # "i":I
    .restart local v5    # "v_y":F
    :goto_2
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    array-length v14, v14

    if-ge v4, v14, :cond_7

    .line 537
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v17, v14, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    const-wide/16 v17, 0x0

    if-eqz v14, :cond_4

    if-eqz p6, :cond_3

    aget-wide v19, p6, v4

    cmpl-double v14, v19, v17

    if-nez v14, :cond_4

    .line 538
    move v14, v4

    move/from16 v21, v5

    goto/16 :goto_4

    .line 537
    :cond_3
    move v14, v4

    move/from16 v21, v5

    goto/16 :goto_4

    .line 540
    :cond_4
    if-eqz p6, :cond_5

    aget-wide v17, p6, v4

    .line 541
    .local v17, "deltaCycle":D
    :cond_5
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v19, v14, v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-eqz v14, :cond_6

    move v14, v4

    move/from16 v21, v5

    move-wide/from16 v4, v17

    goto :goto_3

    .line 542
    :cond_6
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    aget-wide v19, v14, v4

    add-double v19, v19, v17

    move v14, v4

    move/from16 v21, v5

    move-wide/from16 v4, v19

    .end local v4    # "i":I
    .end local v5    # "v_y":F
    .local v14, "i":I
    .local v21, "v_y":F
    :goto_3
    double-to-float v4, v4

    .line 543
    .local v4, "value":F
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    move/from16 v19, v4

    .end local v4    # "value":F
    .local v19, "value":F
    aget-wide v4, v5, v14

    double-to-float v4, v4

    .line 547
    .local v4, "dvalue":F
    packed-switch v14, :pswitch_data_0

    goto :goto_4

    .line 569
    :pswitch_0
    move/from16 v5, v19

    move v13, v5

    move/from16 v5, v21

    .end local v13    # "path_rotate":F
    .local v5, "path_rotate":F
    goto :goto_5

    .line 565
    .end local v5    # "path_rotate":F
    .restart local v13    # "path_rotate":F
    :pswitch_1
    move/from16 v5, v19

    .line 566
    .end local v7    # "v_height":F
    .local v5, "v_height":F
    move v7, v4

    .line 567
    .end local v11    # "dv_height":F
    .local v7, "dv_height":F
    move v11, v7

    move v7, v5

    move/from16 v5, v21

    goto :goto_5

    .line 561
    .end local v5    # "v_height":F
    .local v7, "v_height":F
    .restart local v11    # "dv_height":F
    :pswitch_2
    move/from16 v5, v19

    .line 562
    .end local v6    # "v_width":F
    .local v5, "v_width":F
    move v6, v4

    .line 563
    .end local v10    # "dv_width":F
    .local v6, "dv_width":F
    move v10, v6

    move v6, v5

    move/from16 v5, v21

    goto :goto_5

    .line 557
    .end local v5    # "v_width":F
    .local v6, "v_width":F
    .restart local v10    # "dv_width":F
    :pswitch_3
    move/from16 v5, v19

    .line 558
    .end local v21    # "v_y":F
    .local v5, "v_y":F
    move v9, v4

    .line 559
    goto :goto_5

    .line 552
    .end local v5    # "v_y":F
    .restart local v21    # "v_y":F
    :pswitch_4
    move/from16 v5, v19

    .line 553
    .end local v15    # "v_x":F
    .local v5, "v_x":F
    move v8, v4

    .line 555
    move v15, v5

    move/from16 v5, v21

    goto :goto_5

    .line 549
    .end local v5    # "v_x":F
    .restart local v15    # "v_x":F
    :pswitch_5
    move/from16 v5, v19

    .line 550
    .end local v12    # "delta_path":F
    .local v5, "delta_path":F
    move v12, v5

    move/from16 v5, v21

    goto :goto_5

    .line 536
    .end local v14    # "i":I
    .end local v17    # "deltaCycle":D
    .end local v19    # "value":F
    .end local v21    # "v_y":F
    .local v4, "i":I
    .local v5, "v_y":F
    .restart local v12    # "delta_path":F
    :goto_4
    move/from16 v5, v21

    .end local v4    # "i":I
    .restart local v14    # "i":I
    :goto_5
    add-int/lit8 v4, v14, 0x1

    .end local v14    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    :cond_7
    move v14, v4

    move/from16 v21, v5

    .line 574
    .end local v4    # "i":I
    .end local v5    # "v_y":F
    .restart local v21    # "v_y":F
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v4, :cond_a

    .line 575
    const/4 v4, 0x2

    const/high16 v17, 0x40000000    # 2.0f

    new-array v5, v4, [F

    .line 576
    .local v5, "pos":[F
    const/16 v18, 0x0

    new-array v14, v4, [F

    .line 578
    .local v14, "vel":[F
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    move/from16 v0, p1

    move/from16 v22, v6

    move/from16 v20, v7

    .end local v6    # "v_width":F
    .end local v7    # "v_height":F
    .local v20, "v_height":F
    .local v22, "v_width":F
    float-to-double v6, v0

    invoke-virtual {v4, v6, v7, v5, v14}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 579
    aget v4, v5, v18

    .line 580
    .local v4, "rx":F
    aget v6, v5, v16

    .line 581
    .local v6, "ry":F
    move v7, v15

    .line 582
    .local v7, "radius":F
    move/from16 v23, v21

    .line 583
    .local v23, "angle":F
    move/from16 v24, v8

    .line 584
    .local v24, "dradius":F
    move/from16 v25, v9

    .line 585
    .local v25, "dangle":F
    aget v0, v14, v18

    .line 586
    .local v0, "drx":F
    aget v2, v14, v16

    .line 589
    .local v2, "dry":F
    move/from16 v27, v8

    move/from16 v26, v9

    .end local v8    # "dv_x":F
    .end local v9    # "dv_y":F
    .local v26, "dv_y":F
    .local v27, "dv_x":F
    float-to-double v8, v4

    move/from16 v29, v4

    move-object/from16 v28, v5

    .end local v4    # "rx":F
    .end local v5    # "pos":[F
    .local v28, "pos":[F
    .local v29, "rx":F
    float-to-double v4, v7

    move-wide/from16 v30, v4

    move-wide/from16 v32, v8

    move/from16 v4, v23

    .end local v23    # "angle":F
    .local v4, "angle":F
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v30

    add-double v8, v32, v8

    div-float v5, v22, v17

    move-wide/from16 v30, v8

    float-to-double v8, v5

    sub-double v8, v30, v8

    double-to-float v5, v8

    .line 590
    .local v5, "pos_x":F
    float-to-double v8, v6

    move/from16 v30, v5

    move/from16 v23, v6

    .end local v5    # "pos_x":F
    .end local v6    # "ry":F
    .local v23, "ry":F
    .local v30, "pos_x":F
    float-to-double v5, v7

    move-wide/from16 v31, v5

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v31

    sub-double/2addr v8, v5

    div-float v5, v20, v17

    float-to-double v5, v5

    sub-double/2addr v8, v5

    double-to-float v5, v8

    .line 591
    .local v5, "pos_y":F
    float-to-double v8, v0

    move-wide/from16 v31, v8

    move/from16 v6, v24

    .end local v24    # "dradius":F
    .local v6, "dradius":F
    float-to-double v8, v6

    move-wide/from16 v33, v8

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v33

    add-double v8, v31, v8

    move-wide/from16 v31, v8

    float-to-double v8, v7

    move-wide/from16 v33, v8

    float-to-double v8, v4

    .line 592
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v33

    move/from16 v24, v0

    move-wide/from16 v33, v8

    move/from16 v0, v25

    .end local v25    # "dangle":F
    .local v0, "dangle":F
    .local v24, "drx":F
    float-to-double v8, v0

    mul-double v8, v8, v33

    add-double v8, v31, v8

    double-to-float v8, v8

    .line 593
    .local v8, "dpos_x":F
    move/from16 v25, v10

    .end local v10    # "dv_width":F
    .local v25, "dv_width":F
    float-to-double v9, v2

    move-wide/from16 v31, v9

    float-to-double v9, v6

    move/from16 v17, v5

    move/from16 v33, v6

    .end local v5    # "pos_y":F
    .end local v6    # "dradius":F
    .local v17, "pos_y":F
    .local v33, "dradius":F
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v9, v9, v5

    sub-double v9, v31, v9

    float-to-double v5, v7

    move-wide/from16 v31, v5

    float-to-double v5, v4

    .line 594
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v31

    move/from16 v31, v4

    move-wide/from16 v34, v5

    .end local v4    # "angle":F
    .local v31, "angle":F
    float-to-double v4, v0

    mul-double v5, v34, v4

    add-double/2addr v9, v5

    double-to-float v4, v9

    .line 595
    .local v4, "dpos_y":F
    move v5, v8

    .line 596
    .end local v27    # "dv_x":F
    .local v5, "dv_x":F
    move v9, v4

    .line 597
    .end local v26    # "dv_y":F
    .restart local v9    # "dv_y":F
    move/from16 v15, v30

    .line 598
    move/from16 v6, v17

    .line 599
    .end local v21    # "v_y":F
    .local v6, "v_y":F
    array-length v10, v3

    move/from16 v32, v0

    const/4 v0, 0x2

    .end local v0    # "dangle":F
    .local v32, "dangle":F
    if-lt v10, v0, :cond_8

    .line 600
    move v0, v2

    .end local v2    # "dry":F
    .local v0, "dry":F
    float-to-double v2, v8

    aput-wide v2, p5, v18

    .line 601
    float-to-double v2, v4

    aput-wide v2, p5, v16

    goto :goto_6

    .line 599
    .end local v0    # "dry":F
    .restart local v2    # "dry":F
    :cond_8
    move v0, v2

    .line 603
    .end local v2    # "dry":F
    .restart local v0    # "dry":F
    :goto_6
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_9

    .line 604
    float-to-double v2, v13

    move-wide/from16 v26, v2

    float-to-double v2, v9

    move/from16 v19, v6

    move v10, v7

    .end local v6    # "v_y":F
    .end local v7    # "radius":F
    .local v10, "radius":F
    .local v19, "v_y":F
    float-to-double v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    add-double v2, v26, v2

    double-to-float v2, v2

    .line 605
    .local v2, "rot":F
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_7

    .line 603
    .end local v2    # "rot":F
    .end local v10    # "radius":F
    .end local v19    # "v_y":F
    .restart local v6    # "v_y":F
    .restart local v7    # "radius":F
    :cond_9
    move/from16 v19, v6

    move v10, v7

    .line 608
    .end local v0    # "dry":F
    .end local v4    # "dpos_y":F
    .end local v6    # "v_y":F
    .end local v7    # "radius":F
    .end local v8    # "dpos_x":F
    .end local v14    # "vel":[F
    .end local v17    # "pos_y":F
    .end local v23    # "ry":F
    .end local v24    # "drx":F
    .end local v28    # "pos":[F
    .end local v29    # "rx":F
    .end local v30    # "pos_x":F
    .end local v31    # "angle":F
    .end local v32    # "dangle":F
    .end local v33    # "dradius":F
    .restart local v19    # "v_y":F
    :goto_7
    move v8, v5

    move/from16 v5, v19

    goto :goto_8

    .line 610
    .end local v5    # "dv_x":F
    .end local v19    # "v_y":F
    .end local v20    # "v_height":F
    .end local v22    # "v_width":F
    .end local v25    # "dv_width":F
    .local v6, "v_width":F
    .local v7, "v_height":F
    .local v8, "dv_x":F
    .local v10, "dv_width":F
    .restart local v21    # "v_y":F
    :cond_a
    move/from16 v22, v6

    move/from16 v20, v7

    move/from16 v27, v8

    move/from16 v26, v9

    move/from16 v25, v10

    const/high16 v17, 0x40000000    # 2.0f

    const/16 v18, 0x0

    .end local v6    # "v_width":F
    .end local v7    # "v_height":F
    .end local v8    # "dv_x":F
    .end local v9    # "dv_y":F
    .end local v10    # "dv_width":F
    .restart local v20    # "v_height":F
    .restart local v22    # "v_width":F
    .restart local v25    # "dv_width":F
    .restart local v26    # "dv_y":F
    .restart local v27    # "dv_x":F
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "rot":F
    div-float v10, v25, v17

    add-float v8, v27, v10

    .line 613
    .local v8, "dx":F
    div-float v2, v11, v17

    add-float v9, v26, v2

    .line 620
    .local v9, "dy":F
    float-to-double v2, v9

    float-to-double v4, v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v2, v13

    add-float/2addr v0, v2

    .line 621
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 628
    .end local v0    # "rot":F
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    :cond_b
    move/from16 v5, v21

    move/from16 v9, v26

    move/from16 v8, v27

    .end local v21    # "v_y":F
    .end local v26    # "dv_y":F
    .end local v27    # "dv_x":F
    .local v5, "v_y":F
    .local v8, "dv_x":F
    .local v9, "dv_y":F
    :goto_8
    instance-of v0, v1, Landroidx/constraintlayout/motion/widget/FloatLayout;

    if-eqz v0, :cond_c

    .line 629
    move v0, v15

    .line 630
    .local v0, "l":F
    move v2, v5

    .line 631
    .local v2, "t":F
    add-float v6, v15, v22

    .line 632
    .local v6, "r":F
    add-float v7, v5, v20

    .line 633
    .local v7, "b":F
    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/motion/widget/FloatLayout;

    invoke-interface {v3, v0, v2, v6, v7}, Landroidx/constraintlayout/motion/widget/FloatLayout;->layout(FFFF)V

    .line 634
    return-void

    .line 636
    .end local v0    # "l":F
    .end local v2    # "t":F
    .end local v6    # "r":F
    .end local v7    # "b":F
    :cond_c
    const/high16 v0, 0x3f000000    # 0.5f

    add-float v2, v15, v0

    float-to-int v2, v2

    .line 637
    .local v2, "l":I
    add-float v3, v5, v0

    float-to-int v3, v3

    .line 638
    .local v3, "t":I
    add-float v4, v15, v0

    add-float v4, v4, v22

    float-to-int v4, v4

    .line 639
    .local v4, "r":I
    add-float/2addr v0, v5

    add-float v0, v0, v20

    float-to-int v0, v0

    .line 640
    .local v0, "b":I
    sub-int v6, v4, v2

    .line 641
    .local v6, "i_width":I
    sub-int v7, v0, v3

    .line 651
    .local v7, "i_height":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-ne v6, v10, :cond_e

    .line 652
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-eq v7, v10, :cond_d

    goto :goto_9

    :cond_d
    const/16 v16, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    nop

    .line 654
    .local v16, "remeasure":Z
    :goto_a
    if-nez v16, :cond_f

    if-eqz p7, :cond_10

    .line 655
    :cond_f
    nop

    .line 656
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 657
    .local v14, "widthMeasureSpec":I
    nop

    .line 658
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 660
    .local v10, "heightMeasureSpec":I
    invoke-virtual {v1, v14, v10}, Landroid/view/View;->measure(II)V

    .line 663
    .end local v10    # "heightMeasureSpec":I
    .end local v14    # "widthMeasureSpec":I
    :cond_10
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 669
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 8
    .param p1, "mc"    # Landroidx/constraintlayout/motion/widget/MotionController;
    .param p2, "relative"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 188
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 189
    .local v0, "dx":D
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    sub-float/2addr v3, v4

    iget v4, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    float-to-double v2, v3

    .line 190
    .local v2, "dy":D
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 192
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 193
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    goto :goto_0

    .line 196
    :cond_0
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 199
    :goto_0
    return-void
.end method
