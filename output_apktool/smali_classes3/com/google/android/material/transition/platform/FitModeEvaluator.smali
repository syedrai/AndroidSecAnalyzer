.class interface abstract Lcom/google/android/material/transition/platform/FitModeEvaluator;
.super Ljava/lang/Object;
.source "FitModeEvaluator.java"


# virtual methods
.method public abstract applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/platform/FitModeResult;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "maskBounds",
            "maskMultiplier",
            "fitModeResult"
        }
    .end annotation
.end method

.method public abstract evaluate(FFFFFFF)Lcom/google/android/material/transition/platform/FitModeResult;
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
            "progress",
            "scaleStartFraction",
            "scaleEndFraction",
            "startWidth",
            "startHeight",
            "endWidth",
            "endHeight"
        }
    .end annotation
.end method

.method public abstract shouldMaskStartBounds(Lcom/google/android/material/transition/platform/FitModeResult;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fitModeResult"
        }
    .end annotation
.end method
