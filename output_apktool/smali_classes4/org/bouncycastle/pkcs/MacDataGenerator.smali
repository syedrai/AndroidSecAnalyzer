.class Lorg/bouncycastle/pkcs/MacDataGenerator;
.super Ljava/lang/Object;
.source "MacDataGenerator.java"


# instance fields
.field private builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;)V
    .locals 0
    .param p1, "builder"    # Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    .line 20
    return-void
.end method


# virtual methods
.method public build([C[B)Lorg/bouncycastle/asn1/pkcs/MacData;
    .locals 7
    .param p1, "password"    # [C
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "password",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    .line 29
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object v0

    .line 31
    .local v0, "macCalculator":Lorg/bouncycastle/operator/MacCalculator;
    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 33
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 35
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "out":Ljava/io/OutputStream;
    nop

    .line 42
    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 44
    .local v1, "algId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v2, Lorg/bouncycastle/asn1/x509/DigestInfo;

    iget-object v3, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    invoke-interface {v3}, Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 45
    .local v2, "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v3

    .line 47
    .local v3, "params":Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/MacData;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v5

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v4, v2, v5, v6}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V

    return-object v4

    .line 37
    .end local v0    # "macCalculator":Lorg/bouncycastle/operator/MacCalculator;
    .end local v1    # "algId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v2    # "dInfo":Lorg/bouncycastle/asn1/x509/DigestInfo;
    .end local v3    # "params":Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/pkcs/PKCSException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to process data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
