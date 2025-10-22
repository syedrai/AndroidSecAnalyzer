.class public Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;
.super Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;
.source "CMSTimeStampedDataGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 2
    .param p1, "timeStamp"    # Lorg/bouncycastle/tsp/TimeStampToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 11
    .param p1, "timeStamp"    # Lorg/bouncycastle/tsp/TimeStampToken;
    .param p2, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    .local v0, "contentOut":Ljava/io/ByteArrayOutputStream;
    if-eqz p2, :cond_0

    .line 44
    :try_start_0
    invoke-static {p2, v0}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception encapsulating content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 52
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 54
    .local v1, "encContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    new-instance v2, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object v1, v2

    .line 59
    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 61
    .local v2, "stamp":Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;
    const/4 v3, 0x0

    .line 63
    .local v3, "asn1DataUri":Lorg/bouncycastle/asn1/ASN1IA5String;
    iget-object v4, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->dataUri:Ljava/net/URI;

    if-eqz v4, :cond_2

    .line 65
    new-instance v4, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v5, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->dataUri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 68
    :cond_2
    new-instance v4, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    new-instance v5, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v6, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/asn1/cms/TimeStampedData;

    iget-object v8, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    new-instance v9, Lorg/bouncycastle/asn1/cms/Evidence;

    new-instance v10, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    invoke-direct {v10, v2}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)V

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/cms/Evidence;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;)V

    invoke-direct {v7, v3, v8, v1, v9}, Lorg/bouncycastle/asn1/cms/TimeStampedData;-><init>(Lorg/bouncycastle/asn1/ASN1IA5String;Lorg/bouncycastle/asn1/cms/MetaData;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/cms/Evidence;)V

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v4
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;[B)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 1
    .param p1, "timeStamp"    # Lorg/bouncycastle/tsp/TimeStampToken;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    move-result-object v0

    return-object v0
.end method
