.class public Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;
.super Lorg/bouncycastle/operator/SymmetricKeyWrapper;
.source "BcSymmetricKeyWrapper.java"


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private wrapper:Lorg/bouncycastle/crypto/Wrapper;

.field private wrappingKey:Lorg/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/Wrapper;Lorg/bouncycastle/crypto/params/KeyParameter;)V
    .locals 0
    .param p1, "wrappingAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "wrapper"    # Lorg/bouncycastle/crypto/Wrapper;
    .param p3, "wrappingKey"    # Lorg/bouncycastle/crypto/params/KeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "wrappingAlgorithm",
            "wrapper",
            "wrappingKey"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/SymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 24
    iput-object p2, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/bouncycastle/crypto/Wrapper;

    .line 25
    iput-object p3, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrappingKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 26
    return-void
.end method


# virtual methods
.method public generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    .locals 6
    .param p1, "encryptionKey"    # Lorg/bouncycastle/operator/GenericKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    .line 38
    invoke-static {p1}, Lorg/bouncycastle/operator/bc/OperatorUtils;->getKeyBytes(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object v0

    .line 40
    .local v0, "contentEncryptionKeySpec":[B
    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/bouncycastle/crypto/Wrapper;

    iget-object v3, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrappingKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/bouncycastle/crypto/Wrapper;

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v4, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrappingKey:Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 49
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/bouncycastle/crypto/Wrapper;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcSymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    .line 32
    return-object p0
.end method
