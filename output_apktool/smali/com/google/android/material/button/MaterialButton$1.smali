.class Lcom/google/android/material/button/MaterialButton$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "MaterialButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/button/MaterialButton;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1647
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/google/android/material/button/MaterialButton;)F
    .locals 1
    .param p1, "button"    # Lcom/google/android/material/button/MaterialButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 1650
    invoke-static {p1}, Lcom/google/android/material/button/MaterialButton;->-$$Nest$mgetDisplayedWidthIncrease(Lcom/google/android/material/button/MaterialButton;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "button"
        }
    .end annotation

    .line 1647
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton$1;->getValue(Lcom/google/android/material/button/MaterialButton;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/google/android/material/button/MaterialButton;F)V
    .locals 0
    .param p1, "button"    # Lcom/google/android/material/button/MaterialButton;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "button",
            "value"
        }
    .end annotation

    .line 1655
    invoke-static {p1, p2}, Lcom/google/android/material/button/MaterialButton;->-$$Nest$msetDisplayedWidthIncrease(Lcom/google/android/material/button/MaterialButton;F)V

    .line 1656
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "button",
            "value"
        }
    .end annotation

    .line 1647
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton$1;->setValue(Lcom/google/android/material/button/MaterialButton;F)V

    return-void
.end method
