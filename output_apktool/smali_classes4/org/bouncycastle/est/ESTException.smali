.class public Lorg/bouncycastle/est/ESTException;
.super Ljava/io/IOException;
.source "ESTException.java"


# static fields
.field private static final MAX_ERROR_BODY:J = 0x2000L


# instance fields
.field private body:Ljava/io/InputStream;

.field private cause:Ljava/lang/Throwable;

.field private statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "cause"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lorg/bouncycastle/est/ESTException;->cause:Ljava/lang/Throwable;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTException;->body:Ljava/io/InputStream;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/ESTException;->statusCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "statusCode"    # I
    .param p4, "body"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "cause",
            "statusCode",
            "body"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/est/ESTException;->cause:Ljava/lang/Throwable;

    .line 38
    iput p3, p0, Lorg/bouncycastle/est/ESTException;->statusCode:I

    .line 39
    if-eqz p4, :cond_2

    .line 41
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 42
    .local v1, "b":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 46
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 48
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v4, v3

    int-to-long v4, v4

    const-wide/16 v6, 0x2000

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-lez v9, :cond_0

    .line 50
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    rsub-int v3, v4, 0x2000

    .line 51
    invoke-virtual {v2, v1, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 52
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {v2, v1, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 55
    invoke-virtual {p4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 58
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 59
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/est/ESTException;->body:Ljava/io/InputStream;

    .line 60
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v3    # "i":I
    goto :goto_2

    .line 62
    :catch_0
    move-exception v0

    .line 66
    .end local v1    # "b":[B
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_2
    goto :goto_3

    .line 69
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTException;->body:Ljava/io/InputStream;

    .line 71
    :goto_3
    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/est/ESTException;->body:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lorg/bouncycastle/est/ESTException$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/ESTException$1;-><init>(Lorg/bouncycastle/est/ESTException;)V

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/ESTException;->body:Ljava/io/InputStream;

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/est/ESTException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 80
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/est/ESTException;->statusCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " HTTP Status Code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/bouncycastle/est/ESTException;->statusCode:I

    return v0
.end method
