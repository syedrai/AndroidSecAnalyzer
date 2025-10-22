.class public Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;
.super Ljava/lang/Object;
.source "QTESLASigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

.field private secureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 7
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->getSignatureSize(I)I

    move-result v0

    new-array v1, v0, [B

    .line 77
    .local v1, "sig":[B
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    move-object v2, p1

    .end local p1    # "message":[B
    .local v2, "message":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown security category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    .end local v2    # "message":[B
    .restart local p1    # "message":[B
    :pswitch_0
    array-length v4, p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecret()[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    const/4 v3, 0x0

    move-object v2, p1

    .end local p1    # "message":[B
    .restart local v2    # "message":[B
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->generateSignature([B[BII[BLjava/security/SecureRandom;)I

    .line 84
    goto :goto_0

    .line 80
    .end local v2    # "message":[B
    .restart local p1    # "message":[B
    :pswitch_1
    move-object v2, p1

    .end local p1    # "message":[B
    .restart local v2    # "message":[B
    array-length v4, v2

    iget-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecret()[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->generateSignature([B[BII[BLjava/security/SecureRandom;)I

    .line 81
    nop

    .line 89
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 44
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 46
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    .line 48
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    .line 49
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    .line 54
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    .line 56
    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->validate(I)V

    goto :goto_1

    .line 61
    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    .line 62
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->validate(I)V

    .line 65
    :goto_1
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 4
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

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown security category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :pswitch_0
    array-length v0, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v2

    invoke-static {p1, p2, v1, v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->verifying([B[BII[B)I

    move-result v0

    .line 112
    .local v0, "status":I
    goto :goto_0

    .line 107
    .end local v0    # "status":I
    :pswitch_1
    array-length v0, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v2

    invoke-static {p1, p2, v1, v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->verifying([B[BII[B)I

    move-result v0

    .line 108
    .restart local v0    # "status":I
    nop

    .line 118
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
