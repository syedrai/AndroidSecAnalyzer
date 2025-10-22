.class public Lorg/bouncycastle/asn1/cmp/CertConfirmContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CertConfirmContent.java"


# instance fields
.field private final content:Lorg/bouncycastle/asn1/ASN1Sequence;


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

    .line 16
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 18
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertConfirmContent;
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

    .line 22
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    return-object v0

    .line 27
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toCertStatusArray()[Lorg/bouncycastle/asn1/cmp/CertStatus;
    .locals 3

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/CertStatus;

    .line 39
    .local v0, "result":[Lorg/bouncycastle/asn1/cmp/CertStatus;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 41
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertStatus;

    move-result-object v2

    aput-object v2, v0, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
