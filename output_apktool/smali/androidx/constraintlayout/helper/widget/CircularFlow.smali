.class public Landroidx/constraintlayout/helper/widget/CircularFlow;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "CircularFlow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularFlow"

.field private static sDefaultAngle:F

.field private static sDefaultRadius:I


# instance fields
.field private mAngles:[F

.field mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mCountAngle:I

.field private mCountRadius:I

.field private mRadius:[I

.field private mReferenceAngles:Ljava/lang/String;

.field private mReferenceDefaultAngle:Ljava/lang/Float;

.field private mReferenceDefaultRadius:Ljava/lang/Integer;

.field private mReferenceRadius:Ljava/lang/String;

.field mViewCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    sput v0, Landroidx/constraintlayout/helper/widget/CircularFlow;->sDefaultRadius:I

    .line 74
    const/4 v0, 0x0

    sput v0, Landroidx/constraintlayout/helper/widget/CircularFlow;->sDefaultAngle:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 121
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method private addAngle(Ljava/lang/String;)V
    .locals 3
    .param p1, "angleString"    # Ljava/lang/String;

    .line 448
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 452
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    if-nez v0, :cond_2

    .line 455
    return-void

    .line 458
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 459
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 461
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 462
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 463
    return-void

    .line 449
    :cond_4
    :goto_0
    return-void
.end method

.method private addRadius(Ljava/lang/String;)V
    .locals 4
    .param p1, "radiusString"    # Ljava/lang/String;

    .line 469
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 473
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    if-nez v0, :cond_2

    .line 476
    return-void

    .line 479
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 480
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 483
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    .line 484
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 485
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 486
    return-void

    .line 470
    :cond_4
    :goto_0
    return-void
.end method

.method private anchorReferences()V
    .locals 9

    .line 189
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCount:I

    if-ge v0, v1, :cond_7

    .line 191
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 193
    goto/16 :goto_3

    .line 195
    :cond_0
    sget v2, Landroidx/constraintlayout/helper/widget/CircularFlow;->sDefaultRadius:I

    .line 196
    .local v2, "radius":I
    sget v3, Landroidx/constraintlayout/helper/widget/CircularFlow;->sDefaultAngle:F

    .line 198
    .local v3, "angle":F
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    const-string v5, "CircularFlow"

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 199
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    aget v2, v4, v0

    goto :goto_1

    .line 200
    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_3

    .line 201
    iget v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    add-int/2addr v4, v6

    iput v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 202
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    if-nez v4, :cond_2

    .line 203
    new-array v4, v6, [I

    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 205
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 206
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    iget v7, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    sub-int/2addr v7, v6

    aput v2, v4, v7

    goto :goto_1

    .line 208
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added radius to view with id: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 212
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    aget v3, v4, v0

    goto :goto_2

    .line 213
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_6

    .line 214
    iget v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    add-int/2addr v4, v6

    iput v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 215
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    if-nez v4, :cond_5

    .line 216
    new-array v4, v6, [F

    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 218
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 219
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    iget v5, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    sub-int/2addr v5, v6

    aput v3, v4, v5

    goto :goto_2

    .line 221
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added angle to view with id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mMap:Ljava/util/HashMap;

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_2
    nop

    .line 225
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 226
    .local v4, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 227
    iget v5, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mViewCenter:I

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 228
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 229
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "radius":I
    .end local v3    # "angle":F
    .end local v4    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 231
    .end local v0    # "i":I
    :cond_7
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->applyLayoutFeatures()V

    .line 232
    return-void
.end method

.method private removeAngle([FI)[F
    .locals 1
    .param p1, "angles"    # [F
    .param p2, "index"    # I

    .line 382
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-static {p1, p2}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeElementFromArray([FI)[F

    move-result-object v0

    return-object v0

    .line 385
    :cond_1
    :goto_0
    return-object p1
.end method

.method private static removeElementFromArray([FI)[F
    .locals 5
    .param p0, "array"    # [F
    .param p1, "index"    # I

    .line 501
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    .line 503
    .local v0, "newArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 504
    if-ne v1, p1, :cond_0

    .line 505
    goto :goto_1

    .line 507
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .local v3, "k":I
    aget v4, p0, v1

    aput v4, v0, v2

    move v2, v3

    .line 503
    .end local v3    # "k":I
    .restart local v2    # "k":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    .end local v1    # "i":I
    .end local v2    # "k":I
    :cond_1
    return-object v0
.end method

.method private static removeElementFromArray([II)[I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "index"    # I

    .line 489
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    .line 491
    .local v0, "newArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 492
    if-ne v1, p1, :cond_0

    .line 493
    goto :goto_1

    .line 495
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .local v3, "k":I
    aget v4, p0, v1

    aput v4, v0, v2

    move v2, v3

    .line 491
    .end local v3    # "k":I
    .restart local v2    # "k":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v1    # "i":I
    .end local v2    # "k":I
    :cond_1
    return-object v0
.end method

.method private removeRadius([II)[I
    .locals 1
    .param p1, "radius"    # [I
    .param p2, "index"    # I

    .line 395
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {p1, p2}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeElementFromArray([II)[I

    move-result-object v0

    return-object v0

    .line 398
    :cond_1
    :goto_0
    return-object p1
.end method

.method private setAngles(Ljava/lang/String;)V
    .locals 3
    .param p1, "idList"    # Ljava/lang/String;

    .line 408
    if-nez p1, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    .line 412
    .local v0, "begin":I
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 414
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 415
    .local v1, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 416
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addAngle(Ljava/lang/String;)V

    .line 417
    nop

    .line 422
    .end local v1    # "end":I
    return-void

    .line 419
    .restart local v1    # "end":I
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addAngle(Ljava/lang/String;)V

    .line 420
    add-int/lit8 v0, v1, 0x1

    .line 421
    .end local v1    # "end":I
    goto :goto_0
.end method

.method private setRadius(Ljava/lang/String;)V
    .locals 3
    .param p1, "idList"    # Ljava/lang/String;

    .line 428
    if-nez p1, :cond_0

    .line 429
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x0

    .line 432
    .local v0, "begin":I
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 434
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 435
    .local v1, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 436
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addRadius(Ljava/lang/String;)V

    .line 437
    nop

    .line 442
    .end local v1    # "end":I
    return-void

    .line 439
    .restart local v1    # "end":I
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addRadius(Ljava/lang/String;)V

    .line 440
    add-int/lit8 v0, v1, 0x1

    .line 441
    .end local v1    # "end":I
    goto :goto_0
.end method


# virtual methods
.method public addViewToCircularFlow(Landroid/view/View;IF)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "radius"    # I
    .param p3, "angle"    # F

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->containsId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->addView(Landroid/view/View;)V

    .line 250
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 251
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 252
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    add-int/lit8 v1, v1, -0x1

    aput p3, v0, v1

    .line 253
    iget v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 254
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 255
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v2, p2

    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 257
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 258
    return-void
.end method

.method public getAngles()[F
    .locals 2

    .line 134
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getRadius()[I
    .locals 2

    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 140
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    .line 141
    if-eqz p1, :cond_6

    .line 142
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 146
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 147
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 148
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_viewCenter:I

    if-ne v3, v4, :cond_0

    .line 149
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mViewCenter:I

    goto :goto_1

    .line 150
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_angles:I

    if-ne v3, v4, :cond_1

    .line 151
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceAngles:Ljava/lang/String;

    .line 152
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceAngles:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setAngles(Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_radiusInDP:I

    if-ne v3, v4, :cond_2

    .line 154
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceRadius:Ljava/lang/String;

    .line 155
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceRadius:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setRadius(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_defaultAngle:I

    if-ne v3, v4, :cond_3

    .line 157
    sget v4, Landroidx/constraintlayout/helper/widget/CircularFlow;->sDefaultAngle:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    .line 158
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultAngle(F)V

    goto :goto_1

    .line 159
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_circularflow_defaultRadius:I

    if-ne v3, v4, :cond_4

    .line 160
    sget v4, Landroidx/constraintlayout/helper/widget/CircularFlow;->sDefaultRadius:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    .line 161
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultRadius(I)V

    .line 146
    .end local v3    # "attr":I
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "n":I
    :cond_6
    return-void
.end method

.method public isUpdatable(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->containsId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 519
    return v1

    .line 521
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->indexFromId(I)I

    move-result v0

    .line 522
    .local v0, "indexView":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 170
    invoke-super {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->onAttachedToWindow()V

    .line 171
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceAngles:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 172
    new-array v0, v1, [F

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceAngles:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setAngles(Ljava/lang/String;)V

    .line 175
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceRadius:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 176
    new-array v0, v1, [I

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 177
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceRadius:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setRadius(Ljava/lang/String;)V

    .line 179
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultAngle:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultAngle(F)V

    .line 182
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mReferenceDefaultRadius:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->setDefaultRadius(I)V

    .line 185
    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 186
    return-void
.end method

.method public removeView(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 357
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->removeView(Landroid/view/View;)I

    move-result v0

    .line 358
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 359
    return v0

    .line 361
    :cond_0
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 362
    .local v1, "c":Landroidx/constraintlayout/widget/ConstraintSet;
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 364
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 366
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 367
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    invoke-direct {p0, v2, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeAngle([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 368
    iget v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountAngle:I

    .line 370
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 371
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    invoke-direct {p0, v2, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->removeRadius([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 372
    iget v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mCountRadius:I

    .line 374
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 375
    return v0
.end method

.method public setDefaultAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .line 342
    sput p1, Landroidx/constraintlayout/helper/widget/CircularFlow;->sDefaultAngle:F

    .line 343
    return-void
.end method

.method public setDefaultRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .line 352
    sput p1, Landroidx/constraintlayout/helper/widget/CircularFlow;->sDefaultRadius:I

    .line 353
    return-void
.end method

.method public updateAngle(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "angle"    # F

    .line 292
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->isUpdatable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It was not possible to update angle to view with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v1, "CircularFlow"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 297
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->indexFromId(I)I

    move-result v0

    .line 298
    .local v0, "indexView":I
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 299
    return-void

    .line 301
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 302
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    aput p2, v1, v0

    .line 303
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 304
    return-void
.end method

.method public updateRadius(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "radius"    # I

    .line 269
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->isUpdatable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It was not possible to update radius to view with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string v1, "CircularFlow"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->indexFromId(I)I

    move-result v0

    .line 275
    .local v0, "indexView":I
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 276
    return-void

    .line 278
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 279
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    int-to-float v2, p2

    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    aput v2, v1, v0

    .line 280
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 281
    return-void
.end method

.method public updateReference(Landroid/view/View;IF)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "radius"    # I
    .param p3, "angle"    # F

    .line 316
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/CircularFlow;->isUpdatable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It was not possible to update radius and angle to view with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string v1, "CircularFlow"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->indexFromId(I)I

    move-result v0

    .line 323
    .local v0, "indexView":I
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_1

    .line 324
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getAngles()[F

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    .line 325
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mAngles:[F

    aput p3, v1, v0

    .line 327
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_2

    .line 328
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->getRadius()[I

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    .line 329
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->mRadius:[I

    int-to-float v2, p2

    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/CircularFlow;->myContext:Landroid/content/Context;

    .line 330
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    aput v2, v1, v0

    .line 332
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/CircularFlow;->anchorReferences()V

    .line 333
    return-void
.end method
