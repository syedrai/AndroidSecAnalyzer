.class public Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "AuthorityKeyIdentifier.java"


# instance fields
.field certissuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field certserno:Lorg/bouncycastle/asn1/ASN1Integer;

.field keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 39
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 40
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 72
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 74
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 78
    .local v1, "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :pswitch_0
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 88
    goto :goto_1

    .line 84
    :pswitch_1
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 85
    goto :goto_1

    .line 81
    :pswitch_2
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 82
    nop

    .line 92
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    goto :goto_0

    .line 93
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "name"    # Lorg/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "serialNumber"
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1
    .param p1, "spki"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spki"
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "spki"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "name"    # Lorg/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "spki",
            "name",
            "serialNumber"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 39
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 40
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 124
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 125
    .local v1, "digest":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    .line 127
    .local v2, "resBuf":[B
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v3

    .line 128
    .local v3, "bytes":[B
    array-length v4, v3

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 129
    invoke-interface {v1, v2, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 131
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 132
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 133
    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 134
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "keyIdentifier"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyIdentifier"
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    .line 154
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "keyIdentifier"    # [B
    .param p2, "name"    # Lorg/bouncycastle/asn1/x509/GeneralNames;
    .param p3, "serialNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyIdentifier",
            "name",
            "serialNumber"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 39
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 40
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 165
    if-eqz p1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 166
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 167
    if-eqz p3, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 168
    return-void
.end method

.method public static fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1
    .param p0, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .line 66
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 52
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    return-object v0

    .line 56
    :cond_0
    if-eqz p0, :cond_1

    .line 58
    new-instance v0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthorityCertIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getAuthorityCertSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyIdentifier()[B
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 200
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 202
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 204
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 207
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_1

    .line 209
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certissuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 212
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2

    .line 214
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->certserno:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 217
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 223
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->keyidentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 225
    .local v0, "keyID":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
