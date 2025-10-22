.class Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;
.super Ljava/lang/Object;
.source "BcITSContentVerifierProvider.java"

# interfaces
.implements Lorg/bouncycastle/operator/ContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

.field final synthetic this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

.field final synthetic val$digest:Lorg/bouncycastle/crypto/Digest;

.field final synthetic val$os:Ljava/io/OutputStream;

.field final synthetic val$parentDigest:[B

.field final synthetic val$parentTBSDigest:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/crypto/Digest;[B[B)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$os",
            "val$digest",
            "val$parentTBSDigest",
            "val$parentDigest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 127
    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$os:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p4, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentTBSDigest:[B

    iput-object p5, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentDigest:[B

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance p2, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance p3, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {p3}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    sget-object p4, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    iget-object p5, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

    invoke-static {p5}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->-$$Nest$fgetdigestAlgo(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p5

    .line 129
    invoke-interface {p4, p5}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    .line 127
    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public verify([B)Z
    .locals 5
    .param p1, "expected"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expected"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 145
    .local v0, "clientCertDigest":[B
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 150
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    iget-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

    invoke-static {v3}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->-$$Nest$fgetpubParams(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    .line 158
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentTBSDigest:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentTBSDigest:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 161
    .local v1, "empty":[B
    iget-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 165
    iget-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    array-length v4, v1

    invoke-virtual {v3, v1, v2, v4}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    .line 166
    .end local v1    # "empty":[B
    goto :goto_0

    .line 169
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    iget-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentDigest:[B

    iget-object v4, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentDigest:[B

    array-length v4, v4

    invoke-virtual {v1, v3, v2, v4}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    .line 172
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->verifySignature([B)Z

    move-result v1

    return v1
.end method
