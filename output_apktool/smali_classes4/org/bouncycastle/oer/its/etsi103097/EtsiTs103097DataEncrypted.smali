.class public Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;
.super Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;
.source "EtsiTs103097DataEncrypted.java"


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

    .line 17
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 18
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

    .line 12
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Data;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;)V

    .line 13
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;
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
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;

    return-object v0

    .line 26
    :cond_0
    if-eqz p0, :cond_1

    .line 28
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097DataEncrypted;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 30
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
