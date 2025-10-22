.class public Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
.super Ljava/lang/Object;
.source "JcePBMac1CalculatorBuilder.java"


# static fields
.field public static final PRF_SHA224:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_SHA256:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_SHA384:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_SHA3_224:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_SHA3_256:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_SHA3_384:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_SHA3_512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public static final PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final defaultFinder:Lorg/bouncycastle/operator/DefaultMacAlgorithmIdentifierFinder;


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private iterationCount:I

.field private keySize:I

.field private macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private pbeParams:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

.field private prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private random:Ljava/security/SecureRandom;

.field private salt:[B

.field private saltLength:I


# direct methods
.method static bridge synthetic -$$Nest$fgetiterationCount(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->iterationCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkeySize(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->keySize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmacAlgorithm(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprf(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsalt(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->salt:[B

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->PRF_SHA224:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->PRF_SHA256:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->PRF_SHA384:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 42
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->PRF_SHA512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->PRF_SHA3_224:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->PRF_SHA3_256:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->PRF_SHA3_384:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 47
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hmacWithSHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->PRF_SHA3_512:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    new-instance v0, Lorg/bouncycastle/operator/DefaultMacAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultMacAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->defaultFinder:Lorg/bouncycastle/operator/DefaultMacAlgorithmIdentifierFinder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "macAlgorithm"    # Ljava/lang/String;
    .param p2, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "macAlgorithm",
            "keySize"
        }
    .end annotation

    .line 71
    sget-object v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->defaultFinder:Lorg/bouncycastle/operator/DefaultMacAlgorithmIdentifierFinder;

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;-><init>(Ljava/lang/String;ILorg/bouncycastle/operator/MacAlgorithmIdentifierFinder;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/bouncycastle/operator/MacAlgorithmIdentifierFinder;)V
    .locals 2
    .param p1, "macAlgorithm"    # Ljava/lang/String;
    .param p2, "keySize"    # I
    .param p3, "algIdFinder"    # Lorg/bouncycastle/operator/MacAlgorithmIdentifierFinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "macAlgorithm",
            "keySize",
            "algIdFinder"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->saltLength:I

    .line 56
    const/16 v0, 0x2000

    iput v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->iterationCount:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->pbeParams:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 60
    sget-object v1, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->PRF_SHA256:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 61
    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->salt:[B

    .line 83
    invoke-interface {p3, p1}, Lorg/bouncycastle/operator/MacAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 84
    iput p2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->keySize:I

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;)V
    .locals 2
    .param p1, "pbeMacParams"    # Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pbeMacParams"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->saltLength:I

    .line 56
    const/16 v0, 0x2000

    iput v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->iterationCount:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->pbeParams:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 60
    sget-object v1, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->PRF_SHA256:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 61
    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->salt:[B

    .line 94
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;->getMessageAuthScheme()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 96
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->pbeParams:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    .line 97
    return-void
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/operator/MacCalculator;
    .locals 8
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->random:Ljava/security/SecureRandom;

    .line 170
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 172
    .local v0, "mac":Ljavax/crypto/Mac;
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->pbeParams:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_2

    .line 174
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->salt:[B

    if-nez v1, :cond_3

    .line 176
    iget v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->saltLength:I

    if-gez v1, :cond_1

    .line 178
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->saltLength:I

    .line 180
    :cond_1
    iget v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->saltLength:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->salt:[B

    .line 182
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->salt:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 224
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    move-object v3, p1

    goto :goto_1

    .line 187
    .restart local v0    # "mac":Ljavax/crypto/Mac;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->pbeParams:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->salt:[B

    .line 188
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->pbeParams:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->iterationCount:I

    .line 189
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->pbeParams:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getKeyLength()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->keySize:I

    .line 192
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v2, "PBKDF2"

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 194
    .local v1, "secFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    iget-object v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->salt:[B

    iget v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->iterationCount:I

    iget v6, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->keySize:I

    iget-object v7, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, p1

    .end local p1    # "password":[C
    .local v3, "password":[C
    :try_start_3
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;-><init>([C[BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 196
    .local p1, "key":Ljavax/crypto/SecretKey;
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 198
    new-instance v2, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;-><init>(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v2

    .line 224
    .end local v0    # "mac":Ljavax/crypto/Mac;
    .end local v1    # "secFact":Ljavax/crypto/SecretKeyFactory;
    .end local p1    # "key":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v3    # "password":[C
    .local p1, "password":[C
    :catch_2
    move-exception v0

    move-object v3, p1

    .line 226
    .end local p1    # "password":[C
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "password":[C
    :goto_1
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to create MAC calculator: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method setHelper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    .locals 0
    .param p1, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "helper"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 117
    return-object p0
.end method

.method public setIterationCount(I)Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    .locals 0
    .param p1, "iterationCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterationCount"
        }
    .end annotation

    .line 122
    iput p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->iterationCount:I

    .line 124
    return-object p0
.end method

.method public setPrf(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    .locals 0
    .param p1, "prf"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prf"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->prf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 157
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerName"
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 110
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 103
    return-object p0
.end method

.method public setRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->random:Ljava/security/SecureRandom;

    .line 150
    return-object p0
.end method

.method public setSalt([B)Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    .locals 0
    .param p1, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "salt"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->salt:[B

    .line 143
    return-object p0
.end method

.method public setSaltLength(I)Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    .locals 0
    .param p1, "saltLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saltLength"
        }
    .end annotation

    .line 134
    iput p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->saltLength:I

    .line 136
    return-object p0
.end method
