.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;
.super Ljava/lang/Object;
.source "RainbowPublicMap.java"


# instance fields
.field private cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

.field private final num_gf_elements:I

.field private params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->num_gf_elements:I

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    .line 17
    return-void
.end method

.method private add_and_reduce([[S)[S
    .locals 9
    .param p1, "accu"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accu"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v0

    .line 54
    .local v0, "m":I
    new-array v1, v0, [S

    .line 56
    .local v1, "ret":[S
    const/4 v2, 0x0

    .local v2, "b":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_2

    .line 58
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    int-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    .line 59
    .local v3, "accu_bit":I
    new-array v4, v0, [S

    .line 60
    .local v4, "tmp":[S
    move v5, v3

    .local v5, "i":I
    :goto_1
    const/16 v6, 0x100

    if-ge v5, v6, :cond_1

    .line 62
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_0

    .line 64
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    add-int v8, v5, v6

    aget-object v8, p1, v8

    invoke-virtual {v7, v4, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v4

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 60
    .end local v6    # "j":I
    :cond_0
    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    goto :goto_1

    .line 67
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    int-to-short v7, v3

    invoke-virtual {v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multVect(S[S)[S

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v1

    .line 56
    .end local v3    # "accu_bit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "b":I
    .end local v4    # "tmp":[S
    :cond_2
    return-object v1
.end method

.method private compute_accumulator([S[S[[[SI)[[S
    .locals 9
    .param p1, "x"    # [S
    .param p2, "y"    # [S
    .param p3, "a"    # [[[S
    .param p4, "dim"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "a",
            "dim"
        }
    .end annotation

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p4, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x100

    aput v2, v0, v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 24
    .local v0, "accu":[[S
    array-length v2, p2

    aget-object v3, p3, v1

    array-length v3, v3

    if-ne v2, v3, :cond_4

    array-length v2, p1

    aget-object v3, p3, v1

    aget-object v1, v3, v1

    array-length v1, v1

    if-ne v2, v1, :cond_4

    array-length v1, p3

    if-ne v1, p4, :cond_4

    .line 31
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 33
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-short v3, p2, v1

    invoke-virtual {v2, v3, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multVect(S[S)[S

    move-result-object v2

    .line 34
    .local v2, "tmp":[S
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 36
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    array-length v5, p3

    if-ge v4, v5, :cond_1

    .line 38
    aget-short v5, v2, v3

    .line 39
    .local v5, "index":I
    if-eqz v5, :cond_0

    .line 41
    aget-object v6, v0, v5

    aget-object v7, v0, v5

    aget-short v7, v7, v4

    aget-object v8, p3, v4

    aget-object v8, v8, v1

    aget-short v8, v8, v3

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v6, v4

    .line 36
    .end local v5    # "index":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 34
    .end local v4    # "k":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 31
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    .end local v2    # "tmp":[S
    :cond_3
    return-object v0

    .line 28
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Accumulator calculation not possible!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public publicMap(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S
    .locals 2
    .param p1, "pk"    # Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    .param p2, "signature"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pk",
            "signature"
        }
    .end annotation

    .line 75
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v1

    invoke-direct {p0, p2, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v0

    .line 76
    .local v0, "accu":[[S
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->add_and_reduce([[S)[S

    move-result-object v1

    return-object v1
.end method

.method public publicMap_cyclic(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S
    .locals 16
    .param p1, "pk"    # Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    .param p2, "signature"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pk",
            "signature"
        }
    .end annotation

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v3

    .line 82
    .local v3, "v1":I
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v4

    .line 83
    .local v4, "o1":I
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v5

    .line 87
    .local v5, "o2":I
    add-int v6, v4, v5

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v6, 0x0

    const/16 v9, 0x100

    aput v9, v7, v6

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    .line 89
    .local v7, "accu":[[S
    invoke-static {v2, v6, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v10

    .line 90
    .local v10, "sig_v1":[S
    add-int v11, v3, v4

    invoke-static {v2, v3, v11}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v11

    .line 91
    .local v11, "sig_o1":[S
    add-int v12, v3, v4

    array-length v13, v2

    invoke-static {v2, v12, v13}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v12

    .line 93
    .local v12, "sig_o2":[S
    new-instance v13, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v15

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    .line 96
    .local v13, "pk_random":Ljava/security/SecureRandom;
    invoke-static {v13, v4, v3, v3, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v14

    .line 97
    .local v14, "tmp":[[[S
    invoke-direct {v0, v10, v10, v14, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    .line 98
    .local v15, "accu_l1":[[S
    invoke-static {v13, v4, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v14

    .line 99
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0, v11, v10, v14, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v6

    invoke-virtual {v9, v15, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    .line 100
    .end local v15    # "accu_l1":[[S
    .local v6, "accu_l1":[[S
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-direct {v0, v12, v10, v15, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v9, v6, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    .line 101
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-direct {v0, v11, v11, v15, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v9, v6, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    .line 102
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-direct {v0, v12, v11, v15, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v9, v6, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    .line 103
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-direct {v0, v12, v12, v15, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v9, v6, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    .line 106
    invoke-static {v13, v5, v3, v3, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v9

    .line 107
    .end local v14    # "tmp":[[[S
    .local v9, "tmp":[[[S
    invoke-direct {v0, v10, v10, v9, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v14

    .line 108
    .local v14, "accu_l2":[[S
    const/4 v15, 0x0

    invoke-static {v13, v5, v3, v4, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v9

    .line 109
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0, v11, v10, v9, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v8

    .line 110
    .end local v14    # "accu_l2":[[S
    .local v8, "accu_l2":[[S
    const/4 v15, 0x0

    invoke-static {v13, v5, v3, v5, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v9

    .line 111
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0, v12, v10, v9, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v8, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v8

    .line 112
    const/4 v14, 0x1

    invoke-static {v13, v5, v4, v4, v14}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v9

    .line 113
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0, v11, v11, v9, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v8, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v8

    .line 114
    const/4 v15, 0x0

    invoke-static {v13, v5, v4, v5, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v9

    .line 115
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0, v12, v11, v9, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v8, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v8

    .line 116
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-direct {v0, v12, v12, v15, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v8, v15}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v8

    .line 118
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/16 v15, 0x100

    if-ge v14, v15, :cond_0

    .line 120
    aget-object v15, v6, v14

    aget-object v1, v8, v14

    invoke-static {v15, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v1

    aput-object v1, v7, v14

    .line 118
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    .line 123
    .end local v14    # "i":I
    :cond_0
    invoke-direct {v0, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->add_and_reduce([[S)[S

    move-result-object v1

    return-object v1
.end method
