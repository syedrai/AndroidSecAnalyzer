.class public Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;
.super Ljava/lang/Object;
.source "EncryptedValueBuilder.java"


# instance fields
.field private encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

.field private padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

.field private wrapper:Lorg/bouncycastle/operator/KeyWrapper;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/KeyWrapper;Lorg/bouncycastle/operator/OutputEncryptor;)V
    .locals 1
    .param p1, "wrapper"    # Lorg/bouncycastle/operator/KeyWrapper;
    .param p2, "encryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wrapper",
            "encryptor"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;-><init>(Lorg/bouncycastle/operator/KeyWrapper;Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/KeyWrapper;Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;)V
    .locals 0
    .param p1, "wrapper"    # Lorg/bouncycastle/operator/KeyWrapper;
    .param p2, "encryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .param p3, "padder"    # Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "wrapper",
            "encryptor",
            "padder"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    .line 50
    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    .line 51
    iput-object p3, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    .line 52
    return-void
.end method

.method private encryptData([B)Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .locals 10
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v0

    .line 131
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .line 135
    .local v2, "eOut":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 137
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    nop

    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, "intendedAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {v0}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 150
    .local v5, "symmAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {v3}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/operator/KeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B

    .line 151
    new-instance v6, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {v3}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/bouncycastle/operator/KeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .local v6, "encSymmKey":Lorg/bouncycastle/asn1/DERBitString;
    nop

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    invoke-interface {v0}, Lorg/bouncycastle/operator/KeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    .line 159
    .local v7, "keyAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v8, 0x0

    .line 160
    .local v8, "valueHint":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v9, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 162
    .local v9, "encValue":Lorg/bouncycastle/asn1/DERBitString;
    new-instance v3, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object v3

    .line 153
    .end local v6    # "encSymmKey":Lorg/bouncycastle/asn1/DERBitString;
    .end local v7    # "keyAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v8    # "valueHint":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v9    # "encValue":Lorg/bouncycastle/asn1/DERBitString;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/bouncycastle/operator/OperatorException;
    new-instance v3, Lorg/bouncycastle/cert/crmf/CRMFException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorException;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot wrap key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 139
    .end local v0    # "e":Lorg/bouncycastle/operator/OperatorException;
    .end local v4    # "intendedAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v5    # "symmAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/cert/crmf/CRMFException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot process data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private padData([B)[B
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

    .line 167
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;->getPaddedData([B)[B

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    return-object p1
.end method


# virtual methods
.method public build(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .locals 10
    .param p1, "privateKeyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKeyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 99
    new-instance v0, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfoBuilder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfoBuilder;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    move-object v1, v0

    .line 101
    .local v1, "encInfoBldr":Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfoBuilder;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 102
    .local v3, "intendedAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {v0}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 107
    .local v4, "symmAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfoBuilder;->build(Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;

    move-result-object v0

    .line 109
    .local v0, "encInfo":Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;
    new-instance v5, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    iget-object v6, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-interface {v6}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/bouncycastle/operator/KeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    .line 111
    .local v5, "encSymmKey":Lorg/bouncycastle/asn1/DERBitString;
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->wrapper:Lorg/bouncycastle/operator/KeyWrapper;

    invoke-interface {v2}, Lorg/bouncycastle/operator/KeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    .line 112
    .local v6, "keyAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v7, 0x0

    .line 114
    .local v7, "valueHint":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    new-instance v8, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1BitString;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 120
    .end local v0    # "encInfo":Lorg/bouncycastle/pkcs/PKCS8EncryptedPrivateKeyInfo;
    .end local v5    # "encSymmKey":Lorg/bouncycastle/asn1/DERBitString;
    .end local v6    # "keyAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v7    # "valueHint":Lorg/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/bouncycastle/operator/OperatorException;
    new-instance v2, Lorg/bouncycastle/cert/crmf/CRMFException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot wrap key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 116
    .end local v0    # "e":Lorg/bouncycastle/operator/OperatorException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Lorg/bouncycastle/cert/crmf/CRMFException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot encode key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .locals 5
    .param p1, "holder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->padData([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptData([B)Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cert/crmf/CRMFException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot encode certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public build([C)Lorg/bouncycastle/asn1/crmf/EncryptedValue;
    .locals 1
    .param p1, "revocationPassphrase"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "revocationPassphrase"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 64
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->padData([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/crmf/EncryptedValueBuilder;->encryptData([B)Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-result-object v0

    return-object v0
.end method
