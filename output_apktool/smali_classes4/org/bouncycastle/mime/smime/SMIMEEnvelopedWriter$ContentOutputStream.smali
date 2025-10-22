.class Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;
.super Ljava/io/OutputStream;
.source "SMIMEEnvelopedWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentOutputStream"
.end annotation


# instance fields
.field private final backing:Ljava/io/OutputStream;

.field private final main:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "main"    # Ljava/io/OutputStream;
    .param p2, "backing"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "main",
            "backing"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 176
    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    .line 177
    iput-object p2, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    .line 178
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 202
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 206
    :cond_0
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

    .line 195
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 196
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

    .line 183
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 184
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

    .line 189
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 190
    return-void
.end method
