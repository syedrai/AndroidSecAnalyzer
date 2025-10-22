.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "colorPoints"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorPoints"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 23
    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 16
    .param p1, "gradientColor"    # Lcom/airbnb/lottie/model/content/GradientColor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gradientColor",
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/airbnb/lottie/model/content/GradientColor;"
        }
    .end annotation

    .line 122
    .local p2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v2, v2, 0x4

    .line 123
    .local v2, "startIndex":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_0

    .line 124
    return-object p1

    .line 130
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v3

    .line 131
    .local v3, "colorStopPositions":[F
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v4

    .line 133
    .local v4, "colorStopColors":[I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    .line 134
    .local v5, "opacityStops":I
    new-array v6, v5, [F

    .line 135
    .local v6, "opacityStopPositions":[F
    new-array v7, v5, [F

    .line 137
    .local v7, "opacityStopOpacities":[F
    move v8, v2

    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_2

    .line 138
    rem-int/lit8 v10, v8, 0x2

    if-nez v10, :cond_1

    .line 139
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v6, v9

    goto :goto_1

    .line 141
    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v7, v9

    .line 142
    add-int/lit8 v9, v9, 0x1

    .line 137
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 148
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v8

    invoke-static {v8, v6}, Lcom/airbnb/lottie/parser/GradientColorParser;->mergeUniqueElements([F[F)[F

    move-result-object v8

    .line 149
    .local v8, "newPositions":[F
    array-length v9, v8

    .line 150
    .local v9, "newColorPoints":I
    new-array v10, v9, [I

    .line 152
    .local v10, "newColors":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v9, :cond_6

    .line 153
    aget v12, v8, v11

    .line 154
    .local v12, "position":F
    invoke-static {v3, v12}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v13

    .line 155
    .local v13, "colorStopIndex":I
    invoke-static {v6, v12}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v14

    .line 156
    .local v14, "opacityIndex":I
    if-ltz v13, :cond_4

    if-lez v14, :cond_3

    goto :goto_3

    .line 165
    :cond_3
    aget v15, v4, v13

    invoke-direct {v0, v12, v15, v6, v7}, Lcom/airbnb/lottie/parser/GradientColorParser;->getColorInBetweenOpacityStops(FI[F[F)I

    move-result v15

    aput v15, v10, v11

    goto :goto_4

    .line 158
    :cond_4
    :goto_3
    if-gez v14, :cond_5

    .line 160
    add-int/lit8 v15, v14, 0x1

    neg-int v14, v15

    .line 162
    :cond_5
    aget v15, v7, v14

    invoke-virtual {v0, v12, v15, v3, v4}, Lcom/airbnb/lottie/parser/GradientColorParser;->getColorInBetweenColorStops(FF[F[I)I

    move-result v15

    aput v15, v10, v11

    .line 152
    .end local v12    # "position":F
    .end local v13    # "colorStopIndex":I
    .end local v14    # "opacityIndex":I
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 168
    .end local v11    # "i":I
    :cond_6
    new-instance v11, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v11, v8, v10}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    return-object v11
.end method

.method private getColorInBetweenOpacityStops(FI[F[F)I
    .locals 8
    .param p1, "position"    # F
    .param p2, "color"    # I
    .param p3, "opacityStopPositions"    # [F
    .param p4, "opacityStopOpacities"    # [F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "color",
            "opacityStopPositions",
            "opacityStopOpacities"
        }
    .end annotation

    .line 196
    array-length v0, p4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    if-lt v0, v1, :cond_4

    aget v0, p3, v2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 203
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 204
    aget v1, p3, v0

    .line 205
    .local v1, "opacityStopPosition":F
    cmpg-float v2, v1, p1

    if-gez v2, :cond_1

    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 206
    nop

    .line 203
    .end local v1    # "opacityStopPosition":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .restart local v1    # "opacityStopPosition":F
    :cond_1
    cmpg-float v2, v1, p1

    if-gtz v2, :cond_2

    .line 210
    aget v2, p4, v0

    mul-float v2, v2, v3

    float-to-int v2, v2

    .local v2, "a":I
    goto :goto_1

    .line 213
    .end local v2    # "a":I
    :cond_2
    aget v2, p3, v0

    add-int/lit8 v4, v0, -0x1

    aget v4, p3, v4

    sub-float/2addr v2, v4

    .line 214
    .local v2, "distanceBetweenOpacities":F
    add-int/lit8 v4, v0, -0x1

    aget v4, p3, v4

    sub-float v4, p1, v4

    .line 215
    .local v4, "distanceToLowerOpacity":F
    div-float v5, v4, v2

    .line 216
    .local v5, "percentage":F
    add-int/lit8 v6, v0, -0x1

    aget v6, p4, v6

    aget v7, p4, v0

    invoke-static {v6, v7, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v6

    mul-float v6, v6, v3

    float-to-int v3, v6

    move v2, v3

    .line 218
    .end local v4    # "distanceToLowerOpacity":F
    .end local v5    # "percentage":F
    .local v2, "a":I
    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 219
    .local v3, "r":I
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 220
    .local v4, "g":I
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 221
    .local v5, "b":I
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6

    .line 223
    .end local v0    # "i":I
    .end local v1    # "opacityStopPosition":F
    .end local v2    # "a":I
    .end local v3    # "r":I
    .end local v4    # "g":I
    .end local v5    # "b":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unreachable code."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_4
    :goto_2
    aget v0, p4, v2

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 198
    .local v0, "a":I
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 199
    .local v1, "r":I
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 200
    .local v2, "g":I
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 201
    .local v3, "b":I
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method protected static mergeUniqueElements([F[F)[F
    .locals 8
    .param p0, "arrayA"    # [F
    .param p1, "arrayB"    # [F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayA",
            "arrayB"
        }
    .end annotation

    .line 230
    array-length v0, p0

    if-nez v0, :cond_0

    .line 231
    return-object p1

    .line 232
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 233
    return-object p0

    .line 236
    :cond_1
    const/4 v0, 0x0

    .line 237
    .local v0, "aIndex":I
    const/4 v1, 0x0

    .line 238
    .local v1, "bIndex":I
    const/4 v2, 0x0

    .line 241
    .local v2, "numDuplicates":I
    array-length v3, p0

    array-length v4, p1

    add-int/2addr v3, v4

    new-array v3, v3, [F

    .line 242
    .local v3, "mergedNotTruncated":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_8

    .line 243
    array-length v5, p0

    const/high16 v6, 0x7fc00000    # Float.NaN

    if-ge v0, v5, :cond_2

    aget v5, p0, v0

    goto :goto_1

    :cond_2
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 244
    .local v5, "a":F
    :goto_1
    array-length v7, p1

    if-ge v1, v7, :cond_3

    aget v6, p1, v1

    .line 246
    .local v6, "b":F
    :cond_3
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_7

    cmpg-float v7, v5, v6

    if-gez v7, :cond_4

    goto :goto_3

    .line 249
    :cond_4
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_6

    cmpg-float v7, v6, v5

    if-gez v7, :cond_5

    goto :goto_2

    .line 253
    :cond_5
    aput v5, v3, v4

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 255
    add-int/lit8 v1, v1, 0x1

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 250
    :cond_6
    :goto_2
    aput v6, v3, v4

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 247
    :cond_7
    :goto_3
    aput v5, v3, v4

    .line 248
    add-int/lit8 v0, v0, 0x1

    .line 242
    .end local v5    # "a":F
    .end local v6    # "b":F
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    .end local v4    # "i":I
    :cond_8
    if-nez v2, :cond_9

    .line 261
    return-object v3

    .line 265
    :cond_9
    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method getColorInBetweenColorStops(FF[F[I)I
    .locals 14
    .param p1, "position"    # F
    .param p2, "opacity"    # F
    .param p3, "colorStopPositions"    # [F
    .param p4, "colorStopColors"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "opacity",
            "colorStopPositions",
            "colorStopColors"
        }
    .end annotation

    .line 172
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v2, v3, :cond_3

    aget v2, v0, v4

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 176
    aget v3, v0, v2

    .line 177
    .local v3, "colorStopPosition":F
    cmpg-float v4, v3, p1

    if-gez v4, :cond_1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_1

    .line 178
    nop

    .line 175
    .end local v3    # "colorStopPosition":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .restart local v3    # "colorStopPosition":F
    :cond_1
    aget v4, v0, v2

    add-int/lit8 v5, v2, -0x1

    aget v5, v0, v5

    sub-float/2addr v4, v5

    .line 182
    .local v4, "distanceBetweenColors":F
    add-int/lit8 v5, v2, -0x1

    aget v5, v0, v5

    sub-float v5, p1, v5

    .line 183
    .local v5, "distanceToLowerColor":F
    div-float v6, v5, v4

    .line 184
    .local v6, "percentage":F
    aget v7, v1, v2

    .line 185
    .local v7, "upperColor":I
    add-int/lit8 v8, v2, -0x1

    aget v8, v1, v8

    .line 186
    .local v8, "lowerColor":I
    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v9, v9, p2

    float-to-int v9, v9

    .line 187
    .local v9, "a":I
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static {v6, v10, v11}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result v10

    .line 188
    .local v10, "r":I
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v6, v11, v12}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result v11

    .line 189
    .local v11, "g":I
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v6, v12, v13}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result v12

    .line 190
    .local v12, "b":I
    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    return v13

    .line 192
    .end local v2    # "i":I
    .end local v3    # "colorStopPosition":F
    .end local v4    # "distanceBetweenColors":F
    .end local v5    # "distanceToLowerColor":F
    .end local v6    # "percentage":F
    .end local v7    # "upperColor":I
    .end local v8    # "lowerColor":I
    .end local v9    # "a":I
    .end local v10    # "r":I
    .end local v11    # "g":I
    .end local v12    # "b":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unreachable code."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_3
    :goto_1
    aget v2, v1, v4

    return v2
.end method

.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 14
    .param p1, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 52
    .local v1, "isArray":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 55
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v6

    if-nez v2, :cond_3

    .line 62
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iput v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 69
    :cond_3
    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 72
    :cond_4
    iget v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v2, v5

    iput v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 76
    :cond_5
    iget v2, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v2, v2, [F

    .line 77
    .local v2, "positions":[F
    iget v3, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    new-array v3, v3, [I

    .line 79
    .local v3, "colors":[I
    const/4 v4, 0x0

    .line 80
    .local v4, "r":I
    const/4 v6, 0x0

    .line 81
    .local v6, "g":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget v8, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v8, v8, 0x4

    if-ge v7, v8, :cond_7

    .line 82
    div-int/lit8 v8, v7, 0x4

    .line 83
    .local v8, "colorIndex":I
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v9, v9

    .line 84
    .local v9, "value":D
    rem-int/lit8 v11, v7, 0x4

    const-wide v12, 0x406fe00000000000L    # 255.0

    packed-switch v11, :pswitch_data_0

    goto :goto_3

    .line 101
    :pswitch_0
    mul-double v12, v12, v9

    double-to-int v11, v12

    .line 102
    .local v11, "b":I
    const/16 v12, 0xff

    invoke-static {v12, v4, v6, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v3, v8

    goto :goto_3

    .line 98
    .end local v11    # "b":I
    :pswitch_1
    mul-double v12, v12, v9

    double-to-int v6, v12

    .line 99
    goto :goto_3

    .line 95
    :pswitch_2
    mul-double v12, v12, v9

    double-to-int v4, v12

    .line 96
    goto :goto_3

    .line 88
    :pswitch_3
    if-lez v8, :cond_6

    add-int/lit8 v11, v8, -0x1

    aget v11, v2, v11

    double-to-float v12, v9

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_6

    .line 89
    double-to-float v11, v9

    const v12, 0x3c23d70a    # 0.01f

    add-float/2addr v11, v12

    aput v11, v2, v8

    goto :goto_3

    .line 91
    :cond_6
    double-to-float v11, v9

    aput v11, v2, v8

    .line 93
    nop

    .line 81
    .end local v8    # "colorIndex":I
    .end local v9    # "value":D
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 107
    .end local v7    # "i":I
    :cond_7
    new-instance v5, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v5, v2, v3}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 108
    .local v5, "gradientColor":Lcom/airbnb/lottie/model/content/GradientColor;
    invoke-direct {p0, v5, v0}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v5

    .line 109
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "reader",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p1

    return-object p1
.end method
