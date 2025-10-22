.class public Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;
.super Ljava/lang/Object;
.source "PEMEncryptedKeyPair.java"


# instance fields
.field private final dekAlgName:Ljava/lang/String;

.field private final iv:[B

.field private final keyBytes:[B

.field private final parser:Lorg/bouncycastle/openssl/PEMKeyPairParser;


# direct methods
.method constructor <init>(Ljava/lang/String;[B[BLorg/bouncycastle/openssl/PEMKeyPairParser;)V
    .locals 0
    .param p1, "dekAlgName"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .param p3, "keyBytes"    # [B
    .param p4, "parser"    # Lorg/bouncycastle/openssl/PEMKeyPairParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dekAlgName",
            "iv",
            "keyBytes",
            "parser"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->dekAlgName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->iv:[B

    .line 18
    iput-object p3, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->keyBytes:[B

    .line 19
    iput-object p4, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->parser:Lorg/bouncycastle/openssl/PEMKeyPairParser;

    .line 20
    return-void
.end method


# virtual methods
.method public decryptKeyPair(Lorg/bouncycastle/openssl/PEMDecryptorProvider;)Lorg/bouncycastle/openssl/PEMKeyPair;
    .locals 5
    .param p1, "keyDecryptorProvider"    # Lorg/bouncycastle/openssl/PEMDecryptorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyDecryptorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->dekAlgName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/bouncycastle/openssl/PEMDecryptorProvider;->get(Ljava/lang/String;)Lorg/bouncycastle/openssl/PEMDecryptor;

    move-result-object v0

    .line 39
    .local v0, "keyDecryptor":Lorg/bouncycastle/openssl/PEMDecryptor;
    iget-object v1, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->parser:Lorg/bouncycastle/openssl/PEMKeyPairParser;

    iget-object v2, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->keyBytes:[B

    iget-object v3, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->iv:[B

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/openssl/PEMDecryptor;->decrypt([B[B)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/openssl/PEMKeyPairParser;->parse([B)Lorg/bouncycastle/openssl/PEMKeyPair;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    .end local v0    # "keyDecryptor":Lorg/bouncycastle/openssl/PEMDecryptor;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/openssl/PEMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception processing key pair: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    new-instance v1, Lorg/bouncycastle/openssl/PEMException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot create extraction operator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 41
    .end local v0    # "e":Lorg/bouncycastle/operator/OperatorCreationException;
    :catch_2
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method

.method public getDekAlgName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;->dekAlgName:Ljava/lang/String;

    return-object v0
.end method
