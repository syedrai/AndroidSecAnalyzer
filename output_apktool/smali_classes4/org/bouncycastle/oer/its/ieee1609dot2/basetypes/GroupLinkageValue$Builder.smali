.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
.super Ljava/lang/Object;
.source "GroupLinkageValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private value:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGroupLinkageValue()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;
    .locals 3

    .line 121
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method

.method public setJValue(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
    .locals 0
    .param p1, "jValue"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jValue"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->jValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 100
    return-object p0
.end method

.method public setJValue([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
    .locals 2
    .param p1, "jValue"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jValue"
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->setJValue(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
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

    .line 110
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 111
    return-object p0
.end method

.method public setValue([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;
    .locals 2
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 116
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;->setValue(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue$Builder;

    move-result-object v0

    return-object v0
.end method
