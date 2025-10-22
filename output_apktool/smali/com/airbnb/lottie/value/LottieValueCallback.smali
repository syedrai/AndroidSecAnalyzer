.class public Lcom/airbnb/lottie/value/LottieValueCallback;
.super Ljava/lang/Object;
.source "LottieValueCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private animation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "**>;"
        }
    .end annotation
.end field

.field private final frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    .local p0, "this":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-direct {v0}, Lcom/airbnb/lottie/value/LottieFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "staticValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    .local p1, "staticValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-direct {v0}, Lcom/airbnb/lottie/value/LottieFrameInfo;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    .local p1, "frameInfo":Lcom/airbnb/lottie/value/LottieFrameInfo;, "Lcom/airbnb/lottie/value/LottieFrameInfo<TT;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .param p1, "startFrame"    # F
    .param p2, "endFrame"    # F
    .param p5, "linearKeyframeProgress"    # F
    .param p6, "interpolatedKeyframeProgress"    # F
    .param p7, "overallProgress"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startFrame",
            "endFrame",
            "startValue",
            "endValue",
            "linearKeyframeProgress",
            "interpolatedKeyframeProgress",
            "overallProgress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    .local p3, "startValue":Ljava/lang/Object;, "TT;"
    .local p4, "endValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->frameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 74
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .end local p1    # "startFrame":F
    .end local p2    # "endFrame":F
    .end local p3    # "startValue":Ljava/lang/Object;, "TT;"
    .end local p4    # "endValue":Ljava/lang/Object;, "TT;"
    .end local p5    # "linearKeyframeProgress":F
    .end local p6    # "interpolatedKeyframeProgress":F
    .end local p7    # "overallProgress":F
    .local v1, "startFrame":F
    .local v2, "endFrame":F
    .local v3, "startValue":Ljava/lang/Object;, "TT;"
    .local v4, "endValue":Ljava/lang/Object;, "TT;"
    .local v5, "linearKeyframeProgress":F
    .local v6, "interpolatedKeyframeProgress":F
    .local v7, "overallProgress":F
    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/value/LottieFrameInfo;->set(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/airbnb/lottie/value/LottieFrameInfo;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<",
            "**>;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    .local p1, "animation":Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;, "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation<**>;"
    iput-object p1, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->animation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    .line 89
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/airbnb/lottie/value/LottieValueCallback;, "Lcom/airbnb/lottie/value/LottieValueCallback<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->value:Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->animation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/value/LottieValueCallback;->animation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    .line 60
    :cond_0
    return-void
.end method
