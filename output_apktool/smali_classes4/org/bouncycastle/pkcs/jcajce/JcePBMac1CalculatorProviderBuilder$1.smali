.class Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder$1;
.super Ljava/lang/Object;
.source "JcePBMac1CalculatorProviderBuilder.java"

# interfaces
.implements Lorg/bouncycastle/operator/PBEMacCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/PBEMacCalculatorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[C)Lorg/bouncycastle/operator/MacCalculator;
    .locals 2
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

    .line 45
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBMAC1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

    .line 51
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;-><init>(Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;)V

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;

    invoke-static {v1}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;->-$$Nest$fgethelper(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->setHelper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

    move-result-object v0

    .line 53
    .local v0, "bldr":Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    invoke-virtual {v0, p2}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object v1

    return-object v1

    .line 47
    .end local v0    # "bldr":Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    :cond_0
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string v1, "protection algorithm not PB mac based"

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
