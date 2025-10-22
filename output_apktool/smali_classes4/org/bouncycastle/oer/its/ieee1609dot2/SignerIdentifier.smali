.class public Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SignerIdentifier.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final certificate:I = 0x1

.field public static final digest:I = 0x0

.field public static final self:I = 0x2


# instance fields
.field private final choice:I

.field private final signerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;


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

    .line 87
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 88
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->choice:I

    .line 89
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->signerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 90
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

    .line 94
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 95
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->choice:I

    .line 96
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->choice:I

    packed-switch v0, :pswitch_data_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->choice:I

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

    .line 105
    :pswitch_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERNull;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Null;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->signerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 106
    goto :goto_0

    .line 102
    :pswitch_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->signerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 103
    goto :goto_0

    .line 99
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->signerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 100
    nop

    .line 112
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static certificate(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;
    .locals 2
    .param p0, "sequenceOfCertificate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfCertificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequenceOfCertificate"
        }
    .end annotation

    .line 143
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static digest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;
    .locals 2
    .param p0, "id"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 138
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;
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

    .line 117
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    return-object v0

    .line 122
    :cond_0
    if-eqz p0, :cond_1

    .line 124
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 127
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static self()Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;
    .locals 3

    .line 148
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;

    const/4 v1, 0x2

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->choice:I

    return v0
.end method

.method public getSignerIdentifier()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->signerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 155
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/SignerIdentifier;->signerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
