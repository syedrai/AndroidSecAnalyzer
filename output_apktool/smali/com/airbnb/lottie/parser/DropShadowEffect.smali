.class public Lcom/airbnb/lottie/parser/DropShadowEffect;
.super Ljava/lang/Object;
.source "DropShadowEffect.java"


# instance fields
.field private final color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

.field private final direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 0
    .param p1, "color"    # Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .param p2, "opacity"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .param p3, "direction"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .param p4, "distance"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .param p5, "radius"    # Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "opacity",
            "direction",
            "distance",
            "radius"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    .line 16
    iput-object p2, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 17
    iput-object p3, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 18
    iput-object p4, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 19
    iput-object p5, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 20
    return-void
.end method


# virtual methods
.method public getColor()Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    return-object v0
.end method

.method public getDirection()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getDistance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getRadius()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method
