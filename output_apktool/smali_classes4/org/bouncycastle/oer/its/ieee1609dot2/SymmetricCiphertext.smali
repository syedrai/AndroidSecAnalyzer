.class public Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SymmetricCiphertext.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final aes128ccm:I


# instance fields
.field private final choice:I

.field private final symmetricCiphertext:Lorg/bouncycastle/asn1/ASN1Encodable;


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

    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->choice:I

    .line 29
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->symmetricCiphertext:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 30
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "ato"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ato"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->choice:I

    .line 36
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->choice:I

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

    .line 39
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->symmetricCiphertext:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 40
    nop

    .line 44
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static aes128ccm(Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;)Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;
    .locals 2
    .param p0, "ciphertext"    # Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ciphertext"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;
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

    .line 55
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    if-eqz v0, :cond_0

    .line 57
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    return-object v0

    .line 60
    :cond_0
    if-eqz p0, :cond_1

    .line 62
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->choice:I

    return v0
.end method

.method public getSymmetricCiphertext()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->symmetricCiphertext:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 80
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->symmetricCiphertext:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
