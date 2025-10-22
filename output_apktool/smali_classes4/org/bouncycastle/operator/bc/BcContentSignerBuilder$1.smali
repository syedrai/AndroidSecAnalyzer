.class Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;
.super Ljava/lang/Object;
.source "BcContentSignerBuilder.java"

# interfaces
.implements Lorg/bouncycastle/operator/ContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;->build(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/ContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private stream:Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

.field final synthetic this$0:Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;

.field final synthetic val$sig:Lorg/bouncycastle/crypto/Signer;


# direct methods
.method constructor <init>(Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;Lorg/bouncycastle/crypto/Signer;)V
    .locals 1
    .param p1, "this$0"    # Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$sig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p2, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->val$sig:Lorg/bouncycastle/crypto/Signer;

    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->this$0:Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance p2, Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->val$sig:Lorg/bouncycastle/crypto/Signer;

    invoke-direct {p2, v0}, Lorg/bouncycastle/operator/bc/BcSignerOutputStream;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    iput-object p2, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->stream:Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    .line 53
    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->this$0:Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;

    invoke-static {v0}, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;->-$$Nest$fgetsigAlgId(Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->stream:Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 5

    .line 70
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder$1;->stream:Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/bc/BcSignerOutputStream;->getSignature()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/bouncycastle/crypto/CryptoException;
    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception obtaining signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
