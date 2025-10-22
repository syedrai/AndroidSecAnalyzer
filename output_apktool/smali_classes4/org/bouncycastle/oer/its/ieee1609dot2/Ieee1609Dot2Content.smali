.class public Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Ieee1609Dot2Content.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final encryptedData:I = 0x2

.field public static final signedCertificateRequest:I = 0x3

.field public static final signedData:I = 0x1

.field public static final unsecuredData:I


# instance fields
.field private final choice:I

.field private final ieee1609Dot2Content:Lorg/bouncycastle/asn1/ASN1Encodable;


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

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->choice:I

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->ieee1609Dot2Content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 41
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "to"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->choice:I

    .line 79
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

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

    .line 89
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->ieee1609Dot2Content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 90
    return-void

    .line 86
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->ieee1609Dot2Content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 87
    return-void

    .line 83
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->ieee1609Dot2Content:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 84
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static encryptedData(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    .locals 2
    .param p0, "value"    # Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    .locals 2
    .param p0, "src"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 99
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    if-eqz v0, :cond_0

    .line 101
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    return-object v0

    .line 104
    :cond_0
    if-eqz p0, :cond_1

    .line 106
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static signedCertificateRequest(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    .locals 2
    .param p0, "value"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static signedCertificateRequest([B)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    .locals 3
    .param p0, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static signedData(Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    .locals 2
    .param p0, "value"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SignedData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static unsecuredData(Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    .locals 2
    .param p0, "value"    # Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static unsecuredData([B)Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;
    .locals 3
    .param p0, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->choice:I

    return v0
.end method

.method public getIeee1609Dot2Content()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->ieee1609Dot2Content:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 113
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/Ieee1609Dot2Content;->ieee1609Dot2Content:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
