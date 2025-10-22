.class Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;
.super Ljava/lang/Object;
.source "CRMFHelper.java"

# interfaces
.implements Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$JCECallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

.field final synthetic val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$sKey:Ljava/security/Key;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$encryptionAlgID",
            "val$sKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 168
    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$sKey:Ljava/security/Key;

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->this$0:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInJCE()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->this$0:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 175
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 176
    .local v1, "sParams":Lorg/bouncycastle/asn1/ASN1Primitive;
    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 178
    .local v2, "encAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x2

    if-eqz v1, :cond_2

    instance-of v4, v1, Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v4, :cond_2

    .line 182
    :try_start_0
    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->this$0:Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;

    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$encryptionAlgID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper;->createAlgorithmParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameters;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .local v4, "params":Ljava/security/AlgorithmParameters;
    :try_start_1
    invoke-static {v4, v1}, Lorg/bouncycastle/jcajce/util/AlgorithmParametersUtils;->loadParameters(Ljava/security/AlgorithmParameters;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    nop

    .line 193
    :try_start_2
    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$sKey:Ljava/security/Key;

    invoke-virtual {v0, v3, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .end local v4    # "params":Ljava/security/AlgorithmParameters;
    goto :goto_1

    .line 188
    .restart local v4    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v5

    .line 190
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Lorg/bouncycastle/cert/crmf/CRMFException;

    const-string v7, "error decoding algorithm parameters."

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "sParams":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v2    # "encAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    throw v6
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    .line 195
    .end local v4    # "params":Ljava/security/AlgorithmParameters;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "sParams":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v2    # "encAlg":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_1
    move-exception v4

    .line 197
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->IDEA_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 198
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 199
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 200
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 201
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    throw v4

    .line 203
    :cond_1
    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$sKey:Ljava/security/Key;

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 204
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 203
    invoke-virtual {v0, v3, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 210
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    goto :goto_3

    .line 214
    :cond_2
    sget-object v4, Lorg/bouncycastle/cms/CMSAlgorithm;->DES_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lorg/bouncycastle/cms/CMSAlgorithm;->IDEA_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 215
    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lorg/bouncycastle/cms/CMSAlgorithm;->CAST5_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 216
    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 222
    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$sKey:Ljava/security/Key;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_3

    .line 218
    :cond_4
    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/jcajce/CRMFHelper$1;->val$sKey:Ljava/security/Key;

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v6, 0x8

    new-array v6, v6, [B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 226
    :goto_3
    return-object v0
.end method
