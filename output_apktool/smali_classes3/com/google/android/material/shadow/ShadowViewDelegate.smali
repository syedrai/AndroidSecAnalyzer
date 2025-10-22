.class public interface abstract Lcom/google/android/material/shadow/ShadowViewDelegate;
.super Ljava/lang/Object;
.source "ShadowViewDelegate.java"


# virtual methods
.method public abstract getRadius()F
.end method

.method public abstract isCompatPaddingEnabled()Z
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation
.end method

.method public abstract setShadowPadding(IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation
.end method
