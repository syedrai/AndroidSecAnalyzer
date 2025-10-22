.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;
.super Ljava/lang/Object;
.source "SNTRUPrimeKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;)V
    .locals 0
    .param p1, "privateKey"    # Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    .line 14
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 33
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v2

    .line 21
    .local v2, "params":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getP()I

    move-result v3

    .line 22
    .local v3, "p":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getQ()I

    move-result v4

    .line 23
    .local v4, "q":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getW()I

    move-result v5

    .line 24
    .local v5, "w":I
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getRoundedPolynomialBytes()I

    move-result v6

    .line 29
    .local v6, "roundedPolynomialBytes":I
    new-array v7, v3, [B

    .line 30
    .local v7, "f":[B
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getF()[B

    move-result-object v8

    invoke-static {v7, v8, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedSmallPolynomial([B[BI)V

    .line 35
    new-array v8, v3, [B

    .line 36
    .local v8, "ginv":[B
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getGinv()[B

    move-result-object v9

    invoke-static {v8, v9, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedSmallPolynomial([B[BI)V

    .line 41
    new-array v9, v3, [S

    .line 42
    .local v9, "c":[S
    invoke-static {v9, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    .line 47
    new-array v10, v3, [S

    .line 48
    .local v10, "cf":[S
    invoke-static {v10, v9, v7, v3, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    .line 50
    new-array v11, v3, [S

    .line 51
    .local v11, "cf3":[S
    const/4 v12, 0x3

    invoke-static {v11, v10, v12, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->scalarMultiplicationInRQ([S[SII)V

    .line 56
    new-array v13, v3, [B

    .line 57
    .local v13, "e":[B
    invoke-static {v13, v11}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->transformRQToR3([B[S)V

    .line 62
    new-array v14, v3, [B

    .line 63
    .local v14, "ev":[B
    invoke-static {v14, v13, v8, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInR3([B[B[BI)V

    .line 68
    new-array v15, v3, [B

    .line 69
    .local v15, "r":[B
    invoke-static {v15, v14, v3, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkForSmallPolynomial([B[BII)V

    .line 75
    add-int/lit8 v16, v3, 0x3

    const/16 v17, 0x3

    div-int/lit8 v12, v16, 0x4

    new-array v12, v12, [B

    .line 76
    .local v12, "encR":[B
    invoke-static {v12, v15, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedSmallPolynomial([B[BI)V

    .line 81
    move-object/from16 v16, v2

    .end local v2    # "params":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
    .local v16, "params":Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
    new-array v2, v3, [S

    .line 82
    .local v2, "h":[S
    move/from16 v18, v5

    .end local v5    # "w":I
    .local v18, "w":I
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getPk()[B

    move-result-object v5

    invoke-static {v2, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedPolynomial([S[BII)V

    .line 87
    new-array v5, v3, [S

    .line 88
    .local v5, "hr":[S
    invoke-static {v5, v2, v15, v3, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    .line 90
    move-object/from16 v19, v2

    .end local v2    # "h":[S
    .local v19, "h":[S
    new-array v2, v3, [S

    .line 91
    .local v2, "cnew":[S
    invoke-static {v2, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    .line 96
    move-object/from16 v20, v5

    .end local v5    # "hr":[S
    .local v20, "hr":[S
    new-array v5, v6, [B

    .line 97
    .local v5, "C":[B
    invoke-static {v5, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    .line 102
    move-object/from16 v21, v2

    .end local v2    # "cnew":[S
    .local v21, "cnew":[S
    const/4 v2, 0x1

    move/from16 v22, v3

    .end local v3    # "p":I
    .local v22, "p":I
    new-array v3, v2, [B

    const/4 v2, 0x0

    aput-byte v17, v3, v2

    .line 103
    .local v3, "innerHCPrefix":[B
    invoke-static {v3, v12}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v2

    .line 105
    .local v2, "innerHCHash":[B
    move-object/from16 v25, v3

    .end local v3    # "innerHCPrefix":[B
    .local v25, "innerHCPrefix":[B
    array-length v3, v2

    const/16 v26, 0x2

    div-int/lit8 v3, v3, 0x2

    move/from16 v27, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getHash()[B

    move-result-object v3

    array-length v3, v3

    add-int v3, v27, v3

    new-array v3, v3, [B

    .line 106
    .local v3, "hcInput":[B
    move/from16 v27, v4

    .end local v4    # "q":I
    .local v27, "q":I
    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    move/from16 v28, v6

    const/4 v6, 0x0

    .end local v6    # "roundedPolynomialBytes":I
    .local v28, "roundedPolynomialBytes":I
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getHash()[B

    move-result-object v4

    array-length v6, v2

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v29, v2

    .end local v2    # "innerHCHash":[B
    .local v29, "innerHCHash":[B
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getHash()[B

    move-result-object v2

    array-length v2, v2

    move-object/from16 v30, v7

    const/4 v7, 0x0

    .end local v7    # "f":[B
    .local v30, "f":[B
    invoke-static {v4, v7, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    const/4 v2, 0x1

    new-array v4, v2, [B

    aput-byte v26, v4, v7

    .line 110
    .local v4, "hcPrefix":[B
    invoke-static {v4, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v2

    .line 115
    .local v2, "hc":[B
    array-length v6, v5

    array-length v7, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 116
    .local v6, "ct":[B
    array-length v7, v5

    move-object/from16 v31, v3

    const/4 v3, 0x0

    .end local v3    # "hcInput":[B
    .local v31, "hcInput":[B
    invoke-static {v5, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    array-length v7, v5

    move-object/from16 v32, v4

    .end local v4    # "hcPrefix":[B
    .local v32, "hcPrefix":[B
    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v3, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-static {v1, v6}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 128
    .local v3, "mask":I
    :goto_0
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getRho()[B

    move-result-object v4

    invoke-static {v12, v4, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->updateDiffMask([B[BI)V

    .line 133
    const/4 v4, 0x1

    new-array v7, v4, [B

    const/16 v24, 0x0

    aput-byte v17, v7, v24

    .line 134
    .local v7, "innerSSPrefix":[B
    invoke-static {v7, v12}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v4

    .line 136
    .local v4, "innerSSHash":[B
    array-length v0, v4

    div-int/lit8 v0, v0, 0x2

    move/from16 v17, v0

    array-length v0, v6

    add-int v0, v17, v0

    new-array v0, v0, [B

    .line 137
    .local v0, "ssInput":[B
    array-length v1, v4

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "hc":[B
    .local v17, "hc":[B
    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    array-length v1, v4

    div-int/lit8 v1, v1, 0x2

    move/from16 v24, v3

    .end local v3    # "mask":I
    .local v24, "mask":I
    array-length v3, v6

    invoke-static {v6, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    add-int/lit8 v3, v24, 0x1

    int-to-byte v1, v3

    const/4 v3, 0x1

    new-array v3, v3, [B

    aput-byte v1, v3, v2

    .line 141
    .local v3, "ssPrefix":[B
    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v1

    .line 143
    .local v1, "ssHash":[B
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getSessionKeySize()I

    move-result v23

    move-object/from16 v26, v0

    .end local v0    # "ssInput":[B
    .local v26, "ssInput":[B
    div-int/lit8 v0, v23, 0x8

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulationLength()I
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getRoundedPolynomialBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
