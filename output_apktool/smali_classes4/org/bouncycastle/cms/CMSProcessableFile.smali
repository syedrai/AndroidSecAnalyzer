.class public Lorg/bouncycastle/cms/CMSProcessableFile;
.super Ljava/lang/Object;
.source "CMSProcessableFile.java"

# interfaces
.implements Lorg/bouncycastle/cms/CMSTypedData;
.implements Lorg/bouncycastle/cms/CMSReadable;


# static fields
.field private static final DEFAULT_BUF_SIZE:I = 0x8000


# instance fields
.field private final bufSize:I

.field private final file:Ljava/io/File;

.field private final type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 29
    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSProcessableFile;-><init>(Ljava/io/File;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bufSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "bufSize"
        }
    .end annotation

    .line 36
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/cms/CMSProcessableFile;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/File;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/File;I)V
    .locals 0
    .param p1, "type"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "bufSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "file",
            "bufSize"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    iput-object p2, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->file:Ljava/io/File;

    .line 46
    iput p3, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->bufSize:I

    .line 47
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->type:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget v2, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->bufSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "zOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zOut"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    .local v0, "fIn":Ljava/io/FileInputStream;
    iget v1, p0, Lorg/bouncycastle/cms/CMSProcessableFile;->bufSize:I

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 60
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 61
    return-void
.end method
