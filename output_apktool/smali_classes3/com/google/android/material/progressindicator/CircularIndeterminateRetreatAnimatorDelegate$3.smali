.class Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$3;
.super Landroid/util/Property;
.source "CircularIndeterminateRetreatAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    .line 270
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)Ljava/lang/Float;
    .locals 1
    .param p1, "delegate"    # Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 273
    invoke-static {p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->-$$Nest$mgetAnimationFraction(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 270
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$3;->get(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;Ljava/lang/Float;)V
    .locals 1
    .param p1, "delegate"    # Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;
    .param p2, "value"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delegate",
            "value"
        }
    .end annotation

    .line 278
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;->setAnimationFraction(F)V

    .line 279
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "delegate",
            "value"
        }
    .end annotation

    .line 270
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate$3;->set(Lcom/google/android/material/progressindicator/CircularIndeterminateRetreatAnimatorDelegate;Ljava/lang/Float;)V

    return-void
.end method
