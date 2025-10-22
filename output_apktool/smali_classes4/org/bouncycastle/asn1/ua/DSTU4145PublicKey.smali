.class public Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DSTU4145PublicKey.java"


# instance fields
.field private pubKey:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "ocStr"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ocStr"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;->pubKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 2
    .param p1, "pubKey"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKey"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 18
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ua/DSTU4145PointEncoder;->encodePoint(Lorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;->pubKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 19
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;
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

    .line 28
    instance-of v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;

    return-object v0

    .line 33
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/asn1/ua/DSTU4145PublicKey;->pubKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
