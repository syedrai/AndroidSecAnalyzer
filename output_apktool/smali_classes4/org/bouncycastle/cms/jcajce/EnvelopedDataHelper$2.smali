.class Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;
.super Ljava/lang/Object;
.source "EnvelopedDataHelper.java"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$JCECallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentMac(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Mac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field final synthetic val$macAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$sKey:Ljava/security/Key;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$macAlgId",
            "val$sKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 480
    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->val$macAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->val$sKey:Ljava/security/Key;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->this$0:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInJCE()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->this$0:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->val$macAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createMac(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 487
    .local v0, "mac":Ljavax/crypto/Mac;
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->val$macAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 488
    .local v1, "sParams":Lorg/bouncycastle/asn1/ASN1Encodable;
    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->val$macAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "macAlg":Ljava/lang/String;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lorg/bouncycastle/asn1/ASN1Null;

    if-nez v3, :cond_0

    .line 494
    :try_start_0
    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->this$0:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->val$macAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createAlgorithmParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 496
    .local v3, "params":Ljava/security/AlgorithmParameters;
    invoke-static {v3, v1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->loadParameters(Ljava/security/AlgorithmParameters;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 498
    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->val$sKey:Ljava/security/Key;

    const-class v5, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v3, v5}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v3    # "params":Ljava/security/AlgorithmParameters;
    goto :goto_0

    .line 500
    :catch_0
    move-exception v3

    .line 502
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    throw v3

    .line 507
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper$2;->val$sKey:Ljava/security/Key;

    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 510
    :goto_0
    return-object v0
.end method
