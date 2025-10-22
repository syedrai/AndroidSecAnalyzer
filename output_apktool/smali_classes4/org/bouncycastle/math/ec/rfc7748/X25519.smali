.class public abstract Lorg/bouncycastle/math/ec/rfc7748/X25519;
.super Ljava/lang/Object;
.source "X25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc7748/X25519$F;,
        Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;
    }
.end annotation


# static fields
.field private static final C_A:I = 0x76d06

.field private static final C_A24:I = 0x1db42

.field public static final POINT_SIZE:I = 0x20

.field public static final SCALAR_SIZE:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateAgreement([BI[BI[BI)Z
    .locals 1
    .param p0, "k"    # [B
    .param p1, "kOff"    # I
    .param p2, "u"    # [B
    .param p3, "uOff"    # I
    .param p4, "r"    # [B
    .param p5, "rOff"    # I
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
            "k",
            "kOff",
            "u",
            "uOff",
            "r",
            "rOff"
        }
    .end annotation

    .line 29
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->scalarMult([BI[BI[BI)V

    .line 30
    const/16 v0, 0x20

    invoke-static {p4, p5, v0}, Lorg/bouncycastle/util/Arrays;->areAllZeroes([BII)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static decode32([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "off"
        }
    .end annotation

    .line 35
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 36
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 37
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 38
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 39
    return v0
.end method

.method private static decodeScalar([BI[I)V
    .locals 3
    .param p0, "k"    # [B
    .param p1, "kOff"    # I
    .param p2, "n"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "kOff",
            "n"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 46
    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p1

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->decode32([BI)I

    move-result v1

    aput v1, p2, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    aget v1, p2, v0

    and-int/lit8 v1, v1, -0x8

    aput v1, p2, v0

    .line 50
    const/4 v0, 0x7

    aget v1, p2, v0

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    aput v1, p2, v0

    .line 51
    aget v1, p2, v0

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    aput v1, p2, v0

    .line 52
    return-void
.end method

.method public static generatePrivateKey(Ljava/security/SecureRandom;[B)V
    .locals 2
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "k"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "k"
        }
    .end annotation

    .line 56
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 63
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xf8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 64
    const/16 v0, 0x1f

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 65
    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 66
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePublicKey([BI[BI)V
    .locals 0
    .param p0, "k"    # [B
    .param p1, "kOff"    # I
    .param p2, "r"    # [B
    .param p3, "rOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "kOff",
            "r",
            "rOff"
        }
    .end annotation

    .line 70
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->scalarMultBase([BI[BI)V

    .line 71
    return-void
.end method

.method private static pointDouble([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 75
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v0

    .line 76
    .local v0, "a":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v1

    .line 78
    .local v1, "b":[I
    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->apm([I[I[I[I)V

    .line 79
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    .line 80
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    .line 81
    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    .line 82
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sub([I[I[I)V

    .line 83
    const v2, 0x1db42

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([II[I)V

    .line 84
    invoke-static {p1, v1, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->add([I[I[I)V

    .line 85
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    .line 86
    return-void
.end method

.method public static precompute()V
    .locals 0

    .line 90
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompute()V

    .line 91
    return-void
.end method

.method public static scalarMult([BI[BI[BI)V
    .locals 18
    .param p0, "k"    # [B
    .param p1, "kOff"    # I
    .param p2, "u"    # [B
    .param p3, "uOff"    # I
    .param p4, "r"    # [B
    .param p5, "rOff"    # I
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
            "k",
            "kOff",
            "u",
            "uOff",
            "r",
            "rOff"
        }
    .end annotation

    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .local v0, "n":[I
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->decodeScalar([BI[I)V

    .line 97
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    .local v3, "x1":[I
    invoke-static {v4, v5, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->decode([BI[I)V

    .line 98
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v6

    .local v6, "x2":[I
    const/4 v7, 0x0

    invoke-static {v3, v7, v6, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->copy([II[II)V

    .line 99
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v8

    .local v8, "z2":[I
    const/4 v9, 0x1

    aput v9, v8, v7

    .line 100
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v10

    .local v10, "x3":[I
    aput v9, v10, v7

    .line 101
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v7

    .line 103
    .local v7, "z3":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v11

    .line 104
    .local v11, "t1":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v12

    .line 108
    .local v12, "t2":[I
    const/16 v13, 0xfe

    .local v13, "bit":I
    const/4 v14, 0x1

    .line 111
    .local v14, "swap":I
    :goto_0
    invoke-static {v10, v7, v11, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->apm([I[I[I[I)V

    .line 112
    invoke-static {v6, v8, v7, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->apm([I[I[I[I)V

    .line 113
    invoke-static {v11, v6, v11}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    .line 114
    invoke-static {v10, v7, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    .line 115
    invoke-static {v7, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    .line 116
    invoke-static {v6, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    .line 118
    invoke-static {v7, v6, v12}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sub([I[I[I)V

    .line 119
    const v15, 0x1db42

    invoke-static {v12, v15, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([II[I)V

    .line 120
    invoke-static {v8, v6, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->add([I[I[I)V

    .line 121
    invoke-static {v8, v12, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    .line 122
    invoke-static {v6, v7, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    .line 124
    invoke-static {v11, v10, v10, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->apm([I[I[I[I)V

    .line 125
    invoke-static {v10, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    .line 126
    invoke-static {v7, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->sqr([I[I)V

    .line 127
    invoke-static {v7, v3, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    .line 129
    add-int/lit8 v13, v13, -0x1

    .line 131
    ushr-int/lit8 v15, v13, 0x5

    .local v15, "word":I
    and-int/lit8 v16, v13, 0x1f

    .line 132
    .local v16, "shift":I
    aget v17, v0, v15

    ushr-int v17, v17, v16

    and-int/lit8 v17, v17, 0x1

    .line 133
    .local v17, "kt":I
    xor-int v14, v14, v17

    .line 134
    invoke-static {v14, v6, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->cswap(I[I[I)V

    .line 135
    invoke-static {v14, v8, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->cswap(I[I[I)V

    .line 136
    move/from16 v14, v17

    .line 138
    .end local v15    # "word":I
    .end local v16    # "shift":I
    .end local v17    # "kt":I
    const/4 v15, 0x3

    if-ge v13, v15, :cond_1

    .line 142
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v15, :cond_0

    .line 144
    invoke-static {v6, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->pointDouble([I[I)V

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 147
    .end local v9    # "i":I
    :cond_0
    invoke-static {v8, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->inv([I[I)V

    .line 148
    invoke-static {v6, v8, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    .line 150
    invoke-static {v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->normalize([I)V

    .line 151
    move-object/from16 v15, p4

    move/from16 v9, p5

    invoke-static {v6, v15, v9}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->encode([I[BI)V

    .line 152
    return-void

    .line 138
    :cond_1
    move-object/from16 v15, p4

    goto :goto_0
.end method

.method public static scalarMultBase([BI[BI)V
    .locals 3
    .param p0, "k"    # [B
    .param p1, "kOff"    # I
    .param p2, "r"    # [B
    .param p3, "rOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "kOff",
            "r",
            "rOff"
        }
    .end annotation

    .line 162
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v0

    .line 163
    .local v0, "y":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->create()[I

    move-result-object v1

    .line 165
    .local v1, "z":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;->-$$Nest$sfgetINSTANCE()Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;

    move-result-object v2

    invoke-static {v2, p0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseYZ(Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;[BI[I[I)V

    .line 167
    invoke-static {v1, v0, v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->apm([I[I[I[I)V

    .line 169
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->inv([I[I)V

    .line 170
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->mul([I[I[I)V

    .line 172
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->normalize([I)V

    .line 173
    invoke-static {v0, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519$F;->encode([I[BI)V

    .line 174
    return-void
.end method
