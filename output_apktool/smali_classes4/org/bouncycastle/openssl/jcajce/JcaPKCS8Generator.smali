.class public Lorg/bouncycastle/openssl/jcajce/JcaPKCS8Generator;
.super Lorg/bouncycastle/openssl/PKCS8Generator;
.source "JcaPKCS8Generator.java"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Lorg/bouncycastle/operator/OutputEncryptor;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "encryptor"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "encryptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .line 16
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/openssl/PKCS8Generator;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)V

    .line 17
    return-void
.end method
