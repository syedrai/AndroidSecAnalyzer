.class public Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "GMSSPrivateKey.java"


# instance fields
.field private primitive:Lorg/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 16
    .param p1, "mtsPrivateKey"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mtsPrivateKey"
        }
    .end annotation

    .line 40
    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 43
    .local v1, "indexPart":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 44
    .local v2, "index":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 46
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->checkBigIntegerInIntRange(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    aput v4, v2, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 51
    .local v3, "curSeedsPart":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [[B

    .line 52
    .local v4, "curSeeds":[[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 54
    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v6

    aput-object v6, v4, v5

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 58
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 59
    .local v5, "nextNextSeedsPart":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    new-array v6, v6, [[B

    .line 60
    .local v6, "nextNextSeeds":[[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_2

    .line 62
    invoke-virtual {v5, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v8

    aput-object v8, v6, v7

    .line 60
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 66
    .end local v7    # "i":I
    :cond_2
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 69
    .local v7, "curAuthPart0":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    new-array v8, v8, [[[B

    .line 70
    .local v8, "curAuth":[[[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    array-length v10, v8

    if-ge v9, v10, :cond_4

    .line 72
    invoke-virtual {v7, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 73
    .local v10, "curAuthPart1":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    new-array v11, v11, [[B

    aput-object v11, v8, v9

    .line 74
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    aget-object v12, v8, v9

    array-length v12, v12

    if-ge v11, v12, :cond_3

    .line 76
    aget-object v12, v8, v9

    invoke-virtual {v10, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v13

    aput-object v13, v12, v11

    .line 74
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 70
    .end local v11    # "j":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 81
    .end local v9    # "i":I
    .end local v10    # "curAuthPart1":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_4
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 84
    .local v9, "nextAuthPart0":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    new-array v10, v10, [[[B

    .line 85
    .local v10, "nextAuth":[[[B
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    array-length v12, v10

    if-ge v11, v12, :cond_6

    .line 87
    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 88
    .local v12, "nextAuthPart1":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v13

    new-array v13, v13, [[B

    aput-object v13, v10, v11

    .line 89
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_6
    aget-object v14, v10, v11

    array-length v14, v14

    if-ge v13, v14, :cond_5

    .line 91
    aget-object v14, v10, v11

    invoke-virtual {v12, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v15

    aput-object v15, v14, v13

    .line 89
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 85
    .end local v13    # "j":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 96
    .end local v11    # "i":I
    .end local v12    # "nextAuthPart1":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_6
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 103
    .local v11, "seqOfcurTreehash0":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    new-array v12, v12, [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    .line 664
    .local v12, "curTreehash":[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    return-void
.end method

.method public constructor <init>([I[[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 25
    .param p1, "index"    # [I
    .param p2, "currentSeed"    # [[B
    .param p3, "nextNextSeed"    # [[B
    .param p4, "currentAuthPath"    # [[[B
    .param p5, "nextAuthPath"    # [[[B
    .param p6, "currentTreehash"    # [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .param p7, "nextTreehash"    # [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .param p8, "currentStack"    # [Ljava/util/Vector;
    .param p9, "nextStack"    # [Ljava/util/Vector;
    .param p10, "currentRetain"    # [[Ljava/util/Vector;
    .param p11, "nextRetain"    # [[Ljava/util/Vector;
    .param p12, "keep"    # [[[B
    .param p13, "nextNextLeaf"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .param p14, "upperLeaf"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .param p15, "upperTreehashLeaf"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .param p16, "minTreehash"    # [I
    .param p17, "nextRoot"    # [[B
    .param p18, "nextNextRoot"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    .param p19, "currentRootSig"    # [[B
    .param p20, "nextRootSig"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;
    .param p21, "gmssParameterset"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;
    .param p22, "digestAlg"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            "index",
            "currentSeed",
            "nextNextSeed",
            "currentAuthPath",
            "nextAuthPath",
            "currentTreehash",
            "nextTreehash",
            "currentStack",
            "nextStack",
            "currentRetain",
            "nextRetain",
            "keep",
            "nextNextLeaf",
            "upperLeaf",
            "upperTreehashLeaf",
            "minTreehash",
            "nextRoot",
            "nextNextRoot",
            "currentRootSig",
            "nextRootSig",
            "gmssParameterset",
            "digestAlg"
        }
    .end annotation

    .line 676
    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 677
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x0

    aput-object p22, v0, v1

    move-object/from16 v24, v0

    .line 678
    .local v24, "names":[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v8, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    invoke-direct/range {v2 .. v24}, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->encode([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->primitive:Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 679
    return-void
.end method

.method private static checkBigIntegerInIntRange(Lorg/bouncycastle/asn1/ASN1Encodable;)I
    .locals 1
    .param p0, "a"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1311
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method private encode([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 59
    .param p1, "index"    # [I
    .param p2, "currentSeeds"    # [[B
    .param p3, "nextNextSeeds"    # [[B
    .param p4, "currentAuthPaths"    # [[[B
    .param p5, "nextAuthPaths"    # [[[B
    .param p6, "keep"    # [[[B
    .param p7, "currentTreehash"    # [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .param p8, "nextTreehash"    # [[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;
    .param p9, "currentStack"    # [Ljava/util/Vector;
    .param p10, "nextStack"    # [Ljava/util/Vector;
    .param p11, "currentRetain"    # [[Ljava/util/Vector;
    .param p12, "nextRetain"    # [[Ljava/util/Vector;
    .param p13, "nextNextLeaf"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .param p14, "upperLeaf"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .param p15, "upperTreehashLeaf"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;
    .param p16, "minTreehash"    # [I
    .param p17, "nextRoot"    # [[B
    .param p18, "nextNextRoot"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;
    .param p19, "currentRootSig"    # [[B
    .param p20, "nextRootSig"    # [Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;
    .param p21, "gmssParameterset"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;
    .param p22, "algorithms"    # [Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            "index",
            "currentSeeds",
            "nextNextSeeds",
            "currentAuthPaths",
            "nextAuthPaths",
            "keep",
            "currentTreehash",
            "nextTreehash",
            "currentStack",
            "nextStack",
            "currentRetain",
            "nextRetain",
            "nextNextLeaf",
            "upperLeaf",
            "upperTreehashLeaf",
            "minTreehash",
            "nextRoot",
            "nextNextRoot",
            "currentRootSig",
            "nextRootSig",
            "gmssParameterset",
            "algorithms"
        }
    .end annotation

    .line 726
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    new-instance v16, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v17, v16

    .line 729
    .local v17, "result":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v16, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v18, v16

    .line 730
    .local v18, "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/16 v16, 0x0

    move/from16 v15, v16

    .local v15, "i":I
    :goto_0
    array-length v14, v0

    if-ge v15, v14, :cond_0

    .line 732
    new-instance v14, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v0, p1, v15

    int-to-long v12, v0

    invoke-direct {v14, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v18

    .end local v18    # "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 730
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    .end local v0    # "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v18    # "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_0
    move-object/from16 v0, v18

    .line 734
    .end local v15    # "i":I
    .end local v18    # "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v0    # "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v13, v17

    .end local v17    # "result":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v13, "result":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v13, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 737
    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 738
    .local v12, "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v15, v1

    if-ge v14, v15, :cond_1

    .line 740
    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v16, v0

    .end local v0    # "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v16, "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v0, v1, v14

    invoke-direct {v15, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v12, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 738
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    .end local v16    # "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v0    # "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1
    move-object/from16 v16, v0

    .line 742
    .end local v0    # "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v14    # "i":I
    .restart local v16    # "indexPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 745
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 746
    .local v0, "nextNextSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_2
    array-length v15, v2

    if-ge v14, v15, :cond_2

    .line 748
    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v1, v2, v14

    invoke-direct {v15, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 746
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p2

    goto :goto_2

    .line 750
    .end local v14    # "i":I
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 753
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 754
    .local v1, "curAuthPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v14, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 755
    .local v14, "curAuthPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_3
    move-object/from16 v17, v0

    .end local v0    # "nextNextSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v17, "nextNextSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v0, v3

    if-ge v15, v0, :cond_4

    .line 757
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_4
    aget-object v2, v3, v15

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 759
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v18, v3, v15

    move/from16 v19, v0

    .end local v0    # "j":I
    .local v19, "j":I
    aget-object v0, v18, v19

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 757
    add-int/lit8 v0, v19, 0x1

    move-object/from16 v2, p3

    .end local v19    # "j":I
    .restart local v0    # "j":I
    goto :goto_4

    :cond_3
    move/from16 v19, v0

    .line 761
    .end local v0    # "j":I
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 762
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v1, v0

    .line 755
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p3

    move-object/from16 v0, v17

    goto :goto_3

    .line 764
    .end local v15    # "i":I
    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v14}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 767
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 768
    .local v0, "nextAuthPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 769
    .local v2, "nextAuthPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    move-object/from16 v18, v1

    .end local v1    # "curAuthPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v18, "curAuthPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v1, v4

    if-ge v15, v1, :cond_6

    .line 771
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    aget-object v3, v4, v15

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 773
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v19, v4, v15

    move/from16 v20, v1

    .end local v1    # "j":I
    .local v20, "j":I
    aget-object v1, v19, v20

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 771
    add-int/lit8 v1, v20, 0x1

    move-object/from16 v3, p4

    .end local v20    # "j":I
    .restart local v1    # "j":I
    goto :goto_6

    :cond_5
    move/from16 v20, v1

    .line 775
    .end local v1    # "j":I
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 776
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v0, v1

    .line 769
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p4

    move-object/from16 v1, v18

    goto :goto_5

    .line 778
    .end local v15    # "i":I
    :cond_6
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 781
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 782
    .local v1, "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 783
    .local v3, "seqOfTreehash1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 784
    .local v15, "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v19, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 785
    .local v19, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v20, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 787
    .local v20, "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/16 v21, 0x0

    move/from16 v58, v21

    move-object/from16 v21, v0

    move/from16 v0, v58

    .local v0, "i":I
    .local v21, "nextAuthPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_7
    move-object/from16 v22, v2

    .end local v2    # "nextAuthPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v22, "nextAuthPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v2, v6

    const/16 v23, 0x5

    const/16 v24, 0x4

    const/16 v25, 0x3

    const/16 v26, 0x2

    const/16 v27, 0x0

    const/16 v28, 0x1

    if-ge v0, v2, :cond_a

    .line 789
    const/4 v2, 0x0

    move/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v4, v20

    .end local v19    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v20    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v2, "j":I
    .local v4, "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v29, "i":I
    :goto_8
    aget-object v6, p7, v29

    array-length v6, v6

    if-ge v2, v6, :cond_9

    .line 791
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    move/from16 v19, v2

    .end local v2    # "j":I
    .local v19, "j":I
    aget-object v2, p22, v27

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v15, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 793
    aget-object v2, p7, v29

    aget-object v2, v2, v19

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v2

    aget v2, v2, v28

    .line 795
    .local v2, "tailLength":I
    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v20, p7, v29

    aget-object v20, v20, v19

    .line 796
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v20

    move-object/from16 v30, v12

    .end local v12    # "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v30, "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v12, v20, v27

    invoke-direct {v6, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 795
    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 797
    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v12, p7, v29

    aget-object v12, v12, v19

    .line 798
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v12

    aget-object v12, v12, v28

    invoke-direct {v6, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 797
    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 799
    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v12, p7, v29

    aget-object v12, v12, v19

    .line 800
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v12

    aget-object v12, v12, v26

    invoke-direct {v6, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 799
    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 801
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_9
    if-ge v6, v2, :cond_7

    .line 803
    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v20, p7, v29

    aget-object v20, v20, v19

    .line 804
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v20

    add-int/lit8 v31, v6, 0x3

    move/from16 v32, v6

    .end local v6    # "k":I
    .local v32, "k":I
    aget-object v6, v20, v31

    invoke-direct {v12, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 803
    invoke-virtual {v0, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 801
    add-int/lit8 v6, v32, 0x1

    .end local v32    # "k":I
    .restart local v6    # "k":I
    goto :goto_9

    :cond_7
    move/from16 v32, v6

    .line 806
    .end local v6    # "k":I
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 807
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v0, v6

    .line 809
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, p7, v29

    aget-object v12, v12, v19

    .line 810
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v12

    aget v12, v12, v27

    int-to-long v11, v12

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 809
    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 811
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v11, v2

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 812
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v11, p7, v29

    aget-object v11, v11, v19

    .line 813
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v11

    aget v11, v11, v26

    int-to-long v11, v11

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 812
    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 814
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v11, p7, v29

    aget-object v11, v11, v19

    .line 815
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v11

    aget v11, v11, v25

    int-to-long v11, v11

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 814
    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 816
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v11, p7, v29

    aget-object v11, v11, v19

    .line 817
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v11

    aget v11, v11, v24

    int-to-long v11, v11

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 816
    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 818
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v11, p7, v29

    aget-object v11, v11, v19

    .line 819
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v11

    aget v11, v11, v23

    int-to-long v11, v11

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 818
    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 820
    const/4 v6, 0x0

    .restart local v6    # "k":I
    :goto_a
    if-ge v6, v2, :cond_8

    .line 822
    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, p7, v29

    aget-object v12, v12, v19

    .line 823
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v12

    add-int/lit8 v20, v6, 0x6

    aget v12, v12, v20

    int-to-long v9, v12

    invoke-direct {v11, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 822
    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 820
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 825
    .end local v6    # "k":I
    :cond_8
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v15, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 826
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v4, v6

    .line 828
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 829
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v15, v6

    .line 789
    .end local v2    # "tailLength":I
    add-int/lit8 v2, v19, 0x1

    move-object/from16 v6, p7

    move-object/from16 v12, v30

    .end local v19    # "j":I
    .local v2, "j":I
    goto/16 :goto_8

    .end local v30    # "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v12    # "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_9
    move/from16 v19, v2

    move-object/from16 v30, v12

    .line 831
    .end local v2    # "j":I
    .end local v12    # "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v30    # "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 832
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v3, v2

    .line 787
    add-int/lit8 v2, v29, 0x1

    move-object/from16 v6, p7

    move-object/from16 v19, v0

    move v0, v2

    move-object/from16 v20, v4

    move-object/from16 v2, v22

    move-object/from16 v4, p5

    .end local v29    # "i":I
    .local v2, "i":I
    goto/16 :goto_7

    .end local v2    # "i":I
    .end local v4    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v30    # "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "i":I
    .restart local v12    # "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v19, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v20    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_a
    move/from16 v29, v0

    move-object/from16 v30, v12

    .line 834
    .end local v0    # "i":I
    .end local v12    # "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v30    # "curSeedsPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 837
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 838
    .end local v1    # "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 839
    .end local v3    # "seqOfTreehash1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v1, "seqOfTreehash1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 840
    .end local v15    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v2, "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 841
    .end local v19    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v3, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 843
    .end local v20    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v4    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b
    array-length v9, v7

    if-ge v6, v9, :cond_e

    .line 845
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_c
    aget-object v10, v7, v6

    array-length v10, v10

    if-ge v9, v10, :cond_d

    .line 847
    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v11, p22, v27

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 849
    aget-object v10, v7, v6

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v10

    aget v10, v10, v28

    .line 851
    .local v10, "tailLength":I
    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v12, v7, v6

    aget-object v12, v12, v9

    .line 852
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v12

    aget-object v12, v12, v27

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 851
    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 853
    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v12, v7, v6

    aget-object v12, v12, v9

    .line 854
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v12

    aget-object v12, v12, v28

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 853
    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 855
    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v12, v7, v6

    aget-object v12, v12, v9

    .line 856
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v12

    aget-object v12, v12, v26

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 855
    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 857
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_d
    if-ge v11, v10, :cond_b

    .line 859
    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v15, v7, v6

    aget-object v15, v15, v9

    .line 860
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v15

    add-int/lit8 v19, v11, 0x3

    aget-object v15, v15, v19

    invoke-direct {v12, v15}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 859
    invoke-virtual {v3, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 857
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 862
    .end local v11    # "k":I
    :cond_b
    new-instance v11, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 863
    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v3, v11

    .line 865
    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v7, v6

    aget-object v12, v12, v9

    .line 866
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v12

    aget v12, v12, v27

    move v15, v6

    .end local v6    # "i":I
    .local v15, "i":I
    int-to-long v6, v12

    invoke-direct {v11, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 867
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v11, v10

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 868
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, p8, v15

    aget-object v7, v7, v9

    .line 869
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v7

    aget v7, v7, v26

    int-to-long v11, v7

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 870
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, p8, v15

    aget-object v7, v7, v9

    .line 871
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v7

    aget v7, v7, v25

    int-to-long v11, v7

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 872
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, p8, v15

    aget-object v7, v7, v9

    .line 873
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v7

    aget v7, v7, v24

    int-to-long v11, v7

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 874
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v7, p8, v15

    aget-object v7, v7, v9

    .line 875
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v7

    aget v7, v7, v23

    int-to-long v11, v7

    invoke-direct {v6, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 876
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_e
    if-ge v6, v10, :cond_c

    .line 878
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v11, p8, v15

    aget-object v11, v11, v9

    .line 879
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v11

    add-int/lit8 v12, v6, 0x6

    aget v11, v11, v12

    int-to-long v11, v11

    invoke-direct {v7, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 878
    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 876
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 881
    .end local v6    # "k":I
    :cond_c
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 882
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v4, v6

    .line 884
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 885
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v6

    .line 845
    .end local v10    # "tailLength":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, p8

    move v6, v15

    goto/16 :goto_c

    .end local v15    # "i":I
    .local v6, "i":I
    :cond_d
    move v15, v6

    .line 887
    .end local v6    # "i":I
    .end local v9    # "j":I
    .restart local v15    # "i":I
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 888
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v1, v6

    .line 843
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v7, p8

    .end local v15    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_b

    :cond_e
    move v15, v6

    .line 890
    .end local v6    # "i":I
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 893
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 894
    .local v6, "keepPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 895
    .local v7, "keepPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_f
    array-length v10, v5

    if-ge v9, v10, :cond_10

    .line 897
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_10
    aget-object v11, v5, v9

    array-length v11, v11

    if-ge v10, v11, :cond_f

    .line 899
    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v12, v5, v9

    aget-object v12, v12, v10

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 897
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 901
    .end local v10    # "j":I
    :cond_f
    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 902
    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v6, v10

    .line 895
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 904
    .end local v9    # "i":I
    :cond_10
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 907
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 908
    .local v9, "curStackPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 909
    .local v10, "curStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_11
    array-length v12, v8

    if-ge v11, v12, :cond_12

    .line 911
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_12
    aget-object v15, v8, v11

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v12, v15, :cond_11

    .line 913
    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v19, v0

    .end local v0    # "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v19, "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v0, v8, v11

    .line 914
    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v15, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 913
    invoke-virtual {v9, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 911
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v19

    goto :goto_12

    .end local v19    # "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v0    # "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_11
    move-object/from16 v19, v0

    .line 916
    .end local v0    # "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12    # "j":I
    .restart local v19    # "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 917
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v9, v0

    .line 909
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v19

    goto :goto_11

    .end local v19    # "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v0    # "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_12
    move-object/from16 v19, v0

    .line 919
    .end local v0    # "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "i":I
    .restart local v19    # "seqOfTreehash0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 922
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 923
    .local v0, "nextStackPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 924
    .local v11, "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_13
    move-object/from16 v15, p10

    move-object/from16 v20, v1

    .end local v1    # "seqOfTreehash1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v20, "seqOfTreehash1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v1, v15

    if-ge v12, v1, :cond_14

    .line 926
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_14
    aget-object v29, v15, v12

    move-object/from16 v31, v2

    .end local v2    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v31, "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual/range {v29 .. v29}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 928
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v29, v3

    .end local v3    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v29, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v3, v15, v12

    .line 929
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 928
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 926
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v29

    move-object/from16 v2, v31

    goto :goto_14

    .end local v29    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v3    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_13
    move-object/from16 v29, v3

    .line 931
    .end local v1    # "j":I
    .end local v3    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v29    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v11, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 932
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v0, v1

    .line 924
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    goto :goto_13

    .end local v29    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v31    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v2    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v3    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_14
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    .line 934
    .end local v2    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12    # "i":I
    .restart local v29    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v31    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 937
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 938
    .local v1, "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 939
    .local v2, "currentRetainPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 940
    .local v3, "currentRetainPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_15
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    move-object/from16 v0, p11

    .end local v0    # "nextStackPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1    # "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v32, "nextStackPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v33, "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v1, v0

    if-ge v12, v1, :cond_17

    .line 942
    const/4 v1, 0x0

    move-object/from16 v0, v33

    .end local v33    # "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v1, "j":I
    :goto_16
    move-object/from16 v34, v4

    .end local v4    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v34, "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v4, p11, v12

    array-length v4, v4

    if-ge v1, v4, :cond_16

    .line 944
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_17
    aget-object v33, p11, v12

    aget-object v33, v33, v1

    move/from16 v35, v1

    .end local v1    # "j":I
    .local v35, "j":I
    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v4, v1, :cond_15

    .line 946
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v33, p11, v12

    aget-object v5, v33, v35

    .line 947
    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v1, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 946
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 944
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, p6

    move/from16 v1, v35

    goto :goto_17

    .line 949
    .end local v4    # "k":I
    :cond_15
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 950
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v0, v1

    .line 942
    add-int/lit8 v1, v35, 0x1

    move-object/from16 v5, p6

    move-object/from16 v4, v34

    .end local v35    # "j":I
    .restart local v1    # "j":I
    goto :goto_16

    :cond_16
    move/from16 v35, v1

    .line 952
    .end local v1    # "j":I
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 953
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v1

    .line 940
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p6

    move-object v1, v0

    move-object/from16 v0, v32

    move-object/from16 v4, v34

    goto :goto_15

    .end local v0    # "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v34    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v4, "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v33    # "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_17
    move-object/from16 v34, v4

    .line 955
    .end local v4    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12    # "i":I
    .restart local v34    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 958
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 959
    .local v0, "nextRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 960
    .local v1, "nextRetainPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 961
    .local v4, "nextRetainPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    move-object/from16 v12, p12

    move-object/from16 v35, v0

    .end local v0    # "nextRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v35, "nextRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v0, v12

    if-ge v5, v0, :cond_1a

    .line 963
    const/4 v0, 0x0

    move-object/from16 v36, v2

    move-object/from16 v2, v35

    .end local v35    # "nextRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "j":I
    .local v2, "nextRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v36, "currentRetainPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_19
    move-object/from16 v37, v3

    .end local v3    # "currentRetainPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v37, "currentRetainPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v3, v12, v5

    array-length v3, v3

    if-ge v0, v3, :cond_19

    .line 965
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1a
    aget-object v35, v12, v5

    aget-object v35, v35, v0

    move/from16 v38, v0

    .end local v0    # "j":I
    .local v38, "j":I
    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_18

    .line 967
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v35, v12, v5

    move/from16 v39, v5

    .end local v5    # "i":I
    .local v39, "i":I
    aget-object v5, v35, v38

    .line 968
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 967
    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 965
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v38

    move/from16 v5, v39

    goto :goto_1a

    .end local v39    # "i":I
    .restart local v5    # "i":I
    :cond_18
    move/from16 v39, v5

    .line 970
    .end local v3    # "k":I
    .end local v5    # "i":I
    .restart local v39    # "i":I
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 971
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v0

    .line 963
    add-int/lit8 v0, v38, 0x1

    move-object/from16 v3, v37

    .end local v38    # "j":I
    .restart local v0    # "j":I
    goto :goto_19

    .end local v39    # "i":I
    .restart local v5    # "i":I
    :cond_19
    move/from16 v38, v0

    move/from16 v39, v5

    .line 973
    .end local v0    # "j":I
    .end local v5    # "i":I
    .restart local v39    # "i":I
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 974
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v1, v0

    .line 961
    add-int/lit8 v5, v39, 0x1

    move-object v0, v2

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    .end local v39    # "i":I
    .restart local v5    # "i":I
    goto :goto_18

    .end local v36    # "currentRetainPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v37    # "currentRetainPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v2, "currentRetainPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v3, "currentRetainPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v35    # "nextRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1a
    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move/from16 v39, v5

    .line 976
    .end local v2    # "currentRetainPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "currentRetainPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v5    # "i":I
    .restart local v36    # "currentRetainPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v37    # "currentRetainPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 979
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 980
    .local v0, "seqOfLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 981
    .end local v31    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v2, "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 982
    .end local v29    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v3, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 984
    .end local v34    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v5, "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/16 v29, 0x0

    move/from16 v58, v29

    move-object/from16 v29, v1

    move/from16 v1, v58

    .local v1, "i":I
    .local v29, "nextRetainPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_1b
    move-object/from16 v31, v4

    move-object/from16 v34, v6

    move-object/from16 v4, p13

    .end local v4    # "nextRetainPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "keepPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v31, "nextRetainPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v34, "keepPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v6, v4

    if-ge v1, v6, :cond_1b

    .line 986
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    move/from16 v38, v1

    .end local v1    # "i":I
    .local v38, "i":I
    aget-object v1, p22, v27

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 988
    aget-object v1, v4, v38

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v1

    .line 989
    .local v1, "tempByte":[[B
    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v39, v1

    .end local v1    # "tempByte":[[B
    .local v39, "tempByte":[[B
    aget-object v1, v39, v27

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 990
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v6, v39, v28

    invoke-direct {v1, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 991
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v6, v39, v26

    invoke-direct {v1, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 992
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v6, v39, v25

    invoke-direct {v1, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 993
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 994
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v3, v1

    .line 996
    aget-object v1, v4, v38

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v1

    .line 997
    .local v1, "tempInt":[I
    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object/from16 v40, v1

    .end local v1    # "tempInt":[I
    .local v40, "tempInt":[I
    aget v1, v40, v27

    move-object/from16 v41, v3

    .end local v3    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v41, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    int-to-long v3, v1

    invoke-direct {v6, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 998
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v3, v40, v28

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 999
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v3, v40, v26

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1000
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v3, v40, v25

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1001
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1002
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v5, v1

    .line 1004
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1005
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v1

    .line 984
    .end local v39    # "tempByte":[[B
    .end local v40    # "tempInt":[I
    add-int/lit8 v1, v38, 0x1

    move-object/from16 v4, v31

    move-object/from16 v6, v34

    move-object/from16 v3, v41

    .end local v38    # "i":I
    .local v1, "i":I
    goto/16 :goto_1b

    .end local v41    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v3    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1b
    move/from16 v38, v1

    .line 1007
    .end local v1    # "i":I
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1010
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1011
    .local v1, "seqOfUpperLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1012
    .end local v2    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v4, "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1013
    .end local v3    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v2, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1015
    .end local v5    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v3, "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    move-object/from16 v6, p14

    move-object/from16 v38, v0

    .end local v0    # "seqOfLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v38, "seqOfLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v0, v6

    if-ge v5, v0, :cond_1c

    .line 1017
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    move/from16 v39, v5

    .end local v5    # "i":I
    .local v39, "i":I
    aget-object v5, p22, v27

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1019
    aget-object v0, v6, v39

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v0

    .line 1020
    .local v0, "tempByte":[[B
    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v40, v0

    .end local v0    # "tempByte":[[B
    .local v40, "tempByte":[[B
    aget-object v0, v40, v27

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1021
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v5, v40, v28

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1022
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v5, v40, v26

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1023
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v5, v40, v25

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1024
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1025
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v0

    .line 1027
    aget-object v0, v6, v39

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v0

    .line 1028
    .local v0, "tempInt":[I
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object/from16 v41, v0

    .end local v0    # "tempInt":[I
    .local v41, "tempInt":[I
    aget v0, v41, v27

    move-object/from16 v42, v7

    .end local v7    # "keepPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v42, "keepPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    int-to-long v6, v0

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1029
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v5, v41, v28

    int-to-long v5, v5

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1030
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v5, v41, v26

    int-to-long v5, v5

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1031
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v5, v41, v25

    int-to-long v5, v5

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1032
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1033
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v3, v0

    .line 1035
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1036
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v4, v0

    .line 1015
    .end local v40    # "tempByte":[[B
    .end local v41    # "tempInt":[I
    add-int/lit8 v5, v39, 0x1

    move-object/from16 v0, v38

    move-object/from16 v7, v42

    .end local v39    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_1c

    .end local v42    # "keepPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v7    # "keepPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1c
    move/from16 v39, v5

    move-object/from16 v42, v7

    .line 1038
    .end local v5    # "i":I
    .end local v7    # "keepPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v42    # "keepPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1041
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1042
    .local v0, "seqOfUpperTreehashLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1043
    .end local v4    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v5, "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1044
    .end local v2    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v4, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1046
    .end local v3    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v2, "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    move-object/from16 v6, p15

    array-length v7, v6

    if-ge v3, v7, :cond_1d

    .line 1048
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v39, v1

    .end local v1    # "seqOfUpperLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v39, "seqOfUpperLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v1, p22, v27

    invoke-direct {v7, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1050
    aget-object v1, v6, v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v1

    .line 1051
    .local v1, "tempByte":[[B
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v40, v1

    .end local v1    # "tempByte":[[B
    .restart local v40    # "tempByte":[[B
    aget-object v1, v40, v27

    invoke-direct {v7, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1052
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v40, v28

    invoke-direct {v1, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1053
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v40, v26

    invoke-direct {v1, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1054
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v7, v40, v25

    invoke-direct {v1, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1055
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1056
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v4, v1

    .line 1058
    aget-object v1, v6, v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v1

    .line 1059
    .local v1, "tempInt":[I
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object/from16 v41, v1

    .end local v1    # "tempInt":[I
    .restart local v41    # "tempInt":[I
    aget v1, v41, v27

    move/from16 v43, v3

    move-object/from16 v44, v4

    .end local v3    # "i":I
    .end local v4    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v43, "i":I
    .local v44, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    int-to-long v3, v1

    invoke-direct {v7, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1060
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v3, v41, v28

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1061
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v3, v41, v26

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1062
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v3, v41, v25

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1063
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1064
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v1

    .line 1066
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1067
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v5, v1

    .line 1046
    .end local v40    # "tempByte":[[B
    .end local v41    # "tempInt":[I
    add-int/lit8 v3, v43, 0x1

    move-object/from16 v1, v39

    move-object/from16 v4, v44

    .end local v43    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_1d

    .end local v39    # "seqOfUpperLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v44    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v1, "seqOfUpperLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v4    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1d
    move-object/from16 v39, v1

    move/from16 v43, v3

    .line 1069
    .end local v1    # "seqOfUpperLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "i":I
    .restart local v39    # "seqOfUpperLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1072
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1073
    .local v1, "minTreehashPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1e
    move-object/from16 v7, p16

    move-object/from16 v40, v0

    .end local v0    # "seqOfUpperTreehashLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v40, "seqOfUpperTreehashLeaf":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v0, v7

    if-ge v3, v0, :cond_1e

    .line 1075
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object/from16 v41, v2

    .end local v2    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v41, "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget v2, v7, v3

    move/from16 v43, v3

    .end local v3    # "i":I
    .restart local v43    # "i":I
    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1073
    add-int/lit8 v3, v43, 0x1

    move-object/from16 v0, v40

    move-object/from16 v2, v41

    .end local v43    # "i":I
    .restart local v3    # "i":I
    goto :goto_1e

    .end local v41    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v2    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1e
    move-object/from16 v41, v2

    move/from16 v43, v3

    .line 1077
    .end local v2    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "i":I
    .restart local v41    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1080
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1081
    .local v0, "nextRootPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    move-object/from16 v3, p17

    move-object/from16 v43, v1

    .end local v1    # "minTreehashPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v43, "minTreehashPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v1, v3

    if-ge v2, v1, :cond_1f

    .line 1083
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    move/from16 v44, v2

    .end local v2    # "i":I
    .local v44, "i":I
    aget-object v2, v3, v44

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1081
    add-int/lit8 v2, v44, 0x1

    move-object/from16 v1, v43

    .end local v44    # "i":I
    .restart local v2    # "i":I
    goto :goto_1f

    :cond_1f
    move/from16 v44, v2

    .line 1085
    .end local v2    # "i":I
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1088
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1089
    .local v1, "seqOfnextNextRoot":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1090
    .local v2, "seqOfnnRStats":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v44, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v44 .. v44}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1091
    .local v44, "seqOfnnRStrings":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v45, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v45 .. v45}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1092
    .local v45, "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v46, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1093
    .local v46, "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v47, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v47 .. v47}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1094
    .local v47, "seqOfnnRTreehash":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v48, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v48 .. v48}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1096
    .local v48, "seqOfnnRRetain":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/16 v49, 0x0

    move-object/from16 v3, v45

    move-object/from16 v45, v0

    move-object v0, v3

    move-object/from16 v3, v46

    move/from16 v6, v49

    move-object/from16 v46, v4

    move-object/from16 v4, v47

    move-object/from16 v47, v5

    move-object/from16 v5, v48

    .end local v48    # "seqOfnnRRetain":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v3, "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v4, "seqOfnnRTreehash":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v5, "seqOfnnRRetain":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v6, "i":I
    .local v45, "nextRootPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v46, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v47, "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_20
    move-object/from16 v7, p18

    array-length v8, v7

    const/16 v48, 0x7

    const/16 v49, 0x6

    if-ge v6, v8, :cond_2b

    .line 1098
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    move/from16 v50, v6

    .end local v6    # "i":I
    .local v50, "i":I
    aget-object v6, p22, v27

    invoke-direct {v8, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1099
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v44, v6

    .line 1101
    aget-object v6, v7, v50

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v6

    aget v6, v6, v27

    .line 1102
    .local v6, "heightOfTree":I
    aget-object v8, v7, v50

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v8

    aget v8, v8, v48

    .line 1104
    .local v8, "tailLength":I
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v48, p18, v50

    .line 1105
    invoke-virtual/range {v48 .. v48}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v48

    move-object/from16 v51, v9

    .end local v9    # "curStackPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v51, "curStackPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v9, v48, v27

    invoke-direct {v7, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1104
    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1106
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_21
    if-ge v7, v6, :cond_20

    .line 1108
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v48, p18, v50

    .line 1109
    invoke-virtual/range {v48 .. v48}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v48

    add-int/lit8 v52, v7, 0x1

    move/from16 v53, v7

    .end local v7    # "j":I
    .local v53, "j":I
    aget-object v7, v48, v52

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1108
    invoke-virtual {v0, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1106
    add-int/lit8 v7, v53, 0x1

    .end local v53    # "j":I
    .restart local v7    # "j":I
    goto :goto_21

    :cond_20
    move/from16 v53, v7

    .line 1111
    .end local v7    # "j":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_22
    if-ge v7, v8, :cond_21

    .line 1113
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v48, p18, v50

    .line 1114
    invoke-virtual/range {v48 .. v48}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v48

    add-int/lit8 v52, v6, 0x1

    add-int v52, v52, v7

    move/from16 v53, v7

    .end local v7    # "j":I
    .restart local v53    # "j":I
    aget-object v7, v48, v52

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1113
    invoke-virtual {v0, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1111
    add-int/lit8 v7, v53, 0x1

    .end local v53    # "j":I
    .restart local v7    # "j":I
    goto :goto_22

    :cond_21
    move/from16 v53, v7

    .line 1117
    .end local v7    # "j":I
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1118
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v0, v7

    .line 1120
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    move-object/from16 v52, v10

    .end local v10    # "curStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v52, "curStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    int-to-long v9, v6

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1121
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, p18, v50

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v28

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1122
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, p18, v50

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v26

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1123
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, p18, v50

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v25

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1124
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, p18, v50

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v24

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1125
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, p18, v50

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v23

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1126
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, p18, v50

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v49

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1127
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v9, v8

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1128
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_23
    if-ge v7, v6, :cond_22

    .line 1130
    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p18, v50

    .line 1131
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v10

    add-int/lit8 v48, v7, 0x8

    aget v10, v10, v48

    move/from16 v53, v6

    move/from16 v48, v7

    .end local v6    # "heightOfTree":I
    .end local v7    # "j":I
    .local v48, "j":I
    .local v53, "heightOfTree":I
    int-to-long v6, v10

    invoke-direct {v9, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1130
    invoke-virtual {v3, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1128
    add-int/lit8 v7, v48, 0x1

    move/from16 v6, v53

    .end local v48    # "j":I
    .restart local v7    # "j":I
    goto :goto_23

    .end local v53    # "heightOfTree":I
    .restart local v6    # "heightOfTree":I
    :cond_22
    move/from16 v53, v6

    move/from16 v48, v7

    .line 1133
    .end local v6    # "heightOfTree":I
    .end local v7    # "j":I
    .restart local v53    # "heightOfTree":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_24
    if-ge v6, v8, :cond_23

    .line 1135
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, p18, v50

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v9

    add-int/lit8 v10, v53, 0x8

    add-int/2addr v10, v6

    aget v9, v9, v10

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1133
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 1139
    .end local v6    # "j":I
    :cond_23
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1140
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v3, v6

    .line 1144
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1145
    .end local v47    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v6, "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1146
    .end local v46    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v7, "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1148
    .end local v41    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v9, "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v10, p18, v50

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v10

    if-eqz v10, :cond_27

    .line 1150
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_25
    aget-object v41, p18, v50

    move-object/from16 v48, v0

    .end local v0    # "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v48, "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v0

    array-length v0, v0

    if-ge v10, v0, :cond_26

    .line 1152
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v49, v3

    .end local v3    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v49, "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v3, p22, v27

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1154
    aget-object v0, p18, v50

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v0

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v0

    aget v8, v0, v28

    .line 1156
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v3, p18, v50

    .line 1157
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v3

    aget-object v3, v3, v27

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1156
    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1158
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v3, p18, v50

    .line 1159
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v3

    aget-object v3, v3, v28

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1158
    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1160
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v3, p18, v50

    .line 1161
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v3

    aget-object v3, v3, v26

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1160
    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1162
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_26
    if-ge v0, v8, :cond_24

    .line 1164
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v41, p18, v50

    .line 1165
    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v41

    aget-object v41, v41, v10

    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v41

    add-int/lit8 v46, v0, 0x3

    move/from16 v47, v0

    .end local v0    # "k":I
    .local v47, "k":I
    aget-object v0, v41, v46

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1164
    invoke-virtual {v7, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1162
    add-int/lit8 v0, v47, 0x1

    .end local v47    # "k":I
    .restart local v0    # "k":I
    goto :goto_26

    :cond_24
    move/from16 v47, v0

    .line 1167
    .end local v0    # "k":I
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1168
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v7, v0

    .line 1170
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, p18, v50

    .line 1171
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v27

    move/from16 v41, v10

    move-object/from16 v54, v11

    .end local v10    # "j":I
    .end local v11    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v41, "j":I
    .local v54, "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    int-to-long v10, v3

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1170
    invoke-virtual {v9, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1172
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v10, v8

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v9, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1173
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, p18, v50

    .line 1174
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v41

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v26

    int-to-long v10, v3

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1173
    invoke-virtual {v9, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1175
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, p18, v50

    .line 1176
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v41

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v25

    int-to-long v10, v3

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1175
    invoke-virtual {v9, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1177
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, p18, v50

    .line 1178
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v41

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v24

    int-to-long v10, v3

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1177
    invoke-virtual {v9, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1179
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, p18, v50

    .line 1180
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v41

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v23

    int-to-long v10, v3

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1179
    invoke-virtual {v9, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1181
    const/4 v0, 0x0

    .restart local v0    # "k":I
    :goto_27
    if-ge v0, v8, :cond_25

    .line 1183
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, p18, v50

    .line 1184
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;

    move-result-object v10

    aget-object v10, v10, v41

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v10

    add-int/lit8 v11, v0, 0x6

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v3, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1183
    invoke-virtual {v9, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1181
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1186
    .end local v0    # "k":I
    :cond_25
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1187
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v9, v0

    .line 1189
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1190
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v6, v0

    .line 1150
    add-int/lit8 v10, v41, 0x1

    move-object/from16 v0, v48

    move-object/from16 v3, v49

    move-object/from16 v11, v54

    .end local v41    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_25

    .end local v49    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v3    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_26
    move-object/from16 v49, v3

    move/from16 v41, v10

    move-object/from16 v54, v11

    .end local v3    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v10    # "j":I
    .end local v11    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v41    # "j":I
    .restart local v49    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v54    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v47, v6

    move-object/from16 v46, v7

    move-object/from16 v41, v9

    goto :goto_28

    .line 1148
    .end local v41    # "j":I
    .end local v48    # "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v49    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v3    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_27
    move-object/from16 v48, v0

    move-object/from16 v49, v3

    move-object/from16 v54, v11

    .end local v0    # "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v48    # "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v49    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v54    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v47, v6

    move-object/from16 v46, v7

    move-object/from16 v41, v9

    .line 1194
    .end local v6    # "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v7    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v41, "seqOfInt":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v46    # "seqOfByte":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v47, "seqOfStat":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_28
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1195
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v4, v0

    .line 1200
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1201
    .end local v33    # "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    aget-object v3, p18, v50

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1203
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_29
    aget-object v6, p18, v50

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v6

    array-length v6, v6

    if-ge v3, v6, :cond_29

    .line 1205
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2a
    aget-object v7, p18, v50

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_28

    .line 1207
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, p18, v50

    .line 1208
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v9

    aget-object v9, v9, v3

    .line 1209
    invoke-virtual {v9, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-direct {v7, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1207
    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1205
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 1211
    .end local v6    # "k":I
    :cond_28
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1212
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v0, v6

    .line 1203
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_29
    move-object/from16 v33, v0

    goto :goto_2b

    .line 1201
    .end local v3    # "j":I
    :cond_2a
    move-object/from16 v33, v0

    .line 1216
    .end local v0    # "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v33    # "currentRetainPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_2b
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1217
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v5, v0

    .line 1219
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1220
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v0

    .line 1096
    .end local v8    # "tailLength":I
    .end local v53    # "heightOfTree":I
    add-int/lit8 v6, v50, 0x1

    move-object/from16 v8, p9

    move-object/from16 v7, p16

    move-object/from16 v0, v48

    move-object/from16 v3, v49

    move-object/from16 v9, v51

    move-object/from16 v10, v52

    move-object/from16 v11, v54

    .end local v50    # "i":I
    .local v6, "i":I
    goto/16 :goto_20

    .end local v48    # "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v49    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v51    # "curStackPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v52    # "curStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v3, "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v9, "curStackPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v10, "curStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2b
    move/from16 v50, v6

    move-object/from16 v51, v9

    move-object/from16 v52, v10

    move-object/from16 v54, v11

    .line 1222
    .end local v6    # "i":I
    .end local v9    # "curStackPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v10    # "curStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v51    # "curStackPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v52    # "curStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v54    # "nextStackPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1225
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1226
    .local v6, "curRootSigPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2c
    move-object/from16 v8, p19

    array-length v9, v8

    if-ge v7, v9, :cond_2c

    .line 1228
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, v8, v7

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1226
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 1230
    .end local v7    # "i":I
    :cond_2c
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1233
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1234
    .local v7, "seqOfnextRootSigs":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1235
    .local v9, "seqOfnRSStats":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1236
    .local v10, "seqOfnRSStrings":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1237
    .local v11, "seqOfnRSBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v50, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v50 .. v50}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1239
    .local v50, "seqOfnRSInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/16 v53, 0x0

    move-object/from16 v58, v50

    move-object/from16 v50, v0

    move-object/from16 v0, v58

    move/from16 v58, v53

    move-object/from16 v53, v1

    move/from16 v1, v58

    .local v0, "seqOfnRSInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v1, "i":I
    .local v50, "seqOfnnRBytes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v53, "seqOfnextNextRoot":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_2d
    move-object/from16 v55, v2

    move-object/from16 v56, v3

    move-object/from16 v2, p20

    .end local v2    # "seqOfnnRStats":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v55, "seqOfnnRStats":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v56, "seqOfnnRInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v3, v2

    if-ge v1, v3, :cond_2d

    .line 1241
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    move/from16 v57, v1

    .end local v1    # "i":I
    .local v57, "i":I
    aget-object v1, p22, v27

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1242
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v10, v1

    .line 1244
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v3, v2, v57

    .line 1245
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v3

    aget-object v3, v3, v27

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1244
    invoke-virtual {v11, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1246
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v3, v2, v57

    .line 1247
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v3

    aget-object v3, v3, v28

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1246
    invoke-virtual {v11, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1248
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v3, v2, v57

    .line 1249
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v3

    aget-object v3, v3, v26

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1248
    invoke-virtual {v11, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1250
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v3, v2, v57

    .line 1251
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v3

    aget-object v3, v3, v25

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1250
    invoke-virtual {v11, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1252
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v3, v2, v57

    .line 1253
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v3

    aget-object v3, v3, v24

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1252
    invoke-virtual {v11, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1255
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1256
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v11, v1

    .line 1258
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v2, v57

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v27

    int-to-long v2, v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1259
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v2, p20, v57

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v2

    aget v2, v2, v28

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1260
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v2, p20, v57

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v2

    aget v2, v2, v26

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1261
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v2, p20, v57

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v2

    aget v2, v2, v25

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1262
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v2, p20, v57

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v2

    aget v2, v2, v24

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1263
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v2, p20, v57

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v2

    aget v2, v2, v23

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1264
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v2, p20, v57

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v2

    aget v2, v2, v49

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1265
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v2, p20, v57

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v2

    aget v2, v2, v48

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1266
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v2, p20, v57

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v2

    const/16 v3, 0x8

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1268
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1269
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v0, v1

    .line 1271
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1272
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v9, v1

    .line 1239
    add-int/lit8 v1, v57, 0x1

    move-object/from16 v2, v55

    move-object/from16 v3, v56

    .end local v57    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_2d

    :cond_2d
    move/from16 v57, v1

    .line 1274
    .end local v1    # "i":I
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1277
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1278
    .local v1, "parSetPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1279
    .local v2, "parSetPart1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1280
    .local v3, "parSetPart2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v23, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v23 .. v23}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v24, v23

    .line 1282
    .local v24, "parSetPart3":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/16 v23, 0x0

    move-object/from16 v25, v0

    move/from16 v0, v23

    .local v0, "i":I
    .local v25, "seqOfnRSInts":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_2e
    move-object/from16 v23, v4

    .end local v4    # "seqOfnnRTreehash":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v23, "seqOfnnRTreehash":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_2e

    .line 1284
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 1285
    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v26

    move/from16 v27, v0

    .end local v0    # "i":I
    .local v27, "i":I
    aget v0, v26, v27

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    .end local v5    # "seqOfnnRRetain":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "curRootSigPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v26, "seqOfnnRRetain":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v28, "curRootSigPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    int-to-long v5, v0

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1284
    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1286
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 1287
    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v4

    aget v4, v4, v27

    int-to-long v4, v4

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1286
    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1288
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v4

    aget v4, v4, v27

    int-to-long v4, v4

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v4, v24

    .end local v24    # "parSetPart3":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v4, "parSetPart3":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1282
    add-int/lit8 v0, v27, 0x1

    move-object/from16 v4, v23

    move-object/from16 v5, v26

    move-object/from16 v6, v28

    .end local v27    # "i":I
    .restart local v0    # "i":I
    goto :goto_2e

    .end local v4    # "parSetPart3":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v26    # "seqOfnnRRetain":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v28    # "curRootSigPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v5    # "seqOfnnRRetain":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v6    # "curRootSigPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v24    # "parSetPart3":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2e
    move/from16 v27, v0

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    move-object/from16 v4, v24

    .line 1290
    .end local v0    # "i":I
    .end local v5    # "seqOfnnRRetain":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "curRootSigPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v24    # "parSetPart3":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v4    # "parSetPart3":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v26    # "seqOfnnRRetain":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v28    # "curRootSigPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1291
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1292
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1293
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1294
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1297
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1299
    .local v0, "namesPart":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    move-object/from16 v6, p22

    move-object/from16 v24, v1

    .end local v1    # "parSetPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .local v24, "parSetPart0":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    array-length v1, v6

    if-ge v5, v1, :cond_2f

    .line 1301
    aget-object v1, v6, v5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1299
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v24

    goto :goto_2f

    .line 1304
    .end local v5    # "i":I
    :cond_2f
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1305
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;
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

    .line 25
    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;

    return-object v0

    .line 29
    :cond_0
    if-eqz p0, :cond_1

    .line 31
    new-instance v0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 1316
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->primitive:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method
