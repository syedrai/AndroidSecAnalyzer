.class Landroidx/constraintlayout/core/state/Transition$OnSwipe;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnSwipe"
.end annotation


# static fields
.field public static final ANCHOR_SIDE_BOTTOM:I = 0x3

.field public static final ANCHOR_SIDE_END:I = 0x6

.field public static final ANCHOR_SIDE_LEFT:I = 0x1

.field public static final ANCHOR_SIDE_MIDDLE:I = 0x4

.field public static final ANCHOR_SIDE_RIGHT:I = 0x2

.field public static final ANCHOR_SIDE_START:I = 0x5

.field public static final ANCHOR_SIDE_TOP:I = 0x0

.field public static final BOUNDARY:[Ljava/lang/String;

.field public static final BOUNDARY_BOUNCE_BOTH:I = 0x3

.field public static final BOUNDARY_BOUNCE_END:I = 0x2

.field public static final BOUNDARY_BOUNCE_START:I = 0x1

.field public static final BOUNDARY_OVERSHOOT:I = 0x0

.field public static final DIRECTIONS:[Ljava/lang/String;

.field public static final DRAG_ANTICLOCKWISE:I = 0x7

.field public static final DRAG_CLOCKWISE:I = 0x6

.field public static final DRAG_DOWN:I = 0x1

.field public static final DRAG_END:I = 0x5

.field public static final DRAG_LEFT:I = 0x2

.field public static final DRAG_RIGHT:I = 0x3

.field public static final DRAG_START:I = 0x4

.field public static final DRAG_UP:I = 0x0

.field public static final MODE:[Ljava/lang/String;

.field public static final MODE_CONTINUOUS_VELOCITY:I = 0x0

.field public static final MODE_SPRING:I = 0x1

.field public static final ON_UP_AUTOCOMPLETE:I = 0x0

.field public static final ON_UP_AUTOCOMPLETE_TO_END:I = 0x2

.field public static final ON_UP_AUTOCOMPLETE_TO_START:I = 0x1

.field public static final ON_UP_DECELERATE:I = 0x4

.field public static final ON_UP_DECELERATE_AND_COMPLETE:I = 0x5

.field public static final ON_UP_NEVER_COMPLETE_TO_END:I = 0x7

.field public static final ON_UP_NEVER_COMPLETE_TO_START:I = 0x6

.field public static final ON_UP_STOP:I = 0x3

.field public static final SIDES:[Ljava/lang/String;

.field private static final TOUCH_DIRECTION:[[F

.field private static final TOUCH_SIDES:[[F

.field public static final TOUCH_UP:[Ljava/lang/String;


# instance fields
.field mAnchorId:Ljava/lang/String;

.field private mAnchorSide:I

.field private mAutoCompleteMode:I

.field private mDestination:F

.field private mDragDirection:I

.field private mDragScale:F

.field private mDragThreshold:F

.field private mDragVertical:Z

.field private mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

.field mLimitBoundsTo:Ljava/lang/String;

.field private mMaxAcceleration:F

.field private mMaxVelocity:F

.field private mOnTouchUp:I

.field private mRotationCenterId:Ljava/lang/String;

.field private mSpringBoundary:I

.field private mSpringDamping:F

.field private mSpringMass:F

.field private mSpringStiffness:F

.field private mSpringStopThreshold:F

.field private mStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 101
    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v2, "top"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "left"

    aput-object v4, v1, v2

    const/4 v5, 0x2

    const-string v6, "right"

    aput-object v6, v1, v5

    const-string v7, "bottom"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const-string v7, "middle"

    const/4 v9, 0x4

    aput-object v7, v1, v9

    const/4 v7, 0x5

    const-string/jumbo v10, "start"

    aput-object v10, v1, v7

    const/4 v11, 0x6

    const-string v12, "end"

    aput-object v12, v1, v11

    sput-object v1, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->SIDES:[Ljava/lang/String;

    .line 103
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    new-array v13, v5, [F

    fill-array-data v13, :array_1

    new-array v14, v5, [F

    fill-array-data v14, :array_2

    new-array v15, v5, [F

    fill-array-data v15, :array_3

    const/16 v16, 0x1

    new-array v2, v5, [F

    fill-array-data v2, :array_4

    const/16 v17, 0x0

    new-array v3, v5, [F

    fill-array-data v3, :array_5

    const/16 v18, 0x5

    new-array v7, v5, [F

    fill-array-data v7, :array_6

    const/16 v19, 0x3

    new-array v8, v0, [[F

    aput-object v1, v8, v17

    aput-object v13, v8, v16

    aput-object v14, v8, v5

    aput-object v15, v8, v19

    aput-object v2, v8, v9

    aput-object v3, v8, v18

    aput-object v7, v8, v11

    sput-object v8, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->TOUCH_SIDES:[[F

    .line 127
    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "up"

    aput-object v3, v2, v17

    const-string v3, "down"

    aput-object v3, v2, v16

    aput-object v4, v2, v5

    aput-object v6, v2, v19

    aput-object v10, v2, v9

    aput-object v12, v2, v18

    const-string v3, "clockwise"

    aput-object v3, v2, v11

    const-string v3, "anticlockwise"

    aput-object v3, v2, v0

    sput-object v2, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->DIRECTIONS:[Ljava/lang/String;

    .line 136
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "velocity"

    aput-object v3, v2, v17

    const-string/jumbo v3, "spring"

    aput-object v3, v2, v16

    sput-object v2, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->MODE:[Ljava/lang/String;

    .line 150
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "autocomplete"

    aput-object v2, v1, v17

    const-string/jumbo v2, "toStart"

    aput-object v2, v1, v16

    const-string/jumbo v2, "toEnd"

    aput-object v2, v1, v5

    const-string/jumbo v2, "stop"

    aput-object v2, v1, v19

    const-string v2, "decelerate"

    aput-object v2, v1, v9

    const-string v2, "decelerateComplete"

    aput-object v2, v1, v18

    const-string v2, "neverCompleteStart"

    aput-object v2, v1, v11

    const-string v2, "neverCompleteEnd"

    aput-object v2, v1, v0

    sput-object v1, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->TOUCH_UP:[Ljava/lang/String;

    .line 166
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "overshoot"

    aput-object v1, v0, v17

    const-string v1, "bounceStart"

    aput-object v1, v0, v16

    const-string v1, "bounceEnd"

    aput-object v1, v0, v5

    const-string v1, "bounceBoth"

    aput-object v1, v0, v19

    sput-object v0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->BOUNDARY:[Ljava/lang/String;

    .line 169
    new-array v0, v5, [F

    fill-array-data v0, :array_7

    new-array v1, v5, [F

    fill-array-data v1, :array_8

    new-array v2, v5, [F

    fill-array-data v2, :array_9

    new-array v3, v5, [F

    fill-array-data v3, :array_a

    new-array v4, v5, [F

    fill-array-data v4, :array_b

    new-array v6, v5, [F

    fill-array-data v6, :array_c

    new-array v7, v11, [[F

    aput-object v0, v7, v17

    aput-object v1, v7, v16

    aput-object v2, v7, v5

    aput-object v3, v7, v19

    aput-object v4, v7, v9

    aput-object v6, v7, v18

    sput-object v7, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->TOUCH_DIRECTION:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragVertical:Z

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragDirection:I

    .line 130
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragScale:F

    .line 131
    const/high16 v2, 0x41200000    # 10.0f

    iput v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragThreshold:F

    .line 133
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mAutoCompleteMode:I

    .line 137
    const/high16 v3, 0x40800000    # 4.0f

    iput v3, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxVelocity:F

    .line 138
    const v3, 0x3f99999a    # 1.2f

    iput v3, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxAcceleration:F

    .line 141
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mOnTouchUp:I

    .line 154
    iput v1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringMass:F

    .line 155
    const/high16 v1, 0x43c80000    # 400.0f

    iput v1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringStiffness:F

    .line 156
    iput v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringDamping:F

    .line 157
    const v1, 0x3c23d70a    # 0.01f

    iput v1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringStopThreshold:F

    .line 158
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDestination:F

    .line 161
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringBoundary:I

    return-void
.end method


# virtual methods
.method config(FFJF)V
    .locals 9
    .param p1, "position"    # F
    .param p2, "velocity"    # F
    .param p3, "start"    # J
    .param p5, "duration"    # F

    .line 320
    iput-wide p3, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mStart:J

    .line 321
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxVelocity:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 322
    iget v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxVelocity:F

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float p2, v0, v1

    move v3, p2

    goto :goto_0

    .line 321
    :cond_0
    move v3, p2

    .line 324
    .end local p2    # "velocity":F
    .local v3, "velocity":F
    :goto_0
    invoke-virtual {p0, p1, v3, p5}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->getDestinationPosition(FFF)F

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDestination:F

    .line 325
    iget p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDestination:F

    cmpl-float p2, p2, p1

    if-nez p2, :cond_1

    .line 326
    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 327
    return-void

    .line 329
    :cond_1
    iget p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mOnTouchUp:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    iget p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mAutoCompleteMode:I

    if-nez p2, :cond_3

    .line 332
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    instance-of p2, p2, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;

    if-eqz p2, :cond_2

    .line 333
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    check-cast p2, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;

    .local p2, "sld":Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;
    goto :goto_1

    .line 335
    .end local p2    # "sld":Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;
    :cond_2
    new-instance p2, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;

    invoke-direct {p2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;-><init>()V

    move-object v0, p2

    .local v0, "sld":Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;
    iput-object p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 337
    .end local v0    # "sld":Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;
    .restart local p2    # "sld":Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDestination:F

    invoke-virtual {p2, p1, v0, v3}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;->config(FFF)V

    .line 338
    return-void

    .line 342
    .end local p2    # "sld":Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$Decelerate;
    :cond_3
    iget p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mAutoCompleteMode:I

    if-nez p2, :cond_5

    .line 344
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    instance-of p2, p2, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    if-eqz p2, :cond_4

    .line 345
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    check-cast p2, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    move-object v0, p2

    .local p2, "sl":Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;
    goto :goto_2

    .line 347
    .end local p2    # "sl":Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;
    :cond_4
    new-instance p2, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    invoke-direct {p2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;-><init>()V

    move-object v0, p2

    .local v0, "sl":Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;
    iput-object p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 350
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDestination:F

    iget v5, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxAcceleration:F

    iget v6, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxVelocity:F

    move v1, p1

    move v4, p5

    .end local p1    # "position":F
    .end local p5    # "duration":F
    .local v1, "position":F
    .local v4, "duration":F
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->config(FFFFFF)V

    .line 353
    move p1, v4

    .end local v4    # "duration":F
    .local p1, "duration":F
    return-void

    .line 356
    .end local v0    # "sl":Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;
    .end local v1    # "position":F
    .local p1, "position":F
    .restart local p5    # "duration":F
    :cond_5
    move v1, p1

    move p1, p5

    .end local p5    # "duration":F
    .restart local v1    # "position":F
    .local p1, "duration":F
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    instance-of p2, p2, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    if-eqz p2, :cond_6

    .line 357
    iget-object p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    check-cast p2, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    move-object v0, p2

    .local p2, "sl":Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
    goto :goto_3

    .line 359
    .end local p2    # "sl":Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
    :cond_6
    new-instance p2, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    invoke-direct {p2}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;-><init>()V

    move-object p5, p2

    .local p5, "sl":Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
    iput-object p2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    move-object v0, p5

    .line 362
    .end local p5    # "sl":Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
    .local v0, "sl":Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;
    :goto_3
    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDestination:F

    iget v4, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringMass:F

    iget v5, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringStiffness:F

    iget v6, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringDamping:F

    iget v7, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringStopThreshold:F

    iget v8, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringBoundary:I

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->springConfig(FFFFFFFI)V

    .line 367
    return-void
.end method

.method getDestinationPosition(FFF)F
    .locals 8
    .param p1, "currentPosition"    # F
    .param p2, "velocity"    # F
    .param p3, "duration"    # F

    .line 281
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    mul-float v0, v0, p2

    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxAcceleration:F

    div-float/2addr v0, v2

    add-float/2addr v0, p1

    .line 282
    .local v0, "rest":F
    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mOnTouchUp:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    packed-switch v2, :pswitch_data_0

    .line 316
    float-to-double v1, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v7, v1, v5

    if-lez v7, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    .line 289
    :pswitch_0
    return v3

    .line 296
    :pswitch_1
    return v4

    .line 302
    :pswitch_2
    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 303
    return v0

    .line 305
    :cond_0
    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_1
    return v3

    .line 300
    :pswitch_3
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 298
    :pswitch_4
    const/high16 v1, 0x7fc00000    # Float.NaN

    return v1

    .line 291
    :pswitch_5
    cmpg-float v1, p1, v3

    if-gtz v1, :cond_2

    .line 292
    return v3

    .line 294
    :cond_2
    return v4

    .line 284
    :pswitch_6
    cmpl-float v1, p1, v4

    if-ltz v1, :cond_3

    .line 285
    return v4

    .line 287
    :cond_3
    return v3

    .line 316
    :cond_4
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getDirection()[F
    .locals 2

    .line 184
    sget-object v0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->TOUCH_DIRECTION:[[F

    iget v1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragDirection:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method getScale()F
    .locals 1

    .line 180
    iget v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragScale:F

    return v0
.end method

.method getSide()[F
    .locals 2

    .line 188
    sget-object v0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->TOUCH_SIDES:[[F

    iget v1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mAnchorSide:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTouchUpProgress(J)F
    .locals 3
    .param p1, "currentTime"    # J

    .line 374
    iget-wide v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mStart:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float v0, v0, v1

    .line 375
    .local v0, "time":F
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getInterpolation(F)F

    move-result v1

    .line 376
    .local v1, "pos":F
    iget-object v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {v2}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    iget v1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDestination:F

    .line 379
    :cond_0
    return v1
.end method

.method public isNotDone(F)Z
    .locals 3
    .param p1, "progress"    # F

    .line 397
    iget v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mOnTouchUp:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 398
    return v2

    .line 400
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {v0}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public printInfo()V
    .locals 3

    .line 383
    iget v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mAutoCompleteMode:I

    if-nez v0, :cond_0

    .line 384
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "velocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    invoke-interface {v2}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getVelocity()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxAcceleration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxAcceleration:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxVelocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxVelocity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSpringMass          = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringMass:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 389
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSpringStiffness     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringStiffness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSpringDamping       = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringDamping:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSpringStopThreshold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringStopThreshold:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSpringBoundary      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringBoundary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    :goto_0
    return-void
.end method

.method setAnchorId(Ljava/lang/String;)V
    .locals 0
    .param p1, "anchorId"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mAnchorId:Ljava/lang/String;

    .line 193
    return-void
.end method

.method setAnchorSide(I)V
    .locals 0
    .param p1, "anchorSide"    # I

    .line 196
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mAnchorSide:I

    .line 197
    return-void
.end method

.method setAutoCompleteMode(I)V
    .locals 0
    .param p1, "mAutoCompleteMode"    # I

    .line 227
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mAutoCompleteMode:I

    .line 228
    return-void
.end method

.method setDragDirection(I)V
    .locals 2
    .param p1, "dragDirection"    # I

    .line 208
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragDirection:I

    .line 209
    iget v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragDirection:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragVertical:Z

    .line 210
    return-void
.end method

.method setDragScale(F)V
    .locals 1
    .param p1, "dragScale"    # F

    .line 213
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragScale:F

    .line 217
    return-void
.end method

.method setDragThreshold(F)V
    .locals 1
    .param p1, "dragThreshold"    # F

    .line 220
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mDragThreshold:F

    .line 224
    return-void
.end method

.method setLimitBoundsTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "limitBoundsTo"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mLimitBoundsTo:Ljava/lang/String;

    .line 205
    return-void
.end method

.method setMaxAcceleration(F)V
    .locals 1
    .param p1, "maxAcceleration"    # F

    .line 238
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxAcceleration:F

    .line 242
    return-void
.end method

.method setMaxVelocity(F)V
    .locals 1
    .param p1, "maxVelocity"    # F

    .line 231
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mMaxVelocity:F

    .line 235
    return-void
.end method

.method setOnTouchUp(I)V
    .locals 0
    .param p1, "onTouchUp"    # I

    .line 245
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mOnTouchUp:I

    .line 246
    return-void
.end method

.method setRotationCenterId(Ljava/lang/String;)V
    .locals 0
    .param p1, "rotationCenterId"    # Ljava/lang/String;

    .line 200
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mRotationCenterId:Ljava/lang/String;

    .line 201
    return-void
.end method

.method setSpringBoundary(I)V
    .locals 0
    .param p1, "mSpringBoundary"    # I

    .line 277
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringBoundary:I

    .line 278
    return-void
.end method

.method setSpringDamping(F)V
    .locals 1
    .param p1, "mSpringDamping"    # F

    .line 263
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringDamping:F

    .line 267
    return-void
.end method

.method setSpringMass(F)V
    .locals 1
    .param p1, "mSpringMass"    # F

    .line 249
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringMass:F

    .line 253
    return-void
.end method

.method setSpringStiffness(F)V
    .locals 1
    .param p1, "mSpringStiffness"    # F

    .line 256
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringStiffness:F

    .line 260
    return-void
.end method

.method setSpringStopThreshold(F)V
    .locals 1
    .param p1, "mSpringStopThreshold"    # F

    .line 270
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->mSpringStopThreshold:F

    .line 274
    return-void
.end method
