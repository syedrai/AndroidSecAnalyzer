.class public Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;
.super Ljava/lang/Object;
.source "SPHINCS256Signer.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private final hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

.field private keyData:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V
    .locals 2
    .param p1, "nDigest"    # Lorg/bouncycastle/crypto/Digest;
    .param p2, "twoNDigest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nDigest",
            "twoNDigest"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 40
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    .line 46
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "2n-digest needs to produce 64 bytes of output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n-digest needs to produce 32 bytes of output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static compute_authpath_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V
    .locals 21
    .param p0, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "root"    # [B
    .param p2, "authpath"    # [B
    .param p3, "authOff"    # I
    .param p4, "a"    # Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .param p5, "sk"    # [B
    .param p6, "masks"    # [B
    .param p7, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hs",
            "root",
            "authpath",
            "authOff",
            "a",
            "sk",
            "masks",
            "height"
        }
    .end annotation

    .line 135
    move-object/from16 v0, p4

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 137
    .local v1, "ta":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    const/16 v2, 0x800

    new-array v4, v2, [B

    .line 138
    .local v4, "tree":[B
    const/16 v2, 0x400

    new-array v9, v2, [B

    .line 139
    .local v9, "seed":[B
    const v2, 0x10c00

    new-array v6, v2, [B

    .line 142
    .local v6, "pk":[B
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_0
    iget-wide v7, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v13, 0x1

    const-wide/16 v15, 0x20

    cmp-long v5, v7, v15

    if-gez v5, :cond_0

    .line 144
    iget-wide v7, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v7, v7, v15

    long-to-int v5, v7

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    invoke-static {v7, v9, v5, v8, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 142
    iget-wide v10, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long/2addr v10, v13

    iput-wide v10, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_0

    .line 147
    :cond_0
    move-object/from16 v7, p0

    move-object/from16 v8, p5

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    .line 149
    .local v5, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    iput-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_1
    iget-wide v10, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v17, 0x43

    cmp-long v12, v10, v15

    if-gez v12, :cond_1

    .line 151
    iget-wide v10, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v10, v10, v17

    mul-long v10, v10, v15

    long-to-int v11, v10

    move-wide/from16 v19, v13

    iget-wide v13, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v13, v13, v15

    long-to-int v10, v13

    const/4 v12, 0x0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    move v8, v11

    move-object/from16 v11, p6

    .end local v6    # "pk":[B
    .local v7, "pk":[B
    invoke-virtual/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 149
    move-object v11, v5

    move-object v6, v7

    move-object v10, v9

    .end local v5    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .end local v7    # "pk":[B
    .end local v9    # "seed":[B
    .restart local v6    # "pk":[B
    .local v10, "seed":[B
    .local v11, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    iget-wide v7, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v7, v7, v19

    iput-wide v7, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    move-wide/from16 v13, v19

    goto :goto_1

    .line 154
    .end local v10    # "seed":[B
    .end local v11    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .restart local v5    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .restart local v9    # "seed":[B
    :cond_1
    move-object v11, v5

    move-object v10, v9

    move-wide/from16 v19, v13

    .end local v5    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .end local v9    # "seed":[B
    .restart local v10    # "seed":[B
    .restart local v11    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    iput-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_2
    iget-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    cmp-long v5, v2, v15

    if-gez v5, :cond_2

    .line 156
    iget-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v2, v2, v15

    const-wide/16 v7, 0x400

    add-long/2addr v2, v7

    long-to-int v5, v2

    iget-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    mul-long v2, v2, v17

    mul-long v2, v2, v15

    long-to-int v7, v2

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 154
    move-object v2, v6

    .end local v6    # "pk":[B
    .local v2, "pk":[B
    iget-wide v5, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v5, v5, v19

    iput-wide v5, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move-object v6, v2

    goto :goto_2

    .line 160
    .end local v2    # "pk":[B
    .restart local v6    # "pk":[B
    :cond_2
    move-object v2, v6

    .end local v6    # "pk":[B
    .restart local v2    # "pk":[B
    const/4 v3, 0x0

    .line 163
    .local v3, "level":I
    const/16 v5, 0x20

    move v12, v3

    move v13, v5

    .end local v3    # "level":I
    .local v12, "level":I
    .local v13, "i":I
    :goto_3
    const/16 v14, 0x20

    if-lez v13, :cond_4

    .line 165
    const/4 v3, 0x0

    move v15, v3

    .local v15, "j":I
    :goto_4
    if-ge v15, v13, :cond_3

    .line 167
    ushr-int/lit8 v3, v13, 0x1

    mul-int/lit8 v3, v3, 0x20

    ushr-int/lit8 v5, v15, 0x1

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v3

    mul-int/lit8 v3, v13, 0x20

    mul-int/lit8 v6, v15, 0x20

    add-int v7, v3, v6

    add-int/lit8 v3, v12, 0x7

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v9, v3, 0x20

    move-object v6, v4

    move-object/from16 v3, p0

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 165
    add-int/lit8 v15, v15, 0x2

    goto :goto_4

    .line 172
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 163
    ushr-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 176
    .end local v15    # "j":I
    :cond_4
    iget-wide v5, v0, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    long-to-int v3, v5

    .line 179
    .local v3, "idx":I
    const/4 v5, 0x0

    .end local v13    # "i":I
    .local v5, "i":I
    :goto_5
    move/from16 v6, p7

    if-ge v5, v6, :cond_5

    .line 181
    ushr-int v7, v14, v5

    mul-int/lit8 v7, v7, 0x20

    ushr-int v8, v3, v5

    xor-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0x20

    add-int/2addr v7, v8

    mul-int/lit8 v8, v5, 0x20

    add-int v8, p3, v8

    move-object/from16 v9, p2

    invoke-static {v4, v7, v9, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 185
    :cond_5
    move-object/from16 v9, p2

    const/4 v7, 0x0

    move-object/from16 v8, p1

    invoke-static {v4, v14, v8, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    return-void
.end method

.method static validate_authpath(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V
    .locals 11
    .param p0, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "root"    # [B
    .param p2, "leaf"    # [B
    .param p3, "leafidx"    # I
    .param p4, "authpath"    # [B
    .param p5, "auOff"    # I
    .param p6, "masks"    # [B
    .param p7, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hs",
            "root",
            "leaf",
            "leafidx",
            "authpath",
            "auOff",
            "masks",
            "height"
        }
    .end annotation

    .line 81
    const/16 v0, 0x40

    new-array v2, v0, [B

    .line 83
    .local v2, "buffer":[B
    and-int/lit8 v0, p3, 0x1

    const/16 v8, 0x20

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 87
    add-int/lit8 v1, v0, 0x20

    aget-byte v3, p2, v0

    aput-byte v3, v2, v1

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_3

    .line 91
    add-int v1, p5, v0

    aget-byte v1, p4, v1

    aput-byte v1, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_2
    if-ge v0, v8, :cond_2

    .line 98
    aget-byte v1, p2, v0

    aput-byte v1, v2, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 100
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_3

    .line 102
    add-int/lit8 v1, v0, 0x20

    add-int v3, p5, v0

    aget-byte v3, p4, v3

    aput-byte v3, v2, v1

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 105
    :cond_3
    add-int/lit8 v1, p5, 0x20

    .line 107
    .local v1, "authOff":I
    const/4 v3, 0x0

    move v9, v1

    move v10, v3

    .end local v1    # "authOff":I
    .local v9, "authOff":I
    .local v10, "i":I
    :goto_4
    add-int/lit8 v1, p7, -0x1

    if-ge v10, v1, :cond_6

    .line 109
    ushr-int/lit8 p3, p3, 0x1

    .line 110
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_4

    .line 112
    add-int/lit8 v1, v10, 0x7

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    const/16 v3, 0x20

    const/4 v5, 0x0

    move-object v4, v2

    move-object v1, p0

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 113
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v8, :cond_5

    .line 115
    add-int v1, v9, v0

    aget-byte v1, p4, v1

    aput-byte v1, v2, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 120
    :cond_4
    add-int/lit8 v1, v10, 0x7

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v2

    move-object v1, p0

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 121
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v8, :cond_5

    .line 123
    add-int/lit8 v1, v0, 0x20

    add-int v3, v9, v0

    aget-byte v3, p4, v3

    aput-byte v3, v2, v1

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 126
    :cond_5
    add-int/lit8 v9, v9, 0x20

    .line 107
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 128
    :cond_6
    add-int/lit8 v1, p7, 0x7

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object/from16 v6, p6

    move-object v4, v2

    move-object v2, p1

    .end local v2    # "buffer":[B
    .local v4, "buffer":[B
    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 129
    move-object v2, v4

    .end local v4    # "buffer":[B
    .restart local v2    # "buffer":[B
    return-void
.end method

.method private zerobytes([BII)V
    .locals 3
    .param p1, "tsk"    # [B
    .param p2, "off"    # I
    .param p3, "cryptoSecretkeybytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tsk",
            "off",
            "cryptoSecretkeybytes"
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, p3, :cond_0

    .line 318
    add-int v1, p2, v0

    const/4 v2, 0x0

    aput-byte v2, p1, v1

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method crypto_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B
    .locals 32
    .param p1, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p2, "m"    # [B
    .param p3, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hs",
            "m",
            "sk"
        }
    .end annotation

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const v1, 0xa028

    new-array v2, v1, [B

    .line 194
    .local v2, "sm":[B
    const/16 v10, 0x20

    new-array v11, v10, [B

    .line 195
    .local v11, "R":[B
    const/16 v1, 0x40

    new-array v12, v1, [B

    .line 196
    .local v12, "m_h":[B
    const/16 v13, 0x8

    new-array v14, v13, [J

    .line 198
    .local v14, "rnd":[J
    new-array v15, v10, [B

    .line 199
    .local v15, "root":[B
    new-array v1, v10, [B

    .line 200
    .local v1, "seed":[B
    const/16 v3, 0x400

    new-array v4, v3, [B

    .line 202
    .local v4, "masks":[B
    const/16 v5, 0x440

    new-array v6, v5, [B

    .line 204
    .local v6, "tsk":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 206
    aget-byte v8, p3, v7

    aput-byte v8, v6, v7

    .line 204
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 212
    :cond_0
    const v8, 0xa008

    .line 215
    .local v8, "scratch":I
    const/16 v5, 0x420

    invoke-static {v6, v5, v2, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    .line 218
    .local v5, "d":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    new-array v13, v13, [B

    .line 220
    .local v13, "bRnd":[B
    invoke-interface {v5, v2, v8, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 222
    array-length v3, v9

    move-object/from16 v19, v4

    .end local v4    # "masks":[B
    .local v19, "masks":[B
    const/4 v4, 0x0

    invoke-interface {v5, v9, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 224
    invoke-interface {v5, v13, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 227
    invoke-direct {v0, v2, v8, v10}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    .line 229
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v20, 0x0

    array-length v4, v14

    if-eq v3, v4, :cond_1

    .line 231
    mul-int/lit8 v4, v3, 0x8

    invoke-static {v13, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v21

    aput-wide v21, v14, v3

    .line 229
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_1

    .line 233
    .end local v3    # "j":I
    :cond_1
    aget-wide v3, v14, v20

    const-wide v21, 0xfffffffffffffffL

    and-long v21, v3, v21

    .line 235
    .local v21, "leafidx":J
    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v13, v3, v11, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    const v3, 0x9be8

    .line 241
    .end local v8    # "scratch":I
    .local v3, "scratch":I
    invoke-static {v11, v4, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    new-instance v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    .line 245
    .local v8, "b":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    const/16 v4, 0xb

    iput v4, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    .line 246
    move-object/from16 v23, v11

    .end local v11    # "R":[B
    .local v23, "R":[B
    const-wide/16 v10, 0x0

    iput-wide v10, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    .line 247
    iput-wide v10, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    .line 249
    move-object v4, v8

    .end local v8    # "b":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .local v4, "b":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    add-int/lit8 v8, v3, 0x20

    .line 251
    .local v8, "pk":I
    const/16 v10, 0x20

    const/16 v11, 0x400

    invoke-static {v6, v10, v2, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    move v10, v3

    .end local v3    # "scratch":I
    .local v10, "scratch":I
    add-int/lit16 v3, v8, 0x400

    move-object/from16 v18, v5

    move-object v5, v6

    move-object v6, v4

    .end local v4    # "b":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .local v5, "tsk":[B
    .local v6, "b":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .local v18, "d":Lorg/bouncycastle/crypto/Digest;
    const/4 v4, 0x5

    move/from16 v24, v7

    .end local v7    # "i":I
    .local v24, "i":I
    move-object v7, v2

    move-object/from16 v16, v13

    move-object/from16 v11, v19

    move v13, v10

    move-object/from16 v19, v14

    const/16 v14, 0x440

    move-object v10, v1

    move-object/from16 v1, p1

    .end local v1    # "seed":[B
    .end local v14    # "rnd":[J
    .local v10, "seed":[B
    .local v11, "masks":[B
    .local v13, "scratch":I
    .local v16, "bRnd":[B
    .local v19, "rnd":[J
    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->treehash(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V

    .line 255
    move/from16 v26, v8

    move-object v8, v5

    .end local v5    # "tsk":[B
    .local v8, "tsk":[B
    .local v26, "pk":I
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    .line 257
    .end local v18    # "d":Lorg/bouncycastle/crypto/Digest;
    .local v3, "d":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v3, v2, v13, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 258
    array-length v4, v9

    const/4 v5, 0x0

    invoke-interface {v3, v9, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 259
    invoke-interface {v3, v12, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 262
    .end local v3    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v6    # "b":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .end local v13    # "scratch":I
    .end local v16    # "bRnd":[B
    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    move-object v13, v5

    .line 264
    .local v13, "a":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    const/16 v3, 0xc

    iput v3, v13, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    .line 265
    const-wide/16 v27, 0x1f

    and-long v4, v21, v27

    long-to-int v5, v4

    int-to-long v4, v5

    iput-wide v4, v13, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    .line 266
    const/16 v16, 0x5

    ushr-long v4, v21, v16

    iput-wide v4, v13, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    .line 268
    const/4 v4, 0x0

    .end local v24    # "i":I
    .local v4, "i":I
    :goto_2
    const/16 v5, 0x20

    if-ge v4, v5, :cond_2

    .line 270
    aget-byte v6, v23, v4

    aput-byte v6, v2, v4

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 273
    :cond_2
    const/16 v6, 0x20

    .line 275
    .local v6, "smOff":I
    const/16 v3, 0x400

    const/4 v7, 0x0

    invoke-static {v8, v5, v11, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    const/4 v3, 0x0

    .end local v4    # "i":I
    .local v3, "i":I
    :goto_3
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 278
    add-int v4, v6, v3

    mul-int/lit8 v5, v3, 0x8

    ushr-long v24, v21, v5

    const-wide/16 v29, 0xff

    move-object v5, v15

    .end local v15    # "root":[B
    .local v5, "root":[B
    and-long v14, v24, v29

    long-to-int v7, v14

    int-to-byte v7, v7

    aput-byte v7, v2, v4

    .line 276
    add-int/lit8 v3, v3, 0x1

    move-object v15, v5

    const/16 v14, 0x440

    goto :goto_3

    .line 281
    .end local v5    # "root":[B
    .restart local v15    # "root":[B
    :cond_3
    move-object v5, v15

    .end local v15    # "root":[B
    .restart local v5    # "root":[B
    const/16 v17, 0x8

    add-int/lit8 v6, v6, 0x8

    .line 283
    const/4 v4, 0x0

    invoke-static {v1, v10, v4, v8, v13}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 284
    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;-><init>()V

    move-object v14, v4

    .line 286
    .local v14, "ht":Lorg/bouncycastle/pqc/crypto/sphincs/Horst;
    move-object v4, v5

    move-object v5, v10

    move-object v7, v12

    move v10, v3

    move v3, v6

    move-object v6, v11

    const/16 v11, 0xc

    .end local v11    # "masks":[B
    .end local v12    # "m_h":[B
    .local v3, "smOff":I
    .local v4, "root":[B
    .local v5, "seed":[B
    .local v6, "masks":[B
    .local v7, "m_h":[B
    .local v10, "i":I
    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->horst_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I

    move-result v12

    .line 288
    move-object v15, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    .end local v4    # "root":[B
    .local v5, "root":[B
    .local v6, "seed":[B
    .local v7, "masks":[B
    .local v12, "horst_sigbytes":I
    .local v15, "m_h":[B
    add-int/2addr v3, v12

    .line 290
    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    .line 292
    .local v4, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_4

    .line 294
    iput v10, v13, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    .line 296
    const/4 v11, 0x0

    invoke-static {v1, v6, v11, v8, v13}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 298
    move-object/from16 v31, v2

    move-object v2, v1

    move-object v1, v4

    move v4, v3

    move-object/from16 v3, v31

    .end local v2    # "sm":[B
    .local v1, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .local v3, "sm":[B
    .local v4, "smOff":I
    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V

    .line 300
    move-object/from16 v17, v1

    move-object v2, v3

    move-object v11, v6

    .end local v1    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .end local v3    # "sm":[B
    .end local v6    # "seed":[B
    .restart local v2    # "sm":[B
    .local v11, "seed":[B
    .local v17, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    add-int/lit16 v4, v4, 0x860

    .line 302
    move-object v6, v8

    .end local v8    # "tsk":[B
    .local v6, "tsk":[B
    const/4 v8, 0x5

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v5, v13

    .end local v13    # "a":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .local v2, "root":[B
    .restart local v3    # "sm":[B
    .local v5, "a":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->compute_authpath_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V

    .line 303
    move-object v1, v5

    move-object v5, v2

    move-object v2, v3

    .end local v3    # "sm":[B
    .local v1, "a":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .local v2, "sm":[B
    .local v5, "root":[B
    add-int/lit16 v3, v4, 0xa0

    .line 305
    .end local v4    # "smOff":I
    .local v3, "smOff":I
    move-object v8, v2

    move v4, v3

    .end local v2    # "sm":[B
    .end local v3    # "smOff":I
    .restart local v4    # "smOff":I
    .local v8, "sm":[B
    iget-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    and-long v2, v2, v27

    long-to-int v3, v2

    int-to-long v2, v3

    iput-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    .line 306
    iget-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    ushr-long v2, v2, v16

    iput-wide v2, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    .line 292
    add-int/lit8 v10, v10, 0x1

    move-object v13, v1

    move v3, v4

    move-object v2, v8

    move-object/from16 v4, v17

    move-object/from16 v1, p1

    move-object v8, v6

    move-object v6, v11

    const/16 v11, 0xc

    goto :goto_4

    .line 309
    .end local v1    # "a":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .end local v11    # "seed":[B
    .end local v17    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .restart local v2    # "sm":[B
    .restart local v3    # "smOff":I
    .local v4, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .local v6, "seed":[B
    .local v8, "tsk":[B
    .restart local v13    # "a":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    :cond_4
    move-object/from16 v17, v4

    move-object v11, v6

    move-object v6, v8

    move-object v8, v2

    move v4, v3

    .end local v2    # "sm":[B
    .end local v3    # "smOff":I
    .local v4, "smOff":I
    .local v6, "tsk":[B
    .local v8, "sm":[B
    .restart local v11    # "seed":[B
    .restart local v17    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    const/4 v2, 0x0

    const/16 v3, 0x440

    invoke-direct {v0, v6, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    .line 311
    return-object v8
.end method

.method public generateSignature([B)[B
    .locals 2
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->crypto_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forSigning",
            "param"
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_1

    .line 52
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    goto :goto_0

    .line 59
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    goto :goto_0

    .line 64
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getKeyData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    .line 66
    :goto_0
    return-void
.end method

.method verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z
    .locals 21
    .param p1, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p2, "m"    # [B
    .param p3, "sm"    # [B
    .param p4, "pk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hs",
            "m",
            "sm",
            "pk"
        }
    .end annotation

    .line 325
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    array-length v2, v1

    .line 326
    .local v2, "smlen":I
    const-wide/16 v3, 0x0

    .line 327
    .local v3, "leafidx":J
    const/16 v5, 0x860

    new-array v8, v5, [B

    .line 328
    .local v8, "wots_pk":[B
    const/16 v5, 0x20

    new-array v13, v5, [B

    .line 329
    .local v13, "pkhash":[B
    new-array v11, v5, [B

    .line 330
    .local v11, "root":[B
    const v6, 0xa028

    new-array v9, v6, [B

    .line 332
    .local v9, "sig":[B
    const/16 v7, 0x420

    new-array v12, v7, [B

    .line 334
    .local v12, "tpk":[B
    if-ne v2, v6, :cond_6

    .line 339
    const/16 v10, 0x40

    new-array v10, v10, [B

    .line 341
    .local v10, "m_h":[B
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v7, :cond_0

    .line 343
    aget-byte v15, p4, v14

    aput-byte v15, v12, v14

    .line 341
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 348
    :cond_0
    new-array v15, v5, [B

    .line 350
    .local v15, "R":[B
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v5, :cond_1

    .line 352
    aget-byte v16, v1, v14

    aput-byte v16, v15, v14

    .line 350
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 355
    :cond_1
    const/4 v7, 0x0

    invoke-static {v1, v7, v9, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    .line 360
    .local v6, "mHash":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v6, v15, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 363
    const/16 v5, 0x420

    const/16 v20, 0x20

    invoke-interface {v6, v12, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 366
    array-length v5, v0

    invoke-interface {v6, v0, v7, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 368
    invoke-interface {v6, v10, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 371
    .end local v6    # "mHash":Lorg/bouncycastle/crypto/Digest;
    .end local v15    # "R":[B
    const/4 v5, 0x0

    .line 373
    .local v5, "sigp":I
    add-int/lit8 v5, v5, 0x20

    .line 374
    add-int/lit8 v2, v2, -0x20

    .line 377
    const/4 v6, 0x0

    .end local v14    # "i":I
    .local v6, "i":I
    :goto_2
    const/16 v7, 0x8

    if-ge v6, v7, :cond_2

    .line 379
    add-int v7, v5, v6

    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v14, v7

    mul-int/lit8 v7, v6, 0x8

    shl-long/2addr v14, v7

    xor-long/2addr v3, v14

    .line 377
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 383
    :cond_2
    new-instance v14, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v14}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;-><init>()V

    add-int/lit8 v17, v5, 0x8

    move-object/from16 v14, p1

    move-object/from16 v16, v9

    move-object/from16 v19, v10

    move-object v15, v11

    move-object/from16 v18, v12

    .end local v9    # "sig":[B
    .end local v10    # "m_h":[B
    .end local v11    # "root":[B
    .end local v12    # "tpk":[B
    .local v15, "root":[B
    .local v16, "sig":[B
    .local v18, "tpk":[B
    .local v19, "m_h":[B
    invoke-static/range {v14 .. v19}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->horst_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I

    .line 386
    .end local v15    # "root":[B
    .end local v18    # "tpk":[B
    .restart local v11    # "root":[B
    .restart local v12    # "tpk":[B
    add-int/2addr v5, v7

    .line 387
    add-int/lit8 v2, v2, -0x8

    .line 389
    add-int/lit16 v5, v5, 0x3400

    .line 390
    add-int/lit16 v2, v2, -0x3400

    .line 392
    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    .line 394
    .local v7, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    const/4 v6, 0x0

    move v10, v5

    move v5, v6

    .end local v6    # "i":I
    .local v5, "i":I
    .local v10, "sigp":I
    :goto_3
    const/16 v6, 0xc

    if-ge v5, v6, :cond_3

    .line 396
    move-object v6, v7

    move-object/from16 v9, v16

    move-object/from16 v7, p1

    .end local v7    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .end local v16    # "sig":[B
    .local v6, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .restart local v9    # "sig":[B
    invoke-virtual/range {v6 .. v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V

    .line 398
    move-object/from16 v17, v6

    move-object v15, v11

    .end local v6    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .end local v9    # "sig":[B
    .end local v11    # "root":[B
    .restart local v15    # "root":[B
    .restart local v16    # "sig":[B
    .local v17, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    add-int/lit16 v14, v10, 0x860

    .line 399
    .end local v10    # "sigp":I
    .local v14, "sigp":I
    add-int/lit16 v2, v2, -0x860

    .line 401
    const/4 v10, 0x0

    move-object v11, v12

    .end local v12    # "tpk":[B
    .local v11, "tpk":[B
    const/4 v12, 0x0

    move-object v9, v8

    .end local v8    # "wots_pk":[B
    .local v9, "wots_pk":[B
    const/4 v8, 0x0

    move-object/from16 v6, p1

    move-object v7, v13

    .end local v13    # "pkhash":[B
    .local v7, "pkhash":[B
    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 402
    move-object v8, v9

    move-object v12, v11

    move-object v11, v7

    .end local v7    # "pkhash":[B
    .end local v9    # "wots_pk":[B
    .restart local v8    # "wots_pk":[B
    .local v11, "pkhash":[B
    .restart local v12    # "tpk":[B
    const-wide/16 v6, 0x1f

    and-long/2addr v6, v3

    long-to-int v7, v6

    move-object/from16 v13, v16

    .end local v16    # "sig":[B
    .local v13, "sig":[B
    const/16 v16, 0x5

    move-object/from16 v9, p1

    move-object v10, v15

    move-object v15, v12

    move v12, v7

    .end local v12    # "tpk":[B
    .local v10, "root":[B
    .local v15, "tpk":[B
    invoke-static/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->validate_authpath(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V

    .line 403
    move-object/from16 v16, v13

    move-object v12, v15

    move-object v15, v10

    .end local v10    # "root":[B
    .end local v13    # "sig":[B
    .restart local v12    # "tpk":[B
    .local v15, "root":[B
    .restart local v16    # "sig":[B
    const/4 v6, 0x5

    shr-long/2addr v3, v6

    .line 405
    add-int/lit16 v10, v14, 0xa0

    .line 406
    .end local v14    # "sigp":I
    .local v10, "sigp":I
    add-int/lit16 v2, v2, -0xa0

    .line 394
    add-int/lit8 v5, v5, 0x1

    move-object v13, v11

    move-object v11, v15

    move-object/from16 v7, v17

    goto :goto_3

    .line 409
    .end local v15    # "root":[B
    .end local v17    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .local v7, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .local v11, "root":[B
    .local v13, "pkhash":[B
    :cond_3
    move-object/from16 v17, v7

    move-object v15, v11

    move-object v11, v13

    .end local v7    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .end local v13    # "pkhash":[B
    .local v11, "pkhash":[B
    .restart local v15    # "root":[B
    .restart local v17    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    const/4 v6, 0x1

    .line 410
    .local v6, "verified":Z
    const/4 v5, 0x0

    :goto_4
    const/16 v7, 0x20

    if-ge v5, v7, :cond_5

    .line 412
    aget-byte v9, v15, v5

    add-int/lit16 v13, v5, 0x400

    aget-byte v13, v12, v13

    if-eq v9, v13, :cond_4

    .line 414
    const/4 v6, 0x0

    .line 410
    :cond_4
    add-int/lit8 v5, v5, 0x1

    const/16 v20, 0x20

    goto :goto_4

    .line 418
    :cond_5
    return v6

    .line 336
    .end local v5    # "i":I
    .end local v6    # "verified":Z
    .end local v10    # "sigp":I
    .end local v15    # "root":[B
    .end local v16    # "sig":[B
    .end local v17    # "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    .end local v19    # "m_h":[B
    .local v9, "sig":[B
    .local v11, "root":[B
    .restart local v13    # "pkhash":[B
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "signature wrong size"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public verifySignature([B[B)Z
    .locals 2
    .param p1, "message"    # [B
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "signature"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z

    move-result v0

    return v0
.end method
