.class Lorg/bouncycastle/mime/LineReader;
.super Ljava/lang/Object;
.source "LineReader.java"


# instance fields
.field private lastC:I

.field private final src:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/mime/LineReader;->src:Ljava/io/InputStream;

    .line 21
    return-void
.end method


# virtual methods
.method readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    iget v1, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    const/16 v2, 0xd

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 32
    iget v1, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    if-ne v1, v2, :cond_0

    .line 34
    const-string v1, ""

    return-object v1

    .line 36
    :cond_0
    iget v1, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    .line 37
    .local v1, "ch":I
    iput v3, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    goto :goto_0

    .line 41
    .end local v1    # "ch":I
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/mime/LineReader;->src:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 44
    .restart local v1    # "ch":I
    :goto_0
    const/16 v3, 0xa

    if-ltz v1, :cond_2

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 46
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 47
    iget-object v3, p0, Lorg/bouncycastle/mime/LineReader;->src:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    .line 50
    :cond_2
    if-ne v1, v2, :cond_3

    .line 52
    iget-object v2, p0, Lorg/bouncycastle/mime/LineReader;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 53
    .local v2, "c":I
    if-eq v2, v3, :cond_3

    if-ltz v2, :cond_3

    .line 55
    iput v2, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    .line 59
    .end local v2    # "c":I
    :cond_3
    if-gez v1, :cond_4

    .line 61
    const/4 v2, 0x0

    return-object v2

    .line 64
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
