.class public Lorg/bouncycastle/cert/crmf/EncryptedValueParser;
.super Ljava/lang/Object;
.source "EncryptedValueParser.java"


# instance fields
.field private padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

.field private value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V
    .locals 0
    .param p1, "value"    # Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;)V
    .locals 0
    .param p1, "value"    # Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .param p2, "padder"    # Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "padder"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    .line 44
    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    .line 45
    return-void
.end method

.method private decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B
    .locals 7
    .param p1, "decGen"    # Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decGen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getValueHint()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getKeyAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    .line 61
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getSymmAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getEncSymmKey()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    .line 60
    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;->getValueDecryptor(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/InputDecryptor;

    move-result-object v0

    .line 62
    .local v0, "decryptor":Lorg/bouncycastle/operator/InputDecryptor;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    .line 63
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getEncValue()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 62
    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 66
    .local v1, "dataIn":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->unpadData([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 68
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/cert/crmf/CRMFException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse decrypted data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 57
    .end local v0    # "decryptor":Lorg/bouncycastle/operator/InputDecryptor;
    .end local v1    # "dataIn":Ljava/io/InputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private unpadData([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;->getUnpaddedData([B)[B

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getIntendedAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getIntendedAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public readCertificateHolder(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 2
    .param p1, "decGen"    # Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decGen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v0
.end method

.method public readPassphrase(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[C
    .locals 1
    .param p1, "decGen"    # Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decGen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public readPrivateKeyInfo(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 1
    .param p1, "decGen"    # Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decGen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    return-object v0
.end method
