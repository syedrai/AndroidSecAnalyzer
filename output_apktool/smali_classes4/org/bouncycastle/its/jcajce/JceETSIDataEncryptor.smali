.class public Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;
.super Ljava/lang/Object;
.source "JceETSIDataEncryptor.java"

# interfaces
.implements Lorg/bouncycastle/its/operator/ETSIDataEncryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;
    }
.end annotation


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private key:[B

.field private nonce:[B

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "helper"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->random:Ljava/security/SecureRandom;

    .line 28
    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 4
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->key:[B

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->key:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 36
    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->nonce:[B

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->nonce:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 41
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->key:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    .local v0, "k":Ljavax/crypto/SecretKey;
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v2, "CCM"

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 43
    .local v1, "ccm":Ljavax/crypto/Cipher;
    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->nonce:[B

    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/bouncycastle/its/jcajce/ClassUtil;->getGCMSpec([BI)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 44
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 46
    .end local v0    # "k":Ljavax/crypto/SecretKey;
    .end local v1    # "ccm":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKey()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->key:[B

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->nonce:[B

    return-object v0
.end method
