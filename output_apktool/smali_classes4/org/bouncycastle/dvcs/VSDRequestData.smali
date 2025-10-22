.class public Lorg/bouncycastle/dvcs/VSDRequestData;
.super Lorg/bouncycastle/dvcs/DVCSRequestData;
.source "VSDRequestData.java"


# instance fields
.field private doc:Lorg/bouncycastle/cms/CMSSignedData;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/dvcs/Data;)V
    .locals 0
    .param p1, "data"    # Lorg/bouncycastle/asn1/dvcs/Data;
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
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lorg/bouncycastle/dvcs/DVCSRequestData;-><init>(Lorg/bouncycastle/asn1/dvcs/Data;)V

    .line 25
    invoke-direct {p0}, Lorg/bouncycastle/dvcs/VSDRequestData;->initDocument()V

    .line 26
    return-void
.end method

.method private initDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSConstructionException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->doc:Lorg/bouncycastle/cms/CMSSignedData;

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessage()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    iget-object v1, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessage()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSSignedData;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->doc:Lorg/bouncycastle/cms/CMSSignedData;
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/bouncycastle/cms/CMSException;
    new-instance v1, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v2, "Can\'t read CMS SignedData from input"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 35
    .end local v0    # "e":Lorg/bouncycastle/cms/CMSException;
    :cond_0
    new-instance v0, Lorg/bouncycastle/dvcs/DVCSConstructionException;

    const-string v1, "DVCSRequest.data.message should be specified for VSD service"

    invoke-direct {v0, v1}, Lorg/bouncycastle/dvcs/DVCSConstructionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMessage()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->data:Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/Data;->getMessage()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getParsedMessage()Lorg/bouncycastle/cms/CMSSignedData;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/dvcs/VSDRequestData;->doc:Lorg/bouncycastle/cms/CMSSignedData;

    return-object v0
.end method
