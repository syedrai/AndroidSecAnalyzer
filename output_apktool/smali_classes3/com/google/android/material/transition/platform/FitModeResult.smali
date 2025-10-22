.class Lcom/google/android/material/transition/platform/FitModeResult;
.super Ljava/lang/Object;
.source "FitModeResult.java"


# instance fields
.field final currentEndHeight:F

.field final currentEndWidth:F

.field final currentStartHeight:F

.field final currentStartWidth:F

.field final endScale:F

.field final startScale:F


# direct methods
.method constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "currentStartWidth"    # F
    .param p4, "currentStartHeight"    # F
    .param p5, "currentEndWidth"    # F
    .param p6, "currentEndHeight"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startScale",
            "endScale",
            "currentStartWidth",
            "currentStartHeight",
            "currentEndWidth",
            "currentEndHeight"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/android/material/transition/platform/FitModeResult;->startScale:F

    .line 35
    iput p2, p0, Lcom/google/android/material/transition/platform/FitModeResult;->endScale:F

    .line 36
    iput p3, p0, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartWidth:F

    .line 37
    iput p4, p0, Lcom/google/android/material/transition/platform/FitModeResult;->currentStartHeight:F

    .line 38
    iput p5, p0, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndWidth:F

    .line 39
    iput p6, p0, Lcom/google/android/material/transition/platform/FitModeResult;->currentEndHeight:F

    .line 40
    return-void
.end method
