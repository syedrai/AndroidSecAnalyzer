.class public Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;
.super Ljava/lang/Object;
.source "DeltaCertificateRequestAttributeValue.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private final attrSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private final signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field private final subjectPKInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 8
    .param p1, "attrSeq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrSeq"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->attrSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "idx":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 46
    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subjectPKInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 47
    add-int/2addr v0, v3

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "ext":Lorg/bouncycastle/asn1/x509/Extensions;
    const/4 v4, 0x0

    .line 52
    .local v4, "sigAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 54
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 56
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    .line 57
    .local v5, "tagObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 59
    invoke-static {v5, v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 63
    invoke-static {v5, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 69
    :goto_2
    nop

    .end local v5    # "tagObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    add-int/lit8 v0, v0, 0x1

    .line 70
    goto :goto_1

    .line 67
    .restart local v5    # "tagObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown tag"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    .end local v5    # "tagObj":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_3
    iput-object v2, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 74
    iput-object v4, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/Attribute;)V
    .locals 2
    .param p1, "attribute"    # Lorg/bouncycastle/asn1/pkcs/Attribute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectPKInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->subjectPKInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/pkcs/DeltaCertificateRequestAttributeValue;->attrSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
