.class public Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncryptedUnicast;
.super Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;
.source "EtsiTs103097DataEncryptedUnicast.java"


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "src"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V
    .locals 0
    .param p1, "content"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    .line 12
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncryptedUnicast;
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

    .line 21
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;

    if-eqz v0, :cond_0

    .line 23
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncryptedUnicast;

    return-object v0

    .line 25
    :cond_0
    if-eqz p0, :cond_1

    .line 27
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncryptedUnicast;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncryptedUnicast;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
