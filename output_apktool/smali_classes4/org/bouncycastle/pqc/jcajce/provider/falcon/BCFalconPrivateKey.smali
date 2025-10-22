.class public Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;
.super Ljava/lang/Object;
.source "BCFalconPrivateKey.java"

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/FalconPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient algorithm:Ljava/lang/String;

.field private transient attributes:Lorg/bouncycastle/asn1/ASN1Set;

.field private transient encoding:[B

.field private transient params:Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;


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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->init(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->init(Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 35
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

    .line 46
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;->createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->init(Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 47
    return-void
.end method

.method private init(Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
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

    .line 51
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    .line 53
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->algorithm:Ljava/lang/String;

    .line 54
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

    .line 126
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 128
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 130
    .local v0, "enc":[B
    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->init(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 131
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

    .line 137
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 139
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 140
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

    .line 64
    if-ne p1, p0, :cond_0

    .line 66
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;

    if-eqz v0, :cond_1

    .line 71
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;

    .line 73
    .local v0, "otherKey":Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1

    .line 76
    .end local v0    # "otherKey":Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->encoding:[B

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/util/KeyUtil;->getEncodedPrivateKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/asn1/ASN1Set;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->encoding:[B

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->encoding:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method getKeyParams()Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    return-object v0
.end method

.method public getParameterSpec()Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/FalconParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/pqc/jcajce/interfaces/FalconPublicKey;
    .locals 4

    .line 114
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getPublicKey()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/BCFalconPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
