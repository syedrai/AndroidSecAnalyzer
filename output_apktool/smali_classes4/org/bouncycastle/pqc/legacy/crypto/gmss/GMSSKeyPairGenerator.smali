.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;
.super Ljava/lang/Object;
.source "GMSSKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.3"


# instance fields
.field private K:[I

.field private currentRootSigs:[[B

.field private currentSeeds:[[B

.field private digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

.field private gmssParams:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

.field private gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

.field private heightOfTrees:[I

.field private initialized:Z

.field private mdLength:I

.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;

.field private nextNextSeeds:[[B

.field private numLayer:I

.field private otsIndex:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V
    .locals 2
    .param p1, "digestProvider"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digestProvider"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    .line 106
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    .line 107
    invoke-interface {p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    .line 112
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 114
    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 22

    .line 124
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    if-nez v1, :cond_0

    .line 126
    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->initializeDefault()V

    .line 130
    :cond_0
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v5, v1, [[[B

    .line 131
    .local v5, "currentAuthPaths":[[[B
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v6, v1, [[[B

    .line 132
    .local v6, "nextAuthPaths":[[[B
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v7, v1, [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    .line 133
    .local v7, "currentTreehash":[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    sub-int/2addr v1, v2

    new-array v8, v1, [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    .line 135
    .local v8, "nextTreehash":[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v9, v1, [Ljava/util/Vector;

    .line 136
    .local v9, "currentStack":[Ljava/util/Vector;
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    sub-int/2addr v1, v2

    new-array v10, v1, [Ljava/util/Vector;

    .line 138
    .local v10, "nextStack":[Ljava/util/Vector;
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v11, v1, [[Ljava/util/Vector;

    .line 139
    .local v11, "currentRetain":[[Ljava/util/Vector;
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    sub-int/2addr v1, v2

    new-array v12, v1, [[Ljava/util/Vector;

    .line 141
    .local v12, "nextRetain":[[Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    const/4 v4, 0x2

    const/4 v13, 0x0

    if-ge v1, v3, :cond_3

    .line 143
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, v1

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v15, v4, [I

    aput v14, v15, v2

    aput v3, v15, v13

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    aput-object v3, v5, v1

    .line 144
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, v1

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v14, v14, v1

    sub-int/2addr v3, v14

    new-array v3, v3, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aput-object v3, v7, v1

    .line 146
    if-lez v1, :cond_1

    .line 148
    add-int/lit8 v3, v1, -0x1

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v14, v14, v1

    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v4, v4, [I

    aput v15, v4, v2

    aput v14, v4, v13

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    aput-object v4, v6, v3

    .line 149
    add-int/lit8 v3, v1, -0x1

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v4, v4, v1

    iget-object v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v13, v13, v1

    sub-int/2addr v4, v13

    new-array v4, v4, [Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    aput-object v4, v8, v3

    .line 152
    :cond_1
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v9, v1

    .line 153
    if-lez v1, :cond_2

    .line 155
    add-int/lit8 v3, v1, -0x1

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v10, v3

    .line 141
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_3
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v14, v4, [I

    aput v3, v14, v2

    aput v1, v14, v13

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 161
    .local v1, "currentRoots":[[B
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    sub-int/2addr v3, v2

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v15, v4, [I

    aput v14, v15, v2

    aput v3, v15, v13

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    .line 163
    .local v3, "nextRoots":[[B
    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    const/16 v16, 0x1

    new-array v2, v4, [I

    aput v15, v2, v16

    aput v14, v2, v13

    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [[B

    .line 166
    .local v17, "seeds":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    if-ge v2, v14, :cond_4

    .line 168
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v14, v14, v2

    aget-object v15, v17, v2

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v14, v13, v15, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x2

    goto :goto_1

    .line 172
    .end local v2    # "i":I
    :cond_4
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    const/4 v14, 0x2

    new-array v15, v14, [I

    aput v4, v15, v16

    aput v2, v15, v13

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    .line 179
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "h":I
    :goto_2
    if-ltz v2, :cond_7

    .line 185
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_5

    .line 187
    aget-object v4, v9, v2

    aget-object v14, v17, v2

    const/4 v15, 0x0

    invoke-direct {v0, v15, v4, v14, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    move-result-object v4

    .local v4, "tree":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    goto :goto_3

    .line 193
    .end local v4    # "tree":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    :cond_5
    add-int/lit8 v4, v2, 0x1

    aget-object v4, v1, v4

    aget-object v14, v9, v2

    aget-object v15, v17, v2

    invoke-direct {v0, v4, v14, v15, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    move-result-object v4

    .line 197
    .restart local v4    # "tree":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    :goto_3
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v15, v15, v2

    if-ge v14, v15, :cond_6

    .line 199
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v15

    aget-object v15, v15, v14

    aget-object v19, v5, v2

    move-object/from16 v20, v1

    .end local v1    # "currentRoots":[[B
    .local v20, "currentRoots":[[B
    aget-object v1, v19, v14

    move/from16 v19, v2

    .end local v2    # "h":I
    .local v19, "h":I
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v15, v13, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v19

    move-object/from16 v1, v20

    goto :goto_4

    .end local v19    # "h":I
    .end local v20    # "currentRoots":[[B
    .restart local v1    # "currentRoots":[[B
    .restart local v2    # "h":I
    :cond_6
    move-object/from16 v20, v1

    move/from16 v19, v2

    .line 201
    .end local v1    # "currentRoots":[[B
    .end local v2    # "h":I
    .end local v14    # "i":I
    .restart local v19    # "h":I
    .restart local v20    # "currentRoots":[[B
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v1

    aput-object v1, v11, v19

    .line 202
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v1

    aput-object v1, v7, v19

    .line 203
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v1

    aget-object v2, v20, v19

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v1, v13, v2, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    .end local v4    # "tree":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v1, v20

    .end local v19    # "h":I
    .restart local v2    # "h":I
    goto :goto_2

    .end local v20    # "currentRoots":[[B
    .restart local v1    # "currentRoots":[[B
    :cond_7
    move-object/from16 v20, v1

    move/from16 v19, v2

    .line 208
    .end local v1    # "currentRoots":[[B
    .end local v2    # "h":I
    .restart local v20    # "currentRoots":[[B
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    const/16 v18, 0x2

    add-int/lit8 v1, v1, -0x2

    .local v1, "h":I
    :goto_5
    if-ltz v1, :cond_9

    .line 210
    aget-object v2, v10, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v17, v4

    add-int/lit8 v14, v1, 0x1

    invoke-direct {v0, v2, v4, v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->generateNextAuthpathAndRoot(Ljava/util/Vector;[BI)Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    move-result-object v2

    .line 213
    .local v2, "tree":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    add-int/lit8 v15, v1, 0x1

    aget v14, v14, v15

    if-ge v4, v14, :cond_8

    .line 215
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v14

    aget-object v14, v14, v4

    aget-object v15, v6, v1

    aget-object v15, v15, v4

    move/from16 v16, v1

    .end local v1    # "h":I
    .local v16, "h":I
    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v14, v13, v15, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v16

    goto :goto_6

    .end local v16    # "h":I
    .restart local v1    # "h":I
    :cond_8
    move/from16 v16, v1

    .line 217
    .end local v1    # "h":I
    .end local v4    # "i":I
    .restart local v16    # "h":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v1

    aput-object v1, v12, v16

    .line 218
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v1

    aput-object v1, v8, v16

    .line 219
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v1

    aget-object v4, v3, v16

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v1, v13, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    add-int/lit8 v1, v16, 0x1

    aget-object v1, v17, v1

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    aget-object v4, v4, v16

    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v1, v13, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    .end local v2    # "tree":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    add-int/lit8 v1, v16, -0x1

    .end local v16    # "h":I
    .restart local v1    # "h":I
    goto :goto_5

    :cond_9
    move/from16 v16, v1

    .line 228
    .end local v1    # "h":I
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;

    aget-object v2, v20, v13

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-direct {v1, v2, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;-><init>([BLorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V

    .line 231
    .local v1, "publicKey":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;
    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    move-object v13, v3

    .end local v3    # "nextRoots":[[B
    .local v13, "nextRoots":[[B
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    move-object/from16 v16, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    move-object/from16 v21, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v21

    invoke-direct/range {v2 .. v16}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;-><init>([[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V

    move-object/from16 v16, v2

    .line 235
    .local v2, "privateKey":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;
    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method private generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    .locals 11
    .param p1, "lowerRoot"    # [B
    .param p2, "currentStack"    # Ljava/util/Vector;
    .param p3, "seed"    # [B
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lowerRoot",
            "currentStack",
            "seed",
            "h"
        }
    .end annotation

    .line 249
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v0, v0, [B

    .line 251
    .local v0, "help":[B
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v1, v1, [B

    .line 252
    .local v1, "OTSseed":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v2, p3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v1

    .line 258
    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, p4

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v4, v4, p4

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V

    .line 260
    .local v2, "treeToConstruct":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    .line 263
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne p4, v3, :cond_0

    .line 265
    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v6, v6, p4

    invoke-direct {v3, v1, v5, v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    .line 266
    .local v3, "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v0

    goto :goto_0

    .line 274
    .end local v3    # "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v6, v6, p4

    invoke-direct {v3, v1, v5, v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    .line 275
    .restart local v3    # "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->getSignature([B)[B

    move-result-object v6

    aput-object v6, v5, p4

    .line 276
    new-instance v5, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v7, v7, p4

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;-><init>(Lorg/bouncycastle/crypto/Digest;I)V

    .line 277
    .local v5, "otsver":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    aget-object v6, v6, p4

    invoke-virtual {v5, p1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->Verify([B[B)[B

    move-result-object v0

    .line 280
    .end local v5    # "otsver":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;
    :goto_0
    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 282
    const/4 v5, 0x3

    .line 283
    .local v5, "seedForTreehashIndex":I
    const/4 v6, 0x0

    .line 286
    .local v6, "count":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v8, v8, p4

    shl-int v8, v4, v8

    if-ge v7, v8, :cond_2

    .line 289
    if-ne v7, v5, :cond_1

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v8, v8, p4

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v9, v9, p4

    sub-int/2addr v8, v9

    if-ge v6, v8, :cond_1

    .line 291
    invoke-virtual {v2, p3, v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    .line 292
    mul-int/lit8 v5, v5, 0x2

    .line 293
    add-int/lit8 v6, v6, 0x1

    .line 296
    :cond_1
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v8, p3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v1

    .line 297
    new-instance v8, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v9

    iget-object v10, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v10, v10, p4

    invoke-direct {v8, v1, v9, v10}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    move-object v3, v8

    .line 298
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 286
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 301
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->wasFinished()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    return-object v2

    .line 306
    :cond_3
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    const/4 v4, 0x0

    return-object v4
.end method

.method private generateNextAuthpathAndRoot(Ljava/util/Vector;[BI)Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    .locals 8
    .param p1, "nextStack"    # Ljava/util/Vector;
    .param p2, "seed"    # [B
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nextStack",
            "seed",
            "h"
        }
    .end annotation

    .line 320
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v0, v0, [B

    .line 325
    .local v0, "OTSseed":[B
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v2, v2, p3

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v3, v3, p3

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V

    .line 326
    .local v1, "treeToConstruct":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    .line 328
    const/4 v2, 0x3

    .line 329
    .local v2, "seedForTreehashIndex":I
    const/4 v3, 0x0

    .line 332
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v5, v5, p3

    const/4 v6, 0x1

    shl-int v5, v6, v5

    if-ge v4, v5, :cond_1

    .line 335
    if-ne v4, v2, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v5, v5, p3

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v6, v6, p3

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_0

    .line 337
    invoke-virtual {v1, p2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    .line 338
    mul-int/lit8 v2, v2, 0x2

    .line 339
    add-int/lit8 v3, v3, 0x1

    .line 342
    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v5, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 343
    new-instance v5, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v7, v7, p3

    invoke-direct {v5, v0, v6, v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    .line 344
    .local v5, "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 347
    .end local v4    # "i":I
    .end local v5    # "ots":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->wasFinished()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    return-object v1

    .line 352
    :cond_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "N\ufffdchster Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    const/4 v4, 0x0

    return-object v4
.end method

.method private initializeDefault()V
    .locals 6

    .line 452
    const/16 v0, 0xa

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    .line 453
    .local v0, "defh":[I
    const/4 v1, 0x3

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    .line 454
    .local v1, "defw":[I
    const/4 v2, 0x2

    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object v2

    .line 456
    .local v2, "defk":[I
    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    array-length v5, v0

    invoke-direct {v4, v5, v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V

    .line 457
    .local v3, "kgp":Lorg/bouncycastle/crypto/KeyGenerationParameters;
    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 459
    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 469
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 463
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 465
    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 6
    .param p1, "keySize"    # I
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySize",
            "secureRandom"
        }
    .end annotation

    .line 383
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/16 v2, 0xa

    if-gt p1, v2, :cond_0

    .line 385
    filled-new-array {v2}, [I

    move-result-object v2

    .line 386
    .local v2, "defh":[I
    filled-new-array {v0}, [I

    move-result-object v0

    .line 387
    .local v0, "defw":[I
    filled-new-array {v1}, [I

    move-result-object v1

    .line 389
    .local v1, "defk":[I
    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    array-length v5, v2

    invoke-direct {v4, v5, v2, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v3, p2, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V

    .line 390
    .end local v0    # "defw":[I
    .end local v1    # "defk":[I
    .end local v2    # "defh":[I
    .local v3, "kgp":Lorg/bouncycastle/crypto/KeyGenerationParameters;
    goto :goto_0

    .line 391
    .end local v3    # "kgp":Lorg/bouncycastle/crypto/KeyGenerationParameters;
    :cond_0
    const/16 v3, 0x14

    if-gt p1, v3, :cond_1

    .line 393
    filled-new-array {v2, v2}, [I

    move-result-object v0

    .line 394
    .local v0, "defh":[I
    const/4 v2, 0x5

    const/4 v3, 0x4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 395
    .local v2, "defw":[I
    filled-new-array {v1, v1}, [I

    move-result-object v1

    .line 396
    .restart local v1    # "defk":[I
    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    array-length v5, v0

    invoke-direct {v4, v5, v0, v2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v3, p2, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V

    .line 397
    .end local v0    # "defh":[I
    .end local v1    # "defk":[I
    .end local v2    # "defw":[I
    .restart local v3    # "kgp":Lorg/bouncycastle/crypto/KeyGenerationParameters;
    goto :goto_0

    .line 400
    .end local v3    # "kgp":Lorg/bouncycastle/crypto/KeyGenerationParameters;
    :cond_1
    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object v2

    .line 401
    .local v2, "defh":[I
    const/16 v3, 0x9

    filled-new-array {v3, v3, v3, v0}, [I

    move-result-object v0

    .line 402
    .local v0, "defw":[I
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    .line 403
    .restart local v1    # "defk":[I
    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    array-length v5, v2

    invoke-direct {v4, v5, v2, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v3, p2, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V

    .line 407
    .end local v0    # "defw":[I
    .end local v1    # "defk":[I
    .end local v2    # "defh":[I
    .restart local v3    # "kgp":Lorg/bouncycastle/crypto/KeyGenerationParameters;
    :goto_0
    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 409
    return-void
.end method

.method public initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 5
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 418
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

    .line 421
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

    .line 422
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    .line 424
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    .line 425
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    .line 426
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    .line 427
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    .line 430
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    .line 431
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    sub-int/2addr v0, v4

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v2, v2, [I

    aput v3, v2, v4

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    .line 434
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 437
    .local v0, "secRan":Ljava/security/SecureRandom;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    if-ge v1, v2, :cond_0

    .line 439
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 440
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "i":I
    :cond_0
    iput-boolean v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    .line 444
    return-void
.end method
