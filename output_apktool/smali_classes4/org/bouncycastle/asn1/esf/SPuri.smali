.class public Lorg/bouncycastle/asn1/esf/SPuri;
.super Ljava/lang/Object;
.source "SPuri.java"


# instance fields
.field private uri:Lorg/bouncycastle/asn1/ASN1IA5String;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1IA5String;)V
    .locals 0
    .param p1, "uri"    # Lorg/bouncycastle/asn1/ASN1IA5String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SPuri;
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

    .line 13
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;

    if-eqz v0, :cond_0

    .line 15
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/SPuri;

    return-object v0

    .line 17
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Lorg/bouncycastle/asn1/esf/SPuri;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SPuri;-><init>(Lorg/bouncycastle/asn1/ASN1IA5String;)V

    return-object v0

    .line 22
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getUriIA5()Lorg/bouncycastle/asn1/ASN1IA5String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SPuri;->uri:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1IA5String;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
