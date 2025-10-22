.class public Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;
.super Ljava/lang/Object;
.source "JcaETSIDataDecryptor.java"

# interfaces
.implements Lorg/bouncycastle/its/operator/ETSIDataDecryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor$Builder;
    }
.end annotation


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final privateKey:Ljava/security/PrivateKey;

.field private final recipientHash:[B

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Ljava/security/PrivateKey;[BLorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1
    .param p1, "recipientInfo"    # Ljava/security/PrivateKey;
    .param p2, "recipientHash"    # [B
    .param p3, "provider"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recipientInfo",
            "recipientHash",
            "provider"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->secretKey:Ljavax/crypto/SecretKey;

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->privateKey:Ljava/security/PrivateKey;

    .line 29
    iput-object p3, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 30
    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->recipientHash:[B

    .line 31
    return-void
.end method

.method public static builder(Ljava/security/PrivateKey;[B)Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor$Builder;
    .locals 1
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "recipientHash"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "recipientHash"
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor$Builder;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor$Builder;-><init>(Ljava/security/PrivateKey;[B)V

    return-object v0
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 5
    .param p1, "wrappedKey"    # [B
    .param p2, "content"    # [B
    .param p3, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "wrappedKey",
            "content",
            "nonce"
        }
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "ETSIKEMwithSHA256"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 38
    .local v0, "etsiKem":Ljavax/crypto/Cipher;
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->privateKey:Ljava/security/PrivateKey;

    new-instance v2, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    iget-object v3, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->recipientHash:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;-><init>([B)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 41
    const-string v1, "AES"

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    iput-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->secretKey:Ljavax/crypto/SecretKey;

    .line 43
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v2, "CCM"

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 44
    .local v1, "ccm":Ljavax/crypto/Cipher;
    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->secretKey:Ljavax/crypto/SecretKey;

    const/16 v3, 0x80

    invoke-static {p3, v3}, Lorg/bouncycastle/its/jcajce/ClassUtil;->getGCMSpec([BI)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 45
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 47
    .end local v0    # "etsiKem":Ljavax/crypto/Cipher;
    .end local v1    # "ccm":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "gex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKey()[B
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->secretKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no secret key recovered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
