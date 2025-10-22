.class public Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT$BasePBKDF2;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "SCRYPT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasePBKDF2"
.end annotation


# instance fields
.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scheme"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "scheme"
        }
    .end annotation

    .line 33
    sget-object v0, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_scrypt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 35
    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT$BasePBKDF2;->scheme:I

    .line 36
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 10
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySpec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 42
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;

    if-eqz v0, :cond_4

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;

    .line 46
    .local v0, "pbeSpec":Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getSalt()[B

    move-result-object v1

    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getCostParameter()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 55
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getKeyLength()I

    move-result v1

    if-lez v1, :cond_1

    .line 61
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getPassword()[C

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    sget-object v2, Lorg/bouncycastle/crypto/PasswordConverter;->UTF8:Lorg/bouncycastle/crypto/PasswordConverter;

    .line 67
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getPassword()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/PasswordConverter;->convert([C)[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getSalt()[B

    move-result-object v5

    .line 68
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getCostParameter()I

    move-result v6

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getBlockSize()I

    move-result v7

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getParallelizationParameter()I

    move-result v8

    .line 69
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getKeyLength()I

    move-result v2

    div-int/lit8 v9, v2, 0x8

    .line 66
    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/crypto/generators/SCrypt;->generate([B[BIIII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 71
    .local v1, "param":Lorg/bouncycastle/crypto/CipherParameters;
    new-instance v2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT$BasePBKDF2;->algName:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-object v2

    .line 63
    .end local v1    # "param":Lorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_1
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    .line 58
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;->getKeyLength()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positive key length required: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cost parameter N must be > 1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Salt S must be provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    .end local v0    # "pbeSpec":Lorg/bouncycastle/jcajce/spec/ScryptKeySpec;
    :cond_4
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
