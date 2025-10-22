.class public Lorg/bouncycastle/mime/smime/SMimeMultipartContext;
.super Ljava/lang/Object;
.source "SMimeMultipartContext.java"

# interfaces
.implements Lorg/bouncycastle/mime/MimeMultipartContext;


# instance fields
.field private calculators:[Lorg/bouncycastle/operator/DigestCalculator;

.field private final parserContext:Lorg/bouncycastle/mime/smime/SMimeParserContext;


# direct methods
.method static bridge synthetic -$$Nest$fgetparserContext(Lorg/bouncycastle/mime/smime/SMimeMultipartContext;)Lorg/bouncycastle/mime/smime/SMimeParserContext;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->parserContext:Lorg/bouncycastle/mime/smime/SMimeParserContext;

    return-object p0
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)V
    .locals 1
    .param p1, "parserContext"    # Lorg/bouncycastle/mime/MimeParserContext;
    .param p2, "headers"    # Lorg/bouncycastle/mime/Headers;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parserContext",
            "headers"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/mime/smime/SMimeParserContext;

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->parserContext:Lorg/bouncycastle/mime/smime/SMimeParserContext;

    .line 30
    invoke-direct {p0, p2}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->createDigestCalculators(Lorg/bouncycastle/mime/Headers;)[Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->calculators:[Lorg/bouncycastle/operator/DigestCalculator;

    .line 31
    return-void
.end method

.method private createDigestCalculators(Lorg/bouncycastle/mime/Headers;)[Lorg/bouncycastle/operator/DigestCalculator;
    .locals 9
    .param p1, "headers"    # Lorg/bouncycastle/mime/Headers;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headers"
        }
    .end annotation

    .line 61
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/mime/Headers;->getContentTypeAttributes()Ljava/util/Map;

    move-result-object v0

    .line 63
    .local v0, "contentTypeFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "micalg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    .local v1, "micalgs":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 69
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "algs":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [Lorg/bouncycastle/operator/DigestCalculator;

    .line 72
    .local v3, "dcOut":[Lorg/bouncycastle/operator/DigestCalculator;
    const/4 v4, 0x0

    .local v4, "t":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 75
    aget-object v5, v2, v4

    invoke-static {v5}, Lorg/bouncycastle/mime/smime/SMimeUtils;->lessQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "alg":Ljava/lang/String;
    iget-object v6, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->parserContext:Lorg/bouncycastle/mime/smime/SMimeParserContext;

    invoke-virtual {v6}, Lorg/bouncycastle/mime/smime/SMimeParserContext;->getDigestCalculatorProvider()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 77
    invoke-static {v5}, Lorg/bouncycastle/mime/smime/SMimeUtils;->getDigestOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 76
    invoke-interface {v6, v7}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v6

    aput-object v6, v3, v4

    .line 72
    .end local v5    # "alg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v4    # "t":I
    :cond_0
    return-object v3

    .line 66
    .end local v2    # "algs":[Ljava/lang/String;
    .end local v3    # "dcOut":[Lorg/bouncycastle/operator/DigestCalculator;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No micalg field on content-type header"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "headers":Lorg/bouncycastle/mime/Headers;
    throw v2
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0    # "contentTypeFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "micalgs":Ljava/lang/String;
    .restart local p1    # "headers":Lorg/bouncycastle/mime/Headers;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/bouncycastle/operator/OperatorCreationException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
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

    .line 116
    return-object p2
.end method

.method public createContext(I)Lorg/bouncycastle/mime/MimeContext;
    .locals 1
    .param p1, "partNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "partNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;-><init>(Lorg/bouncycastle/mime/smime/SMimeMultipartContext;I)V

    return-object v0
.end method

.method getDigestCalculators()[Lorg/bouncycastle/operator/DigestCalculator;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->calculators:[Lorg/bouncycastle/operator/DigestCalculator;

    return-object v0
.end method

.method getDigestOutputStream()Ljava/io/OutputStream;
    .locals 4

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->calculators:[Lorg/bouncycastle/operator/DigestCalculator;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->calculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->calculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v0, v0, v2

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 48
    .local v0, "compoundStream":Ljava/io/OutputStream;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->calculators:[Lorg/bouncycastle/operator/DigestCalculator;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 50
    new-instance v2, Lorg/bouncycastle/util/io/TeeOutputStream;

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->calculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
