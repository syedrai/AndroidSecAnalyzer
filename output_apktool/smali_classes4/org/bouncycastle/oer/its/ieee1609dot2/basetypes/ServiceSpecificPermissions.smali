.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ServiceSpecificPermissions.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final bitmapSsp:I = 0x1

.field public static final opaque:I


# instance fields
.field private final choice:I

.field private final serviceSpecificPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "choice"    # I
    .param p2, "object"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "choice",
            "object"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->choice:I

    .line 35
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->serviceSpecificPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 36
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "sto"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sto"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->choice:I

    .line 41
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->choice:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid choice value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->serviceSpecificPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 48
    return-void

    .line 44
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->serviceSpecificPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 45
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static bitmapSsp(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;
    .locals 2
    .param p0, "ssp"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/BitmapSsp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssp"
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;
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

    .line 57
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;

    return-object v0

    .line 62
    :cond_0
    if-eqz p0, :cond_1

    .line 64
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static opaque(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;
    .locals 2
    .param p0, "octetString"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "octetString"
        }
    .end annotation

    .line 72
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static opaque([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;
    .locals 3
    .param p0, "octetString"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "octetString"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->choice:I

    return v0
.end method

.method public getServiceSpecificPermissions()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->serviceSpecificPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;->serviceSpecificPermissions:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
