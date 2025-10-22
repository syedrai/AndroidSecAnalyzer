.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;
.super Ljava/lang/Object;
.source "NTRUKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

.field private final params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;)V
    .locals 1
    .param p1, "ntruPrivateKey"    # Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ntruPrivateKey"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    .line 26
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    .line 27
    return-void
.end method

.method private cmov([B[BB)V
    .locals 4
    .param p1, "r"    # [B
    .param p2, "x"    # [B
    .param p3, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "x",
            "b"
        }
    .end annotation

    .line 79
    not-int v0, p3

    add-int/lit8 v0, v0, 0x1

    int-to-byte p3, v0

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 82
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    and-int/2addr v2, p3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 13
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    .line 36
    .local v0, "parameterSet":Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->privateKey:[B

    .line 39
    .local v1, "sk":[B
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 41
    .local v2, "buf":[B
    new-instance v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    .line 42
    .local v3, "owcpa":Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->privateKey:[B

    invoke-virtual {v3, p1, v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->decrypt([B[B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;

    move-result-object v4

    .line 43
    .local v4, "owcpaResult":Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;
    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->rm:[B

    .line 44
    .local v5, "rm":[B
    iget v6, v4, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->fail:I

    .line 48
    .local v6, "fail":I
    new-instance v7, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 50
    .local v7, "sha3256":Lorg/bouncycastle/crypto/digests/SHA3Digest;
    invoke-virtual {v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->getDigestSize()I

    move-result v8

    new-array v8, v8, [B

    .line 52
    .local v8, "k":[B
    array-length v9, v5

    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10, v9}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 53
    invoke-virtual {v7, v8, v10}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 56
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v11

    if-ge v9, v11, :cond_0

    .line 58
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaSecretKeyBytes()I

    move-result v11

    add-int/2addr v11, v9

    aget-byte v11, v1, v11

    aput-byte v11, v2, v9

    .line 56
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 60
    :cond_0
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v11

    if-ge v9, v11, :cond_1

    .line 62
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v11

    add-int/2addr v11, v9

    aget-byte v12, p1, v9

    aput-byte v12, v2, v11

    .line 60
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->reset()V

    .line 65
    array-length v11, v2

    invoke-virtual {v7, v2, v10, v11}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 66
    invoke-virtual {v7, v5, v10}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 68
    int-to-byte v11, v6

    invoke-direct {p0, v8, v5, v11}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->cmov([B[BB)V

    .line 70
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes()I

    move-result v11

    invoke-static {v8, v10, v11}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 72
    .local v10, "sharedKey":[B
    invoke-static {v8}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 74
    return-object v10
.end method

.method public getEncapsulationLength()I
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v0

    return v0
.end method
