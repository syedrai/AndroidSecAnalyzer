.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;
.super Ljava/lang/Object;
.source "BitmapSspRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private sspBitMask:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private sspValue:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBitmapSspRange()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange;
    .locals 3

    .line 112
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;->sspValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;->sspBitMask:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method public setSspBitMask(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;
    .locals 0
    .param p1, "sspBitMask"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sspBitMask"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;->sspBitMask:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 93
    return-object p0
.end method

.method public setSspBitMask([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;
    .locals 2
    .param p1, "sspBitmask"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sspBitmask"
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;->sspBitMask:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 106
    return-object p0
.end method

.method public setSspValue(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;
    .locals 0
    .param p1, "sspValue"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sspValue"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;->sspValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 87
    return-object p0
.end method

.method public setSspValue([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;
    .locals 2
    .param p1, "sspValue"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sspValue"
        }
    .end annotation

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSspRange$Builder;->sspValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 100
    return-object p0
.end method
