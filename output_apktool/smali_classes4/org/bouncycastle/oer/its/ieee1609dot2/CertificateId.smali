.class public Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CertificateId.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final binaryId:I = 0x2

.field public static final linkageData:I = 0x0

.field public static final name:I = 0x1

.field public static final none:I = 0x3


# instance fields
.field private final certificateId:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final choice:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "choice"    # I
    .param p2, "value"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "choice",
            "value"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->choice:I

    .line 41
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->certificateId:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 42
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "asn1TaggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asn1TaggedObject"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->choice:I

    .line 47
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->choice:I

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

    .line 59
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Null;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Null;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->certificateId:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 60
    goto :goto_0

    .line 56
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->certificateId:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 57
    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->certificateId:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 54
    goto :goto_0

    .line 50
    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->certificateId:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 51
    nop

    .line 65
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static binaryId(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .locals 2
    .param p0, "stream"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static binaryId([B)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .locals 3
    .param p0, "stream"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
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

    .line 94
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    if-eqz v0, :cond_0

    .line 96
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    return-object v0

    .line 99
    :cond_0
    if-eqz p0, :cond_1

    .line 101
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 104
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static linkageData(Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .locals 2
    .param p0, "linkageData"    # Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "linkageData"
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static name(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .locals 2
    .param p0, "hostname"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Hostname;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostname"
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static none()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;
    .locals 3

    .line 89
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;

    const/4 v1, 0x3

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getCertificateId()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->certificateId:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getChoice()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->choice:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 110
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;->certificateId:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
