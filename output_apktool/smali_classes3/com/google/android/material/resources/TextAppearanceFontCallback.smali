.class public abstract Lcom/google/android/material/resources/TextAppearanceFontCallback;
.super Ljava/lang/Object;
.source "TextAppearanceFontCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFontRetrievalFailed(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation
.end method

.method public abstract onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeface",
            "fontResolvedSynchronously"
        }
    .end annotation
.end method
