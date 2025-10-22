.class public Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CommitmentTypeQualifier.java"


# instance fields
.field private commitmentTypeIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private qualifier:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "commitmentTypeIdentifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commitmentTypeIdentifier"
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "commitmentTypeIdentifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "qualifier"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commitmentTypeIdentifier",
            "qualifier"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 49
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "as"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "as"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 64
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 66
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;
    .locals 2
    .param p0, "as"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "as"
        }
    .end annotation

    .line 70
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;

    return-object v0

    .line 74
    :cond_0
    if-eqz p0, :cond_1

    .line 76
    new-instance v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 79
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCommitmentTypeIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getQualifier()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 100
    .local v0, "dev":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
