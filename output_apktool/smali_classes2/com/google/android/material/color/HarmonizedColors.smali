.class public Lcom/google/android/material/color/HarmonizedColors;
.super Ljava/lang/Object;
.source "HarmonizedColors.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/google/android/material/color/HarmonizedColors;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/HarmonizedColors;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addHarmonizedColorAttributesToReplacementMap(Ljava/util/Map;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;I)V
    .locals 6
    .param p1, "themeAttributesTypedArray"    # Landroid/content/res/TypedArray;
    .param p2, "themeOverlayAttributesTypedArray"    # Landroid/content/res/TypedArray;
    .param p3, "colorToHarmonizeWith"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "colorReplacementMap",
            "themeAttributesTypedArray",
            "themeOverlayAttributesTypedArray",
            "colorToHarmonizeWith"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/TypedArray;",
            "I)V"
        }
    .end annotation

    .line 178
    .local p0, "colorReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 179
    move-object v0, p2

    goto :goto_0

    .line 180
    :cond_0
    move-object v0, p1

    :goto_0
    nop

    .line 182
    .local v0, "resourceIdTypedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 183
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 184
    .local v3, "resourceId":I
    if-eqz v3, :cond_1

    .line 185
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/material/color/ResourcesLoaderUtils;->isColorResource(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 188
    .local v2, "colorToHarmonize":I
    nop

    .line 189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, p3}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 188
    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v2    # "colorToHarmonize":I
    .end local v3    # "resourceId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static applyToContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/google/android/material/color/HarmonizedColorsOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "options"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColors;->isHarmonizedColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    nop

    .line 70
    invoke-static {p0, p1}, Lcom/google/android/material/color/HarmonizedColors;->createHarmonizedColorReplacementMap(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;

    move-result-object v0

    .line 71
    .local v0, "colorReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getThemeOverlayResourceId(I)I

    move-result v1

    .line 73
    .local v1, "themeOverlay":I
    invoke-static {p0, v0}, Lcom/google/android/material/color/ResourcesLoaderUtils;->addResourcesLoaderToContext(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 75
    invoke-static {p0, v1}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    .line 77
    :cond_1
    return-void
.end method

.method private static createHarmonizedColorReplacementMap(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;
    .locals 9
    .param p0, "originalContext"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/google/android/material/color/HarmonizedColorsOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "originalContext",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/color/HarmonizedColorsOptions;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v0, "colorReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 132
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorAttributeToHarmonizeWith()I

    move-result v1

    sget-object v2, Lcom/google/android/material/color/HarmonizedColors;->TAG:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 135
    .local v1, "colorToHarmonizeWith":I
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorResourceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 136
    .local v5, "colorResourceId":I
    nop

    .line 138
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 137
    invoke-static {v6, v1}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result v6

    .line 139
    .local v6, "harmonizedColor":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v5    # "colorResourceId":I
    .end local v6    # "harmonizedColor":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorAttributes()Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v2

    .line 143
    .local v2, "colorAttributes":Lcom/google/android/material/color/HarmonizedColorAttributes;
    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v2}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getAttributes()[I

    move-result-object v3

    .line 145
    .local v3, "attributes":[I
    array-length v4, v3

    if-lez v4, :cond_2

    .line 149
    invoke-virtual {v2}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result v4

    .line 150
    .local v4, "themeOverlay":I
    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 152
    .local v5, "themeAttributesTypedArray":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_1

    .line 154
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    goto :goto_1

    .line 155
    :cond_1
    const/4 v6, 0x0

    :goto_1
    nop

    .line 156
    .local v6, "themeOverlayAttributesTypedArray":Landroid/content/res/TypedArray;
    invoke-static {v0, v5, v6, v1}, Lcom/google/android/material/color/HarmonizedColors;->addHarmonizedColorAttributesToReplacementMap(Ljava/util/Map;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;I)V

    .line 162
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    if-eqz v6, :cond_2

    .line 164
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    .end local v3    # "attributes":[I
    .end local v4    # "themeOverlay":I
    .end local v5    # "themeAttributesTypedArray":Landroid/content/res/TypedArray;
    .end local v6    # "themeOverlayAttributesTypedArray":Landroid/content/res/TypedArray;
    :cond_2
    return-object v0
.end method

.method public static isHarmonizedColorAvailable()Z
    .locals 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/google/android/material/color/HarmonizedColorsOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "options"
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColors;->isHarmonizedColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    return-object p0

    .line 98
    :cond_0
    nop

    .line 99
    invoke-static {p0, p1}, Lcom/google/android/material/color/HarmonizedColors;->createHarmonizedColorReplacementMap(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;

    move-result-object v0

    .line 102
    .local v0, "colorReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget v1, Lcom/google/android/material/color/R$style;->ThemeOverlay_Material3_HarmonizedColors_Empty:I

    .line 103
    invoke-virtual {p1, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getThemeOverlayResourceId(I)I

    move-result v1

    .line 104
    .local v1, "themeOverlay":I
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 107
    .local v2, "themeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 109
    invoke-static {v2, v0}, Lcom/google/android/material/color/ResourcesLoaderUtils;->addResourcesLoaderToContext(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    move-object v3, v2

    goto :goto_0

    .line 111
    :cond_1
    move-object v3, p0

    .line 109
    :goto_0
    return-object v3
.end method
