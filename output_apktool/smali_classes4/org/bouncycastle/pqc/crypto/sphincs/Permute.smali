.class Lorg/bouncycastle/pqc/crypto/sphincs/Permute;
.super Ljava/lang/Object;
.source "Permute.java"


# static fields
.field private static final CHACHA_ROUNDS:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static permute(I[I)V
    .locals 41
    .param p0, "rounds"    # I
    .param p1, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rounds",
            "x"
        }
    .end annotation

    .line 20
    move-object/from16 v0, p1

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 24
    rem-int/lit8 v1, p0, 0x2

    if-nez v1, :cond_1

    .line 29
    const/4 v1, 0x0

    aget v3, v0, v1

    .line 30
    .local v3, "x00":I
    const/4 v4, 0x1

    aget v5, v0, v4

    .line 31
    .local v5, "x01":I
    const/4 v6, 0x2

    aget v7, v0, v6

    .line 32
    .local v7, "x02":I
    const/4 v8, 0x3

    aget v9, v0, v8

    .line 33
    .local v9, "x03":I
    const/4 v10, 0x4

    aget v11, v0, v10

    .line 34
    .local v11, "x04":I
    const/4 v12, 0x5

    aget v13, v0, v12

    .line 35
    .local v13, "x05":I
    const/4 v14, 0x6

    aget v15, v0, v14

    .line 36
    .local v15, "x06":I
    const/16 v16, 0x0

    const/4 v1, 0x7

    aget v17, v0, v1

    .line 37
    .local v17, "x07":I
    const/16 v18, 0x1

    const/16 v4, 0x8

    aget v19, v0, v4

    .line 38
    .local v19, "x08":I
    const/16 v20, 0x9

    aget v21, v0, v20

    .line 39
    .local v21, "x09":I
    const/16 v22, 0xa

    aget v23, v0, v22

    .line 40
    .local v23, "x10":I
    const/16 v24, 0xb

    aget v25, v0, v24

    .line 41
    .local v25, "x11":I
    const/16 v26, 0x2

    const/16 v6, 0xc

    aget v27, v0, v6

    .line 42
    .local v27, "x12":I
    const/16 v28, 0xd

    aget v29, v0, v28

    .line 43
    .local v29, "x13":I
    const/16 v30, 0xe

    aget v31, v0, v30

    .line 44
    .local v31, "x14":I
    const/16 v32, 0xf

    aget v33, v0, v32

    .line 46
    .local v33, "x15":I
    move/from16 v34, p0

    .local v34, "i":I
    :goto_0
    if-lez v34, :cond_0

    .line 48
    add-int/2addr v3, v11

    const/16 v35, 0x3

    xor-int v8, v27, v3

    invoke-static {v8, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v8

    .line 49
    .end local v27    # "x12":I
    .local v8, "x12":I
    add-int v19, v19, v8

    const/16 v36, 0x4

    xor-int v10, v11, v19

    invoke-static {v10, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    .line 50
    .end local v11    # "x04":I
    .local v10, "x04":I
    add-int/2addr v3, v10

    xor-int v11, v8, v3

    invoke-static {v11, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v8

    .line 51
    add-int v19, v19, v8

    xor-int v11, v10, v19

    invoke-static {v11, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    .line 52
    add-int/2addr v5, v13

    xor-int v11, v29, v5

    invoke-static {v11, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v11

    .line 53
    .end local v29    # "x13":I
    .local v11, "x13":I
    add-int v21, v21, v11

    const/16 v37, 0x5

    xor-int v12, v13, v21

    invoke-static {v12, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    .line 54
    .end local v13    # "x05":I
    .local v12, "x05":I
    add-int/2addr v5, v12

    xor-int v13, v11, v5

    invoke-static {v13, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v11

    .line 55
    add-int v21, v21, v11

    xor-int v13, v12, v21

    invoke-static {v13, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    .line 56
    add-int/2addr v7, v15

    xor-int v13, v31, v7

    invoke-static {v13, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v13

    .line 57
    .end local v31    # "x14":I
    .local v13, "x14":I
    add-int v23, v23, v13

    const/16 v38, 0x6

    xor-int v14, v15, v23

    invoke-static {v14, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v14

    .line 58
    .end local v15    # "x06":I
    .local v14, "x06":I
    add-int/2addr v7, v14

    xor-int v15, v13, v7

    invoke-static {v15, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v13

    .line 59
    add-int v23, v23, v13

    xor-int v15, v14, v23

    invoke-static {v15, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v14

    .line 60
    add-int v9, v9, v17

    xor-int v15, v33, v9

    invoke-static {v15, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    .line 61
    .end local v33    # "x15":I
    .local v15, "x15":I
    add-int v25, v25, v15

    xor-int v2, v17, v25

    invoke-static {v2, v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    .line 62
    .end local v17    # "x07":I
    .local v2, "x07":I
    add-int/2addr v9, v2

    xor-int v6, v15, v9

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v6

    .line 63
    .end local v15    # "x15":I
    .local v6, "x15":I
    add-int v25, v25, v6

    xor-int v15, v2, v25

    invoke-static {v15, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    .line 64
    add-int/2addr v3, v12

    xor-int v15, v6, v3

    const/16 v1, 0x10

    invoke-static {v15, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v6

    .line 65
    add-int v23, v23, v6

    xor-int v1, v12, v23

    const/16 v15, 0xc

    invoke-static {v1, v15}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    .line 66
    .end local v12    # "x05":I
    .local v1, "x05":I
    add-int/2addr v3, v1

    xor-int v12, v6, v3

    invoke-static {v12, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v33

    .line 67
    .end local v6    # "x15":I
    .restart local v33    # "x15":I
    add-int v23, v23, v33

    xor-int v6, v1, v23

    const/4 v12, 0x7

    invoke-static {v6, v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    .line 68
    add-int/2addr v5, v14

    xor-int v6, v8, v5

    const/16 v12, 0x10

    invoke-static {v6, v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v6

    .line 69
    .end local v8    # "x12":I
    .local v6, "x12":I
    add-int v25, v25, v6

    xor-int v8, v14, v25

    const/16 v15, 0xc

    invoke-static {v8, v15}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v8

    .line 70
    .end local v14    # "x06":I
    .local v8, "x06":I
    add-int/2addr v5, v8

    xor-int v12, v6, v5

    invoke-static {v12, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v27

    .line 71
    .end local v6    # "x12":I
    .restart local v27    # "x12":I
    add-int v25, v25, v27

    xor-int v6, v8, v25

    const/4 v12, 0x7

    invoke-static {v6, v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    .line 72
    .end local v8    # "x06":I
    .local v15, "x06":I
    add-int/2addr v7, v2

    xor-int v6, v11, v7

    const/16 v12, 0x10

    invoke-static {v6, v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v6

    .line 73
    .end local v11    # "x13":I
    .local v6, "x13":I
    add-int v19, v19, v6

    xor-int v8, v2, v19

    const/16 v11, 0xc

    invoke-static {v8, v11}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    .line 74
    add-int/2addr v7, v2

    xor-int v8, v6, v7

    invoke-static {v8, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v29

    .line 75
    .end local v6    # "x13":I
    .restart local v29    # "x13":I
    add-int v19, v19, v29

    xor-int v6, v2, v19

    const/4 v12, 0x7

    invoke-static {v6, v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v17

    .line 76
    .end local v2    # "x07":I
    .restart local v17    # "x07":I
    add-int/2addr v9, v10

    xor-int v2, v13, v9

    const/16 v12, 0x10

    invoke-static {v2, v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    .line 77
    .end local v13    # "x14":I
    .local v2, "x14":I
    add-int v21, v21, v2

    xor-int v6, v10, v21

    const/16 v11, 0xc

    invoke-static {v6, v11}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v6

    .line 78
    .end local v10    # "x04":I
    .local v6, "x04":I
    add-int/2addr v9, v6

    xor-int v8, v2, v9

    invoke-static {v8, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v31

    .line 79
    .end local v2    # "x14":I
    .restart local v31    # "x14":I
    add-int v21, v21, v31

    xor-int v2, v6, v21

    const/4 v8, 0x7

    invoke-static {v2, v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v11

    .line 46
    .end local v6    # "x04":I
    .local v11, "x04":I
    add-int/lit8 v34, v34, -0x2

    move v13, v1

    const/4 v1, 0x7

    const/16 v2, 0x10

    const/16 v6, 0xc

    const/4 v8, 0x3

    const/4 v10, 0x4

    const/4 v12, 0x5

    const/4 v14, 0x6

    goto/16 :goto_0

    .end local v1    # "x05":I
    .local v13, "x05":I
    :cond_0
    const/16 v35, 0x3

    const/16 v36, 0x4

    const/16 v37, 0x5

    const/16 v38, 0x6

    .line 82
    .end local v34    # "i":I
    aput v3, v0, v16

    .line 83
    aput v5, v0, v18

    .line 84
    aput v7, v0, v26

    .line 85
    aput v9, v0, v35

    .line 86
    aput v11, v0, v36

    .line 87
    aput v13, v0, v37

    .line 88
    aput v15, v0, v38

    .line 89
    const/16 v40, 0x7

    aput v17, v0, v40

    .line 90
    aput v19, v0, v4

    .line 91
    aput v21, v0, v20

    .line 92
    aput v23, v0, v22

    .line 93
    aput v25, v0, v24

    .line 94
    const/16 v39, 0xc

    aput v27, v0, v39

    .line 95
    aput v29, v0, v28

    .line 96
    aput v31, v0, v30

    .line 97
    aput v33, v0, v32

    .line 98
    return-void

    .line 26
    .end local v3    # "x00":I
    .end local v5    # "x01":I
    .end local v7    # "x02":I
    .end local v9    # "x03":I
    .end local v11    # "x04":I
    .end local v13    # "x05":I
    .end local v15    # "x06":I
    .end local v17    # "x07":I
    .end local v19    # "x08":I
    .end local v21    # "x09":I
    .end local v23    # "x10":I
    .end local v25    # "x11":I
    .end local v27    # "x12":I
    .end local v29    # "x13":I
    .end local v31    # "x14":I
    .end local v33    # "x15":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number of rounds must be even"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method protected static rotl(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 12
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method chacha_permute([B[B)V
    .locals 5
    .param p1, "out"    # [B
    .param p2, "in"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 104
    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 105
    .local v1, "x":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 107
    mul-int/lit8 v3, v2, 0x4

    invoke-static {p2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v1, v2

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    const/16 v3, 0xc

    invoke-static {v3, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->permute(I[I)V

    .line 113
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 115
    aget v3, v1, v2

    mul-int/lit8 v4, v2, 0x4

    invoke-static {v3, p1, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    :cond_1
    return-void
.end method
