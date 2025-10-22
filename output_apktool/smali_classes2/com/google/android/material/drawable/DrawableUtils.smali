.class public final Lcom/google/android/material/drawable/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/drawable/DrawableUtils$OutlineCompatR;,
        Lcom/google/android/material/drawable/DrawableUtils$OutlineCompatL;
    }
.end annotation


# static fields
.field public static final INTRINSIC_SIZE:I = -0x1

.field private static final UNSPECIFIED_HEIGHT:I = -0x1

.field private static final UNSPECIFIED_WIDTH:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bottomLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "topLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bottomLayerDrawable",
            "topLayerDrawable"
        }
    .end annotation

    .line 225
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, v0}, Lcom/google/android/material/drawable/DrawableUtils;->compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p0, "bottomLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "topLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "topLayerDesiredWidth"    # I
    .param p3, "topLayerDesiredHeight"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bottomLayerDrawable",
            "topLayerDrawable",
            "topLayerDesiredWidth",
            "topLayerDesiredHeight"
        }
    .end annotation

    .line 250
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-nez p0, :cond_0

    .line 251
    return-object v0

    .line 253
    :cond_0
    if-nez v0, :cond_1

    .line 254
    return-object p0

    .line 257
    :cond_1
    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_2

    if-eq v2, v3, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 259
    .local v6, "shouldScaleTopLayer":Z
    :goto_0
    if-ne v1, v3, :cond_3

    .line 260
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/drawable/DrawableUtils;->getTopLayerIntrinsicWidth(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 262
    .end local p2    # "topLayerDesiredWidth":I
    .local v1, "topLayerDesiredWidth":I
    :cond_3
    if-ne v2, v3, :cond_4

    .line 263
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/drawable/DrawableUtils;->getTopLayerIntrinsicHeight(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 268
    .end local p3    # "topLayerDesiredHeight":I
    .local v2, "topLayerDesiredHeight":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-gt v1, v3, :cond_5

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gt v2, v3, :cond_5

    .line 272
    move v3, v1

    .line 273
    .local v3, "topLayerNewWidth":I
    move v7, v2

    .local v7, "topLayerNewHeight":I
    goto :goto_1

    .line 275
    .end local v3    # "topLayerNewWidth":I
    .end local v7    # "topLayerNewHeight":I
    :cond_5
    int-to-float v3, v1

    int-to-float v7, v2

    div-float/2addr v3, v7

    .line 276
    .local v3, "topLayerRatio":F
    nop

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 279
    .local v7, "bottomLayerRatio":F
    cmpl-float v8, v3, v7

    if-ltz v8, :cond_6

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 283
    .local v8, "topLayerNewWidth":I
    int-to-float v9, v8

    div-float/2addr v9, v3

    float-to-int v9, v9

    move v3, v8

    move v7, v9

    .local v9, "topLayerNewHeight":I
    goto :goto_1

    .line 287
    .end local v8    # "topLayerNewWidth":I
    .end local v9    # "topLayerNewHeight":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 288
    .local v8, "topLayerNewHeight":I
    int-to-float v9, v8

    mul-float v9, v9, v3

    float-to-int v9, v9

    move v7, v8

    move v3, v9

    .line 293
    .end local v8    # "topLayerNewHeight":I
    .local v3, "topLayerNewWidth":I
    .local v7, "topLayerNewHeight":I
    :goto_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    const/4 v10, 0x2

    if-lt v8, v9, :cond_7

    .line 294
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    new-array v9, v10, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v9, v5

    aput-object v0, v9, v4

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 296
    .local v8, "drawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v8, v4, v3, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    .line 297
    const/16 v5, 0x11

    invoke-virtual {v8, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    goto :goto_2

    .line 299
    .end local v8    # "drawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_7
    if-eqz v6, :cond_8

    .line 300
    new-instance v8, Lcom/google/android/material/drawable/ScaledDrawableWrapper;

    invoke-direct {v8, v0, v3, v7}, Lcom/google/android/material/drawable/ScaledDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v0, v8

    .line 303
    .end local p1    # "topLayerDrawable":Landroid/graphics/drawable/Drawable;
    .local v0, "topLayerDrawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    new-array v9, v10, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v9, v5

    aput-object v0, v9, v4

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v11, v8

    .line 305
    .local v11, "drawable":Landroid/graphics/drawable/LayerDrawable;
    nop

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 307
    .local v13, "horizontalInset":I
    nop

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v4, v7

    div-int/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 309
    .local v14, "verticalInset":I
    const/4 v12, 0x1

    move v15, v13

    move/from16 v16, v14

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 312
    .end local v11    # "drawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v13    # "horizontalInset":I
    .end local v14    # "verticalInset":I
    .restart local v8    # "drawable":Landroid/graphics/drawable/LayerDrawable;
    :goto_2
    return-object v8
.end method

.method public static createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawable",
            "tintList",
            "tintMode"
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawable",
            "tintList",
            "tintMode"
        }
    .end annotation

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "forceMutate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawable",
            "tintList",
            "tintMode",
            "forceMutate"
        }
    .end annotation

    .line 198
    if-nez p0, :cond_0

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    if-eqz p1, :cond_1

    .line 202
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 203
    if-eqz p2, :cond_2

    .line 204
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 206
    :cond_1
    if-eqz p3, :cond_2

    .line 207
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 209
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static getCheckedState([I)[I
    .locals 3
    .param p0, "state"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    const v2, 0x10100a0

    if-ge v0, v1, :cond_2

    .line 333
    aget v1, p0, v0

    if-ne v1, v2, :cond_0

    .line 334
    return-object p0

    .line 335
    :cond_0
    aget v1, p0, v0

    if-nez v1, :cond_1

    .line 336
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 337
    .local v1, "newState":[I
    aput v2, v1, v0

    .line 338
    return-object v1

    .line 332
    .end local v1    # "newState":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 342
    .local v0, "newState":[I
    array-length v1, p0

    aput v2, v0, v1

    .line 343
    return-object v0
.end method

.method public static getColorStateListOrNull(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 392
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 393
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 397
    instance-of v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;

    if-eqz v0, :cond_1

    .line 398
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ColorStateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorStateListDrawable;->getColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 402
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTopLayerIntrinsicHeight(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "bottomLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "topLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bottomLayerDrawable",
            "topLayerDrawable"
        }
    .end annotation

    .line 324
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 325
    .local v0, "topLayerIntrinsicHeight":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 326
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 325
    :goto_0
    return v1
.end method

.method private static getTopLayerIntrinsicWidth(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p0, "bottomLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "topLayerDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bottomLayerDrawable",
            "topLayerDrawable"
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 318
    .local v0, "topLayerIntrinsicWidth":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 319
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 318
    :goto_0
    return v1
.end method

.method public static getUncheckedState([I)[I
    .locals 6
    .param p0, "state"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 349
    array-length v0, p0

    new-array v0, v0, [I

    .line 350
    .local v0, "newState":[I
    const/4 v1, 0x0

    .line 351
    .local v1, "i":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    .line 352
    .local v4, "subState":I
    const v5, 0x10100a0

    if-eq v4, v5, :cond_0

    .line 353
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput v4, v0, v1

    move v1, v5

    .line 351
    .end local v4    # "subState":I
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 356
    :cond_1
    return-object v0
.end method

.method public static parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "startTag"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "startTag"
        }
    .end annotation

    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 129
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 130
    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 131
    :cond_1
    if-ne v1, v2, :cond_3

    .line 135
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 141
    .local v2, "attrs":Landroid/util/AttributeSet;
    return-object v2

    .line 136
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Must have a <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> start tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    .end local p2    # "startTag":Ljava/lang/CharSequence;
    throw v2

    .line 132
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    .restart local p2    # "startTag":Ljava/lang/CharSequence;
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "id":I
    .end local p2    # "startTag":Ljava/lang/CharSequence;
    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "type":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "id":I
    .restart local p2    # "startTag":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load badge resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 146
    throw v1
.end method

.method public static setOutlineToPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    .locals 2
    .param p0, "outline"    # Landroid/graphics/Outline;
    .param p1, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "outline",
            "path"
        }
    .end annotation

    .line 361
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 362
    invoke-static {p0, p1}, Lcom/google/android/material/drawable/DrawableUtils$OutlineCompatR;->setPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    goto :goto_1

    .line 363
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 367
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/material/drawable/DrawableUtils$OutlineCompatL;->setConvexPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    goto :goto_1

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    invoke-static {p0, p1}, Lcom/google/android/material/drawable/DrawableUtils$OutlineCompatL;->setConvexPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 375
    :cond_2
    :goto_1
    return-void
.end method

.method public static setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/RippleDrawable;
    .param p1, "radius"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "radius"
        }
    .end annotation

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    goto :goto_0

    .line 156
    :cond_0
    :try_start_0
    const-class v0, Landroid/graphics/drawable/RippleDrawable;

    const-string v1, "setMaxRadius"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 157
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 158
    .local v0, "setMaxRadiusMethod":Ljava/lang/reflect/Method;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    nop

    .line 163
    .end local v0    # "setMaxRadiusMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t set RippleDrawable radius"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "color"
        }
    .end annotation

    .line 89
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, "hasTint":Z
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 93
    if-eqz v0, :cond_1

    .line 94
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 99
    :cond_2
    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 105
    :goto_1
    return-void
.end method

.method public static updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawable",
            "tint",
            "tintMode"
        }
    .end annotation

    .line 113
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 118
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    .line 114
    .end local v0    # "color":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
