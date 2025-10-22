.class public Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;
.super Ljava/lang/Object;
.source "CMSTimeStampedGenerator.java"


# instance fields
.field protected dataUri:Ljava/net/URI;

.field protected metaData:Lorg/bouncycastle/asn1/cms/MetaData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setMetaData(ZLorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/ASN1IA5String;Lorg/bouncycastle/asn1/cms/Attributes;)V
    .locals 2
    .param p1, "hashProtected"    # Z
    .param p2, "fileName"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .param p3, "mediaType"    # Lorg/bouncycastle/asn1/ASN1IA5String;
    .param p4, "attributes"    # Lorg/bouncycastle/asn1/cms/Attributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashProtected",
            "fileName",
            "mediaType",
            "attributes"
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lorg/bouncycastle/asn1/cms/MetaData;-><init>(Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/ASN1IA5String;Lorg/bouncycastle/asn1/cms/Attributes;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    .line 72
    return-void
.end method


# virtual methods
.method public initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 2
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

    .line 86
    new-instance v0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;

    iget-object v1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;-><init>(Lorg/bouncycastle/asn1/cms/MetaData;)V

    .line 88
    .local v0, "util":Lorg/bouncycastle/tsp/cms/MetaDataUtil;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V

    .line 89
    return-void
.end method

.method public setDataUri(Ljava/net/URI;)V
    .locals 0
    .param p1, "dataUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataUri"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->dataUri:Ljava/net/URI;

    .line 28
    return-void
.end method

.method public setMetaData(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "hashProtected"    # Z
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "mediaType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashProtected",
            "fileName",
            "mediaType"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->setMetaData(ZLjava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/cms/Attributes;)V

    .line 40
    return-void
.end method

.method public setMetaData(ZLjava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/cms/Attributes;)V
    .locals 3
    .param p1, "hashProtected"    # Z
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "mediaType"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/bouncycastle/asn1/cms/Attributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashProtected",
            "fileName",
            "mediaType",
            "attributes"
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "asn1FileName":Lorg/bouncycastle/asn1/ASN1UTF8String;
    if-eqz p2, :cond_0

    .line 56
    new-instance v1, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 61
    .local v1, "asn1MediaType":Lorg/bouncycastle/asn1/ASN1IA5String;
    if-eqz p3, :cond_1

    .line 63
    new-instance v2, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v2, p3}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 66
    :cond_1
    invoke-direct {p0, p1, v0, v1, p4}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;->setMetaData(ZLorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/ASN1IA5String;Lorg/bouncycastle/asn1/cms/Attributes;)V

    .line 67
    return-void
.end method
