.class Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;
.super Ljava/lang/Object;
.source "PKMACBuilder.java"

# interfaces
.implements Lorg/bouncycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cert/crmf/PKMACBuilder;->genCalculator(Lorg/bouncycastle/asn1/cmp/PBMParameter;[C)Lorg/bouncycastle/operator/MacCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bOut:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

.field final synthetic val$key:[B

.field final synthetic val$params:Lorg/bouncycastle/asn1/cmp/PBMParameter;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cert/crmf/PKMACBuilder;Lorg/bouncycastle/asn1/cmp/PBMParameter;[B)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/cert/crmf/PKMACBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$params",
            "val$key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->val$params:Lorg/bouncycastle/asn1/cmp/PBMParameter;

    iput-object p3, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->val$key:[B

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->this$0:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->bOut:Ljava/io/ByteArrayOutputStream;

    .line 183
    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    .line 188
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->val$params:Lorg/bouncycastle/asn1/cmp/PBMParameter;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    .line 193
    new-instance v0, Lorg/bouncycastle/operator/GenericKey;

    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->val$key:[B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/GenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method public getMac()[B
    .locals 5

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->this$0:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    invoke-static {v0}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->-$$Nest$fgetcalculator(Lorg/bouncycastle/cert/crmf/PKMACBuilder;)Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->val$key:[B

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/cert/crmf/PKMACValuesCalculator;->calculateMac([B[B)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/cert/crmf/CRMFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Lorg/bouncycastle/cert/crmf/CRMFException;
    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/crmf/CRMFException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception calculating mac: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKMACBuilder$1;->bOut:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
