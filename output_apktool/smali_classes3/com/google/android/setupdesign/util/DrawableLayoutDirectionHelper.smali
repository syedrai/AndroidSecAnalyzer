.class public Lcom/google/android/setupdesign/util/DrawableLayoutDirectionHelper;
.super Ljava/lang/Object;
.source "DrawableLayoutDirectionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIII)Landroid/graphics/drawable/InsetDrawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "layoutDirection"    # I
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
            "drawable",
            "insetStart",
            "insetTop",
            "insetEnd",
            "insetBottom",
            "layoutDirection"
        }
    .end annotation

    .line 77
    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "insetStart":I
    .end local p2    # "insetTop":I
    .end local p3    # "insetEnd":I
    .end local p4    # "insetBottom":I
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "insetStart":I
    .local v3, "insetTop":I
    .local v4, "insetEnd":I
    .local v5, "insetBottom":I
    invoke-static/range {v1 .. v6}, Lcom/google/android/setupdesign/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/content/Context;)Landroid/graphics/drawable/InsetDrawable;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "context"    # Landroid/content/Context;
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
            "drawable",
            "insetStart",
            "insetTop",
            "insetEnd",
            "insetBottom",
            "context"
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "isRtl":Z
    nop

    .line 57
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 58
    .local v1, "layoutDirection":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v8, v2

    .line 60
    .end local v0    # "isRtl":Z
    .end local v1    # "layoutDirection":I
    .local v8, "isRtl":Z
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "insetStart":I
    .end local p2    # "insetTop":I
    .end local p3    # "insetEnd":I
    .end local p4    # "insetBottom":I
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    .local v4, "insetStart":I
    .local v5, "insetTop":I
    .local v6, "insetEnd":I
    .local v7, "insetBottom":I
    invoke-static/range {v3 .. v8}, Lcom/google/android/setupdesign/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "view"    # Landroid/view/View;
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
            "drawable",
            "insetStart",
            "insetTop",
            "insetEnd",
            "insetBottom",
            "view"
        }
    .end annotation

    .line 36
    nop

    .line 38
    invoke-virtual {p5}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    .line 39
    .local v7, "isRtl":Z
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "insetStart":I
    .end local p2    # "insetTop":I
    .end local p3    # "insetEnd":I
    .end local p4    # "insetBottom":I
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    .local v3, "insetStart":I
    .local v4, "insetTop":I
    .local v5, "insetEnd":I
    .local v6, "insetBottom":I
    invoke-static/range {v2 .. v7}, Lcom/google/android/setupdesign/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "isRtl"    # Z
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
            "drawable",
            "insetStart",
            "insetTop",
            "insetEnd",
            "insetBottom",
            "isRtl"
        }
    .end annotation

    .line 93
    if-eqz p5, :cond_0

    .line 94
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v1, p0

    move v4, p1

    move v3, p2

    move v2, p3

    move v5, p4

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "insetStart":I
    .end local p2    # "insetTop":I
    .end local p3    # "insetEnd":I
    .end local p4    # "insetBottom":I
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "insetEnd":I
    .local v3, "insetTop":I
    .local v4, "insetStart":I
    .local v5, "insetBottom":I
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move v7, v4

    move v4, v3

    move v3, v7

    .local v3, "insetStart":I
    .local v4, "insetTop":I
    return-object v0

    .line 96
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "insetEnd":I
    .end local v3    # "insetStart":I
    .end local v4    # "insetTop":I
    .end local v5    # "insetBottom":I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "insetStart":I
    .restart local p2    # "insetTop":I
    .restart local p3    # "insetEnd":I
    .restart local p4    # "insetBottom":I
    :cond_0
    move-object v1, p0

    move v3, p1

    move v4, p2

    move v2, p3

    move v5, p4

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "insetStart":I
    .end local p2    # "insetTop":I
    .end local p3    # "insetEnd":I
    .end local p4    # "insetBottom":I
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "insetEnd":I
    .restart local v3    # "insetStart":I
    .restart local v4    # "insetTop":I
    .restart local v5    # "insetBottom":I
    move v6, v5

    move v5, v2

    move-object v2, v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    .local v5, "insetEnd":I
    .local v6, "insetBottom":I
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object p0, v1

    move-object v1, v2

    move v2, v5

    move v5, v6

    .end local v6    # "insetBottom":I
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "insetEnd":I
    .local v5, "insetBottom":I
    return-object p0
.end method
