.class public Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;
.super Ljava/lang/Object;
.source "DHKEKGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private keySize:I

.field private partyAInfo:[B

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 35
    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 17
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 55
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p3

    array-length v3, v2

    sub-int/2addr v3, v0

    move/from16 v4, p2

    if-lt v3, v4, :cond_4

    .line 60
    int-to-long v5, v0

    .line 61
    .local v5, "oBytes":J
    iget-object v3, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 69
    .local v3, "outLen":I
    const-wide v7, 0x1ffffffffL

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    .line 74
    int-to-long v7, v3

    add-long/2addr v7, v5

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    int-to-long v9, v3

    div-long/2addr v7, v9

    long-to-int v8, v7

    .line 76
    .local v8, "cThreshold":I
    iget-object v7, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    .line 78
    .local v7, "dig":[B
    const/4 v9, 0x1

    .line 80
    .local v9, "counter":I
    const/4 v10, 0x0

    move v11, v10

    move v10, v9

    move v9, v0

    .end local p2    # "outOff":I
    .end local p3    # "len":I
    .local v4, "outOff":I
    .local v9, "len":I
    .local v10, "counter":I
    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_2

    .line 82
    iget-object v0, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v12, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    iget-object v13, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    array-length v13, v13

    const/4 v14, 0x0

    invoke-interface {v0, v12, v14, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 85
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v12, v0

    .line 87
    .local v12, "v1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v13, v0

    .line 89
    .local v13, "v2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v0, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 90
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {v10}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v15

    invoke-direct {v0, v15}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 94
    iget-object v0, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    const/4 v15, 0x1

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    move/from16 v16, v8

    .end local v8    # "cThreshold":I
    .local v16, "cThreshold":I
    iget-object v8, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    invoke-direct {v14, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v8, 0x0

    invoke-direct {v0, v15, v8, v14}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 94
    .end local v16    # "cThreshold":I
    .restart local v8    # "cThreshold":I
    :cond_0
    move/from16 v16, v8

    .line 99
    .end local v8    # "cThreshold":I
    .restart local v16    # "cThreshold":I
    :goto_1
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    iget v14, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    invoke-static {v14}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v14

    invoke-direct {v8, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v14, 0x2

    invoke-direct {v0, v15, v14, v8}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v8, "DER"

    invoke-virtual {v0, v8}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    .local v0, "other":[B
    iget-object v8, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v14, v0

    const/4 v15, 0x0

    invoke-interface {v8, v0, v15, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "other":[B
    nop

    .line 112
    iget-object v0, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v7, v15}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 114
    if-le v9, v3, :cond_1

    .line 116
    invoke-static {v7, v15, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    add-int/2addr v4, v3

    .line 118
    sub-int/2addr v9, v3

    goto :goto_2

    .line 122
    :cond_1
    invoke-static {v7, v15, v2, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :goto_2
    nop

    .end local v12    # "v1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v13    # "v2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v10, v10, 0x1

    .line 80
    add-int/lit8 v11, v11, 0x1

    move/from16 v8, v16

    goto/16 :goto_0

    .line 107
    .restart local v12    # "v1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v13    # "v2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v0

    .end local v0    # "e":Ljava/io/IOException;
    .local p2, "e":Ljava/io/IOException;
    const-string/jumbo v0, "unable to encode parameter info: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 128
    .end local v11    # "i":I
    .end local v12    # "v1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v13    # "v2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v16    # "cThreshold":I
    .end local p2    # "e":Ljava/io/IOException;
    .restart local v8    # "cThreshold":I
    :cond_2
    iget-object v0, v1, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 130
    long-to-int v0, v5

    return v0

    .line 71
    .end local v4    # "outOff":I
    .end local v7    # "dig":[B
    .end local v8    # "cThreshold":I
    .end local v9    # "len":I
    .end local v10    # "counter":I
    .local p2, "outOff":I
    .restart local p3    # "len":I
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Output length too large"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 57
    .end local v3    # "outLen":I
    .end local v5    # "oBytes":J
    :cond_4
    new-instance v3, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v5, "output buffer too small"

    invoke-direct {v3, v5}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 2
    .param p1, "param"    # Lorg/bouncycastle/crypto/DerivationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 39
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;

    .line 41
    .local v0, "params":Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    .line 43
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getZ()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    .line 44
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/kdf/DHKDFParameters;->getExtraInfo()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    .line 45
    return-void
.end method
