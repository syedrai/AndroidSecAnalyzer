.class Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecelerateInterpolator"
.end annotation


# instance fields
.field mCurrentP:F

.field mInitialV:F

.field mMaxA:F

.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2114
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    .line 2115
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    .line 2116
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    return-void
.end method


# virtual methods
.method public config(FFF)V
    .locals 0
    .param p1, "velocity"    # F
    .param p2, "position"    # F
    .param p3, "maxAcceleration"    # F

    .line 2120
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    .line 2121
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    .line 2122
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    .line 2123
    return-void
.end method

.method public getInterpolation(F)F
    .locals 4
    .param p1, "time"    # F

    .line 2127
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2128
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    div-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 2129
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    div-float p1, v0, v1

    .line 2131
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    mul-float v3, v3, p1

    sub-float/2addr v1, v3

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 2132
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    mul-float v0, v0, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 2133
    .local v0, "pos":F
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    add-float/2addr v1, v0

    return v1

    .line 2136
    .end local v0    # "pos":F
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    neg-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    div-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    .line 2137
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    neg-float v0, v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    div-float p1, v0, v1

    .line 2139
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 2140
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    mul-float v0, v0, p1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 2141
    .restart local v0    # "pos":F
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    add-float/2addr v1, v0

    return v1
.end method

.method public getVelocity()F
    .locals 1

    .line 2147
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    return v0
.end method
