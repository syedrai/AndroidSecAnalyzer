.class public abstract Lorg/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source "WNafUtil.java"


# static fields
.field private static final DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final EMPTY_BYTES:[B

.field private static final EMPTY_INTS:[I

.field private static final EMPTY_POINTS:[Lorg/bouncycastle/math/ec/ECPoint;

.field private static final MAX_WIDTH:I = 0x10

.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_wnaf"


# direct methods
.method static bridge synthetic -$$Nest$sfgetEMPTY_POINTS()[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smresizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/WNafUtil;->resizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    .line 12
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    .line 13
    new-array v1, v0, [I

    sput-object v1, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    .line 14
    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lorg/bouncycastle/math/ec/ECPoint;

    return-void

    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureBasepoint(Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 6
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 19
    .local v0, "c":Lorg/bouncycastle/math/ec/ECCurve;
    if-nez v0, :cond_0

    .line 21
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    .line 25
    .local v1, "n":Ljava/math/BigInteger;
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 26
    .local v2, "bits":I
    :goto_0
    invoke-static {v2}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 28
    .local v3, "confWidth":I
    new-instance v4, Lorg/bouncycastle/math/ec/WNafUtil$1;

    invoke-direct {v4, v3}, Lorg/bouncycastle/math/ec/WNafUtil$1;-><init>(I)V

    const-string v5, "bc_wnaf"

    invoke-virtual {v0, p0, v5, v4}, Lorg/bouncycastle/math/ec/ECCurve;->precompute(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    .line 56
    return-void
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .locals 12
    .param p0, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5

    .line 64
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object v0

    .line 69
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 71
    .local v1, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 72
    .local v2, "bits":I
    shr-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    .line 74
    .local v3, "naf":[I
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 76
    .local v4, "diff":Ljava/math/BigInteger;
    add-int/lit8 v5, v2, -0x1

    .local v5, "highBit":I
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v7, 0x0

    .line 77
    .local v7, "zeroes":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_3

    .line 79
    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 81
    add-int/lit8 v7, v7, 0x1

    .line 82
    goto :goto_2

    .line 85
    :cond_1
    invoke-virtual {p0, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, -0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    .line 86
    .local v9, "digit":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "length":I
    .local v10, "length":I
    shl-int/lit8 v11, v9, 0x10

    or-int/2addr v11, v7

    aput v11, v3, v6

    .line 87
    const/4 v6, 0x1

    .line 88
    .end local v7    # "zeroes":I
    .local v6, "zeroes":I
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    move v6, v10

    .line 77
    .end local v9    # "digit":I
    .end local v10    # "length":I
    .local v6, "length":I
    .restart local v7    # "zeroes":I
    :goto_2
    add-int/2addr v8, v0

    goto :goto_0

    .line 91
    .end local v8    # "i":I
    :cond_3
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "length":I
    .local v0, "length":I
    const/high16 v8, 0x10000

    or-int/2addr v8, v7

    aput v8, v3, v6

    .line 93
    array-length v6, v3

    if-le v6, v0, :cond_4

    .line 95
    invoke-static {v3, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v3

    .line 98
    :cond_4
    return-object v3

    .line 62
    .end local v0    # "length":I
    .end local v1    # "_3k":Ljava/math/BigInteger;
    .end local v2    # "bits":I
    .end local v3    # "naf":[I
    .end local v4    # "diff":Ljava/math/BigInteger;
    .end local v5    # "highBit":I
    .end local v7    # "zeroes":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .locals 12
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "k"
        }
    .end annotation

    .line 103
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 105
    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    if-lt p0, v0, :cond_a

    const/16 v0, 0x10

    if-gt p0, v0, :cond_a

    .line 112
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v0, v1, 0x10

    if-nez v0, :cond_9

    .line 116
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object v0

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/2addr v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 124
    .local v0, "wnaf":[I
    shl-int v2, v1, p0

    .line 125
    .local v2, "pow2":I
    add-int/lit8 v3, v2, -0x1

    .line 126
    .local v3, "mask":I
    ushr-int/lit8 v4, v2, 0x1

    .line 128
    .local v4, "sign":I
    const/4 v5, 0x0

    .line 129
    .local v5, "carry":Z
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v7, 0x0

    .line 131
    .local v7, "pos":I
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v7, v8, :cond_7

    .line 133
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-ne v8, v5, :cond_2

    .line 135
    add-int/lit8 v7, v7, 0x1

    .line 136
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    and-int/2addr v8, v3

    .line 142
    .local v8, "digit":I
    if-eqz v5, :cond_3

    .line 144
    add-int/lit8 v8, v8, 0x1

    .line 147
    :cond_3
    and-int v9, v8, v4

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    move v5, v9

    .line 148
    if-eqz v5, :cond_5

    .line 150
    sub-int/2addr v8, v2

    .line 153
    :cond_5
    if-lez v6, :cond_6

    add-int/lit8 v9, v7, -0x1

    goto :goto_2

    :cond_6
    move v9, v7

    .line 154
    .local v9, "zeroes":I
    :goto_2
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "length":I
    .local v10, "length":I
    shl-int/lit8 v11, v8, 0x10

    or-int/2addr v11, v9

    aput v11, v0, v6

    .line 155
    move v7, p0

    .line 156
    .end local v8    # "digit":I
    .end local v9    # "zeroes":I
    move v6, v10

    goto :goto_0

    .line 159
    .end local v10    # "length":I
    .restart local v6    # "length":I
    :cond_7
    array-length v1, v0

    if-le v1, v6, :cond_8

    .line 161
    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v0

    .line 164
    :cond_8
    return-object v0

    .line 114
    .end local v0    # "wnaf":[I
    .end local v2    # "pow2":I
    .end local v3    # "mask":I
    .end local v4    # "sign":I
    .end local v5    # "carry":Z
    .end local v6    # "length":I
    .end local v7    # "pos":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 15
    .param p0, "g"    # Ljava/math/BigInteger;
    .param p1, "h"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "g",
            "h"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 170
    .local v0, "digits":I
    new-array v1, v0, [B

    .line 172
    .local v1, "jsf":[B
    move-object v2, p0

    .local v2, "k0":Ljava/math/BigInteger;
    move-object/from16 v3, p1

    .line 173
    .local v3, "k1":Ljava/math/BigInteger;
    const/4 v4, 0x0

    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "d0":I
    const/4 v6, 0x0

    .line 175
    .local v6, "d1":I
    const/4 v7, 0x0

    .line 176
    .local v7, "offset":I
    :goto_0
    or-int v8, v5, v6

    if-nez v8, :cond_2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v8, v7, :cond_2

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-le v8, v7, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    array-length v8, v1

    if-le v8, v4, :cond_1

    .line 222
    invoke-static {v1, v4}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v1

    .line 225
    :cond_1
    return-object v1

    .line 178
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    ushr-int/2addr v8, v7

    add-int/2addr v8, v5

    and-int/lit8 v8, v8, 0x7

    .local v8, "n0":I
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    ushr-int/2addr v9, v7

    add-int/2addr v9, v6

    and-int/lit8 v9, v9, 0x7

    .line 180
    .local v9, "n1":I
    and-int/lit8 v10, v8, 0x1

    .line 181
    .local v10, "u0":I
    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eqz v10, :cond_3

    .line 183
    and-int/lit8 v13, v8, 0x2

    sub-int/2addr v10, v13

    .line 184
    add-int v13, v8, v10

    if-ne v13, v11, :cond_3

    and-int/lit8 v13, v9, 0x3

    if-ne v13, v12, :cond_3

    .line 186
    neg-int v10, v10

    .line 190
    :cond_3
    and-int/lit8 v13, v9, 0x1

    .line 191
    .local v13, "u1":I
    if-eqz v13, :cond_4

    .line 193
    and-int/lit8 v14, v9, 0x2

    sub-int/2addr v13, v14

    .line 194
    add-int v14, v9, v13

    if-ne v14, v11, :cond_4

    and-int/lit8 v11, v8, 0x3

    if-ne v11, v12, :cond_4

    .line 196
    neg-int v13, v13

    .line 200
    :cond_4
    shl-int/lit8 v11, v5, 0x1

    add-int/lit8 v12, v10, 0x1

    if-ne v11, v12, :cond_5

    .line 202
    xor-int/lit8 v5, v5, 0x1

    .line 204
    :cond_5
    shl-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v13, 0x1

    if-ne v11, v12, :cond_6

    .line 206
    xor-int/lit8 v6, v6, 0x1

    .line 209
    :cond_6
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0x1e

    if-ne v7, v11, :cond_7

    .line 211
    const/4 v7, 0x0

    .line 212
    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 213
    invoke-virtual {v3, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 216
    :cond_7
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "j":I
    .local v11, "j":I
    shl-int/lit8 v12, v10, 0x4

    and-int/lit8 v14, v13, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v4

    .line 217
    .end local v8    # "n0":I
    .end local v9    # "n1":I
    .end local v10    # "u0":I
    .end local v13    # "u1":I
    move v4, v11

    goto :goto_0
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object v0

    .line 235
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 237
    .local v1, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v2, v0

    .line 238
    .local v2, "digits":I
    new-array v3, v2, [B

    .line 240
    .local v3, "naf":[B
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 242
    .local v4, "diff":Ljava/math/BigInteger;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 244
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, -0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :goto_1
    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 247
    add-int/lit8 v5, v5, 0x1

    .line 242
    :cond_2
    add-int/2addr v5, v0

    goto :goto_0

    .line 251
    .end local v5    # "i":I
    :cond_3
    add-int/lit8 v5, v2, -0x1

    aput-byte v0, v3, v5

    .line 253
    return-object v3
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .locals 11
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "k"
        }
    .end annotation

    .line 270
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 272
    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    if-lt p0, v0, :cond_9

    const/16 v0, 0x8

    if-gt p0, v0, :cond_9

    .line 279
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1

    .line 281
    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object v0

    .line 284
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 287
    .local v0, "wnaf":[B
    shl-int v2, v1, p0

    .line 288
    .local v2, "pow2":I
    add-int/lit8 v3, v2, -0x1

    .line 289
    .local v3, "mask":I
    ushr-int/lit8 v4, v2, 0x1

    .line 291
    .local v4, "sign":I
    const/4 v5, 0x0

    .line 292
    .local v5, "carry":Z
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v7, 0x0

    .line 294
    .local v7, "pos":I
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v7, v8, :cond_7

    .line 296
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-ne v8, v5, :cond_2

    .line 298
    add-int/lit8 v7, v7, 0x1

    .line 299
    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    and-int/2addr v8, v3

    .line 305
    .local v8, "digit":I
    if-eqz v5, :cond_3

    .line 307
    add-int/lit8 v8, v8, 0x1

    .line 310
    :cond_3
    and-int v9, v8, v4

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    move v5, v9

    .line 311
    if-eqz v5, :cond_5

    .line 313
    sub-int/2addr v8, v2

    .line 316
    :cond_5
    if-lez v6, :cond_6

    add-int/lit8 v9, v7, -0x1

    goto :goto_2

    :cond_6
    move v9, v7

    :goto_2
    add-int/2addr v6, v9

    .line 317
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "length":I
    .local v9, "length":I
    int-to-byte v10, v8

    aput-byte v10, v0, v6

    .line 318
    move v7, p0

    .line 319
    .end local v8    # "digit":I
    move v6, v9

    goto :goto_0

    .line 322
    .end local v9    # "length":I
    .restart local v6    # "length":I
    :cond_7
    array-length v1, v0

    if-le v1, v6, :cond_8

    .line 324
    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    .line 327
    :cond_8
    return-object v0

    .line 277
    .end local v0    # "wnaf":[B
    .end local v2    # "pow2":I
    .end local v3    # "mask":I
    .end local v4    # "sign":I
    .end local v5    # "carry":Z
    .end local v6    # "length":I
    .end local v7    # "pos":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 8]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNafWeight(Ljava/math/BigInteger;)I
    .locals 3
    .param p0, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 338
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 340
    .local v1, "diff":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitCount()I

    move-result v2

    return v2
.end method

.method public static getWNafPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 2
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getWNafPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 1
    .param p0, "preCompInfo"    # Lorg/bouncycastle/math/ec/PreCompInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preCompInfo"
        }
    .end annotation

    .line 350
    instance-of v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getWindowSize(I)I
    .locals 2
    .param p0, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bits"
        }
    .end annotation

    .line 361
    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(II)I
    .locals 1
    .param p0, "bits"    # I
    .param p1, "maxWidth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bits",
            "maxWidth"
        }
    .end annotation

    .line 373
    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[I)I
    .locals 1
    .param p0, "bits"    # I
    .param p1, "windowSizeCutoffs"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bits",
            "windowSizeCutoffs"
        }
    .end annotation

    .line 385
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[II)I
    .locals 3
    .param p0, "bits"    # I
    .param p1, "windowSizeCutoffs"    # [I
    .param p2, "maxWidth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bits",
            "windowSizeCutoffs",
            "maxWidth"
        }
    .end annotation

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "w":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 401
    aget v1, p1, v0

    if-ge p0, v1, :cond_0

    .line 403
    goto :goto_1

    .line 399
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    :goto_1
    add-int/lit8 v1, v0, 0x2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 3
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "minWidth"    # I
    .param p2, "includeNegated"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "p",
            "minWidth",
            "includeNegated"
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 414
    .local v0, "c":Lorg/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lorg/bouncycastle/math/ec/WNafUtil$2;

    invoke-direct {v1, p1, p2, p0, v0}, Lorg/bouncycastle/math/ec/WNafUtil$2;-><init>(IZLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECCurve;)V

    const-string v2, "bc_wnaf"

    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/math/ec/ECCurve;->precompute(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    return-object v1
.end method

.method public static precomputeWithPointMap(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;Lorg/bouncycastle/math/ec/WNafPreCompInfo;Z)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 3
    .param p0, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "pointMap"    # Lorg/bouncycastle/math/ec/ECPointMap;
    .param p2, "fromWNaf"    # Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .param p3, "includeNegated"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "p",
            "pointMap",
            "fromWNaf",
            "includeNegated"
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 594
    .local v0, "c":Lorg/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lorg/bouncycastle/math/ec/WNafUtil$3;

    invoke-direct {v1, p2, p3, p1}, Lorg/bouncycastle/math/ec/WNafUtil$3;-><init>(Lorg/bouncycastle/math/ec/WNafPreCompInfo;ZLorg/bouncycastle/math/ec/ECPointMap;)V

    const-string v2, "bc_wnaf"

    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/math/ec/ECCurve;->precompute(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    return-object v1
.end method

.method private static resizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "a"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "length"
        }
    .end annotation

    .line 677
    new-array v0, p1, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 678
    .local v0, "result":[Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    return-object v0
.end method

.method private static trim([BI)[B
    .locals 3
    .param p0, "a"    # [B
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "length"
        }
    .end annotation

    .line 663
    new-array v0, p1, [B

    .line 664
    .local v0, "result":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    return-object v0
.end method

.method private static trim([II)[I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "length"
        }
    .end annotation

    .line 670
    new-array v0, p1, [I

    .line 671
    .local v0, "result":[I
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    return-object v0
.end method
