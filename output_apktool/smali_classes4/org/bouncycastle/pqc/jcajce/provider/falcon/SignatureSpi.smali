.class public Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;
.super Ljava/security/Signature;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi$Falcon1024;,
        Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi$Falcon512;,
        Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi$Base;
    }
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;

.field private parameters:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;)V
    .locals 1
    .param p1, "signer"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signer"
        }
    .end annotation

    .line 32
    const-string v0, "FALCON"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    .line 37
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V
    .locals 1
    .param p1, "signer"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;
    .param p2, "parameters"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
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

    .line 41
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 45
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;

    .line 46
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

    .line 174
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

    .line 87
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;

    if-eqz v0, :cond_3

    .line 89
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;

    .line 90
    .local v0, "key":Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    move-result-object v1

    .line 92
    .local v1, "param":Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "canonicalAlg":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 97
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

    .line 101
    .end local v2    # "canonicalAlg":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->random:Ljava/security/SecureRandom;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;

    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v5, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v4, v1, v5}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 107
    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 109
    .end local v0    # "key":Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;
    .end local v1    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :goto_1
    nop

    .line 114
    return-void

    .line 112
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "unknown private key passed to Falcon"

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

    .line 80
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->random:Ljava/security/SecureRandom;

    .line 81
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 82
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

    .line 51
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;

    if-nez v0, :cond_0

    .line 55
    :try_start_0
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 60
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown public key passed to Falcon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;

    .line 65
    .local v0, "key":Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "canonicalAlg":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 70
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

    .line 74
    .end local v1    # "canonicalAlg":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 75
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

    .line 166
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

    .line 158
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

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 135
    .local v0, "message":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 137
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->generateSignature([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 139
    .end local v0    # "message":[B
    :catch_0
    move-exception v0

    .line 141
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

    .line 119
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
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

    .line 125
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 126
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

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 150
    .local v0, "message":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->verifySignature([B[B)Z

    move-result v1

    return v1
.end method
