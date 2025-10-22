.class Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
.super Ljava/lang/Object;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final CURVE_FIT:I = 0x4

.field private static final DRAW_PATH:I = 0x5

.field private static final FRAME_POSITION:I = 0x2

.field private static final PATH_MOTION_ARC:I = 0xa

.field private static final PERCENT_HEIGHT:I = 0xc

.field private static final PERCENT_WIDTH:I = 0xb

.field private static final PERCENT_X:I = 0x6

.field private static final PERCENT_Y:I = 0x7

.field private static final SIZE_PERCENT:I = 0x8

.field private static final TARGET_ID:I = 0x1

.field private static final TRANSITION_EASING:I = 0x3

.field private static final TYPE:I = 0x9

.field private static sAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 299
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    .line 302
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_motionTarget:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_framePosition:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 304
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_transitionEasing:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_curveFit:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_drawPath:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_keyPositionType:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_sizePercent:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentWidth:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_percentHeight:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition_pathMotionArc:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p1, "x1"    # Landroid/content/res/TypedArray;

    .line 285
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method private static read(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V
    .locals 7
    .param p0, "c"    # Landroidx/constraintlayout/motion/widget/KeyPosition;
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 317
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 318
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-string v2, "KeyPosition"

    const/4 v3, -0x1

    if-ge v1, v0, :cond_4

    .line 319
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 320
    .local v4, "attr":I
    sget-object v5, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_0

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unused attribute 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    .line 375
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 367
    :pswitch_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 368
    goto/16 :goto_1

    .line 364
    :pswitch_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 365
    goto/16 :goto_1

    .line 346
    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 347
    goto/16 :goto_1

    .line 370
    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 371
    goto/16 :goto_1

    .line 361
    :pswitch_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 362
    goto/16 :goto_1

    .line 358
    :pswitch_5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 359
    goto/16 :goto_1

    .line 355
    :pswitch_6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 356
    goto :goto_1

    .line 352
    :pswitch_7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 353
    goto :goto_1

    .line 349
    :pswitch_8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    .line 350
    goto :goto_1

    .line 339
    :pswitch_9
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v6, :cond_0

    .line 340
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    goto :goto_1

    .line 342
    :cond_0
    sget-object v2, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 344
    goto :goto_1

    .line 336
    :pswitch_a
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    .line 337
    goto :goto_1

    .line 322
    :pswitch_b
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v2, :cond_1

    .line 323
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    .line 324
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    if-ne v2, v3, :cond_3

    .line 325
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetString:Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v6, :cond_2

    .line 329
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetString:Ljava/lang/String;

    goto :goto_1

    .line 331
    :cond_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTargetId:I

    .line 334
    nop

    .line 318
    .end local v4    # "attr":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 379
    .end local v1    # "i":I
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mFramePosition:I

    if-ne v1, v3, :cond_5

    .line 380
    const-string v1, "no frame position"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
    .end packed-switch
.end method
