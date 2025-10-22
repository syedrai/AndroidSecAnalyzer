.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SymmetricEncryptionKey.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final aes128ccm:I


# instance fields
.field private final choice:I

.field private final symmetricEncryptionKey:Lorg/bouncycastle/asn1/ASN1Encodable;


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

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;->choice:I

    .line 33
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;->symmetricEncryptionKey:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 34
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 4
    .param p1, "instance"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;->choice:I

    .line 39
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;->choice:I

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 42
    .local v0, "str":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 46
    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;->symmetricEncryptionKey:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 47
    .end local v0    # "str":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 52
    return-void

    .line 44
    .restart local v0    # "str":Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "aes128ccm string not 16 bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "str":Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;->choice:I

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
.end method

.method public static aes128ccm(Lorg/bouncycastle/asn1/ASN1OctetString;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;
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

    .line 80
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static aes128ccm([B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;
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

    .line 72
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;
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

    .line 56
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;

    return-object v0

    .line 60
    :cond_0
    if-eqz p0, :cond_1

    .line 62
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;->choice:I

    return v0
.end method

.method public getSymmetricEncryptionKey()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;->symmetricEncryptionKey:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 97
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmetricEncryptionKey;->symmetricEncryptionKey:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
