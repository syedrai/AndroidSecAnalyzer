.class public Lorg/bouncycastle/asn1/esf/SignaturePolicyId;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SignaturePolicyId.java"


# instance fields
.field private sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

.field private sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;)V
    .locals 1
    .param p1, "sigPolicyIdentifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "sigPolicyHash"    # Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sigPolicyIdentifier",
            "sigPolicyHash"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;)V
    .locals 0
    .param p1, "sigPolicyId"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "sigPolicyHash"    # Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;
    .param p3, "sigPolicyQualifiers"    # Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sigPolicyId",
            "sigPolicyHash",
            "sigPolicyQualifiers"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 63
    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    .line 64
    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    .line 65
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    .line 44
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 46
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    .line 48
    :cond_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignaturePolicyId;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 21
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    if-eqz v0, :cond_0

    .line 23
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    return-object v0

    .line 25
    :cond_0
    if-eqz p0, :cond_1

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 30
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getSigPolicyHash()Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    return-object v0
.end method

.method public getSigPolicyId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSigPolicyQualifiers()Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 92
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 94
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 95
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyHash:Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 96
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->sigPolicyQualifiers:Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
