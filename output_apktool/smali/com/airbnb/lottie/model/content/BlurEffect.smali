.class public Lcom/airbnb/lottie/model/content/BlurEffect;
.super Ljava/lang/Object;
.source "BlurEffect.java"


# instance fields
.field final blurriness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 0
    .param p1, "blurriness"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blurriness"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/BlurEffect;->blurriness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 11
    return-void
.end method


# virtual methods
.method public getBlurriness()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/BlurEffect;->blurriness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method
