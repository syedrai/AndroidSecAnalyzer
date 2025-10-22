.class public Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
.super Ljava/lang/Object;
.source "SMIMEEnvelopedWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final stdHeaders:[Ljava/lang/String;

.field private static final stdValues:[Ljava/lang/String;


# instance fields
.field contentTransferEncoding:Ljava/lang/String;

.field private final envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetenvGen(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;)Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheaders(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 33
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Content-Type"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Content-Disposition"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Content-Transfer-Encoding"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Content-Description"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->stdHeaders:[Ljava/lang/String;

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "application/pkcs7-mime; name=\"smime.p7m\"; smime-type=enveloped-data"

    aput-object v1, v0, v3

    const-string v1, "attachment; filename=\"smime.p7m\""

    aput-object v1, v0, v4

    const-string v1, "base64"

    aput-object v1, v0, v5

    const-string v1, "S/MIME Encrypted Message"

    aput-object v1, v0, v6

    sput-object v0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->stdValues:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->headers:Ljava/util/Map;

    .line 53
    const-string v0, "base64"

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->stdHeaders:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->headers:Ljava/util/Map;

    sget-object v2, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->stdHeaders:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->stdValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addRecipientInfoGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .locals 1
    .param p1, "recipientGenerator"    # Lorg/bouncycastle/cms/RecipientInfoGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientGenerator"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->addRecipientInfoGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)V

    .line 117
    return-object p0
.end method

.method public build(Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;
    .locals 3
    .param p1, "mimeOut"    # Ljava/io/OutputStream;
    .param p2, "outEnc"    # Lorg/bouncycastle/operator/OutputEncryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mimeOut",
            "outEnc"
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;

    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMimeUtils;->autoBuffer(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v1, v2}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;-><init>(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter-IA;)V

    return-object v0
.end method

.method public setBufferSize(I)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->setBufferSize(I)V

    .line 73
    return-object p0
.end method

.method public setOriginatorInfo(Lorg/bouncycastle/cms/OriginatorInformation;)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .locals 1
    .param p1, "originatorInfo"    # Lorg/bouncycastle/cms/OriginatorInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originatorInfo"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->setOriginatorInfo(Lorg/bouncycastle/cms/OriginatorInformation;)V

    .line 87
    return-object p0
.end method

.method public setUnprotectedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .locals 1
    .param p1, "unprotectedAttributeGenerator"    # Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unprotectedAttributeGenerator"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->setUnprotectedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    .line 80
    return-object p0
.end method

.method public withHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headerName",
            "headerValue"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-object p0
.end method
