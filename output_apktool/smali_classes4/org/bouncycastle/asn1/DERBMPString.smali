.class public Lorg/bouncycastle/asn1/DERBMPString;
.super Lorg/bouncycastle/asn1/ASN1BMPString;
.source "DERBMPString.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1BMPString;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1BMPString;-><init>([B)V

    .line 30
    return-void
.end method

.method constructor <init>([C)V
    .locals 0
    .param p1, "string"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1BMPString;-><init>([C)V

    .line 35
    return-void
.end method
