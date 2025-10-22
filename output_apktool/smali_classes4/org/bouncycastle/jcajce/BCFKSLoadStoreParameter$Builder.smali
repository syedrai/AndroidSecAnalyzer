.class public Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
.super Ljava/lang/Object;
.source "BCFKSLoadStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private certs:[Ljava/security/cert/X509Certificate;

.field private encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

.field private final in:Ljava/io/InputStream;

.field private macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

.field private final out:Ljava/io/OutputStream;

.field private final protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

.field private final sigKey:Ljava/security/Key;

.field private storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

.field private validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;


# direct methods
.method static bridge synthetic -$$Nest$fgetcerts(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetencAlg(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetin(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmacAlg(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetout(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprotectionParameter(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsigAlg(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsigKey(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Ljava/security/Key;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstoreConfig(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/crypto/util/PBKDFConfig;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidator(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    move-object v1, v0

    check-cast v1, Ljava/security/KeyStore$ProtectionParameter;

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "protectionParameter"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    .line 62
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    .line 63
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 64
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 65
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 66
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 167
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    .line 168
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    .line 169
    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 170
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sigKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "sigKey"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    .line 62
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    .line 63
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 64
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 65
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 66
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 126
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    .line 127
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    .line 128
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 129
    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "validator"    # Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "validator"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    .line 62
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    .line 63
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 64
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 65
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 66
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 141
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    .line 142
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    .line 143
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 144
    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->validator:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$CertChainValidator;

    .line 145
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[C)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "password"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;-><init>(Ljava/io/InputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "protectionParameter"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    .line 62
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    .line 63
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 64
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 65
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 66
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 98
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    .line 99
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    .line 100
    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 101
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/PrivateKey;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sigKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "sigKey"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;-><init>()V

    .line 62
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withIterationCount(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    .line 63
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withSaltLength(I)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/util/PBKDF2Config;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->withPRF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/PBKDF2Config$Builder;->build()Lorg/bouncycastle/crypto/util/PBKDF2Config;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 64
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;->AES256_CCM:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 65
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;->HmacSHA512:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 66
    sget-object v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;->SHA512withECDSA:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 112
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->in:Ljava/io/InputStream;

    .line 113
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->out:Ljava/io/OutputStream;

    .line 114
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 115
    iput-object p2, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigKey:Ljava/security/Key;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "password"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 88
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;
    .locals 2

    .line 246
    new-instance v0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter;-><init>(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter-IA;)V

    return-object v0
.end method

.method public withCertificates([Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .locals 3
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certs"
        }
    .end annotation

    .line 219
    array-length v0, p1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 220
    .local v0, "tmp":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iput-object v0, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->certs:[Ljava/security/cert/X509Certificate;

    .line 223
    return-object p0
.end method

.method public withStoreEncryptionAlgorithm(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .locals 0
    .param p1, "encAlg"    # Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encAlg"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->encAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$EncryptionAlgorithm;

    .line 194
    return-object p0
.end method

.method public withStoreMacAlgorithm(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .locals 0
    .param p1, "macAlg"    # Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "macAlg"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->macAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$MacAlgorithm;

    .line 206
    return-object p0
.end method

.method public withStorePBKDFConfig(Lorg/bouncycastle/crypto/util/PBKDFConfig;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .locals 0
    .param p1, "storeConfig"    # Lorg/bouncycastle/crypto/util/PBKDFConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storeConfig"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->storeConfig:Lorg/bouncycastle/crypto/util/PBKDFConfig;

    .line 182
    return-object p0
.end method

.method public withStoreSignatureAlgorithm(Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;)Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;
    .locals 0
    .param p1, "sigAlg"    # Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigAlg"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$Builder;->sigAlg:Lorg/bouncycastle/jcajce/BCFKSLoadStoreParameter$SignatureAlgorithm;

    .line 236
    return-object p0
.end method
