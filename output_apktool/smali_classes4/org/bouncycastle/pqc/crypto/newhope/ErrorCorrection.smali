.class Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static LDDecode(IIII)S
    .locals 2
    .param p0, "xi0"    # I
    .param p1, "xi1"    # I
    .param p2, "xi2"    # I
    .param p3, "xi3"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "xi0",
            "xi1",
            "xi2",
            "xi3"
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v0

    .line 97
    .local v0, "t":I
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    const v1, 0x18008

    sub-int/2addr v0, v1

    .line 103
    ushr-int/lit8 v1, v0, 0x1f

    int-to-short v1, v1

    return v1
.end method

.method static abs(I)I
    .locals 2
    .param p0, "v"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 9
    shr-int/lit8 v0, p0, 0x1f

    .line 10
    .local v0, "mask":I
    xor-int v1, p0, v0

    sub-int/2addr v1, v0

    return v1
.end method

.method static f([IIII)I
    .locals 5
    .param p0, "v"    # [I
    .param p1, "off0"    # I
    .param p2, "off1"    # I
    .param p3, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "off0",
            "off1",
            "x"
        }
    .end annotation

    .line 18
    mul-int/lit16 v0, p3, 0xaaa

    .line 19
    .local v0, "b":I
    shr-int/lit8 v1, v0, 0x19

    .line 20
    .local v1, "t":I
    mul-int/lit16 v2, v1, 0x3001

    sub-int v0, p3, v2

    .line 21
    rsub-int v0, v0, 0x3000

    .line 22
    shr-int/lit8 v0, v0, 0x1f

    .line 23
    sub-int/2addr v1, v0

    .line 25
    and-int/lit8 v2, v1, 0x1

    .line 26
    .local v2, "r":I
    shr-int/lit8 v3, v1, 0x1

    .line 27
    .local v3, "xit":I
    add-int v4, v3, v2

    aput v4, p0, p1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    and-int/lit8 v2, v1, 0x1

    .line 31
    shr-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    aput v4, p0, p2

    .line 33
    aget v4, p0, p1

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit16 v4, v4, 0x3001

    sub-int v4, p3, v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result v4

    return v4
.end method

.method static g(I)I
    .locals 4
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 41
    mul-int/lit16 v0, p0, 0xaaa

    .line 42
    .local v0, "b":I
    shr-int/lit8 v1, v0, 0x1b

    .line 43
    .local v1, "t":I
    const v2, 0xc004

    mul-int v2, v2, v1

    sub-int v0, p0, v2

    .line 44
    const v2, 0xc003

    sub-int/2addr v2, v0

    .line 45
    .end local v0    # "b":I
    .local v2, "b":I
    shr-int/lit8 v0, v2, 0x1f

    .line 46
    .end local v2    # "b":I
    .restart local v0    # "b":I
    sub-int/2addr v1, v0

    .line 48
    and-int/lit8 v2, v1, 0x1

    .line 49
    .local v2, "c":I
    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v2

    .line 51
    .end local v1    # "t":I
    .local v3, "t":I
    const v1, 0x18008

    mul-int v3, v3, v1

    .line 53
    sub-int v1, v3, p0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result v1

    return v1
.end method

