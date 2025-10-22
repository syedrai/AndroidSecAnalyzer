.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;
.super Ljava/lang/Object;
.source "XWingKEMExtractor.java"

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final kemExtractor:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

.field private final key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;)V
    .locals 2
    .param p1, "privParams"    # Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privParams"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    .line 22
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getKyberPrivateKey()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->kemExtractor:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

    .line 23
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 9
    .param p1, "encapsulation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulation"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->kemExtractor:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

    array-length v1, p1

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;->extractSecret([B)[B

    move-result-object v0

    .line 30
    .local v0, "kybSecret":[B
    new-instance v1, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    .line 32
    .local v1, "xdhAgree":Lorg/bouncycastle/crypto/agreement/X25519Agreement;
    array-length v4, v0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->getAgreementSize()I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 34
    .local v4, "k":[B
    array-length v5, v0

    invoke-static {v0, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 38
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getXDHPrivateKey()Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 40
    new-instance v5, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    array-length v6, p1

    sub-int/2addr v6, v2

    array-length v7, p1

    invoke-static {p1, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([B)V

    .line 42
    .local v5, "ephXdhPub":Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;
    array-length v6, v0

    invoke-virtual {v1, v5, v4, v6}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    .line 44
    new-instance v6, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 46
    .local v6, "sha3":Lorg/bouncycastle/crypto/digests/SHA3Digest;
    const-string v7, "\\.//^\\"

    invoke-static {v7}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v3, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 47
    array-length v7, v4

    invoke-virtual {v6, v4, v3, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 48
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v7, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 49
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getXDHPrivateKey()Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v7, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 51
    new-array v2, v2, [B

    .line 53
    .local v2, "kemSecret":[B
    invoke-virtual {v6, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 55
    return-object v2
.end method

.method public getEncapsulationLength()I
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->kemExtractor:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;->getEncapsulationLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
