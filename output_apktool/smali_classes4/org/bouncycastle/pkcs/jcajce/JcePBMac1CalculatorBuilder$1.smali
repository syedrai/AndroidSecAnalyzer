.class Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;
.super Ljava/lang/Object;
.source "JcePBMac1CalculatorBuilder.java"

# interfaces
.implements Lorg/bouncycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

.field final synthetic val$key:Ljavax/crypto/SecretKey;

.field final synthetic val$mac:Ljavax/crypto/Mac;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;Ljavax/crypto/Mac;Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mac",
            "val$key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 199
    iput-object p2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->val$mac:Ljavax/crypto/Mac;

    iput-object p3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->val$key:Ljavax/crypto/SecretKey;

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 10

    .line 202
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBMAC1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    iget-object v6, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

    invoke-static {v6}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->-$$Nest$fgetsalt(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;)[B

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

    invoke-static {v7}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->-$$Nest$fgetiterationCount(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;)I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

    invoke-static {v8}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->-$$Nest$fgetkeySize(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;)I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    iget-object v9, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

    invoke-static {v9}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->-$$Nest$fgetprf(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->this$0:Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;

    invoke-static {v4}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;->-$$Nest$fgetmacAlgorithm(Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    .line 220
    new-instance v0, Lorg/bouncycastle/operator/GenericKey;

    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->val$key:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/GenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->val$mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .line 210
    new-instance v0, Lorg/bouncycastle/jcajce/io/MacOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePBMac1CalculatorBuilder$1;->val$mac:Ljavax/crypto/Mac;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/io/MacOutputStream;-><init>(Ljavax/crypto/Mac;)V

    return-object v0
.end method
