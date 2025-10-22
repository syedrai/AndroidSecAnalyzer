.class public Lorg/bouncycastle/cms/OriginatorInformation;
.super Ljava/lang/Object;
.source "OriginatorInformation.java"


# instance fields
.field private originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V
    .locals 0
    .param p1, "originatorInfo"    # Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originatorInfo"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/bouncycastle/cms/OriginatorInformation;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    .line 13
    return-void
.end method


# virtual methods
.method public getCRLs()Lorg/bouncycastle/util/Store;
    .locals 2

    .line 32
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorInformation;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCRLs(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/util/Store;
    .locals 2

    .line 22
    sget-object v0, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/OriginatorInformation;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/cms/OriginatorInformation;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    return-object v0
.end method
