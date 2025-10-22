.class Lorg/bouncycastle/mime/smime/SMimeUtils;
.super Ljava/lang/Object;
.source "SMimeUtils.java"


# static fields
.field private static final RFC3851_MICALGS:Ljava/util/Map;

.field private static final RFC5751_MICALGS:Ljava/util/Map;

.field private static final STANDARD_MICALGS:Ljava/util/Map;

.field private static final forMic:Ljava/util/Map;

.field private static final nl:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/mime/smime/SMimeUtils;->nl:[B

    .line 32
    sget-object v0, Lorg/bouncycastle/mime/smime/SMimeUtils;->nl:[B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 33
    sget-object v0, Lorg/bouncycastle/mime/smime/SMimeUtils;->nl:[B

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v0, "stdMicAlgs":Ljava/util/Map;
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "md5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "sha-1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "sha-224"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "sha-256"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "sha-384"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v3, "sha-512"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "gostr3411-94"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "gostr3411-2012-256"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "gostr3411-2012-512"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/mime/smime/SMimeUtils;->RFC5751_MICALGS:Ljava/util/Map;

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v1, "oldMicAlgs":Ljava/util/Map;
    sget-object v6, Lorg/bouncycastle/cms/CMSAlgorithm;->MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "sha1"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "sha224"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "sha256"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "sha384"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v6, "sha512"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v2, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/mime/smime/SMimeUtils;->RFC3851_MICALGS:Ljava/util/Map;

    .line 65
    sget-object v2, Lorg/bouncycastle/mime/smime/SMimeUtils;->RFC5751_MICALGS:Ljava/util/Map;

    sput-object v2, Lorg/bouncycastle/mime/smime/SMimeUtils;->STANDARD_MICALGS:Ljava/util/Map;

    .line 68
    new-instance v2, Ljava/util/TreeMap;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 70
    .local v2, "mic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    sget-object v3, Lorg/bouncycastle/mime/smime/SMimeUtils;->STANDARD_MICALGS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 73
    .local v4, "key":Ljava/lang/Object;
    sget-object v5, Lorg/bouncycastle/mime/smime/SMimeUtils;->STANDARD_MICALGS:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .end local v4    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 76
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_0
    sget-object v3, Lorg/bouncycastle/mime/smime/SMimeUtils;->RFC3851_MICALGS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 79
    .restart local v4    # "key":Ljava/lang/Object;
    sget-object v5, Lorg/bouncycastle/mime/smime/SMimeUtils;->RFC3851_MICALGS:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v4    # "key":Ljava/lang/Object;
    goto :goto_1

    .line 82
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/mime/smime/SMimeUtils;->forMic:Ljava/util/Map;

    .line 84
    .end local v0    # "stdMicAlgs":Ljava/util/Map;
    .end local v1    # "oldMicAlgs":Ljava/util/Map;
    .end local v2    # "mic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;>;"
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static autoBuffer(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 129
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 134
    :cond_0
    return-object p0
.end method

.method static autoBuffer(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 139
    instance-of v0, p0, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 144
    :cond_0
    return-object p0
.end method

.method static createUnclosable(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "destination"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destination"
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/bouncycastle/mime/smime/SMimeUtils$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/mime/smime/SMimeUtils$1;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method static getDigestOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 4
    .param p0, "alg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alg"
        }
    .end annotation

    .line 117
    sget-object v0, Lorg/bouncycastle/mime/smime/SMimeUtils;->forMic:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 119
    .local v0, "oid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_0

    .line 124
    return-object v0

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown micalg passed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getParameter(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "startsWith"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startsWith",
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 103
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "paramIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, "param":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    return-object v1

    .line 110
    .end local v1    # "param":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 112
    .end local v0    # "paramIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static lessQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 88
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_1
    return-object p0

    .line 90
    :cond_2
    :goto_0
    return-object p0
.end method
