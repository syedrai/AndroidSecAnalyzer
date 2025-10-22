.class public Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
.super Ljava/lang/Object;
.source "PKCS12PfxPduBuilder.java"


# instance fields
.field private dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    return-void
.end method

.method private addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 5
    .param p1, "dataEncryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .param p2, "data"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataEncryptor",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;-><init>()V

    .line 129
    .local v0, "envGen":Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v2, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    invoke-virtual {v0, v2, p1}, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEncryptedData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSEncryptedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    nop

    .line 136
    return-object p0

    .line 131
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Lorg/bouncycastle/cms/CMSException;
    new-instance v2, Lorg/bouncycastle/pkcs/PKCSIOException;

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public addData(Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 6
    .param p1, "data"    # Lorg/bouncycastle/pkcs/PKCS12SafeBag;
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
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v4, Lorg/bouncycastle/asn1/DLSequence;

    invoke-virtual {p1}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DLSequence;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 84
    return-object p0
.end method

.method public addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 2
    .param p1, "dataEncryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .param p2, "data"    # Lorg/bouncycastle/pkcs/PKCS12SafeBag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataEncryptor",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p2}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;[Lorg/bouncycastle/pkcs/PKCS12SafeBag;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;
    .locals 3
    .param p1, "dataEncryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .param p2, "data"    # [Lorg/bouncycastle/pkcs/PKCS12SafeBag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataEncryptor",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 114
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 116
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/pkcs/PKCS12SafeBag;->toASN1Structure()Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->addEncryptedData(Lorg/bouncycastle/operator/OutputEncryptor;Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;

    move-result-object v1

    return-object v1
.end method

.method public build(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;[C)Lorg/bouncycastle/pkcs/PKCS12PfxPdu;
    .locals 6
    .param p1, "macCalcBuilder"    # Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "macCalcBuilder",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 150
    new-instance v0, Lorg/bouncycastle/asn1/DLSequence;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/PKCS12PfxPduBuilder;->dataVector:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v0

    .line 155
    .local v0, "auth":Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v1, "encAuth":[B
    nop

    .line 162
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 163
    .local v2, "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    const/4 v3, 0x0

    .line 165
    .local v3, "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    if-eqz p1, :cond_0

    .line 167
    new-instance v4, Lorg/bouncycastle/pkcs/MacDataGenerator;

    invoke-direct {v4, p1}, Lorg/bouncycastle/pkcs/MacDataGenerator;-><init>(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;)V

    .line 169
    .local v4, "mdGen":Lorg/bouncycastle/pkcs/MacDataGenerator;
    invoke-virtual {v4, p2, v1}, Lorg/bouncycastle/pkcs/MacDataGenerator;->build([C[B)Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v3

    .line 175
    .end local v4    # "mdGen":Lorg/bouncycastle/pkcs/MacDataGenerator;
    :cond_0
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/Pfx;

    invoke-direct {v4, v2, v3}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    .line 177
    .local v4, "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    new-instance v5, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;

    invoke-direct {v5, v4}, Lorg/bouncycastle/pkcs/PKCS12PfxPdu;-><init>(Lorg/bouncycastle/asn1/pkcs/Pfx;)V

    return-object v5

    .line 157
    .end local v1    # "encAuth":[B
    .end local v2    # "mainInfo":Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v3    # "mData":Lorg/bouncycastle/asn1/pkcs/MacData;
    .end local v4    # "pfx":Lorg/bouncycastle/asn1/pkcs/Pfx;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/pkcs/PKCSException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to encode AuthenticatedSafe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
