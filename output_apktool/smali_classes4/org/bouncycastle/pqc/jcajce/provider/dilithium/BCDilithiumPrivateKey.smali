.class public Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;
.super Ljava/lang/Object;
.source "BCDilithiumPrivateKey.java"

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/DilithiumPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient algorithm:Ljava/lang/String;

.field private transient attributes:Lorg/bouncycastle/asn1/ASN1Set;

.field private transient encoding:[B

.field private transient params:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 0
    .param p1, "keyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->init(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->init(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 34
    return-void
.end method

.method private init(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 2
    .param p1, "keyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;->createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->init(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 46
    return-void
.end method

.method private init(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;
    .param p2, "attributes"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "attributes"
        }
    .end annotation

    .line 50
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 51
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    .line 52
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->algorithm:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 127
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 129
    .local v0, "enc":[B
    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->init(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 130
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 138
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 139
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 63
    if-ne p1, p0, :cond_0

    .line 65
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;

    if-eqz v0, :cond_1

    .line 70
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;

    .line 72
    .local v0, "otherKey":Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1

    .line 75
    .end local v0    # "otherKey":Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->encoding:[B

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/util/KeyUtil;->getEncodedPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/asn1/ASN1Set;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->encoding:[B

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->encoding:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method getKeyParams()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    return-object v0
.end method

.method public getParameterSpec()Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/DilithiumParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/jcajce/interfaces/DilithiumPublicKey;
    .locals 2

    .line 103
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->getPublicKeyParameters()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
