.class public Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SignaturePolicyIdentifier.java"


# instance fields
.field private isSignaturePolicyImplied:Z

.field private signaturePolicyId:Lorg/bouncycastle/asn1/esf/SignaturePolicyId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/esf/SignaturePolicyId;)V
    .locals 1
    .param p1, "signaturePolicyId"    # Lorg/bouncycastle/asn1/esf/SignaturePolicyId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signaturePolicyId"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->signaturePolicyId:Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    .line 44
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
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

    .line 18
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    if-eqz v0, :cond_0

    .line 20
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    return-object v0

    .line 22
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_3

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->hasEncodedTagValue(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    if-eqz p0, :cond_2

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    invoke-static {p0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;-><init>(Lorg/bouncycastle/asn1/esf/SignaturePolicyId;)V

    return-object v0

    .line 31
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 24
    :cond_3
    :goto_0
    new-instance v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getSignaturePolicyId()Lorg/bouncycastle/asn1/esf/SignaturePolicyId;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->signaturePolicyId:Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    return-object v0
.end method

.method public isSignaturePolicyImplied()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->isSignaturePolicyImplied:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;->signaturePolicyId:Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
