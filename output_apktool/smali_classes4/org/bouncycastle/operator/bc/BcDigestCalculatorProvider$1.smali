.class Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$1;
.super Ljava/lang/Object;
.source "BcDigestCalculatorProvider.java"

# interfaces
.implements Lorg/bouncycastle/operator/DigestCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field final synthetic val$stream:Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;


# direct methods
.method constructor <init>(Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$algorithm",
            "val$stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p2, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$1;->val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$1;->val$stream:Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$1;->val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigest()[B
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$1;->val$stream:Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;->getDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$1;->val$stream:Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider$DigestOutputStream;

    return-object v0
.end method
