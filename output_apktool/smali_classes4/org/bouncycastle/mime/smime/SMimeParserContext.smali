.class public Lorg/bouncycastle/mime/smime/SMimeParserContext;
.super Ljava/lang/Object;
.source "SMimeParserContext.java"

# interfaces
.implements Lorg/bouncycastle/mime/MimeParserContext;


# instance fields
.field private final defaultContentTransferEncoding:Ljava/lang/String;

.field private final digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0
    .param p1, "defaultContentTransferEncoding"    # Ljava/lang/String;
    .param p2, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultContentTransferEncoding",
            "digestCalculatorProvider"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMimeParserContext;->defaultContentTransferEncoding:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/mime/smime/SMimeParserContext;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    .line 16
    return-void
.end method


# virtual methods
.method public getDefaultContentTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserContext;->defaultContentTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestCalculatorProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserContext;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-object v0
.end method
