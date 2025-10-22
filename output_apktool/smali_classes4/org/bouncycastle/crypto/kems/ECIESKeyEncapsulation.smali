.class public Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;
.super Ljava/lang/Object;
.source "ECIESKeyEncapsulation.java"

# interfaces
.implements Lorg/bouncycastle/crypto/KeyEncapsulation;


# instance fields
.field private CofactorMode:Z

.field private OldCofactorMode:Z

.field private SingleHashMode:Z

.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p2, "rnd"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kdf",
            "rnd"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 44
    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    .line 46
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    .line 47
    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;ZZZ)V
    .locals 1
    .param p1, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .param p2, "rnd"    # Ljava/security/SecureRandom;
    .param p3, "cofactorMode"    # Z
    .param p4, "oldCofactorMode"    # Z
    .param p5, "singleHashMode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kdf",
            "rnd",
            "cofactorMode",
            "oldCofactorMode",
            "singleHashMode"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    .line 67
    iput-object p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    .line 71
    iput-boolean p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    .line 73
    if-eqz p3, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    goto :goto_0

    .line 79
    :cond_0
    iput-boolean p4, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    .line 81
    :goto_0
    iput-boolean p5, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    .line 82
    return-void
.end method


# virtual methods
.method public decrypt([BI)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 2
    .param p1, "in"    # [B
    .param p2, "keyLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "keyLen"
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "keyLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "inLen",
            "keyLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 164
    .local v2, "prvKey":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    new-instance v1, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;

    iget-object v4, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    iget-boolean v7, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    move v3, p4

    .end local p4    # "keyLen":I
    .local v3, "keyLen":I
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;ZZZ)V

    .line 166
    .local v1, "kemExt":Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;
    add-int p4, p2, p3

    invoke-static {p1, p2, p4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p4

    invoke-virtual {v1, p4}, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->extractSecret([B)[B

    move-result-object p4

    .line 168
    .local p4, "secret":[B
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v0

    .line 160
    .end local v1    # "kemExt":Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;
    .end local v2    # "prvKey":Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    .end local v3    # "keyLen":I
    .local p4, "keyLen":I
    :cond_0
    move v3, p4

    .end local p4    # "keyLen":I
    .restart local v3    # "keyLen":I
    new-instance p4, Ljava/lang/IllegalArgumentException;

    const-string v0, "Private key required for encryption"

    invoke-direct {p4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public encrypt([BI)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "out"    # [B
    .param p2, "keyLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "keyLen"
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 8
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "keyLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "keyLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget-object v4, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    iget-boolean v7, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    move v2, p3

    .end local p3    # "keyLen":I
    .local v2, "keyLen":I
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;-><init>(ILorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;ZZZ)V

    .line 124
    .local v1, "kemGen":Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;
    iget-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v1, p3}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object p3

    .line 126
    .local p3, "secEnc":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    invoke-interface {p3}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v0

    .line 127
    .local v0, "encLen":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v3

    .line 119
    .end local v0    # "encLen":[B
    .end local v1    # "kemGen":Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;
    .end local v2    # "keyLen":I
    .local p3, "keyLen":I
    :cond_0
    move v2, p3

    .end local p3    # "keyLen":I
    .restart local v2    # "keyLen":I
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Public key required for encryption"

    invoke-direct {p3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "key"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 92
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    .line 101
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/bouncycastle/crypto/params/ECKeyParameters;

    .line 102
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "ECIESKem"

    invoke-direct {v0, v3, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 101
    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 103
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EC key required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
