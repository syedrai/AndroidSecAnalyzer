.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;
.super Ljava/lang/Object;
.source "GMSSSigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private currentAuthPaths:[[[B

.field private digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

.field private gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

.field private gmssUtil:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;

.field private index:[I

.field key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;

.field private mdLength:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messDigestTrees:Lorg/bouncycastle/crypto/Digest;

.field private numLayer:I

.field private ots:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

.field private pubKeyBytes:[B

.field private random:Ljava/security/SecureRandom;

.field private subtreeRootSig:[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V
    .locals 2
    .param p1, "digest"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;

    .line 111
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    .line 112
    invoke-interface {p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    .line 115
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    .line 116
    return-void
.end method

.method private initSign()V
    .locals 12

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    .line 162
    .local v0, "gmssPrivateKey":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->isUsed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getNumLeafs(I)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 174
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    .line 176
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    .line 179
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getCurrentSeeds()[[B

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 180
    .local v2, "seed":[B
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v3, v3, [B

    .line 181
    .local v3, "OTSSeed":[B
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v5, v5, [B

    .line 182
    .local v5, "dummy":[B
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v2, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v3

    .line 184
    new-instance v6, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v8

    iget v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    sub-int/2addr v9, v4

    aget v8, v8, v9

    invoke-direct {v6, v3, v7, v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    iput-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->ots:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

    .line 186
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getCurrentAuthPaths()[[[B

    move-result-object v6

    .line 187
    .local v6, "helpCurrentAuthPaths":[[[B
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    new-array v7, v7, [[[B

    iput-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    .line 190
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    if-ge v7, v8, :cond_1

    .line 192
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    aget-object v9, v6, v7

    array-length v9, v9

    iget v10, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    const/4 v11, 0x2

    new-array v11, v11, [I

    aput v10, v11, v4

    aput v9, v11, v1

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[B

    aput-object v9, v8, v7

    .line 193
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    aget-object v9, v6, v7

    array-length v9, v9

    if-ge v8, v9, :cond_0

    .line 195
    aget-object v9, v6, v7

    aget-object v9, v9, v8

    iget-object v10, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    aget-object v10, v10, v7

    aget-object v10, v10, v8

    iget v11, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v9, v1, v10, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 190
    .end local v8    # "i":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 200
    .end local v7    # "j":I
    :cond_1
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    new-array v7, v7, [I

    iput-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->index:[I

    .line 201
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getIndex()[I

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->index:[I

    iget v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    invoke-static {v7, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    sub-int/2addr v7, v4

    new-array v7, v7, [[B

    iput-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    .line 206
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    sub-int/2addr v8, v4

    if-ge v7, v8, :cond_2

    .line 208
    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->getSubtreeRootSig(I)[B

    move-result-object v8

    .line 209
    .local v8, "helpSubtreeRootSig":[B
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    array-length v10, v8

    new-array v10, v10, [B

    aput-object v10, v9, v7

    .line 210
    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v9, v9, v7

    array-length v10, v8

    invoke-static {v8, v1, v9, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 213
    .end local v7    # "i":I
    .end local v8    # "helpSubtreeRootSig":[B
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->markUsed()V

    .line 214
    return-void

    .line 170
    .end local v2    # "seed":[B
    .end local v3    # "OTSSeed":[B
    .end local v5    # "dummy":[B
    .end local v6    # "helpCurrentAuthPaths":[[[B
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No more signatures can be generated"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Private key already used"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initVerify()V
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 289
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;

    .line 290
    .local v0, "gmssPublicKey":Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;->getPublicKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->pubKeyBytes:[B

    .line 291
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    .line 293
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    .line 296
    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 11
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 224
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v0, v0, [B

    .line 228
    .local v0, "otsSig":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->ots:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->getSignature([B)[B

    move-result-object v0

    .line 231
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;->concatenateArray([[B)[B

    move-result-object v1

    .line 234
    .local v1, "authPathBytes":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->index:[I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;->intToBytesLittleEndian(I)[B

    move-result-object v2

    .line 237
    .local v2, "indexBytes":[B
    array-length v3, v2

    array-length v4, v0

    add-int/2addr v3, v4

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 238
    .local v3, "gmssSigFirstPart":[B
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    array-length v4, v2

    array-length v6, v0

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    array-length v4, v2

    array-length v6, v0

    add-int/2addr v4, v6

    array-length v6, v1

    invoke-static {v1, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    new-array v4, v5, [B

    .line 247
    .local v4, "gmssSigNextPart":[B
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 251
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;->concatenateArray([[B)[B

    move-result-object v1

    .line 254
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->index:[I

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;->intToBytesLittleEndian(I)[B

    move-result-object v2

    .line 259
    array-length v7, v4

    new-array v7, v7, [B

    .line 260
    .local v7, "helpGmssSig":[B
    array-length v8, v4

    invoke-static {v4, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    array-length v8, v7

    array-length v9, v2

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v9, v9, v6

    array-length v9, v9

    add-int/2addr v8, v9

    array-length v9, v1

    add-int/2addr v8, v9

    new-array v4, v8, [B

    .line 265
    array-length v8, v7

    invoke-static {v7, v5, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    array-length v8, v7

    array-length v9, v2

    invoke-static {v2, v5, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v8, v8, v6

    array-length v9, v7

    array-length v10, v2

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v10, v10, v6

    array-length v10, v10

    invoke-static {v8, v5, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    array-length v8, v7

    array-length v9, v2

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v9, v9, v6

    array-length v9, v9

    add-int/2addr v8, v9

    array-length v9, v1

    invoke-static {v1, v5, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    .end local v7    # "helpGmssSig":[B
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 274
    .end local v6    # "i":I
    :cond_0
    array-length v6, v3

    array-length v7, v4

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 275
    .local v6, "gmssSig":[B
    array-length v7, v3

    invoke-static {v3, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    array-length v7, v3

    array-length v8, v4

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    return-object v6
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

    .line 122
    if-eqz p1, :cond_1

    .line 124
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 126
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 129
    .local v0, "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->random:Ljava/security/SecureRandom;

    .line 130
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;

    .line 131
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->initSign()V

    .line 133
    .end local v0    # "rParam":Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->random:Ljava/security/SecureRandom;

    .line 138
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;

    .line 139
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->initSign()V

    goto :goto_0

    .line 144
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;

    .line 145
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->initVerify()V

    .line 149
    :goto_0
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 20
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

    .line 309
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 311
    .local v2, "success":Z
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 315
    move-object/from16 v3, p1

    .line 321
    .local v3, "help":[B
    const/4 v4, 0x0

    .line 327
    .local v4, "nextEntry":I
    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->numLayer:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v7, v5

    move v5, v4

    move-object v4, v3

    .end local p1    # "message":[B
    .local v3, "message":[B
    .local v4, "help":[B
    .local v5, "nextEntry":I
    .local v7, "j":I
    :goto_0
    if-ltz v7, :cond_4

    .line 329
    new-instance v8, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->digestProvider:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v9

    iget-object v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v10

    aget v10, v10, v7

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;-><init>(Lorg/bouncycastle/crypto/Digest;I)V

    .line 330
    .local v8, "otsVerify":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;
    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->getSignatureLength()I

    move-result v9

    .line 332
    .local v9, "otsSigLength":I
    move-object v3, v4

    .line 334
    iget-object v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;

    invoke-virtual {v10, v1, v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSUtil;->bytesToIntLittleEndian([BI)I

    move-result v10

    .line 337
    .local v10, "index":I
    add-int/lit8 v5, v5, 0x4

    .line 340
    new-array v11, v9, [B

    .line 341
    .local v11, "otsSig":[B
    const/4 v12, 0x0

    invoke-static {v1, v5, v11, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    add-int/2addr v5, v9

    .line 345
    invoke-virtual {v8, v3, v11}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->Verify([B[B)[B

    move-result-object v13

    .line 348
    .local v13, "otsPublicKey":[B
    if-nez v13, :cond_0

    .line 351
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v14, "OTS Public Key is null in GMSSSignature.verify"

    invoke-virtual {v6, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    return v12

    .line 356
    :cond_0
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->gmssPS:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v14

    aget v14, v14, v7

    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    const/16 v16, 0x1

    const/4 v6, 0x2

    const/16 p1, 0x0

    new-array v12, v6, [I

    aput v15, v12, v16

    aput v14, v12, p1

    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[B

    .line 357
    .local v12, "authPath":[[B
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v15, v12

    if-ge v14, v15, :cond_1

    .line 359
    aget-object v15, v12, v14

    const/16 v17, 0x2

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "success":Z
    .local v18, "success":Z
    invoke-static {v1, v5, v15, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    add-int/2addr v5, v2

    .line 357
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v18

    const/16 p1, 0x0

    const/4 v6, 0x2

    goto :goto_1

    .end local v18    # "success":Z
    .restart local v2    # "success":Z
    :cond_1
    move/from16 v18, v2

    const/16 v17, 0x2

    .line 364
    .end local v2    # "success":Z
    .end local v14    # "i":I
    .restart local v18    # "success":Z
    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v2, v2, [B

    .line 366
    .end local v4    # "help":[B
    .local v2, "help":[B
    move-object v2, v13

    .line 368
    array-length v4, v12

    shl-int v4, v16, v4

    .line 369
    .local v4, "count":I
    add-int/2addr v4, v10

    .line 371
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v14, v12

    if-ge v6, v14, :cond_3

    .line 373
    iget v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    shl-int/lit8 v14, v14, 0x1

    new-array v14, v14, [B

    .line 375
    .local v14, "dest":[B
    rem-int/lit8 v15, v4, 0x2

    if-nez v15, :cond_2

    .line 377
    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    const/4 v1, 0x0

    invoke-static {v2, v1, v14, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    aget-object v15, v12, v6

    move-object/from16 p1, v3

    .end local v3    # "message":[B
    .restart local p1    # "message":[B
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v19, v4

    .end local v4    # "count":I
    .local v19, "count":I
    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v15, v1, v14, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    div-int/lit8 v4, v19, 0x2

    .end local v19    # "count":I
    .restart local v4    # "count":I
    goto :goto_3

    .line 383
    .end local p1    # "message":[B
    .restart local v3    # "message":[B
    :cond_2
    move-object/from16 p1, v3

    move/from16 v19, v4

    const/4 v1, 0x0

    .end local v3    # "message":[B
    .end local v4    # "count":I
    .restart local v19    # "count":I
    .restart local p1    # "message":[B
    aget-object v3, v12, v6

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v3, v1, v14, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->mdLength:I

    array-length v4, v2

    invoke-static {v2, v1, v14, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    add-int/lit8 v4, v19, -0x1

    div-int/lit8 v4, v4, 0x2

    .line 387
    .end local v19    # "count":I
    .restart local v4    # "count":I
    :goto_3
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    array-length v15, v14

    invoke-interface {v3, v14, v1, v15}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 388
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 389
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 371
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, p1

    move-object/from16 v1, p2

    goto :goto_2

    .end local v14    # "dest":[B
    .end local p1    # "message":[B
    .restart local v3    # "message":[B
    :cond_3
    move-object/from16 p1, v3

    move/from16 v19, v4

    .line 327
    .end local v3    # "message":[B
    .end local v4    # "count":I
    .end local v6    # "i":I
    .restart local p1    # "message":[B
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v1, p2

    move-object v4, v2

    move/from16 v2, v18

    const/4 v6, 0x1

    goto/16 :goto_0

    .end local v8    # "otsVerify":Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;
    .end local v9    # "otsSigLength":I
    .end local v10    # "index":I
    .end local v11    # "otsSig":[B
    .end local v12    # "authPath":[[B
    .end local v13    # "otsPublicKey":[B
    .end local v18    # "success":Z
    .end local p1    # "message":[B
    .local v2, "success":Z
    .restart local v3    # "message":[B
    .local v4, "help":[B
    :cond_4
    move/from16 v18, v2

    .line 396
    .end local v2    # "success":Z
    .end local v7    # "j":I
    .restart local v18    # "success":Z
    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->pubKeyBytes:[B

    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 398
    const/4 v2, 0x1

    .end local v18    # "success":Z
    .restart local v2    # "success":Z
    goto :goto_4

    .line 396
    .end local v2    # "success":Z
    .restart local v18    # "success":Z
    :cond_5
    move/from16 v2, v18

    .line 401
    .end local v18    # "success":Z
    .restart local v2    # "success":Z
    :goto_4
    return v2
.end method
