.class public abstract Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PublicKeyDataObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 12
    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    if-eqz v0, :cond_0

    .line 14
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    return-object v0

    .line 16
    :cond_0
    if-eqz p0, :cond_2

    .line 18
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 19
    .local v0, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 21
    .local v1, "usage":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v2, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    new-instance v2, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v2

    .line 27
    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/eac/RSAPublicKey;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/eac/RSAPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v2

    .line 31
    .end local v0    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v1    # "usage":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract getUsage()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
.end method
