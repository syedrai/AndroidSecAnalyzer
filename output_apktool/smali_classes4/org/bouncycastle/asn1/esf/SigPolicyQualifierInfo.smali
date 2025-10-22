.class public Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SigPolicyQualifierInfo.java"


# instance fields
.field private sigPolicyQualifierId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private sigQualifier:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "sigPolicyQualifierId"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "sigQualifier"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sigPolicyQualifierId",
            "sigQualifier"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 23
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;
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

    .line 35
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;

    if-eqz v0, :cond_0

    .line 37
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;

    return-object v0

    .line 39
    :cond_0
    if-eqz p0, :cond_1

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getSigPolicyQualifierId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSigQualifier()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 68
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 70
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 71
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 73
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
