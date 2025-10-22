.class public Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CommitmentTypeIndication.java"


# instance fields
.field private commitmentTypeId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "commitmentTypeId"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commitmentTypeId"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "commitmentTypeId"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "commitmentTypeQualifier"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commitmentTypeId",
            "commitmentTypeQualifier"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 39
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 23
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 25
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;
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

    .line 44
    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 46
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;

    return-object v0
.end method


# virtual methods
.method public getCommitmentTypeId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getCommitmentTypeQualifier()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 72
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 74
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 76
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
