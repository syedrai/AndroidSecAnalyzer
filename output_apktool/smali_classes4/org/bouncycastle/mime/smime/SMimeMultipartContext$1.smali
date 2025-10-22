.class Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;
.super Ljava/lang/Object;
.source "SMimeMultipartContext.java"

# interfaces
.implements Lorg/bouncycastle/mime/MimeContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->createContext(I)Lorg/bouncycastle/mime/MimeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

.field final synthetic val$partNo:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/mime/smime/SMimeMultipartContext;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/mime/smime/SMimeMultipartContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$partNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput p2, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;->val$partNo:I

    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;->this$0:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .param p1, "headers"    # Lorg/bouncycastle/mime/Headers;
    .param p2, "contentStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headers",
            "contentStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget v0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;->val$partNo:I

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;->this$0:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-virtual {v0}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->getDigestOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 100
    .local v0, "digestOut":Ljava/io/OutputStream;
    invoke-virtual {p1, v0}, Lorg/bouncycastle/mime/Headers;->dumpHeaders(Ljava/io/OutputStream;)V

    .line 102
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 103
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 105
    new-instance v1, Lorg/bouncycastle/util/io/TeeInputStream;

    new-instance v2, Lorg/bouncycastle/mime/CanonicalOutputStream;

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;->this$0:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-static {v3}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->-$$Nest$fgetparserContext(Lorg/bouncycastle/mime/smime/SMimeMultipartContext;)Lorg/bouncycastle/mime/smime/SMimeParserContext;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Lorg/bouncycastle/mime/CanonicalOutputStream;-><init>(Lorg/bouncycastle/mime/smime/SMimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/OutputStream;)V

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1

    .line 108
    .end local v0    # "digestOut":Ljava/io/OutputStream;
    :cond_0
    return-object p2
.end method
