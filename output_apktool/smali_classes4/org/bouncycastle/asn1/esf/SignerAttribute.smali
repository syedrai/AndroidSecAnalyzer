.class public Lorg/bouncycastle/asn1/esf/SignerAttribute;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SignerAttribute.java"


# instance fields
.field private values:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 46
    .local v2, "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 48
    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 49
    .local v3, "attrs":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [Lorg/bouncycastle/asn1/x509/Attribute;

    .line 51
    .local v4, "attributes":[Lorg/bouncycastle/asn1/x509/Attribute;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-eq v5, v6, :cond_0

    .line 53
    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Attribute;

    move-result-object v6

    aput-object v6, v4, v5

    .line 51
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    .end local v5    # "i":I
    :cond_0
    iget-object v5, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aput-object v4, v5, v0

    .line 56
    .end local v3    # "attrs":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "attributes":[Lorg/bouncycastle/asn1/x509/Attribute;
    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 59
    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v4

    aput-object v4, v3, v0

    .line 65
    :goto_2
    nop

    .end local v2    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    add-int/lit8 v0, v0, 0x1

    .line 66
    goto :goto_0

    .line 63
    .restart local v2    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V
    .locals 2
    .param p1, "certifiedAttributes"    # Lorg/bouncycastle/asn1/x509/AttributeCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certifiedAttributes"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 81
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/Attribute;)V
    .locals 2
    .param p1, "claimedAttributes"    # [Lorg/bouncycastle/asn1/x509/Attribute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "claimedAttributes"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 74
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignerAttribute;
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

    .line 24
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;

    if-eqz v0, :cond_0

    .line 26
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/SignerAttribute;

    return-object v0

    .line 28
    :cond_0
    if-eqz p0, :cond_1

    .line 30
    new-instance v0, Lorg/bouncycastle/asn1/esf/SignerAttribute;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignerAttribute;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 33
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getValues()[Ljava/lang/Object;
    .locals 4

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    .local v0, "rv":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 111
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 113
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 115
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, [Lorg/bouncycastle/asn1/x509/Attribute;

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, [Lorg/bouncycastle/asn1/x509/Attribute;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 121
    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/SignerAttribute;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
