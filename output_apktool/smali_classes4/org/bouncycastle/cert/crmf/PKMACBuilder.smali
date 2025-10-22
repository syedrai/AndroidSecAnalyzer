.class public Lorg/bouncycastle/cert/crmf/PKMACBuilder;
.super Ljava/lang/Object;
.source "PKMACBuilder.java"

# interfaces
.implements Lorg/bouncycastle/operator/PBEMacCalculatorProvider;


# instance fields
.field private calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

.field private iterationCount:I

.field private mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private maxIterations:I

.field private owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private parameters:Lorg/bouncycastle/asn1/cmp/PBMParameter;

.field private random:Ljava/security/SecureRandom;

.field private saltLength:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcalculator(Lorg/bouncycastle/cert/crmf/PKMACBuilder;)Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    return-object p0
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;)V
    .locals 1
    .param p1, "hashAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "iterationCount"    # I
    .param p3, "macAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "calculator"    # Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashAlgorithm",
            "iterationCount",
            "macAlgorithm",
            "calculator"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->saltLength:I

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 54
    iput p2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->iterationCount:I

    .line 55
    iput-object p3, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 56
    iput-object p4, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;)V
    .locals 4
    .param p1, "calculator"    # Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calculator"
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->hmacSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v2, 0x3e8

    invoke-direct {p0, v0, v2, v1, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;I)V
    .locals 1
    .param p1, "calculator"    # Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;
    .param p2, "maxIterations"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "calculator",
            "maxIterations"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->saltLength:I

    .line 46
    iput p2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->maxIterations:I

    .line 47
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    .line 48
    return-void
.end method

.method private checkIterationCountCeiling(I)V
    .locals 4
    .param p1, "iterationCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterationCount"
        }
    .end annotation

    .line 140
    iget v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->maxIterations:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->maxIterations:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->maxIterations:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iteration count exceeds limit ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    :goto_0
    return-void
.end method

.method private genCalculator(Lorg/bouncycastle/asn1/cmp/PBMParameter;[C)Lorg/bouncycastle/operator/MacCalculator;
    .locals 6
    .param p1, "params"    # Lorg/bouncycastle/asn1/cmp/PBMParameter;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "params",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 164
    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    .line 165
    .local v0, "pw":[B
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getSalt()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    .line 166
    .local v1, "salt":[B
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 168
    .local v2, "K":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    array-length v3, v0

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getOwf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getMac()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;->setup(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 173
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getIterationCount()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v3

    .line 176
    .local v3, "iter":I
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->calculator:Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    invoke-interface {v4, v2}, Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;->calculateDigest([B)[B

    move-result-object v2

    .line 178
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_0

    .line 180
    move-object v4, v2

    .line 182
    .local v4, "key":[B
    new-instance v5, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;

    invoke-direct {v5, p0, p1, v4}, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;-><init>(Lorg/bouncycastle/cert/crmf/PKMACBuilder;Lorg/bouncycastle/asn1/cmp/PBMParameter;[B)V

    return-object v5
.end method

.method private genParameters()Lorg/bouncycastle/asn1/cmp/PBMParameter;
    .locals 5

    .line 217
    iget v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->saltLength:I

    new-array v0, v0, [B

    .line 219
    .local v0, "salt":[B
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 221
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->random:Ljava/security/SecureRandom;

    .line 224
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 226
    new-instance v1, Lorg/bouncycastle/asn1/cmp/PBMParameter;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->owf:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget v3, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->iterationCount:I

    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/bouncycastle/asn1/cmp/PBMParameter;-><init>([BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-object v1
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/operator/MacCalculator;
    .locals 2
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->parameters:Lorg/bouncycastle/asn1/cmp/PBMParameter;

    .line 130
    .local v0, "pbmParameter":Lorg/bouncycastle/asn1/cmp/PBMParameter;
    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->genParameters()Lorg/bouncycastle/asn1/cmp/PBMParameter;

    move-result-object v0

    .line 135
    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->genCalculator(Lorg/bouncycastle/asn1/cmp/PBMParameter;[C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object v1

    return-object v1
.end method

.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[C)Lorg/bouncycastle/operator/MacCalculator;
    .locals 4
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 109
    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PBMParameter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->setParameters(Lorg/bouncycastle/asn1/cmp/PBMParameter;)Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    .line 118
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/cert/crmf/CRMFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/bouncycastle/cert/crmf/CRMFException;
    new-instance v1, Lorg/bouncycastle/operator/OperatorCreationException;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/crmf/CRMFException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cert/crmf/CRMFException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 111
    .end local v0    # "e":Lorg/bouncycastle/cert/crmf/CRMFException;
    :cond_0
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string v1, "protection algorithm not mac based"

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIterationCount(I)Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .locals 2
    .param p1, "iterationCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterationCount"
        }
    .end annotation

    .line 79
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->checkIterationCountCeiling(I)V

    .line 85
    iput p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->iterationCount:I

    .line 87
    return-object p0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iteration count must be at least 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParameters(Lorg/bouncycastle/asn1/cmp/PBMParameter;)Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/asn1/cmp/PBMParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getIterationCount()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->checkIterationCountCeiling(I)V

    .line 101
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->parameters:Lorg/bouncycastle/asn1/cmp/PBMParameter;

    .line 103
    return-object p0
.end method

.method public setSaltLength(I)Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .locals 2
    .param p1, "saltLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saltLength"
        }
    .end annotation

    .line 67
    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    .line 72
    iput p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->saltLength:I

    .line 74
    return-object p0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "salt length must be at least 8 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cert/crmf/PKMACBuilder;
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

    .line 92
    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->random:Ljava/security/SecureRandom;

    .line 94
    return-object p0
.end method
