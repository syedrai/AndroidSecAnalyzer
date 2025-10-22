.class public Lorg/bouncycastle/asn1/cmc/ModCertTemplate;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ModCertTemplate.java"


# instance fields
.field private final certReferences:Lorg/bouncycastle/asn1/cmc/BodyPartList;

.field private final certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

.field private final pkiDataReference:Lorg/bouncycastle/asn1/cmc/BodyPartPath;

.field private final replace:Z


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/BodyPartPath;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->pkiDataReference:Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cmc/BodyPartList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/BodyPartList;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->certReferences:Lorg/bouncycastle/asn1/cmc/BodyPartList;

    .line 48
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v2, :cond_2

    .line 50
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->replace:Z

    .line 51
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    goto :goto_1

    .line 55
    :cond_2
    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->replace:Z

    .line 56
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    .line 58
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmc/BodyPartPath;Lorg/bouncycastle/asn1/cmc/BodyPartList;ZLorg/bouncycastle/asn1/crmf/CertTemplate;)V
    .locals 0
    .param p1, "pkiDataReference"    # Lorg/bouncycastle/asn1/cmc/BodyPartPath;
    .param p2, "certReferences"    # Lorg/bouncycastle/asn1/cmc/BodyPartList;
    .param p3, "replace"    # Z
    .param p4, "certTemplate"    # Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkiDataReference",
            "certReferences",
            "replace",
            "certTemplate"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->pkiDataReference:Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    .line 34
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->certReferences:Lorg/bouncycastle/asn1/cmc/BodyPartList;

    .line 35
    iput-boolean p3, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->replace:Z

    .line 36
    iput-object p4, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    .line 37
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/ModCertTemplate;
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

    .line 62
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;

    return-object v0

    .line 67
    :cond_0
    if-eqz p0, :cond_1

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertReferences()Lorg/bouncycastle/asn1/cmc/BodyPartList;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->certReferences:Lorg/bouncycastle/asn1/cmc/BodyPartList;

    return-object v0
.end method

.method public getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    return-object v0
.end method

.method public getPkiDataReference()Lorg/bouncycastle/asn1/cmc/BodyPartPath;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->pkiDataReference:Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    return-object v0
.end method

.method public isReplacingFields()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->replace:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 97
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 99
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->pkiDataReference:Lorg/bouncycastle/asn1/cmc/BodyPartPath;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 100
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->certReferences:Lorg/bouncycastle/asn1/cmc/BodyPartList;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->replace:Z

    if-nez v1, :cond_0

    .line 103
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->replace:Z

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 105
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/ModCertTemplate;->certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 107
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
