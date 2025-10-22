.class public Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RainbowPrivateKey.java"


# instance fields
.field private b1:[B

.field private b2:[B

.field private invA1:[[B

.field private invA2:[[B

.field private layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

.field private oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;

.field private vi:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 24
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 71
    .local v4, "asnA1":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    new-array v5, v5, [[B

    iput-object v5, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    .line 72
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 74
    iget-object v6, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    aput-object v7, v6, v5

    .line 72
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 78
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 79
    .local v6, "asnb1":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v6, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    iput-object v7, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    .line 82
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 83
    .local v8, "asnA2":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    new-array v9, v9, [[B

    iput-object v9, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    .line 84
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 86
    iget-object v10, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    aput-object v11, v10, v9

    .line 84
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 90
    .end local v9    # "j":I
    :cond_2
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 91
    .local v9, "asnb2":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v9, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v10

    iput-object v10, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    .line 94
    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 95
    .local v10, "asnvi":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    iput-object v11, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    .line 98
    const/4 v11, 0x6

    invoke-virtual {v1, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 100
    .local v11, "asnLayers":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    new-array v12, v12, [[[[B

    .line 101
    .local v12, "alphas":[[[[B
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v13

    new-array v13, v13, [[[[B

    .line 102
    .local v13, "betas":[[[[B
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v14

    new-array v14, v14, [[[B

    .line 103
    .local v14, "gammas":[[[B
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    new-array v15, v15, [[B

    .line 105
    .local v15, "etas":[[B
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "l":I
    :goto_3
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v7, v5, :cond_8

    .line 107
    invoke-virtual {v11, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 110
    .local v5, "asnLayer":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v5, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 111
    .local v2, "alphas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [[[B

    aput-object v3, v12, v7

    .line 112
    const/4 v3, 0x0

    .local v3, "m":I
    :goto_4
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 114
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 115
    .local v1, "alphas2d":Lorg/bouncycastle/asn1/ASN1Sequence;
    aget-object v20, v12, v7

    move-object/from16 v21, v2

    .end local v2    # "alphas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v21, "alphas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [[B

    aput-object v2, v20, v3

    .line 116
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_5
    move/from16 v20, v3

    .end local v3    # "m":I
    .local v20, "m":I
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 118
    aget-object v3, v12, v7

    aget-object v3, v3, v20

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v22

    check-cast v22, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v22

    aput-object v22, v3, v2

    .line 116
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v20

    goto :goto_5

    .line 112
    .end local v1    # "alphas2d":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "n":I
    :cond_3
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    .end local v20    # "m":I
    .restart local v3    # "m":I
    goto :goto_4

    .end local v21    # "alphas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v2, "alphas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_4
    move-object/from16 v21, v2

    move/from16 v20, v3

    .line 123
    .end local v2    # "alphas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "m":I
    .restart local v21    # "alphas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 124
    .local v1, "betas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [[[B

    aput-object v2, v13, v7

    .line 125
    const/4 v2, 0x0

    .local v2, "mb":I
    :goto_6
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 127
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 128
    .local v3, "betas2d":Lorg/bouncycastle/asn1/ASN1Sequence;
    aget-object v20, v13, v7

    move-object/from16 v22, v1

    .end local v1    # "betas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v22, "betas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [[B

    aput-object v1, v20, v2

    .line 129
    const/4 v1, 0x0

    .local v1, "nb":I
    :goto_7
    move/from16 v20, v2

    .end local v2    # "mb":I
    .local v20, "mb":I
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 131
    aget-object v2, v13, v7

    aget-object v2, v2, v20

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v23

    check-cast v23, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v23

    aput-object v23, v2, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v20

    goto :goto_7

    .line 125
    .end local v1    # "nb":I
    .end local v3    # "betas2d":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_5
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v1, v22

    .end local v20    # "mb":I
    .restart local v2    # "mb":I
    goto :goto_6

    .end local v22    # "betas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v1, "betas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_6
    move-object/from16 v22, v1

    move/from16 v20, v2

    .line 136
    .end local v1    # "betas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "mb":I
    .restart local v22    # "betas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 137
    .local v2, "gammas2d":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [[B

    aput-object v3, v14, v7

    .line 138
    const/4 v3, 0x0

    .local v3, "mg":I
    :goto_8
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 140
    aget-object v1, v14, v7

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v20

    check-cast v20, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v20

    aput-object v20, v1, v3

    .line 138
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x2

    goto :goto_8

    .line 144
    .end local v3    # "mg":I
    :cond_7
    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    aput-object v3, v15, v7

    .line 105
    .end local v2    # "gammas2d":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v5    # "asnLayer":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v21    # "alphas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v22    # "betas3d":Lorg/bouncycastle/asn1/ASN1Sequence;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    goto/16 :goto_3

    .line 147
    .end local v7    # "l":I
    :cond_8
    iget-object v1, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    array-length v1, v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 148
    .local v1, "numOfLayers":I
    new-array v2, v1, [Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    iput-object v2, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    .line 149
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_9

    .line 151
    new-instance v16, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    iget-object v3, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    aget-byte v17, v3, v2

    iget-object v3, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    add-int/lit8 v5, v2, 0x1

    aget-byte v18, v3, v5

    aget-object v3, v12, v2

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[[B)[[[S

    move-result-object v19

    aget-object v3, v13, v2

    .line 152
    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[[B)[[[S

    move-result-object v20

    aget-object v3, v14, v2

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v21

    aget-object v3, v15, v2

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v22

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;-><init>(BB[[[S[[[S[[S[S)V

    .line 153
    .local v16, "l":Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
    iget-object v3, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    aput-object v16, v3, v2

    .line 149
    .end local v16    # "l":Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 156
    .end local v2    # "i":I
    :cond_9
    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;)V
    .locals 3
    .param p1, "invA1"    # [[S
    .param p2, "b1"    # [S
    .param p3, "invA2"    # [[S
    .param p4, "b2"    # [S
    .param p5, "vi"    # [I
    .param p6, "layers"    # [Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
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
            "invA1",
            "b1",
            "invA2",
            "b2",
            "vi",
            "layers"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 161
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 162
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    .line 163
    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    .line 164
    invoke-static {p3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    .line 165
    invoke-static {p4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    .line 166
    invoke-static {p5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertIntArray([I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    .line 167
    iput-object p6, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    .line 168
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 172
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;

    if-eqz v0, :cond_0

    .line 174
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;

    return-object v0

    .line 176
    :cond_0
    if-eqz p0, :cond_1

    .line 178
    new-instance v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 181
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getB1()[S
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v0

    return-object v0
.end method

.method public getB2()[S
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v0

    return-object v0
.end method

.method public getInvA1()[[S
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getInvA2()[[S
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getLayers()[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getVi()[I
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArraytoInt([B)[I

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 20

    .line 251
    move-object/from16 v0, p0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 254
    .local v1, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 264
    :goto_0
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 265
    .local v2, "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 267
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA1:[[B

    aget-object v5, v5, v3

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 269
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 273
    .local v3, "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b1:[B

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 274
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 277
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 278
    .local v4, "asnA2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v6, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 280
    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v7, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->invA2:[[B

    aget-object v7, v7, v5

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 278
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 282
    .end local v5    # "i":I
    :cond_2
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 285
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 286
    .local v5, "asnb2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v7, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->b2:[B

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 287
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 290
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 291
    .local v6, "asnvi":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v8, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->vi:[B

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 292
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 295
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 297
    .local v7, "asnLayers":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v8, 0x0

    .local v8, "l":I
    :goto_3
    iget-object v9, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    array-length v9, v9

    if-ge v8, v9, :cond_8

    .line 299
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 302
    .local v9, "aLayer":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v10, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    aget-object v10, v10, v8

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[[S)[[[B

    move-result-object v10

    .line 303
    .local v10, "alphas":[[[B
    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 304
    .local v11, "alphas3d":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    array-length v13, v10

    if-ge v12, v13, :cond_4

    .line 306
    new-instance v13, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 307
    .local v13, "alphas2d":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    aget-object v15, v10, v12

    array-length v15, v15

    if-ge v14, v15, :cond_3

    .line 309
    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v16, v10, v12

    move-object/from16 v17, v2

    .end local v2    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v17, "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v2, v16, v14

    invoke-direct {v15, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v13, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 307
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v17

    goto :goto_5

    .end local v17    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v2    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3
    move-object/from16 v17, v2

    .line 311
    .end local v2    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v14    # "j":I
    .restart local v17    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v11, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 304
    .end local v13    # "alphas2d":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v17

    goto :goto_4

    .end local v17    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v2    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4
    move-object/from16 v17, v2

    .line 313
    .end local v2    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12    # "i":I
    .restart local v17    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 316
    iget-object v2, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[[S)[[[B

    move-result-object v2

    .line 317
    .local v2, "betas":[[[B
    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 318
    .local v12, "betas3d":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    array-length v14, v2

    if-ge v13, v14, :cond_6

    .line 320
    new-instance v14, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 321
    .local v14, "betas2d":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_7
    move-object/from16 v16, v2

    .end local v2    # "betas":[[[B
    .local v16, "betas":[[[B
    aget-object v2, v16, v13

    array-length v2, v2

    if-ge v15, v2, :cond_5

    .line 323
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v18, v16, v13

    move-object/from16 v19, v3

    .end local v3    # "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v19, "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v3, v18, v15

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v14, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 321
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    goto :goto_7

    .end local v19    # "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v3    # "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_5
    move-object/from16 v19, v3

    .line 325
    .end local v3    # "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v15    # "j":I
    .restart local v19    # "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v14}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v12, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 318
    .end local v14    # "betas2d":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v16

    goto :goto_6

    .end local v16    # "betas":[[[B
    .end local v19    # "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v2    # "betas":[[[B
    .restart local v3    # "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v19, v3

    .line 327
    .end local v2    # "betas":[[[B
    .end local v3    # "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v13    # "i":I
    .restart local v16    # "betas":[[[B
    .restart local v19    # "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 330
    iget-object v2, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffGamma()[[S

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object v2

    .line 331
    .local v2, "gammas":[[B
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 332
    .local v3, "asnG":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    array-length v14, v2

    if-ge v13, v14, :cond_7

    .line 334
    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v15, v2, v13

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 332
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 336
    .end local v13    # "i":I
    :cond_7
    new-instance v13, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 339
    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v14, v0, Lorg/bouncycastle/pqc/asn1/RainbowPrivateKey;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    aget-object v14, v14, v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffEta()[S

    move-result-object v14

    invoke-static {v14}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 342
    new-instance v13, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 297
    .end local v2    # "gammas":[[B
    .end local v3    # "asnG":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "aLayer":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v10    # "alphas":[[[B
    .end local v11    # "alphas3d":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12    # "betas3d":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v16    # "betas":[[[B
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    goto/16 :goto_3

    .end local v17    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v19    # "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v2, "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v3, "asnb1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_8
    move-object/from16 v17, v2

    .line 345
    .end local v2    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v8    # "l":I
    .restart local v17    # "asnA1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 347
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method
