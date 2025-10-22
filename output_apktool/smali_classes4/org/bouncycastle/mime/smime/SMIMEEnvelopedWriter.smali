.class public Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;
.super Lorg/bouncycastle/mime/MimeWriter;
.source "SMIMEEnvelopedWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;,
        Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;
    }
.end annotation


# instance fields
.field private final contentTransferEncoding:Ljava/lang/String;

.field private final envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

.field private final mimeOut:Ljava/io/OutputStream;

.field private final outEnc:Lorg/bouncycastle/operator/OutputEncryptor;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "builder"    # Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .param p2, "outEnc"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .param p3, "mimeOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "outEnc",
            "mimeOut"
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/bouncycastle/mime/Headers;

    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->-$$Nest$fgetheaders(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->mapToLines(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/mime/MimeWriter;-><init>(Lorg/bouncycastle/mime/Headers;)V

    .line 136
    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->-$$Nest$fgetenvGen(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;)Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    .line 137
    iget-object v0, p1, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->contentTransferEncoding:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->outEnc:Lorg/bouncycastle/operator/OutputEncryptor;

    .line 139
    iput-object p3, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->mimeOut:Ljava/io/OutputStream;

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;-><init>(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public getContentStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->headers:Lorg/bouncycastle/mime/Headers;

    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->mimeOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/mime/Headers;->dumpHeaders(Ljava/io/OutputStream;)V

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->mimeOut:Ljava/io/OutputStream;

    .line 153
    .local v0, "backing":Ljava/io/OutputStream;
    const-string v1, "base64"

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->contentTransferEncoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Lorg/bouncycastle/mime/encoding/Base64OutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 158
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-static {v0}, Lorg/bouncycastle/mime/smime/SMimeUtils;->createUnclosable(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;->outEnc:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->open(Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Ljava/io/OutputStream;

    move-result-object v1

    .line 160
    .local v1, "main":Ljava/io/OutputStream;
    new-instance v2, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 162
    .end local v0    # "backing":Ljava/io/OutputStream;
    .end local v1    # "main":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/bouncycastle/cms/CMSException;
    new-instance v1, Lorg/bouncycastle/mime/MimeIOException;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/mime/MimeIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
