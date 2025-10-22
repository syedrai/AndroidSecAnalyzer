.class public Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CertReqTemplateContent.java"


# instance fields
.field private final certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

.field private final keySpec:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;->certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    .line 37
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 39
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;->keySpec:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_1

    .line 43
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;->keySpec:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 45
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertTemplate;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "certTemplate"    # Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .param p2, "keySpec"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certTemplate",
            "keySpec"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;->certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    .line 51
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;->keySpec:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 52
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;
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

    .line 56
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;

    return-object v0

    .line 60
    :cond_0
    if-eqz p0, :cond_1

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;->certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    return-object v0
.end method

.method public getKeySpec()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;->keySpec:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 82
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 83
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;->certTemplate:Lorg/bouncycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 84
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;->keySpec:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertReqTemplateContent;->keySpec:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 88
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
