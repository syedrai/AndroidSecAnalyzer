.class public Lorg/bouncycastle/its/ETSIRecipientInfo;
.super Ljava/lang/Object;
.source "ETSIRecipientInfo.java"


# instance fields
.field private final encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

.field private final recipientInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;)V
    .locals 0
    .param p1, "encryptedData"    # Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
    .param p2, "recipientInfo"    # Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encryptedData",
            "recipientInfo"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->recipientInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    .line 23
    iput-object p1, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;)V
    .locals 1
    .param p1, "recipientInfo"    # Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientInfo"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->recipientInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    .line 30
    return-void
.end method


# virtual methods
.method public getContent(Lorg/bouncycastle/its/operator/ETSIDataDecryptor;)[B
    .locals 8
    .param p1, "ddec"    # Lorg/bouncycastle/its/operator/ETSIDataDecryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ddec"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->getCiphertext()Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->getChoice()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->getCiphertext()Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->getSymmetricCiphertext()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;

    move-result-object v0

    .line 53
    .local v0, "act":Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;
    iget-object v1, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->recipientInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->getRecipientInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;

    move-result-object v1

    .line 54
    .local v1, "pkRecipientInfo":Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;
    invoke-virtual {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->getEncKey()Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

    move-result-object v2

    .line 56
    .local v2, "edec":Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;
    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;->getEncryptedDataEncryptionKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;

    move-result-object v3

    .line 57
    .local v3, "key":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;
    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;->getV()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;

    move-result-object v4

    .line 60
    .local v4, "point":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;
    invoke-virtual {v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;->getEncodedPoint()[B

    move-result-object v5

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;->getC()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;->getT()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v5

    .line 62
    .local v5, "wrappedKey":[B
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->getCcmCiphertext()Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/oer/its/ieee1609dot2/Opaque;->getContent()[B

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->getNonce()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-interface {p1, v5, v6, v7}, Lorg/bouncycastle/its/operator/ETSIDataDecryptor;->decrypt([B[B[B)[B

    move-result-object v6

    return-object v6

    .line 47
    .end local v0    # "act":Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;
    .end local v1    # "pkRecipientInfo":Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;
    .end local v2    # "edec":Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;
    .end local v3    # "key":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EciesP256EncryptedKey;
    .end local v4    # "point":Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/EccP256CurvePoint;
    .end local v5    # "wrappedKey":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encrypted data is no AES 128 CCM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncryptedData()Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->encryptedData:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    return-object v0
.end method

.method public getRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/its/ETSIRecipientInfo;->recipientInfo:Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    return-object v0
.end method
