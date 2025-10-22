.class public Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;
.super Ljava/security/Signature;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi$Base5;,
        Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi$Base3;,
        Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi$Base2;,
        Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi$Base;
    }
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;

.field private parameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;)V
    .locals 1
    .param p1, "signer"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signer"
        }
    .end annotation

    .line 29
    const-string v0, "Dilithium"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    .line 34
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V
    .locals 1
    .param p1, "signer"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;
    .param p2, "parameters"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signer",
            "parameters"
        }
    .end annotation

    .line 38
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    .line 42
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    .line 43
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 85
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;

    if-eqz v0, :cond_3

    .line 87
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;

    .line 88
    .local v0, "key":Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    move-result-object v1

    .line 90
    .local v1, "param":Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "canonicalAlg":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "signature configured for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v2    # "canonicalAlg":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->random:Ljava/security/SecureRandom;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v5, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v4, v1, v5}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 105
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 107
    .end local v0    # "key":Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;
    .end local v1    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :goto_1
    nop

    .line 112
    return-void

    .line 110
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "unknown private key passed to Dilithium"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 78
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->random:Ljava/security/SecureRandom;

    .line 79
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 80
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 49
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;

    if-nez v0, :cond_0

    .line 53
    :try_start_0
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 58
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown public key passed to Dilithium: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;

    .line 63
    .local v0, "key":Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "canonicalAlg":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signature configured for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    .end local v1    # "canonicalAlg":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 73
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "value"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 133
    .local v0, "message":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 135
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;->generateSignature([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 137
    .end local v0    # "message":[B
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 124
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 148
    .local v0, "message":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 150
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;->verifySignature([B[B)Z

    move-result v1

    return v1
.end method
