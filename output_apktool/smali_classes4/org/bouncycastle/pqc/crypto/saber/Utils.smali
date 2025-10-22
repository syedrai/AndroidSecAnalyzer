.class Lorg/bouncycastle/pqc/crypto/saber/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# instance fields
.field private final SABER_EP:I

.field private final SABER_ET:I

.field private final SABER_KEYBYTES:I

.field private final SABER_L:I

.field private final SABER_N:I

.field private final SABER_POLYBYTES:I

.field private final usingEffectiveMasking:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V
    .locals 1
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_N()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_L()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_L:I

    .line 19
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_ET()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_ET:I

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYBYTES()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_POLYBYTES:I

    .line 21
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_EP()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_EP:I

    .line 22
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_KEYBYTES()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_KEYBYTES:I

    .line 23
    iget-boolean v0, p1, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->usingEffectiveMasking:Z

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->usingEffectiveMasking:Z

    .line 24
    return-void
.end method

.method private BS2POLq([BI[S)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "byteIndex"    # I
    .param p3, "data"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "byteIndex",
            "data"
        }
    .end annotation

    .line 146
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->usingEffectiveMasking:Z

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .local v0, "j":S
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_1

    .line 150
    mul-int/lit8 v1, v0, 0xd

    int-to-short v1, v1

    .line 151
    .local v1, "offset_byte":S
    mul-int/lit8 v2, v0, 0x8

    int-to-short v2, v2

    .line 152
    .local v2, "offset_data":S
    add-int/lit8 v3, v2, 0x0

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 153
    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0x7

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0xb

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 154
    add-int/lit8 v3, v2, 0x2

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 155
    add-int/lit8 v3, v2, 0x3

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, 0x1

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x9

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 156
    add-int/lit8 v3, v2, 0x4

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x6

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 157
    add-int/lit8 v3, v2, 0x5

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x8

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x1

    and-int/lit8 v4, v4, 0x7f

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x9

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 158
    add-int/lit8 v3, v2, 0x6

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x9

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x3

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0xb

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 159
    add-int/lit8 v3, v2, 0x7

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0xb

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x1f

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x5

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 148
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto/16 :goto_0

    .line 164
    .end local v0    # "j":S
    .end local v1    # "offset_byte":S
    .end local v2    # "offset_data":S
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "j":S
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 166
    mul-int/lit8 v1, v0, 0x3

    int-to-short v1, v1

    .line 167
    .restart local v1    # "offset_byte":S
    mul-int/lit8 v2, v0, 0x2

    int-to-short v2, v2

    .line 168
    .restart local v2    # "offset_data":S
    add-int/lit8 v3, v2, 0x0

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 169
    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 164
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_1

    .line 172
    .end local v1    # "offset_byte":S
    .end local v2    # "offset_data":S
    :cond_1
    return-void
.end method

.method private POLp2BS([BI[S)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "byteIndex"    # I
    .param p3, "data"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "byteIndex",
            "data"
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    .local v0, "j":S
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    .line 179
    mul-int/lit8 v1, v0, 0x5

    int-to-short v1, v1

    .line 180
    .local v1, "offset_byte":S
    mul-int/lit8 v2, v0, 0x4

    int-to-short v2, v2

    .line 181
    .local v2, "offset_data":S
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x0

    add-int/lit8 v4, v2, 0x0

    aget-short v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 182
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, 0x0

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x8

    and-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v2, 0x1

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 183
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v2, 0x2

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 184
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v2, 0x2

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    add-int/lit8 v5, v2, 0x3

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 185
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x3

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 177
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_0

    .line 187
    .end local v1    # "offset_byte":S
    .end local v2    # "offset_data":S
    :cond_0
    return-void
.end method

.method private POLq2BS([BI[S)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "byteIndex"    # I
    .param p3, "data"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "byteIndex",
            "data"
        }
    .end annotation

    .line 109
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->usingEffectiveMasking:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .local v0, "j":S
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_1

    .line 113
    mul-int/lit8 v1, v0, 0xd

    int-to-short v1, v1

    .line 114
    .local v1, "offset_byte":S
    mul-int/lit8 v2, v0, 0x8

    int-to-short v2, v2

    .line 115
    .local v2, "offset_data":S
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x0

    add-int/lit8 v4, v2, 0x0

    aget-short v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 116
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, 0x0

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x8

    and-int/lit8 v4, v4, 0x1f

    add-int/lit8 v5, v2, 0x1

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 117
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 118
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v2, 0x1

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0xb

    and-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v2, 0x2

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 119
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x2

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x7f

    add-int/lit8 v5, v2, 0x3

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 120
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v4, v2, 0x3

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 121
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v2, 0x3

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x9

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v2, 0x4

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 122
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v4, v2, 0x4

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 123
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x4

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0xc

    and-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v2, 0x5

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 124
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v2, 0x5

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, 0x3f

    add-int/lit8 v5, v2, 0x6

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 125
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v2, 0x6

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 126
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0xb

    add-int/lit8 v4, v2, 0x6

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0xa

    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v2, 0x7

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 127
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0xc

    add-int/lit8 v4, v2, 0x7

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 111
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto/16 :goto_0

    .line 132
    .end local v0    # "j":S
    .end local v1    # "offset_byte":S
    .end local v2    # "offset_data":S
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "j":S
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 134
    mul-int/lit8 v1, v0, 0x3

    int-to-short v1, v1

    .line 135
    .restart local v1    # "offset_byte":S
    mul-int/lit8 v2, v0, 0x2

    int-to-short v2, v2

    .line 136
    .restart local v2    # "offset_data":S
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x0

    add-int/lit8 v4, v2, 0x0

    aget-short v4, p3, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 137
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, 0x0

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x8

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v2, 0x1

    aget-short v5, p3, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 138
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    aget-short v4, p3, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 132
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_1

    .line 141
    .end local v1    # "offset_byte":S
    .end local v2    # "offset_data":S
    :cond_1
    return-void
.end method


# virtual methods
.method public BS2POLT([BI[S)V
    .locals 9
    .param p1, "bytes"    # [B
    .param p2, "byteIndex"    # I
    .param p3, "data"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "byteIndex",
            "data"
        }
    .end annotation

    .line 65
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_ET:I

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 67
    const/4 v0, 0x0

    .local v0, "j":S
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v4, v4, 0x8

    if-ge v0, v4, :cond_2

    .line 69
    mul-int/lit8 v4, v0, 0x3

    int-to-short v4, v4

    .line 70
    .local v4, "offset_byte":S
    mul-int/lit8 v5, v0, 0x8

    int-to-short v5, v5

    .line 71
    .local v5, "offset_data":S
    add-int/lit8 v6, v5, 0x0

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x0

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x7

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 72
    add-int/lit8 v6, v5, 0x1

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x0

    aget-byte v7, p1, v7

    shr-int/2addr v7, v3

    and-int/lit8 v7, v7, 0x7

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 73
    add-int/lit8 v6, v5, 0x2

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x0

    aget-byte v7, p1, v7

    shr-int/2addr v7, v1

    and-int/2addr v7, v3

    add-int v8, p2, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit8 v8, v8, 0x1

    shl-int/lit8 v8, v8, 0x2

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 74
    add-int/lit8 v6, v5, 0x3

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    shr-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, 0x7

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 75
    add-int/lit8 v6, v5, 0x4

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    shr-int/2addr v7, v2

    and-int/lit8 v7, v7, 0x7

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 76
    add-int/lit8 v6, v5, 0x5

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    shr-int/lit8 v7, v7, 0x7

    and-int/lit8 v7, v7, 0x1

    add-int v8, p2, v4

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    shl-int/lit8 v8, v8, 0x1

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 77
    add-int/lit8 v6, v5, 0x6

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x7

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 78
    add-int/lit8 v6, v5, 0x7

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    shr-int/lit8 v7, v7, 0x5

    and-int/lit8 v7, v7, 0x7

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 67
    add-int/lit8 v6, v0, 0x1

    int-to-short v0, v6

    goto/16 :goto_0

    .line 81
    .end local v0    # "j":S
    .end local v4    # "offset_byte":S
    .end local v5    # "offset_data":S
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_ET:I

    if-ne v0, v2, :cond_1

    .line 83
    const/4 v0, 0x0

    .restart local v0    # "j":S
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 85
    move v1, v0

    .line 86
    .local v1, "offset_byte":S
    mul-int/lit8 v3, v0, 0x2

    int-to-short v3, v3

    .line 87
    .local v3, "offset_data":S
    add-int v4, p2, v1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0xf

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 88
    add-int/lit8 v4, v3, 0x1

    add-int v5, p2, v1

    aget-byte v5, p1, v5

    shr-int/2addr v5, v2

    and-int/lit8 v5, v5, 0xf

    int-to-short v5, v5

    aput-short v5, p3, v4

    .line 83
    add-int/lit8 v4, v0, 0x1

    int-to-short v0, v4

    goto :goto_1

    .line 91
    .end local v0    # "j":S
    .end local v1    # "offset_byte":S
    .end local v3    # "offset_data":S
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_ET:I

    if-ne v0, v1, :cond_2

    .line 93
    const/4 v0, 0x0

    .restart local v0    # "j":S
    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/2addr v4, v2

    if-ge v0, v4, :cond_2

    .line 95
    mul-int/lit8 v4, v0, 0x3

    int-to-short v4, v4

    .line 96
    .restart local v4    # "offset_byte":S
    mul-int/lit8 v5, v0, 0x4

    int-to-short v5, v5

    .line 97
    .restart local v5    # "offset_data":S
    add-int/lit8 v6, v5, 0x0

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x0

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x3f

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 98
    add-int/lit8 v6, v5, 0x1

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x0

    aget-byte v7, p1, v7

    shr-int/2addr v7, v1

    and-int/2addr v7, v3

    add-int v8, p2, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 99
    add-int/lit8 v6, v5, 0x2

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v2

    add-int v8, p2, v4

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    and-int/2addr v8, v3

    shl-int/2addr v8, v2

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 100
    add-int/lit8 v6, v5, 0x3

    add-int v7, p2, v4

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    int-to-short v7, v7

    aput-short v7, p3, v6

    .line 93
    add-int/lit8 v6, v0, 0x1

    int-to-short v0, v6

    goto :goto_2

    .line 104
    .end local v0    # "j":S
    .end local v4    # "offset_byte":S
    .end local v5    # "offset_data":S
    :cond_2
    return-void
.end method

.method public BS2POLVECp([B[[S)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "data"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "data"
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_L:I

    if-ge v0, v1, :cond_0

    .line 235
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_EP:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x8

    mul-int v1, v1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLp([BI[S)V

    .line 233
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method public BS2POLVECq([BI[[S)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "byteIndex"    # I
    .param p3, "data"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "byteIndex",
            "data"
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_L:I

    if-ge v0, v1, :cond_0

    .line 217
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_POLYBYTES:I

    mul-int v1, v1, v0

    add-int/2addr v1, p2

    aget-object v2, p3, v0

    invoke-direct {p0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLq([BI[S)V

    .line 215
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public BS2POLmsg([B[S)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "data"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "data"
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    .local v0, "j":B
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_KEYBYTES:I

    if-ge v0, v1, :cond_1

    .line 244
    const/4 v1, 0x0

    .local v1, "i":B
    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 246
    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    aget-byte v3, p1, v0

    shr-int/2addr v3, v1

    and-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    aput-short v3, p2, v2

    .line 244
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_1

    .line 242
    :cond_0
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_0

    .line 249
    .end local v1    # "i":B
    :cond_1
    return-void
.end method

.method public BS2POLp([BI[S)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "byteIndex"    # I
    .param p3, "data"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "byteIndex",
            "data"
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    .local v0, "j":S
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    .line 194
    mul-int/lit8 v1, v0, 0x5

    int-to-short v1, v1

    .line 195
    .local v1, "offset_byte":S
    mul-int/lit8 v2, v0, 0x4

    int-to-short v2, v2

    .line 196
    .local v2, "offset_data":S
    add-int/lit8 v3, v2, 0x0

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 197
    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 198
    add-int/lit8 v3, v2, 0x2

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 199
    add-int/lit8 v3, v2, 0x3

    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x3

    add-int v5, p2, v1

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p3, v3

    .line 192
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_0

    .line 201
    .end local v1    # "offset_byte":S
    .end local v2    # "offset_data":S
    :cond_0
    return-void
.end method

.method public POLT2BS([BI[S)V
    .locals 9
    .param p1, "bytes"    # [B
    .param p2, "byteIndex"    # I
    .param p3, "data"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "byteIndex",
            "data"
        }
    .end annotation

    .line 29
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_ET:I

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 31
    const/4 v0, 0x0

    .local v0, "j":S
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v4, v4, 0x8

    if-ge v0, v4, :cond_2

    .line 33
    mul-int/lit8 v4, v0, 0x3

    int-to-short v4, v4

    .line 34
    .local v4, "offset_byte":S
    mul-int/lit8 v5, v0, 0x8

    int-to-short v5, v5

    .line 35
    .local v5, "offset_data":S
    add-int v6, p2, v4

    add-int/lit8 v6, v6, 0x0

    add-int/lit8 v7, v5, 0x0

    aget-short v7, p3, v7

    and-int/lit8 v7, v7, 0x7

    add-int/lit8 v8, v5, 0x1

    aget-short v8, p3, v8

    and-int/lit8 v8, v8, 0x7

    shl-int/2addr v8, v3

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x2

    aget-short v8, p3, v8

    and-int/2addr v8, v3

    shl-int/2addr v8, v1

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 36
    add-int v6, p2, v4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v5, 0x2

    aget-short v7, p3, v7

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v5, 0x3

    aget-short v8, p3, v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x1

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x4

    aget-short v8, p3, v8

    and-int/lit8 v8, v8, 0x7

    shl-int/2addr v8, v2

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x5

    aget-short v8, p3, v8

    and-int/lit8 v8, v8, 0x1

    shl-int/lit8 v8, v8, 0x7

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 37
    add-int v6, p2, v4

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v5, 0x5

    aget-short v7, p3, v7

    shr-int/lit8 v7, v7, 0x1

    and-int/2addr v7, v3

    add-int/lit8 v8, v5, 0x6

    aget-short v8, p3, v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x2

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x7

    aget-short v8, p3, v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x5

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 31
    add-int/lit8 v6, v0, 0x1

    int-to-short v0, v6

    goto :goto_0

    .line 40
    .end local v0    # "j":S
    .end local v4    # "offset_byte":S
    .end local v5    # "offset_data":S
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_ET:I

    if-ne v0, v2, :cond_1

    .line 42
    const/4 v0, 0x0

    .restart local v0    # "j":S
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 44
    move v1, v0

    .line 45
    .local v1, "offset_byte":S
    mul-int/lit8 v3, v0, 0x2

    int-to-short v3, v3

    .line 46
    .local v3, "offset_data":S
    add-int v4, p2, v1

    aget-short v5, p3, v3

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v6, v3, 0x1

    aget-short v6, p3, v6

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v6, v2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 42
    add-int/lit8 v4, v0, 0x1

    int-to-short v0, v4

    goto :goto_1

    .line 49
    .end local v0    # "j":S
    .end local v1    # "offset_byte":S
    .end local v3    # "offset_data":S
    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_ET:I

    if-ne v0, v1, :cond_2

    .line 51
    const/4 v0, 0x0

    .restart local v0    # "j":S
    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    div-int/2addr v4, v2

    if-ge v0, v4, :cond_2

    .line 53
    mul-int/lit8 v4, v0, 0x3

    int-to-short v4, v4

    .line 54
    .restart local v4    # "offset_byte":S
    mul-int/lit8 v5, v0, 0x4

    int-to-short v5, v5

    .line 55
    .restart local v5    # "offset_data":S
    add-int v6, p2, v4

    add-int/lit8 v6, v6, 0x0

    add-int/lit8 v7, v5, 0x0

    aget-short v7, p3, v7

    and-int/lit8 v7, v7, 0x3f

    add-int/lit8 v8, v5, 0x1

    aget-short v8, p3, v8

    and-int/2addr v8, v3

    shl-int/2addr v8, v1

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 56
    add-int v6, p2, v4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v5, 0x1

    aget-short v7, p3, v7

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0xf

    add-int/lit8 v8, v5, 0x2

    aget-short v8, p3, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/2addr v8, v2

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 57
    add-int v6, p2, v4

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v5, 0x2

    aget-short v7, p3, v7

    shr-int/2addr v7, v2

    and-int/2addr v7, v3

    add-int/lit8 v8, v5, 0x3

    aget-short v8, p3, v8

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v8, v8, 0x2

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 51
    add-int/lit8 v6, v0, 0x1

    int-to-short v0, v6

    goto :goto_2

    .line 60
    .end local v0    # "j":S
    .end local v4    # "offset_byte":S
    .end local v5    # "offset_data":S
    :cond_2
    return-void
.end method

.method public POLVECp2BS([B[[S)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "data"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "data"
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_L:I

    if-ge v0, v1, :cond_0

    .line 226
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_EP:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_N:I

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x8

    mul-int v1, v1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLp2BS([BI[S)V

    .line 224
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method public POLVECq2BS([B[[S)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "data"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "data"
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_L:I

    if-ge v0, v1, :cond_0

    .line 208
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_POLYBYTES:I

    mul-int v1, v1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLq2BS([BI[S)V

    .line 206
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method public POLmsg2BS([B[S)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "data"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "data"
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    .local v0, "j":B
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Utils;->SABER_KEYBYTES:I

    if-ge v0, v1, :cond_1

    .line 256
    const/4 v1, 0x0

    .local v1, "i":B
    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 258
    aget-byte v2, p1, v0

    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, v1

    aget-short v3, p2, v3

    and-int/lit8 v3, v3, 0x1

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 256
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_1

    .line 254
    :cond_0
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_0

    .line 261
    .end local v1    # "i":B
    :cond_1
    return-void
.end method
