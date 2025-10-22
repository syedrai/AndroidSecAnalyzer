.class public Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "IssuerIdentifier.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final self:I = 0x1

.field public static final sha256AndDigest:I = 0x0

.field public static final sha384AndDigest:I = 0x2


# instance fields
.field private final choice:I

.field private final issuerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;


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

    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->choice:I

    .line 55
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->issuerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 56
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 5
    .param p1, "ato"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ato"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->choice:I

    .line 61
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    .line 62
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->choice:I

    packed-switch v1, :pswitch_data_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->choice:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid choice value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :pswitch_0
    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->issuerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 70
    goto :goto_0

    .line 66
    :pswitch_1
    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->issuerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 67
    nop

    .line 75
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    .locals 2
    .param p0, "choice"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choice"
        }
    .end annotation

    .line 79
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    return-object v0

    .line 84
    :cond_0
    if-eqz p0, :cond_1

    .line 86
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static self(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    .locals 2
    .param p0, "data"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static sha256AndDigest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    .locals 2
    .param p0, "data"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static sha384AndDigest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;
    .locals 2
    .param p0, "data"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->choice:I

    return v0
.end method

.method public getIssuerIdentifier()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->issuerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public isSelf()Z
    .locals 2

    .line 95
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->choice:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 110
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->issuerIdentifier:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
