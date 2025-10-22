.class Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;
.super Ljava/io/OutputStream;
.source "SMIMESignedWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/mime/smime/SMIMESignedWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentOutputStream"
.end annotation


# instance fields
.field private final backing:Ljava/io/OutputStream;

.field private final main:Ljava/io/OutputStream;

.field private final sigBase:Ljava/io/OutputStream;

.field private final sigStream:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lorg/bouncycastle/mime/smime/SMIMESignedWriter;


# direct methods
.method constructor <init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "main"    # Ljava/io/OutputStream;
    .param p3, "backing"    # Ljava/io/OutputStream;
    .param p4, "sigStream"    # Ljava/io/ByteArrayOutputStream;
    .param p5, "sigBase"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "main",
            "backing",
            "sigStream",
            "sigBase"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->this$0:Lorg/bouncycastle/mime/smime/SMIMESignedWriter;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 350
    iput-object p2, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    .line 351
    iput-object p3, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    .line 352
    iput-object p4, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->sigStream:Ljava/io/ByteArrayOutputStream;

    .line 353
    iput-object p5, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->sigBase:Ljava/io/OutputStream;

    .line 354
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->this$0:Lorg/bouncycastle/mime/smime/SMIMESignedWriter;

    invoke-static {v0}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->-$$Nest$fgetboundary(Lorg/bouncycastle/mime/smime/SMIMESignedWriter;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 381
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    const-string v1, "\r\n--"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 382
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->this$0:Lorg/bouncycastle/mime/smime/SMIMESignedWriter;

    invoke-static {v2}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->-$$Nest$fgetboundary(Lorg/bouncycastle/mime/smime/SMIMESignedWriter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 383
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    const-string v2, "\r\n"

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 385
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    const-string v3, "Content-Type: application/pkcs7-signature; name=\"smime.p7s\"\r\n"

    invoke-static {v3}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 386
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    const-string v3, "Content-Transfer-Encoding: base64\r\n"

    invoke-static {v3}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 387
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    const-string v3, "Content-Disposition: attachment; filename=\"smime.p7s\"\r\n"

    invoke-static {v3}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 388
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 390
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->sigBase:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->sigBase:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->sigStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 397
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 398
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->this$0:Lorg/bouncycastle/mime/smime/SMIMESignedWriter;

    invoke-static {v1}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->-$$Nest$fgetboundary(Lorg/bouncycastle/mime/smime/SMIMESignedWriter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 399
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    const-string v1, "--\r\n"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 402
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 406
    :cond_2
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 372
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 360
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 366
    return-void
.end method
