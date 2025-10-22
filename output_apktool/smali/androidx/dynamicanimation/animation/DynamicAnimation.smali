.class public abstract Landroidx/dynamicanimation/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field public static final ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field private static final UNSET:F = 3.4028235E38f

.field public static final X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# instance fields
.field private mAnimationHandler:Landroidx/dynamicanimation/animation/AnimationHandler;

.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field mRunning:Z

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    const-string/jumbo v1, "translationX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 77
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    const-string/jumbo v1, "translationY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 92
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$3;

    const-string/jumbo v1, "translationZ"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 107
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 122
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 137
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$6;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 152
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$7;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 167
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$8;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 182
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$9;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 197
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$10;

    const-string/jumbo v1, "y"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 212
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$11;

    const-string/jumbo v1, "z"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->Z:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 227
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$12;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 243
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$13;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 258
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$14;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    return-void
.end method

.method constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 2
    .param p1, "floatValueHolder"    # Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 345
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 301
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 305
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 314
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 317
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 318
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 347
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$15;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$15;-><init>(Landroidx/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 359
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 368
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TK;"
    .local p2, "property":Landroidx/dynamicanimation/animation/FloatPropertyCompat;, "Landroidx/dynamicanimation/animation/FloatPropertyCompat<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 301
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 305
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 314
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 317
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 318
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 369
    iput-object p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 370
    iput-object p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 371
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 374
    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne v0, v1, :cond_1

    .line 375
    const/high16 v0, 0x3b800000    # 0.00390625f

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    .line 376
    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 379
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    .line 377
    :cond_3
    :goto_0
    const v0, 0x3b03126f    # 0.002f

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    .line 373
    :cond_4
    :goto_1
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 381
    :goto_2
    return-void
.end method

.method private endAnimationInternal(Z)V
    .locals 4
    .param p1, "canceled"    # Z

    .line 709
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 710
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/AnimationHandler;->removeCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 711
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 712
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 713
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 714
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    .line 713
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 719
    return-void
.end method

.method private getPropertyValue()F
    .locals 2

    .line 747
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 577
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 578
    .local v0, "id":I
    if-ltz v0, :cond_0

    .line 579
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_0
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 566
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 567
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 568
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 566
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 571
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private startAnimationInternal()V
    .locals 3

    .line 647
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_2

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 649
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_0

    .line 650
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 653
    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 657
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler;->addAnimationFrameCallback(Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_0

    .line 654
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 1
    .param p1, "listener"    # Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ")TT;"
        }
    .end annotation

    .line 462
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_0
    return-object p0
.end method

.method public addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 2
    .param p1, "listener"    # Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    .line 491
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_0
    return-object p0

    .line 494
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 2

    .line 624
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 631
    :cond_0
    return-void

    .line 625
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled from the same thread as the animation handler"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doAnimationFrame(J)Z
    .locals 7
    .param p1, "frameTime"    # J

    .line 672
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 674
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 675
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 676
    return v4

    .line 678
    :cond_0
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    sub-long v0, p1, v0

    .line 679
    .local v0, "deltaT":J
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 680
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/AnimationHandler;->getDurationScale()F

    move-result v2

    .line 681
    .local v2, "durationScale":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    const-wide/32 v5, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-float v3, v0

    div-float/2addr v3, v2

    float-to-long v5, v3

    .line 682
    .end local v0    # "deltaT":J
    .local v5, "deltaT":J
    :goto_0
    invoke-virtual {p0, v5, v6}, Landroidx/dynamicanimation/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result v0

    .line 684
    .local v0, "finished":Z
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 685
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 687
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    .line 689
    if-eqz v0, :cond_2

    .line 690
    invoke-direct {p0, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 692
    :cond_2
    return v0
.end method

.method abstract getAcceleration(FF)F
.end method

.method public getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;
    .locals 1

    .line 757
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroidx/dynamicanimation/animation/AnimationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroidx/dynamicanimation/animation/AnimationHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/dynamicanimation/animation/AnimationHandler;->getInstance()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMinimumVisibleChange()F
    .locals 1

    .line 558
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    return v0
.end method

.method public getScheduler()Landroidx/dynamicanimation/animation/FrameCallbackScheduler;
    .locals 1

    .line 771
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroidx/dynamicanimation/animation/AnimationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler;->getScheduler()Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    move-result-object v0

    goto :goto_0

    .line 772
    :cond_0
    invoke-static {}, Landroidx/dynamicanimation/animation/AnimationHandler;->getInstance()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler;->getScheduler()Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    move-result-object v0

    .line 771
    :goto_0
    return-object v0
.end method

.method getValueThreshold()F
    .locals 2

    .line 739
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    return v0
.end method

.method abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .locals 1

    .line 639
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    return v0
.end method

.method public removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 474
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 475
    return-void
.end method

.method public removeUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 510
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 511
    return-void
.end method

.method public setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0
    .param p1, "max"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 435
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 436
    return-object p0
.end method

.method public setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0
    .param p1, "min"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 449
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 450
    return-object p0
.end method

.method public setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 2
    .param p1, "minimumVisibleChange"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 543
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 546
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 547
    const/high16 v0, 0x3f400000    # 0.75f

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setValueThreshold(F)V

    .line 548
    return-object p0

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum visible change must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPropertyValue(F)V
    .locals 4
    .param p1, "value"    # F

    .line 726
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 727
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 728
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    .line 727
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 733
    return-void
.end method

.method public setScheduler(Landroidx/dynamicanimation/animation/FrameCallbackScheduler;)V
    .locals 2
    .param p1, "scheduler"    # Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 784
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroidx/dynamicanimation/animation/AnimationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler;->getScheduler()Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 785
    return-void

    .line 787
    :cond_0
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_1

    .line 792
    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>(Landroidx/dynamicanimation/animation/FrameCallbackScheduler;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mAnimationHandler:Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 793
    return-void

    .line 788
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations are still running and the animationhandler should not be set at this timming"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 1
    .param p1, "startValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 392
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 394
    return-object p0
.end method

.method public setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0
    .param p1, "startVelocity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 417
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 418
    return-object p0
.end method

.method abstract setValueThreshold(F)V
.end method

.method public start()V
    .locals 2

    .line 602
    .local p0, "this":Landroidx/dynamicanimation/animation/DynamicAnimation;, "Landroidx/dynamicanimation/animation/DynamicAnimation<TT;>;"
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_0

    .line 607
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->startAnimationInternal()V

    .line 609
    :cond_0
    return-void

    .line 603
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract updateValueAndVelocity(J)Z
.end method
