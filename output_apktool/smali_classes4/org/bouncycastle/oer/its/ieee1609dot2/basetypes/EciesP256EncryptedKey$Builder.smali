.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;
.super Ljava/lang/Object;
.source "EciesP256EncryptedKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private c:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private t:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private v:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEciesP256EncryptedKey()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;
    .locals 4

    .line 126
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->v:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->c:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->t:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method public setC(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;
    .locals 0
    .param p1, "c"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->c:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 101
    return-object p0
.end method

.method public setC([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;
    .locals 2
    .param p1, "c"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->c:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 108
    return-object p0
.end method

.method public setT(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;
    .locals 0
    .param p1, "t"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->t:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 115
    return-object p0
.end method

.method public setT([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;
    .locals 2
    .param p1, "t"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 120
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->t:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 121
    return-object p0
.end method

.method public setV(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;
    .locals 0
    .param p1, "v"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey$Builder;->v:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    .line 95
    return-object p0
.end method
