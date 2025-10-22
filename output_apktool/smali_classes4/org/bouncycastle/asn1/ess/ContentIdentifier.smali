.class public Lorg/bouncycastle/asn1/ess/ContentIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ContentIdentifier.java"


# instance fields
.field value:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "value"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 34
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ess/ContentIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 43
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/ContentIdentifier;
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

    .line 15
    instance-of v0, p0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;

    if-eqz v0, :cond_0

    .line 17
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;

    return-object v0

    .line 19
    :cond_0
    if-eqz p0, :cond_1

    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ess/ContentIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    .line 24
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getValue()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
