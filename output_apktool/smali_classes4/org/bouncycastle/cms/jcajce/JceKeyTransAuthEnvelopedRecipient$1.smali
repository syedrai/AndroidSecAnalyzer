.class Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;
.super Ljava/lang/Object;
.source "JceKeyTransAuthEnvelopedRecipient.java"

# interfaces
.implements Lorg/bouncycastle/operator/InputAEADDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field final synthetic val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$dataCipher:Ljavax/crypto/Cipher;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient;
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

    .line 34
    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->val$dataCipher:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAADStream()Ljava/io/OutputStream;
    .locals 2

    .line 50
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->val$dataCipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->val$contentEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

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

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->inputStream:Ljava/io/InputStream;

    .line 45
    new-instance v0, Lorg/bouncycastle/jcajce/io/CipherInputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->val$dataCipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/io/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public getMAC()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->inputStream:Ljava/io/InputStream;

    instance-of v0, v0, Lorg/bouncycastle/cms/InputStreamWithMAC;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$1;->inputStream:Ljava/io/InputStream;

    check-cast v0, Lorg/bouncycastle/cms/InputStreamWithMAC;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/InputStreamWithMAC;->getMAC()[B

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
