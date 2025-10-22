.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;
.super Ljava/lang/Object;
.source "RainbowSigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# static fields
.field private static final MAXITS:I = 0x10000


# instance fields
.field private cf:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

.field key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

.field private random:Ljava/security/SecureRandom;

.field signableDocumentLength:I

.field private x:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

    return-void
.end method

.method private initSign([Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;[S)[S
    .locals 5
    .param p1, "layer"    # [Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
    .param p2, "msg"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layer",
            "msg"
        }
    .end annotation

    .line 82
    array-length v0, p2

    new-array v0, v0, [S

    .line 84
    .local v0, "tmpVec":[S
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;->getB1()[S

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v0

    .line 87
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA1()[[S

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v1

    .line 90
    .local v1, "Y_":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getVi()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 92
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->x:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v2

    .line 93
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->x:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->x:[S

    aget-short v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private makeMessageRepresentative([B)[S
    .locals 4
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 292
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    new-array v0, v0, [S

    .line 294
    .local v0, "output":[S
    const/4 v1, 0x0

    .line 295
    .local v1, "h":I
    const/4 v2, 0x0

    .line 298
    .local v2, "i":I
    :cond_0
    array-length v3, p1

    if-lt v2, v3, :cond_1

    .line 300
    goto :goto_0

    .line 302
    :cond_1
    aget-byte v3, p1, v1

    int-to-short v3, v3

    aput-short v3, v0, v2

    .line 303
    aget-short v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v0, v2

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 305
    add-int/lit8 v2, v2, 0x1

    .line 307
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 309
    :goto_0
    return-object v0
.end method

.method private verifySignatureIntern([S)[S
    .locals 13
    .param p1, "signature"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffQuadratic()[[S

    move-result-object v0

    .line 250
    .local v0, "coeff_quadratic":[[S
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffSingular()[[S

    move-result-object v1

    .line 251
    .local v1, "coeff_singular":[[S
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffScalar()[S

    move-result-object v2

    .line 253
    .local v2, "coeff_scalar":[S
    array-length v3, v0

    new-array v3, v3, [S

    .line 254
    .local v3, "rslt":[S
    const/4 v4, 0x0

    aget-object v4, v1, v4

    array-length v4, v4

    .line 255
    .local v4, "n":I
    const/4 v5, 0x0

    .line 256
    .local v5, "offset":I
    const/4 v6, 0x0

    .line 258
    .local v6, "tmp":S
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_2

    .line 260
    const/4 v5, 0x0

    .line 261
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    if-ge v8, v4, :cond_1

    .line 264
    move v9, v8

    .local v9, "y":I
    :goto_2
    if-ge v9, v4, :cond_0

    .line 266
    aget-object v10, v0, v7

    aget-short v10, v10, v5

    aget-short v11, p1, v8

    aget-short v12, p1, v9

    .line 267
    invoke-static {v11, v12}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v11

    .line 266
    invoke-static {v10, v11}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 268
    aget-short v10, v3, v7

    invoke-static {v10, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v10

    aput-short v10, v3, v7

    .line 269
    add-int/lit8 v5, v5, 0x1

    .line 264
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 272
    .end local v9    # "y":I
    :cond_0
    aget-object v9, v1, v7

    aget-short v9, v9, v8

    aget-short v10, p1, v8

    invoke-static {v9, v10}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 273
    aget-short v9, v3, v7

    invoke-static {v9, v6}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v9

    aput-short v9, v3, v7

    .line 261
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 276
    .end local v8    # "x":I
    :cond_1
    aget-short v8, v3, v7

    aget-short v9, v2, v7

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v8

    aput-short v8, v3, v7

    .line 258
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 279
    .end local v7    # "p":I
    :cond_2
    return-object v3
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 16
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 113
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;->getLayers()[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    move-result-object v2

    .line 114
    .local v2, "layer":[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
    array-length v3, v2

    .line 116
    .local v3, "numberOfLayers":I
    iget-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [S

    iput-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->x:[S

    .line 128
    add-int/lit8 v0, v3, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getViNext()I

    move-result v0

    new-array v4, v0, [B

    .line 130
    .local v4, "S":[B
    invoke-direct/range {p0 .. p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v5

    .line 131
    .local v5, "msgHashVals":[S
    const/4 v0, 0x0

    move v6, v0

    .line 137
    .local v6, "itCount":I
    :cond_0
    const/4 v7, 0x1

    .line 138
    .local v7, "ok":Z
    const/4 v8, 0x0

    .line 141
    .local v8, "counter":I
    :try_start_0
    invoke-direct {v1, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->initSign([Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;[S)[S

    move-result-object v0

    .line 143
    .local v0, "Y_":[S
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_4

    .line 146
    aget-object v10, v2, v9

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getOi()I

    move-result v10

    new-array v10, v10, [S

    .line 147
    .local v10, "y_i":[S
    aget-object v11, v2, v9

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getOi()I

    move-result v11

    new-array v11, v11, [S

    .line 150
    .local v11, "solVec":[S
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_1
    aget-object v13, v2, v9

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getOi()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 152
    aget-short v13, v0, v8

    aput-short v13, v10, v12

    .line 153
    add-int/lit8 v8, v8, 0x1

    .line 150
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 160
    .end local v12    # "k":I
    :cond_1
    iget-object v12, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

    aget-object v13, v2, v9

    iget-object v14, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->x:[S

    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->plugInVinegars([S)[[S

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->solveEquation([[S[S)[S

    move-result-object v12

    .line 162
    .end local v11    # "solVec":[S
    .local v12, "solVec":[S
    if-eqz v12, :cond_3

    .line 168
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    array-length v13, v12

    if-ge v11, v13, :cond_2

    .line 170
    iget-object v13, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->x:[S

    aget-object v14, v2, v9

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getVi()I

    move-result v14

    add-int/2addr v14, v11

    aget-short v15, v12, v11

    aput-short v15, v13, v14

    .line 168
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 143
    .end local v11    # "j":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 164
    :cond_3
    new-instance v11, Ljava/lang/Exception;

    const-string v13, "LES is not solveable!"

    invoke-direct {v11, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v2    # "layer":[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
    .end local v3    # "numberOfLayers":I
    .end local v4    # "S":[B
    .end local v5    # "msgHashVals":[S
    .end local v6    # "itCount":I
    .end local v7    # "ok":Z
    .end local v8    # "counter":I
    .end local p1    # "message":[B
    throw v11

    .line 175
    .end local v9    # "i":I
    .end local v10    # "y_i":[S
    .end local v12    # "solVec":[S
    .restart local v2    # "layer":[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;
    .restart local v3    # "numberOfLayers":I
    .restart local v4    # "S":[B
    .restart local v5    # "msgHashVals":[S
    .restart local v6    # "itCount":I
    .restart local v7    # "ok":Z
    .restart local v8    # "counter":I
    .restart local p1    # "message":[B
    :cond_4
    iget-object v9, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

    iget-object v10, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    check-cast v10, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;->getB2()[S

    move-result-object v10

    iget-object v11, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->x:[S

    invoke-virtual {v9, v10, v11}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v9

    .line 176
    .local v9, "tmpVec":[S
    iget-object v10, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

    iget-object v11, v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    check-cast v11, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v10

    .line 179
    .local v10, "signature":[S
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    array-length v12, v4

    if-ge v11, v12, :cond_5

    .line 181
    aget-short v12, v10, v11

    int-to-byte v12, v12

    aput-byte v12, v4, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 188
    .end local v11    # "i":I
    :cond_5
    goto :goto_4

    .line 184
    .end local v0    # "Y_":[S
    .end local v9    # "tmpVec":[S
    .end local v10    # "signature":[S
    :catch_0
    move-exception v0

    .line 187
    .local v0, "se":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 190
    .end local v0    # "se":Ljava/lang/Exception;
    :goto_4
    const/high16 v0, 0x10000

    if-nez v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v0, :cond_0

    .line 193
    :cond_6
    if-eq v6, v0, :cond_7

    .line 198
    return-object v4

    .line 195
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "unable to generate signature - LES not solvable"

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
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

    .line 43
    if-eqz p1, :cond_1

    .line 45
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 47
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 49
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    .line 50
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    .line 52
    .end local v0    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    .line 57
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    goto :goto_0

    .line 62
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    .line 65
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;->getDocLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    .line 66
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 8
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

    .line 211
    array-length v0, p2

    new-array v0, v0, [S

    .line 214
    .local v0, "sigInt":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 216
    aget-byte v2, p2, v1

    int-to-short v2, v2

    .line 217
    .local v2, "tmp":S
    and-int/lit16 v3, v2, 0xff

    int-to-short v2, v3

    .line 218
    aput-short v2, v0, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    .end local v2    # "tmp":S
    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v1

    .line 224
    .local v1, "msgHashVal":[S
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowSigner;->verifySignatureIntern([S)[S

    move-result-object v2

    .line 227
    .local v2, "verificationResult":[S
    const/4 v3, 0x1

    .line 228
    .local v3, "verified":Z
    array-length v4, v1

    array-length v5, v2

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 230
    return v6

    .line 232
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 234
    if-eqz v3, :cond_2

    aget-short v5, v1, v4

    aget-short v7, v2, v4

    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move v3, v5

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 237
    .end local v4    # "i":I
    :cond_3
    return v3
.end method
