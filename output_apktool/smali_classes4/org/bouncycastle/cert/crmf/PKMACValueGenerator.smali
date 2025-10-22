.class abstract Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;
.super Ljava/lang/Object;
.source "PKMACValueGenerator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static generate(Lorg/bouncycastle/cert/crmf/PKMACBuilder;[CLorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/crmf/PKMACValue;
    .locals 7
    .param p0, "builder"    # Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .param p1, "password"    # [C
    .param p2, "keyInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "password",
            "keyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object v0

    .line 23
    .local v0, "calculator":Lorg/bouncycastle/operator/MacCalculator;
    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 27
    .local v1, "macOut":Ljava/io/OutputStream;
    :try_start_0
    const-string v2, "DER"

    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 29
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    nop

    .line 36
    new-instance v2, Lorg/bouncycastle/asn1/crmf/PKMACValue;

    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/DERBitString;

    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/crmf/PKMACValue;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V

    return-object v2

    .line 31
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/cert/crmf/CRMFException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception encoding mac input: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
