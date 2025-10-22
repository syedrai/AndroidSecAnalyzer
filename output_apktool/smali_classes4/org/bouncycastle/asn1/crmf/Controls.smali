.class public Lorg/bouncycastle/asn1/crmf/Controls;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Controls.java"


# instance fields
.field private content:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/Controls;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "atv"    # Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atv"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/Controls;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 36
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "atvs"    # [Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atvs"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/crmf/Controls;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 41
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/Controls;
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

    .line 20
    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/Controls;

    if-eqz v0, :cond_0

    .line 22
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/crmf/Controls;

    return-object v0

    .line 25
    :cond_0
    if-eqz p0, :cond_1

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/crmf/Controls;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/Controls;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 30
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/Controls;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toAttributeTypeAndValueArray()[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    .locals 3

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/Controls;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    .line 47
    .local v0, "result":[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 49
    iget-object v2, p0, Lorg/bouncycastle/asn1/crmf/Controls;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v0, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
