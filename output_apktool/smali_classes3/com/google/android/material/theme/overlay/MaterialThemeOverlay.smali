.class public Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;
.super Ljava/lang/Object;
.source "MaterialThemeOverlay.java"


# static fields
.field private static final ANDROID_THEME_OVERLAY_ATTRS:[I

.field private static final MATERIAL_THEME_OVERLAY_ATTR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const/high16 v0, 0x1010000

    sget v1, Landroid/support/v7/appcompat/R$attr;->theme:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    .line 48
    sget v0, Lcom/google/android/material/theme/overlay/R$attr;->materialThemeOverlay:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 126
    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 128
    .local v2, "androidThemeId":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 129
    .local v1, "appThemeId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    if-eqz v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    return v3
.end method

.method private static obtainMaterialOverlayIds(Landroid/content/Context;Landroid/util/AttributeSet;[III)[I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "set",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 160
    array-length v0, p2

    new-array v0, v0, [I

    .line 161
    .local v0, "overlayIds":[I
    array-length v1, p2

    if-lez v1, :cond_1

    .line 162
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 163
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 164
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v0, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-object v0
.end method

.method private static obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "set",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 144
    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialOverlayIds(Landroid/content/Context;Landroid/util/AttributeSet;[III)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "set",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II[I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Landroid/content/Context;Landroid/util/AttributeSet;II[I)Landroid/content/Context;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I
    .param p4, "optionalAttrs"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "set",
            "defStyleAttr",
            "defStyleRes",
            "optionalAttrs"
        }
    .end annotation

    .line 89
    nop

    .line 90
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v0

    .line 91
    .local v0, "materialThemeOverlayId":I
    instance-of v1, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 93
    invoke-virtual {v1}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 95
    .local v1, "contextHasOverlay":Z
    :goto_0
    if-eqz v0, :cond_5

    if-eqz v1, :cond_1

    goto :goto_2

    .line 99
    :cond_1
    new-instance v4, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v4, p0, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 101
    .local v4, "contextThemeWrapper":Landroid/content/Context;
    nop

    .line 102
    invoke-static {p0, p1, p4, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialOverlayIds(Landroid/content/Context;Landroid/util/AttributeSet;[III)[I

    move-result-object v5

    .line 103
    .local v5, "optionalOverlayIds":[I
    array-length v6, v5

    :goto_1
    if-ge v2, v6, :cond_3

    aget v7, v5, v2

    .line 104
    .local v7, "optionalOverlayId":I
    if-eqz v7, :cond_2

    .line 105
    new-instance v8, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v8, v4, v7}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v4, v8

    .line 103
    .end local v7    # "optionalOverlayId":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v2

    .line 112
    .local v2, "androidThemeOverlayId":I
    if-eqz v2, :cond_4

    .line 113
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 116
    :cond_4
    return-object v4

    .line 96
    .end local v2    # "androidThemeOverlayId":I
    .end local v4    # "contextThemeWrapper":Landroid/content/Context;
    .end local v5    # "optionalOverlayIds":[I
    :cond_5
    :goto_2
    return-object p0
.end method
