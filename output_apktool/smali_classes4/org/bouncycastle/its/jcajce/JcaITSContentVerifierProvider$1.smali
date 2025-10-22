.class Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;
.super Ljava/lang/Object;
.source "JcaITSContentVerifierProvider.java"

# interfaces
.implements Lorg/bouncycastle/operator/ContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;

.field final synthetic val$calculator:Lorg/bouncycastle/operator/DigestCalculator;

.field final synthetic val$os:Ljava/io/OutputStream;

.field final synthetic val$parentDigest:[B

.field final synthetic val$parentTBSDigest:[B

.field final synthetic val$signature:Ljava/security/Signature;


# direct methods
.method constructor <init>(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/operator/DigestCalculator;Ljava/security/Signature;[B[B)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$os",
            "val$calculator",
            "val$signature",
            "val$parentTBSDigest",
            "val$parentDigest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$os:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$calculator:Lorg/bouncycastle/operator/DigestCalculator;

    iput-object p4, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    iput-object p5, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$parentTBSDigest:[B

    iput-object p6, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$parentDigest:[B

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->this$0:Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public verify([B)Z
    .locals 4
    .param p1, "expected"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expected"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$calculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    .line 214
    .local v0, "clientCertDigest":[B
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->this$0:Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;

    invoke-static {v2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->-$$Nest$fgetpubParams(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 215
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 217
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$parentTBSDigest:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$parentTBSDigest:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$calculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    .line 220
    .local v1, "empty":[B
    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {v2, v1}, Ljava/security/Signature;->update([B)V

    .line 221
    .end local v1    # "empty":[B
    goto :goto_0

    .line 224
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$parentDigest:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 227
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;->val$signature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 229
    :catch_0
    move-exception v1

    .line 231
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
