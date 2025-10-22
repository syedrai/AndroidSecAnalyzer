.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EncryptionKey.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final publicOption:I = 0x0

.field public static final symmetric:I = 0x1


# instance fields
.field private final choice:I

.field private final encryptionKey:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3
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

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;->choice:I

    .line 46
    packed-switch p1, :pswitch_data_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid choice value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;->encryptionKey:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 51
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .param p1, "value"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 71
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;
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

    .line 31
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    if-eqz v0, :cond_0

    .line 33
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    return-object v0

    .line 35
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static publicOption(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;
    .locals 2
    .param p0, "key"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static symmetric(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;
    .locals 2
    .param p0, "key"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;->choice:I

    return v0
.end method

.method public getEncryptionKey()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;->encryptionKey:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EncryptionKey;->encryptionKey:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
