.class Lcom/google/common/io/MoreFiles$PathByteSource$1;
.super Lcom/google/common/io/ByteSource$AsCharSource;
.source "MoreFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/MoreFiles$PathByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/io/MoreFiles$PathByteSource;


# direct methods
.method constructor <init>(Lcom/google/common/io/MoreFiles$PathByteSource;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/io/MoreFiles$PathByteSource;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "charset"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/google/common/io/MoreFiles$PathByteSource$1;->this$0:Lcom/google/common/io/MoreFiles$PathByteSource;

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/ByteSource$AsCharSource;-><init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public lines()Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource$1;->this$0:Lcom/google/common/io/MoreFiles$PathByteSource;

    invoke-static {v0}, Lcom/google/common/io/MoreFiles$PathByteSource;->-$$Nest$fgetpath(Lcom/google/common/io/MoreFiles$PathByteSource;)Lj$/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/MoreFiles$PathByteSource$1;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lj$/nio/file/Files;->lines(Lj$/nio/file/Path;Ljava/nio/charset/Charset;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
