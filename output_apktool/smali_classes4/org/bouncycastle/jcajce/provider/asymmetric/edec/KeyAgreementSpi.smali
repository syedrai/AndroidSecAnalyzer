.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X448UwithSHA512KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X25519UwithSHA256KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X448UwithSHA512CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X25519UwithSHA256CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X448withSHA512KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X25519withSHA256KDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X448withSHA512CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X448withSHA384CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X448withSHA256CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X25519withSHA512CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X25519withSHA384CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X25519withSHA256CKDF;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X25519;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X448;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$XDH;
    }
.end annotation


# instance fields
.field private agreement:Lorg/bouncycastle/crypto/RawAgreement;

.field private dhuSpec:Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

.field private result:[B


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "kdf"    # Lorg/bouncycastle/crypto/DerivationFunction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "kdf"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V

    .line 50
    return-void
.end method

.method private getAgreement(Ljava/lang/String;)Lorg/bouncycastle/crypto/RawAgreement;
    .locals 4
    .param p1, "alg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    const-string v1, "XDH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inappropriate key for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "X448"

    if-lez v0, :cond_3

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;

    new-instance v1, Lorg/bouncycastle/crypto/agreement/X448Agreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/X448Agreement;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;-><init>(Lorg/bouncycastle/crypto/RawAgreement;)V

    return-object v0

    .line 164
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;

    new-instance v1, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/agreement/XDHUnifiedAgreement;-><init>(Lorg/bouncycastle/crypto/RawAgreement;)V

    return-object v0

    .line 169
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    new-instance v0, Lorg/bouncycastle/crypto/agreement/X448Agreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/X448Agreement;-><init>()V

    return-object v0

    .line 175
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    return-object v0
.end method

.method private static getLwXDHKeyPrivate(Ljava/security/Key;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .param p0, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 183
    instance-of v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    if-eqz v0, :cond_0

    .line 185
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->engineGetKeyParameters()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/XECPrivateKey;

    if-eqz v0, :cond_6

    .line 190
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/XECPrivateKey;

    .line 192
    .local v0, "jcePriv":Ljava/security/interfaces/XECPrivateKey;
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$$ExternalSyntheticAPIConversion0;->m(Ljava/security/interfaces/XECPrivateKey;)Lj$/util/Optional;

    move-result-object v1

    .line 193
    .local v1, "scalar":Lj$/util/Optional;, "Ljava/util/Optional<[B>;"
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 198
    invoke-interface {v0}, Ljava/security/interfaces/XECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "algorithm":Ljava/lang/String;
    const-string v3, "X25519"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getX25519PrivateKey([B)Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    move-result-object v3

    return-object v3

    .line 205
    :cond_1
    const-string v4, "X448"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getX448PrivateKey([B)Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    move-result-object v3

    return-object v3

    .line 210
    :cond_2
    const-string v5, "XDH"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 212
    invoke-interface {v0}, Ljava/security/interfaces/XECPrivateKey;->getParams()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    .line 213
    .local v5, "params":Ljava/security/spec/AlgorithmParameterSpec;
    instance-of v6, v5, Ljava/security/spec/NamedParameterSpec;

    if-eqz v6, :cond_4

    .line 215
    move-object v6, v5

    check-cast v6, Ljava/security/spec/NamedParameterSpec;

    .line 217
    .local v6, "namedParams":Ljava/security/spec/NamedParameterSpec;
    invoke-virtual {v6}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getX25519PrivateKey([B)Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    move-result-object v3

    return-object v3

    .line 224
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 226
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getX448PrivateKey([B)Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    move-result-object v3

    return-object v3

    .line 231
    .end local v5    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "namedParams":Ljava/security/spec/NamedParameterSpec;
    .end local v7    # "name":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "cannot use XEC private key with unknown algorithm"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    .end local v2    # "algorithm":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "cannot use XEC private key without scalar"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    .end local v0    # "jcePriv":Ljava/security/interfaces/XECPrivateKey;
    .end local v1    # "scalar":Lj$/util/Optional;, "Ljava/util/Optional<[B>;"
    :cond_6
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot identify XDH private key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLwXDHKeyPublic(Ljava/security/Key;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 240
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    if-eqz v0, :cond_0

    .line 242
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->engineGetKeyParameters()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/XECPublicKey;

    if-eqz v0, :cond_6

    .line 247
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/XECPublicKey;

    .line 249
    .local v0, "jcePub":Ljava/security/interfaces/XECPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/XECPublicKey;->getU()Ljava/math/BigInteger;

    move-result-object v1

    .line 250
    .local v1, "u":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_5

    .line 255
    invoke-interface {v0}, Ljava/security/interfaces/XECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "algorithm":Ljava/lang/String;
    const-string v3, "X25519"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getX25519PublicKey(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v3

    return-object v3

    .line 262
    :cond_1
    const-string v4, "X448"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getX448PublicKey(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    move-result-object v3

    return-object v3

    .line 267
    :cond_2
    const-string v5, "XDH"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 269
    invoke-interface {v0}, Ljava/security/interfaces/XECPublicKey;->getParams()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    .line 270
    .local v5, "params":Ljava/security/spec/AlgorithmParameterSpec;
    instance-of v6, v5, Ljava/security/spec/NamedParameterSpec;

    if-eqz v6, :cond_4

    .line 272
    move-object v6, v5

    check-cast v6, Ljava/security/spec/NamedParameterSpec;

    .line 274
    .local v6, "namedParams":Ljava/security/spec/NamedParameterSpec;
    invoke-virtual {v6}, Ljava/security/spec/NamedParameterSpec;->getName()Ljava/lang/String;

    move-result-object v7

    .line 276
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getX25519PublicKey(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v3

    return-object v3

    .line 281
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 283
    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getX448PublicKey(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    move-result-object v3

    return-object v3

    .line 288
    .end local v5    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "namedParams":Ljava/security/spec/NamedParameterSpec;
    .end local v7    # "name":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "cannot use XEC public key with unknown algorithm"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    .end local v2    # "algorithm":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "cannot use XEC public key with negative U value"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    .end local v0    # "jcePub":Ljava/security/interfaces/XECPublicKey;
    .end local v1    # "u":Ljava/math/BigInteger;
    :cond_6
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot identify XDH public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getPublicKeyData(ILjava/math/BigInteger;)[B
    .locals 3
    .param p0, "length"    # I
    .param p1, "u"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "u"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 299
    :try_start_0
    invoke-static {p0, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "cannot use XEC public key with invalid U value"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getX25519PrivateKey([B)Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;
    .locals 2
    .param p0, "keyData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 310
    const/16 v0, 0x20

    array-length v1, p0

    if-ne v0, v1, :cond_0

    .line 315
    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([BI)V

    return-object v0

    .line 312
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot use XEC private key (X25519) with scalar of incorrect length"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getX25519PublicKey(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;
    .locals 3
    .param p0, "u"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "u"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 321
    const/16 v0, 0x20

    invoke-static {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getPublicKeyData(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 323
    .local v0, "keyData":[B
    new-instance v1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    return-object v1
.end method

.method private static getX448PrivateKey([B)Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;
    .locals 2
    .param p0, "keyData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 329
    const/16 v0, 0x38

    array-length v1, p0

    if-ne v0, v1, :cond_0

    .line 334
    new-instance v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;-><init>([BI)V

    return-object v0

    .line 331
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot use XEC private key (X448) with scalar of incorrect length"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getX448PublicKey(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;
    .locals 3
    .param p0, "u"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "u"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 340
    const/16 v0, 0x38

    invoke-static {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getPublicKeyData(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 342
    .local v0, "keyData":[B
    new-instance v1, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method protected doCalcSecret()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->result:[B

    return-object v0
.end method

.method protected doInitFromKey(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "params",
            "secureRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getLwXDHKeyPrivate(Ljava/security/Key;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 62
    .local v0, "priv":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "X25519"

    invoke-direct {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getAgreement(Ljava/lang/String;)Lorg/bouncycastle/crypto/RawAgreement;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    goto :goto_0

    .line 66
    :cond_0
    instance-of v1, v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    if-eqz v1, :cond_7

    .line 68
    const-string v1, "X448"

    invoke-direct {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getAgreement(Ljava/lang/String;)Lorg/bouncycastle/crypto/RawAgreement;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    .line 75
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->ukmParameters:[B

    .line 76
    instance-of v1, p2, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 83
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->dhuSpec:Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    .line 85
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->dhuSpec:Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->getUserKeyingMaterial()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->ukmParameters:[B

    .line 87
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    new-instance v2, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->dhuSpec:Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    .line 88
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->getEphemeralPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;->engineGetKeyParameters()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->dhuSpec:Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    .line 89
    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->getEphemeralPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->engineGetKeyParameters()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/params/XDHUPrivateParameters;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 87
    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 80
    :cond_1
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "agreement algorithm not DHU based"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_2
    if-eqz p2, :cond_5

    .line 93
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 95
    instance-of v1, p2, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    if-eqz v1, :cond_4

    .line 97
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    if-eqz v1, :cond_3

    .line 101
    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->getUserKeyingMaterial()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->ukmParameters:[B

    goto :goto_1

    .line 99
    :cond_3
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "no KDF specified for UserKeyingMaterialSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_4
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "unknown ParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v1, v0}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 113
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->ukmParameters:[B

    if-nez v1, :cond_6

    .line 115
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->ukmParameters:[B

    .line 117
    :cond_6
    return-void

    .line 72
    :cond_7
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "unsupported private key type"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "lastPhase"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    if-eqz v0, :cond_2

    .line 127
    if-eqz p2, :cond_1

    .line 132
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->getLwXDHKeyPublic(Ljava/security/Key;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 134
    .local v0, "pub":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/RawAgreement;->getAgreementSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->result:[B

    .line 136
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->dhuSpec:Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    new-instance v3, Lorg/bouncycastle/crypto/params/XDHUPublicParameters;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->dhuSpec:Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->getOtherPartyEphemeralKey()Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;->engineGetKeyParameters()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/bouncycastle/crypto/params/XDHUPublicParameters;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->result:[B

    invoke-interface {v1, v3, v4, v2}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->agreement:Lorg/bouncycastle/crypto/RawAgreement;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->result:[B

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    .line 145
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 129
    .end local v0    # "pub":Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be between two parties."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;->kaAlgorithm:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
