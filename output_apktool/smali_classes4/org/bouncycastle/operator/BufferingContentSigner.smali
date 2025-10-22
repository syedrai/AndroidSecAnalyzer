.class public Lorg/bouncycastle/operator/BufferingContentSigner;
.super Ljava/lang/Object;
.source "BufferingContentSigner.java"

# interfaces
.implements Lorg/bouncycastle/operator/ContentSigner;


# instance fields
.field private final contentSigner:Lorg/bouncycastle/operator/ContentSigner;

.field private final output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/ContentSigner;)V
    .locals 2
    .param p1, "contentSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentSigner"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/operator/BufferingContentSigner;->contentSigner:Lorg/bouncycastle/operator/ContentSigner;

    .line 26
    new-instance v0, Lorg/bouncycastle/util/io/BufferingOutputStream;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/io/BufferingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/BufferingContentSigner;->output:Ljava/io/OutputStream;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/ContentSigner;I)V
    .locals 2
    .param p1, "contentSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentSigner",
            "bufferSize"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/operator/BufferingContentSigner;->contentSigner:Lorg/bouncycastle/operator/ContentSigner;

    .line 38
    new-instance v0, Lorg/bouncycastle/util/io/BufferingOutputStream;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/util/io/BufferingOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lorg/bouncycastle/operator/BufferingContentSigner;->output:Ljava/io/OutputStream;

    .line 39
    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/operator/BufferingContentSigner;->contentSigner:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/operator/BufferingContentSigner;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/operator/BufferingContentSigner;->contentSigner:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v0

    return-object v0
.end method
