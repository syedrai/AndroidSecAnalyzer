.class public Lorg/bouncycastle/mime/smime/SMIMESignedWriter;
.super Lorg/bouncycastle/mime/MimeWriter;
.source "SMIMESignedWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;,
        Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;
    }
.end annotation


# static fields
.field public static final RFC3851_MICALGS:Ljava/util/Map;

.field public static final RFC5751_MICALGS:Ljava/util/Map;

.field public static final STANDARD_MICALGS:Ljava/util/Map;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final contentTransferEncoding:Ljava/lang/String;

.field private final mimeOut:Ljava/io/OutputStream;

.field private final sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;


# direct methods
.method static bridge synthetic -$$Nest$fgetboundary(Lorg/bouncycastle/mime/smime/SMIMESignedWriter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "stdMicAlgs":Ljava/util/Map;
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "md5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "sha-1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "sha-224"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "sha-256"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "sha-384"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "sha-512"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "gostr3411-94"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "gostr3411-2012-256"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "gostr3411-2012-512"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->RFC5751_MICALGS:Ljava/util/Map;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v1, "oldMicAlgs":Ljava/util/Map;
    sget-object v6, Lorg/bouncycastle/cms/CMSAlgorithm;->MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "sha1"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "sha224"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "sha256"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "sha384"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "sha512"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->RFC3851_MICALGS:Ljava/util/Map;

    .line 69
    sget-object v2, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->RFC5751_MICALGS:Ljava/util/Map;

    sput-object v2, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->STANDARD_MICALGS:Ljava/util/Map;

    .line 70
    .end local v0    # "stdMicAlgs":Ljava/util/Map;
    .end local v1    # "oldMicAlgs":Ljava/util/Map;
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "builder"    # Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
    .param p3, "boundary"    # Ljava/lang/String;
    .param p4, "mimeOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "headers",
            "boundary",
            "mimeOut"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 299
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/bouncycastle/mime/Headers;

    invoke-static {p2}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mapToLines(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/mime/MimeWriter;-><init>(Lorg/bouncycastle/mime/Headers;)V

    .line 301
    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->-$$Nest$fgetsigGen(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;)Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    .line 302
    iget-object v0, p1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->contentTransferEncoding:Ljava/lang/String;

    .line 303
    iput-object p3, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    .line 304
    iput-object p4, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    .line 305
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;Lorg/bouncycastle/mime/smime/SMIMESignedWriter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;-><init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public getContentStream()Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->headers:Lorg/bouncycastle/mime/Headers;

    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/mime/Headers;->dumpHeaders(Ljava/io/OutputStream;)V

    .line 319
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 321
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    return-object v0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v2, "This is an S/MIME signed message\r\n"

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 328
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v2, "\r\n--"

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 329
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 330
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 332
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    .line 334
    .local v5, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lorg/bouncycastle/mime/encoding/Base64OutputStream;

    invoke-direct {v6, v5}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 336
    .local v6, "stream":Lorg/bouncycastle/mime/encoding/Base64OutputStream;
    new-instance v1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    invoke-static {v2}, Lorg/bouncycastle/mime/smime/SMimeUtils;->createUnclosable(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3, v2}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;-><init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    return-object v1
.end method
