.class Lorg/bouncycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;
.super Ljava/lang/Object;
.source "BcRSAKeyTransEnvelopedRecipient.java"

# interfaces
.implements Lorg/bouncycastle/operator/InputDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$dataCipher:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$contentEncryptionAlgorithm",
            "val$dataCipher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p2, p0, Lorg/bouncycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->val$dataCipher:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "dataIn"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataIn"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->val$dataCipher:Ljava/lang/Object;

    instance-of v0, v0, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lorg/bouncycastle/crypto/io/CipherInputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->val$dataCipher:Ljava/lang/Object;

    check-cast v1, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/BufferedBlockCipher;)V

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/io/CipherInputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcRSAKeyTransEnvelopedRecipient$1;->val$dataCipher:Ljava/lang/Object;

    check-cast v1, Lorg/bouncycastle/crypto/StreamCipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/io/CipherInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/StreamCipher;)V

    return-object v0
.end method
