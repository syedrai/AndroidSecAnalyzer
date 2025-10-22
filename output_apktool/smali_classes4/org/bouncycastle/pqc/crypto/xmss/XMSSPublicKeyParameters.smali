.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;
.source "XMSSPublicKeyParameters.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;
.implements Lorg/bouncycastle/util/Encodable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
    }
.end annotation


# instance fields
.field private final oid:I

.field private final params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

.field private final publicSeed:[B

.field private final root:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)V
    .locals 9
    .param p1, "builder"    # Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->-$$Nest$fgetparams(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;-><init>(ZLjava/lang/String;)V

    .line 27
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->-$$Nest$fgetparams(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    if-eqz v0, :cond_8

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getTreeDigestSize()I

    move-result v0

    .line 33
    .local v0, "n":I
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->-$$Nest$fgetpublicKey(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object v2

    .line 34
    .local v2, "publicKey":[B
    if-eqz v2, :cond_2

    .line 37
    const/4 v3, 0x4

    .line 38
    .local v3, "oidSize":I
    move v4, v0

    .line 39
    .local v4, "rootSize":I
    move v5, v0

    .line 41
    .local v5, "publicSeedSize":I
    const/4 v6, 0x0

    .line 43
    .local v6, "position":I
    array-length v7, v2

    add-int v8, v4, v5

    if-ne v7, v8, :cond_0

    .line 45
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    .line 46
    invoke-static {v2, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    .line 47
    add-int/2addr v6, v4

    .line 48
    invoke-static {v2, v6, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    goto :goto_0

    .line 50
    :cond_0
    array-length v7, v2

    add-int v8, v3, v4

    add-int/2addr v8, v5

    if-ne v7, v8, :cond_1

    .line 52
    invoke-static {v2, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    .line 53
    add-int/2addr v6, v3

    .line 54
    invoke-static {v2, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    .line 55
    add-int/2addr v6, v4

    .line 56
    invoke-static {v2, v6, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    .line 62
    .end local v3    # "oidSize":I
    .end local v4    # "rootSize":I
    .end local v5    # "publicSeedSize":I
    .end local v6    # "position":I
    :goto_0
    goto :goto_3

    .line 60
    .restart local v3    # "oidSize":I
    .restart local v4    # "rootSize":I
    .restart local v5    # "publicSeedSize":I
    .restart local v6    # "position":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v7, "public key has wrong size"

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    .end local v3    # "oidSize":I
    .end local v4    # "rootSize":I
    .end local v5    # "publicSeedSize":I
    .end local v6    # "position":I
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getOid()Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 68
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getOid()Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;->getOid()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    goto :goto_1

    .line 72
    :cond_3
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    .line 74
    :goto_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->-$$Nest$fgetroot(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object v1

    .line 75
    .local v1, "tmpRoot":[B
    if-eqz v1, :cond_5

    .line 77
    array-length v3, v1

    if-ne v3, v0, :cond_4

    .line 81
    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    goto :goto_2

    .line 79
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "length of root must be equal to length of digest"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_5
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    .line 87
    :goto_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->-$$Nest$fgetpublicSeed(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)[B

    move-result-object v3

    .line 88
    .local v3, "tmpPublicSeed":[B
    if-eqz v3, :cond_7

    .line 90
    array-length v4, v3

    if-ne v4, v0, :cond_6

    .line 94
    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    goto :goto_3

    .line 92
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "length of publicSeed must be equal to length of digest"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_7
    new-array v4, v0, [B

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    .line 101
    .end local v1    # "tmpRoot":[B
    .end local v3    # "tmpPublicSeed":[B
    :goto_3
    return-void

    .line 30
    .end local v0    # "n":I
    .end local v2    # "publicKey":[B
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 7

    .line 155
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->getTreeDigestSize()I

    move-result v0

    .line 156
    .local v0, "n":I
    const/4 v1, 0x4

    .line 157
    .local v1, "oidSize":I
    move v2, v0

    .line 158
    .local v2, "rootSize":I
    move v3, v0

    .line 161
    .local v3, "publicSeedSize":I
    const/4 v4, 0x0

    .line 163
    .local v4, "position":I
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    if-eqz v5, :cond_0

    .line 165
    add-int v5, v1, v2

    add-int/2addr v5, v3

    new-array v5, v5, [B

    .line 166
    .local v5, "out":[B
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->oid:I

    invoke-static {v6, v5, v4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 167
    add-int/2addr v4, v1

    goto :goto_0

    .line 171
    .end local v5    # "out":[B
    :cond_0
    add-int v5, v2, v3

    new-array v5, v5, [B

    .line 174
    .restart local v5    # "out":[B
    :goto_0
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->root:[B

    invoke-static {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 175
    add-int/2addr v4, v2

    .line 177
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->publicSeed:[B

    invoke-static {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 178
    return-object v5
.end method
