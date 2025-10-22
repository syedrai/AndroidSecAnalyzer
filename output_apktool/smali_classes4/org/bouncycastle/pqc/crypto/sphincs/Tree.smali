.class Lorg/bouncycastle/pqc/crypto/sphincs/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static gen_leaf_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 15
    .param p0, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "leaf"    # [B
    .param p2, "leafOff"    # I
    .param p3, "masks"    # [B
    .param p4, "masksOff"    # I
    .param p5, "sk"    # [B
    .param p6, "a"    # Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "leaf",
            "leafOff",
            "masks",
            "masksOff",
            "sk",
            "a"
        }
    .end annotation

    .line 82
    const/16 v0, 0x20

    new-array v5, v0, [B

    .line 83
    .local v5, "seed":[B
    const/16 v0, 0x860

    new-array v9, v0, [B

    .line 85
    .local v9, "pk":[B
    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    .line 87
    .local v1, "w":Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
    const/4 v0, 0x0

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-static {p0, v5, v0, v13, v14}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 89
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object v3, v9

    .end local v9    # "pk":[B
    .local v3, "pk":[B
    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 91
    .end local v3    # "pk":[B
    .restart local v9    # "pk":[B
    const/4 v10, 0x0

    move-object v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 92
    return-void
.end method

.method static l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V
    .locals 12
    .param p0, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "leaf"    # [B
    .param p2, "leafOff"    # I
    .param p3, "wots_pk"    # [B
    .param p4, "pkOff"    # I
    .param p5, "masks"    # [B
    .param p6, "masksOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "leaf",
            "leafOff",
            "wots_pk",
            "pkOff",
            "masks",
            "masksOff"
        }
    .end annotation

    .line 26
    move/from16 v7, p4

    const/16 v0, 0x43

    .line 27
    .local v0, "l":I
    const/4 v1, 0x0

    .line 28
    .local v1, "j":I
    const/4 v2, 0x0

    move v8, v0

    move v9, v2

    .end local v0    # "l":I
    .local v8, "l":I
    .local v9, "i":I
    :goto_0
    const/4 v0, 0x7

    const/16 v10, 0x20

    if-ge v9, v0, :cond_2

    .line 30
    const/4 v0, 0x0

    move v11, v0

    .end local v1    # "j":I
    .local v11, "j":I
    :goto_1
    ushr-int/lit8 v0, v8, 0x1

    if-ge v11, v0, :cond_0

    .line 32
    mul-int/lit8 v0, v11, 0x20

    add-int v2, v7, v0

    mul-int/lit8 v0, v11, 0x2

    mul-int/lit8 v0, v0, 0x20

    add-int v4, v7, v0

    mul-int/lit8 v0, v9, 0x2

    mul-int/lit8 v0, v0, 0x20

    add-int v6, p6, v0

    move-object v3, p3

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 30
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 35
    :cond_0
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_1

    .line 37
    add-int/lit8 v1, v8, -0x1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v7

    ushr-int/lit8 v2, v8, 0x1

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v2, v7

    invoke-static {p3, v1, p3, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    ushr-int/lit8 v1, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    move v8, v1

    .end local v8    # "l":I
    .local v1, "l":I
    goto :goto_2

    .line 42
    .end local v1    # "l":I
    .restart local v8    # "l":I
    :cond_1
    ushr-int/lit8 v1, v8, 0x1

    move v8, v1

    .line 28
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v1, v11

    goto :goto_0

    .line 45
    .end local v11    # "j":I
    .local v1, "j":I
    :cond_2
    invoke-static {p3, v7, p1, p2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-void
.end method

.method static treehash(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V
    .locals 17
    .param p0, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "node"    # [B
    .param p2, "nodeOff"    # I
    .param p3, "height"    # I
    .param p4, "sk"    # [B
    .param p5, "leaf"    # Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .param p6, "masks"    # [B
    .param p7, "masksOff"    # I
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
            "node",
            "nodeOff",
            "height",
            "sk",
            "leaf",
            "masks",
            "masksOff"
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    move-object v8, v0

    .line 52
    .local v8, "a":Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    add-int/lit8 v0, p3, 0x1

    const/16 v9, 0x20

    mul-int/lit8 v0, v0, 0x20

    new-array v11, v0, [B

    .line 53
    .local v11, "stack":[B
    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [I

    .line 54
    .local v0, "stacklevels":[I
    const/4 v2, 0x0

    .line 56
    .local v2, "stackoffset":I
    iget-wide v3, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/4 v10, 0x1

    shl-int v5, v10, p3

    int-to-long v5, v5

    add-long/2addr v3, v5

    long-to-int v12, v3

    move v13, v2

    .line 58
    .end local v2    # "stackoffset":I
    .local v12, "lastnode":I
    .local v13, "stackoffset":I
    :goto_0
    iget-wide v2, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    int-to-long v4, v12

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 60
    mul-int/lit8 v4, v13, 0x20

    move-object/from16 v2, p0

    move-object/from16 v7, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object v3, v11

    .end local v11    # "stack":[B
    .local v3, "stack":[B
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->gen_leaf_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 61
    .end local v3    # "stack":[B
    .restart local v11    # "stack":[B
    const/4 v2, 0x0

    aput v2, v0, v13

    .line 62
    add-int/lit8 v13, v13, 0x1

    move v2, v13

    .line 63
    .end local v13    # "stackoffset":I
    .restart local v2    # "stackoffset":I
    :goto_1
    if-le v2, v10, :cond_0

    add-int/lit8 v3, v2, -0x1

    aget v3, v0, v3

    add-int/lit8 v4, v2, -0x2

    aget v4, v0, v4

    if-ne v3, v4, :cond_0

    .line 66
    add-int/lit8 v3, v2, -0x1

    aget v3, v0, v3

    add-int/lit8 v3, v3, 0x7

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x20

    .line 68
    .local v3, "maskoffset":I
    add-int/lit8 v4, v2, -0x2

    mul-int/lit8 v4, v4, 0x20

    add-int/lit8 v5, v2, -0x2

    mul-int/lit8 v14, v5, 0x20

    add-int v16, p7, v3

    move-object v13, v11

    move v5, v12

    move v12, v4

    move v4, v5

    move-object/from16 v10, p0

    move-object/from16 v15, p6

    const/4 v5, 0x1

    .end local v12    # "lastnode":I
    .local v4, "lastnode":I
    invoke-virtual/range {v10 .. v16}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 70
    add-int/lit8 v6, v2, -0x2

    aget v7, v0, v6

    add-int/2addr v7, v5

    aput v7, v0, v6

    .line 71
    nop

    .end local v3    # "maskoffset":I
    add-int/lit8 v2, v2, -0x1

    .line 72
    move v12, v4

    const/4 v10, 0x1

    goto :goto_1

    .line 63
    .end local v4    # "lastnode":I
    .restart local v12    # "lastnode":I
    :cond_0
    move v4, v12

    const/4 v5, 0x1

    .line 58
    .end local v12    # "lastnode":I
    .restart local v4    # "lastnode":I
    iget-wide v6, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    iput-wide v6, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move v12, v4

    const/4 v10, 0x1

    move v13, v2

    goto :goto_0

    .line 74
    .end local v2    # "stackoffset":I
    .end local v4    # "lastnode":I
    .restart local v12    # "lastnode":I
    .restart local v13    # "stackoffset":I
    :cond_1
    move v4, v12

    .end local v12    # "lastnode":I
    .restart local v4    # "lastnode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v9, :cond_2

    .line 76
    add-int v3, p2, v2

    aget-byte v5, v11, v2

    aput-byte v5, p1, v3

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 78
    :cond_2
    return-void
.end method
