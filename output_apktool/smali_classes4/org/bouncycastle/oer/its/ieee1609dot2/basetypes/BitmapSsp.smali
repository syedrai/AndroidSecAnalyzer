.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "BitmapSsp.java"


# instance fields
.field private final string:Lorg/bouncycastle/asn1/DEROctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DEROctetString;)V
    .locals 0
    .param p1, "string"    # Lorg/bouncycastle/asn1/DEROctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;->string:Lorg/bouncycastle/asn1/DEROctetString;

    .line 21
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "string"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 15
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;->string:Lorg/bouncycastle/asn1/DEROctetString;

    .line 16
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;
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

    .line 25
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;

    return-object v0

    .line 30
    :cond_0
    if-eqz p0, :cond_1

    .line 32
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;

    invoke-static {p0}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;-><init>([B)V

    return-object v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getString()Lorg/bouncycastle/asn1/DEROctetString;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;->string:Lorg/bouncycastle/asn1/DEROctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;->string:Lorg/bouncycastle/asn1/DEROctetString;

    return-object v0
.end method
