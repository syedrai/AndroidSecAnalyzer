.class public final Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;
.super Ljava/lang/Object;
.source "QTESLAKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private secureRandom:Ljava/security/SecureRandom;

.field private securityCategory:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private allocatePrivate(I)[B
    .locals 1
    .param p1, "securityCategory"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "securityCategory"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->getPrivateSize(I)I

    move-result v0

    new-array v0, v0, [B

    return-object v0
.end method

.method private allocatePublic(I)[B
    .locals 1
    .param p1, "securityCategory"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "securityCategory"
        }
    .end annotation

    .line 69
    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->getPublicSize(I)I

    move-result v0

    new-array v0, v0, [B

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    .line 42
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->allocatePrivate(I)[B

    move-result-object v0

    .line 43
    .local v0, "privateKey":[B
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->allocatePublic(I)[B

    move-result-object v1

    .line 45
    .local v1, "publicKey":[B
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    packed-switch v2, :pswitch_data_0

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown security category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :pswitch_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->generateKeyPair([B[BLjava/security/SecureRandom;)I

    .line 53
    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->generateKeyPair([B[BLjava/security/SecureRandom;)I

    .line 49
    nop

    .line 59
    :goto_0
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;-><init>(I[B)V

    new-instance v4, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;-><init>(I[B)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 2
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 29
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyGenerationParameters;

    .line 31
    .local v0, "parameters":Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyGenerationParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->secureRandom:Ljava/security/SecureRandom;

    .line 32
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyGenerationParameters;->getSecurityCategory()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    .line 33
    return-void
.end method
