.class public Lorg/bouncycastle/crypto/generators/DESKeyGenerator;
.super Lorg/bouncycastle/crypto/CipherKeyGenerator;
.source "DESKeyGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()[B
    .locals 2

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 45
    .local v0, "newKey":[B
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 47
    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 49
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 5
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 25
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key must be 64 bits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    :goto_0
    iput v1, p0, Lorg/bouncycastle/crypto/generators/DESKeyGenerator;->strength:I

    .line 36
    :goto_1
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "DESKeyGen"

    const/16 v4, 0x38

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 37
    return-void
.end method
