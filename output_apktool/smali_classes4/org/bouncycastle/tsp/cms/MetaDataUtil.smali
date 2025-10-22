.class Lorg/bouncycastle/tsp/cms/MetaDataUtil;
.super Ljava/lang/Object;
.source "MetaDataUtil.java"


# instance fields
.field private final metaData:Lorg/bouncycastle/asn1/cms/MetaData;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/MetaData;)V
    .locals 0
    .param p1, "metaData"    # Lorg/bouncycastle/asn1/cms/MetaData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metaData"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    .line 19
    return-void
.end method

.method private convertString(Lorg/bouncycastle/asn1/ASN1String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Lorg/bouncycastle/asn1/ASN1String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 69
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method getFileName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getFileNameUTF8()Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->convertString(Lorg/bouncycastle/asn1/ASN1String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getMediaType()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getMediaTypeIA5()Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->convertString(Lorg/bouncycastle/asn1/ASN1String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 5
    .param p1, "calculator"    # Lorg/bouncycastle/operator/DigestCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calculator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->isHashProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cms/MetaData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to initialise calculator from metaData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 35
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method