.method static helpRec([S[S[BB)V
    .locals 19
    .param p0, "c"    # [S
    .param p1, "v"    # [S
    .param p2, "seed"    # [B
    .param p3, "nonce"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "v",
            "seed",
            "nonce"
        }
    .end annotation

    .line 58
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 60
    .local v1, "iv":[B
    const/4 v2, 0x0

    aput-byte p3, v1, v2

    .line 62
    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 63
    .local v3, "rand":[B
    array-length v4, v3

    move-object/from16 v5, p2

    invoke-static {v5, v1, v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/newhope/ChaCha20;->process([B[B[BII)V

    .line 66
    new-array v4, v0, [I

    .local v4, "vs":[I
    const/4 v6, 0x4

    new-array v7, v6, [I

    .line 69
    .local v7, "vTmp":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v9, 0x100

    if-ge v8, v9, :cond_0

    .line 71
    ushr-int/lit8 v9, v8, 0x3

    aget-byte v9, v3, v9

    and-int/lit8 v10, v8, 0x7

    ushr-int/2addr v9, v10

    const/4 v10, 0x1

    and-int/2addr v9, v10

    .line 73
    .local v9, "rBit":I
    add-int/lit8 v11, v8, 0x0

    aget-short v11, p1, v11

    mul-int/lit8 v11, v11, 0x8

    mul-int/lit8 v12, v9, 0x4

    add-int/2addr v11, v12

    invoke-static {v4, v2, v6, v11}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v11

    .line 74
    .local v11, "k":I
    add-int/lit16 v12, v8, 0x100

    aget-short v12, p1, v12

    mul-int/lit8 v12, v12, 0x8

    mul-int/lit8 v13, v9, 0x4

    add-int/2addr v12, v13

    const/4 v13, 0x5

    invoke-static {v4, v10, v13, v12}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v12

    add-int/2addr v11, v12

    .line 75
    add-int/lit16 v12, v8, 0x200

    aget-short v12, p1, v12

    mul-int/lit8 v12, v12, 0x8

    mul-int/lit8 v14, v9, 0x4

    add-int/2addr v12, v14

    const/4 v14, 0x2

    const/4 v15, 0x6

    invoke-static {v4, v14, v15, v12}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v12

    add-int/2addr v11, v12

    .line 76
    add-int/lit16 v12, v8, 0x300

    aget-short v12, p1, v12

    mul-int/lit8 v12, v12, 0x8

    mul-int/lit8 v16, v9, 0x4

    add-int v12, v12, v16

    const/4 v0, 0x3

    const/16 v17, 0x0

    const/4 v2, 0x7

    invoke-static {v4, v0, v2, v12}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v12

    add-int/2addr v11, v12

    .line 78
    rsub-int v12, v11, 0x6001

    shr-int/lit8 v11, v12, 0x1f

    .line 80
    not-int v12, v11

    aget v18, v4, v17

    and-int v12, v12, v18

    aget v18, v4, v6

    and-int v18, v11, v18

    xor-int v12, v12, v18

    aput v12, v7, v17

    .line 81
    not-int v12, v11

    aget v18, v4, v10

    and-int v12, v12, v18

    aget v13, v4, v13

    and-int/2addr v13, v11

    xor-int/2addr v12, v13

    aput v12, v7, v10

    .line 82
    not-int v12, v11

    aget v13, v4, v14

    and-int/2addr v12, v13

    aget v13, v4, v15

    and-int/2addr v13, v11

    xor-int/2addr v12, v13

    aput v12, v7, v14

    .line 83
    not-int v12, v11

    aget v13, v4, v0

    and-int/2addr v12, v13

    aget v2, v4, v2

    and-int/2addr v2, v11

    xor-int/2addr v2, v12

    aput v2, v7, v0

    .line 85
    add-int/lit8 v2, v8, 0x0

    aget v12, v7, v17

    aget v13, v7, v0

    sub-int/2addr v12, v13

    and-int/2addr v12, v0

    int-to-short v12, v12

    aput-short v12, p0, v2

    .line 86
    add-int/lit16 v2, v8, 0x100

    aget v10, v7, v10

    aget v12, v7, v0

    sub-int/2addr v10, v12

    and-int/2addr v10, v0

    int-to-short v10, v10

    aput-short v10, p0, v2

    .line 87
    add-int/lit16 v2, v8, 0x200

    aget v10, v7, v14

    aget v12, v7, v0

    sub-int/2addr v10, v12

    and-int/2addr v10, v0

    int-to-short v10, v10

    aput-short v10, p0, v2

    .line 88
    add-int/lit16 v2, v8, 0x300

    neg-int v10, v11

    aget v12, v7, v0

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v10, v12

    and-int/2addr v0, v10

    int-to-short v0, v0

    aput-short v0, p0, v2

    .line 69
    .end local v9    # "rBit":I
    add-int/lit8 v8, v8, 0x1

    const/16 v0, 0x8

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 90
    .end local v8    # "i":I
    .end local v11    # "k":I
    :cond_0
    return-void
.end method

.method static rec([B[S[S)V
    .locals 9
    .param p0, "key"    # [B
    .param p1, "v"    # [S
    .param p2, "c"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "v",
            "c"
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 110
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 111
    .local v1, "tmp":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    .line 113
    add-int/lit8 v3, v2, 0x0

    aget-short v3, p1, v3

    mul-int/lit8 v3, v3, 0x8

    const v4, 0x30010

    add-int/2addr v3, v4

    add-int/lit8 v5, v2, 0x0

    aget-short v5, p2, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    add-int/lit16 v7, v2, 0x300

    aget-short v7, p2, v7

    add-int/2addr v5, v7

    mul-int/lit16 v5, v5, 0x3001

    sub-int/2addr v3, v5

    aput v3, v1, v0

    .line 114
    add-int/lit16 v3, v2, 0x100

    aget-short v3, p1, v3

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    add-int/lit16 v5, v2, 0x100

    aget-short v5, p2, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit16 v7, v2, 0x300

    aget-short v7, p2, v7

    add-int/2addr v5, v7

    mul-int/lit16 v5, v5, 0x3001

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 115
    add-int/lit16 v3, v2, 0x200

    aget-short v3, p1, v3

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    add-int/lit16 v7, v2, 0x200

    aget-short v7, p2, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit16 v8, v2, 0x300

    aget-short v8, p2, v8

    add-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x3001

    sub-int/2addr v3, v7

    aput v3, v1, v6

    .line 116
    add-int/lit16 v3, v2, 0x300

    aget-short v3, p1, v3

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    add-int/lit16 v4, v2, 0x300

    aget-short v4, p2, v4

    mul-int/lit16 v4, v4, 0x3001

    sub-int/2addr v3, v4

    const/4 v4, 0x3

    aput v3, v1, v4

    .line 118
    ushr-int/lit8 v3, v2, 0x3

    aget-byte v7, p0, v3

    aget v8, v1, v0

    aget v5, v1, v5

    aget v6, v1, v6

    aget v4, v1, v4

    invoke-static {v8, v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->LDDecode(IIII)S

    move-result v4

    and-int/lit8 v5, v2, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
