.class public Lorg/bouncycastle/asn1/cmp/CRLSource;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CRLSource.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private final dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

.field private final issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "ato"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ato"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    .line 35
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    .line 40
    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 3
    .param p1, "dpn"    # Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .param p2, "issuer"    # Lorg/bouncycastle/asn1/x509/GeneralNames;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dpn",
            "issuer"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eq v2, v0, :cond_2

    .line 54
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    .line 55
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 56
    return-void

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "either dpn or issuer must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CRLSource;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 60
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/CRLSource;

    return-object v0

    .line 65
    :cond_0
    if-eqz p0, :cond_1

    .line 67
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CRLSource;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CRLSource;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDpn()Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->dpn:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/CRLSource;->issuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, v1, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
