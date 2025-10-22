.class Lorg/bouncycastle/asn1/eac/EACTagged;
.super Ljava/lang/Object;
.source "EACTagged.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(ILorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 3
    .param p0, "eacTag"    # I
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eacTag",
            "seq"
        }
    .end annotation

    .line 13
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method static create(ILorg/bouncycastle/asn1/eac/PublicKeyDataObject;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 3
    .param p0, "eacTag"    # I
    .param p1, "key"    # Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eacTag",
            "key"
        }
    .end annotation

    .line 18
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method static create(I[B)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 4
    .param p0, "eacTag"    # I
    .param p1, "octets"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eacTag",
            "octets"
        }
    .end annotation

    .line 23
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-direct {v0, v2, v3, p0, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
