.class public Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EncryptedData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;
    }
.end annotation


# instance fields
.field private final ciphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

.field private final recipients:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->recipients:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->ciphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    .line 38
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;)V
    .locals 0
    .param p1, "recipients"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;
    .param p2, "ciphertext"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recipients",
            "ciphertext"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->recipients:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;

    .line 25
    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->ciphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    .line 26
    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;
    .locals 1

    .line 72
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
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

    .line 42
    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    return-object v0

    .line 47
    :cond_0
    if-eqz p0, :cond_1

    .line 49
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCiphertext()Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->ciphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    return-object v0
.end method

.method public getRecipients()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->recipients:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->recipients:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->ciphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ItsUtils;->toSequence([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method
