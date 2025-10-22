.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTKeyParameters;
.source "XMSSMTPublicKeyParameters.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;
.implements Lorg/bouncycastle/util/Encodable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;
    }
.end annotation


# instance fields
.field private final oid:I

.field private final params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

.field private final publicSeed:[B

.field private final root:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)V
    .locals 9
    .param p1, "builder"    # Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->-$$Nest$fgetparams(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigest()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTKeyParameters;-><init>(ZLjava/lang/String;)V

    .line 23
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->-$$Nest$fgetparams(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    if-eqz v0, :cond_8

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigestSize()I

    move-result v0

    .line 29
    .local v0, "n":I
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->-$$Nest$fgetpublicKey(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)[B

    move-result-object v2

    .line 30
    .local v2, "publicKey":[B
    if-eqz v2, :cond_2

    .line 33
    const/4 v3, 0x4

    .line 34
    .local v3, "oidSize":I
    move v4, v0

    .line 35
    .local v4, "rootSize":I
    move v5, v0

    .line 36
    .local v5, "publicSeedSize":I
    const/4 v6, 0x0

    .line 38
    .local v6, "position":I
    array-length v7, v2

    add-int v8, v4, v5

    if-ne v7, v8, :cond_0

    .line 40
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->oid:I

    .line 41
    invoke-static {v2, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    .line 42
    add-int/2addr v6, v4

    .line 43
    invoke-static {v2, v6, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    goto :goto_0

    .line 45
    :cond_0
    array-length v7, v2

    add-int v8, v3, v4

    add-int/2addr v8, v5

    if-ne v7, v8, :cond_1

    .line 47
    invoke-static {v2, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->oid:I

    .line 48
    add-int/2addr v6, v3

    .line 49
    invoke-static {v2, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    .line 50
    add-int/2addr v6, v4

    .line 51
    invoke-static {v2, v6, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    .line 57
    .end local v3    # "oidSize":I
    .end local v4    # "rootSize":I
    .end local v5    # "publicSeedSize":I
    .end local v6    # "position":I
    :goto_0
    goto :goto_3

    .line 55
    .restart local v3    # "oidSize":I
    .restart local v4    # "rootSize":I
    .restart local v5    # "publicSeedSize":I
    .restart local v6    # "position":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v7, "public key has wrong size"

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local v3    # "oidSize":I
    .end local v4    # "rootSize":I
    .end local v5    # "publicSeedSize":I
    .end local v6    # "position":I
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getOid()Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 63
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getOid()Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;->getOid()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->oid:I

    goto :goto_1

    .line 67
    :cond_3
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->oid:I

    .line 69
    :goto_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->-$$Nest$fgetroot(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)[B

    move-result-object v1

    .line 70
    .local v1, "tmpRoot":[B
    if-eqz v1, :cond_5

    .line 72
    array-length v3, v1

    if-ne v3, v0, :cond_4

    .line 76
    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    goto :goto_2

    .line 74
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "length of root must be equal to length of digest"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_5
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    .line 82
    :goto_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;->-$$Nest$fgetpublicSeed(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)[B

    move-result-object v3

    .line 83
    .local v3, "tmpPublicSeed":[B
    if-eqz v3, :cond_7

    .line 85
    array-length v4, v3

    if-ne v4, v0, :cond_6

    .line 89
    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    goto :goto_3

    .line 87
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "length of publicSeed must be equal to length of digest"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_7
    new-array v4, v0, [B

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    .line 96
    .end local v1    # "tmpRoot":[B
    .end local v3    # "tmpPublicSeed":[B
    :goto_3
    return-void

    .line 26
    .end local v0    # "n":I
    .end local v2    # "publicKey":[B
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder;)V

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

    .line 101
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 7

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigestSize()I

    move-result v0

    .line 151
    .local v0, "n":I
    const/4 v1, 0x4

    .line 152
    .local v1, "oidSize":I
    move v2, v0

    .line 153
    .local v2, "rootSize":I
    move v3, v0

    .line 155
    .local v3, "publicSeedSize":I
    const/4 v4, 0x0

    .line 157
    .local v4, "position":I
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->oid:I

    if-eqz v5, :cond_0

    .line 159
    add-int v5, v1, v2

    add-int/2addr v5, v3

    new-array v5, v5, [B

    .line 160
    .local v5, "out":[B
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->oid:I

    invoke-static {v6, v5, v4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 161
    add-int/2addr v4, v1

    goto :goto_0

    .line 165
    .end local v5    # "out":[B
    :cond_0
    add-int v5, v2, v3

    new-array v5, v5, [B

    .line 168
    .restart local v5    # "out":[B
    :goto_0
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->root:[B

    invoke-static {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 169
    add-int/2addr v4, v2

    .line 171
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->publicSeed:[B

    invoke-static {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 172
    return-object v5
.end method
