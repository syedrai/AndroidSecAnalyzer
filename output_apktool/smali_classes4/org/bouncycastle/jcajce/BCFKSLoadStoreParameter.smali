.class public Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
.super Lorg/bouncycastle/jcajce/BCLoadStoreParameter;
.source "BCFKSLoadStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;,
        Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;
    }
.end annotation


# instance fields
.field private final certificates:[Ljava/security/cert/X509Certificate;

.field private final encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

.field private final macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

.field private final sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field private final sigKey:Ljava/security/Key;

.field private final storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

.field private final validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)V
    .locals 3
    .param p1, "bldr"    # Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bldr"
        }
    .end annotation

    .line 260
    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->-$$Nest$fgetin(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->-$$Nest$fgetout(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->-$$Nest$fgetprotectionParameter(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/BCLoadStoreParameter;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 262
    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->-$$Nest$fgetstoreConfig(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/crypto/util/PBKDFConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 263
    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->-$$Nest$fgetencAlg(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 264
    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->-$$Nest$fgetmacAlg(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 265
    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->-$$Nest$fgetsigAlg(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 266
    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->-$$Nest$fgetsigKey(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/security/Key;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->sigKey:Ljava/security/Key;

    .line 267
    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->-$$Nest$fgetcerts(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->certificates:[Ljava/security/cert/X509Certificate;

    .line 268
    invoke-static {p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->-$$Nest$fgetvalidator(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    .line 269
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;-><init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)V

    return-void
.end method


# virtual methods
.method public getCertChainValidator()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    return-object v0
.end method

.method public getStoreCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->certificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getStoreEncryptionAlgorithm()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    return-object v0
.end method

.method public getStoreMacAlgorithm()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    return-object v0
.end method

.method public getStorePBKDFConfig()Lorg/bouncycastle/crypto/util/PBKDFConfig;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    return-object v0
.end method

.method public getStoreSignatureAlgorithm()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    return-object v0
.end method

.method public getStoreSignatureKey()Ljava/security/Key;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;->sigKey:Ljava/security/Key;

    return-object v0
.end method
