.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature$Builder;
.super Ljava/lang/Object;
.source "EcdsaP256Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private rSig:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

.field private sSig:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEcdsaP256Signature()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature;
    .locals 3

    .line 97
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature$Builder;->rSig:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature$Builder;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method public setRSig(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature$Builder;
    .locals 0
    .param p1, "rSig"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rSig"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature$Builder;->rSig:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    .line 80
    return-object p0
.end method

.method public setSSig(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature$Builder;
    .locals 0
    .param p1, "sSig"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sSig"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature$Builder;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 92
    return-object p0
.end method

.method public setSSig([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature$Builder;
    .locals 2
    .param p1, "sSig"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sSig"
        }
    .end annotation

    .line 85
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EcdsaP256Signature$Builder;->sSig:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 86
    return-object p0
.end method
