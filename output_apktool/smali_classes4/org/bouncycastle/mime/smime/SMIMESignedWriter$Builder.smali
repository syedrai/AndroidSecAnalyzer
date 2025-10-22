.class public Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
.super Ljava/lang/Object;
.source "SMIMESignedWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/mime/smime/SMIMESignedWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final detHeaders:[Ljava/lang/String;

.field private static final detValues:[Ljava/lang/String;

.field private static final encHeaders:[Ljava/lang/String;

.field private static final encValues:[Ljava/lang/String;


# instance fields
.field contentTransferEncoding:Ljava/lang/String;

.field private final encapsulated:Z

.field private final extraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final micAlgs:Ljava/util/Map;

.field private final sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;


# direct methods
.method static bridge synthetic -$$Nest$fgetsigGen(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;)Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 81
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Content-Type"

    aput-object v3, v1, v2

    sput-object v1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detHeaders:[Ljava/lang/String;

    .line 86
    new-array v1, v0, [Ljava/lang/String;

    const-string v4, "multipart/signed; protocol=\"application/pkcs7-signature\""

    aput-object v4, v1, v2

    sput-object v1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detValues:[Ljava/lang/String;

    .line 91
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    aput-object v3, v4, v2

    const-string v3, "Content-Disposition"

    aput-object v3, v4, v0

    const-string v3, "Content-Transfer-Encoding"

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v3, "Content-Description"

    const/4 v6, 0x3

    aput-object v3, v4, v6

    sput-object v4, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encHeaders:[Ljava/lang/String;

    .line 99
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "application/pkcs7-mime; name=\"smime.p7m\"; smime-type=enveloped-data"

    aput-object v3, v1, v2

    const-string v2, "attachment; filename=\"smime.p7m\""

    aput-object v2, v1, v0

    const-string v0, "base64"

    aput-object v0, v1, v5

    const-string v0, "S/MIME Signed Message"

    aput-object v0, v1, v6

    sput-object v1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encValues:[Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;-><init>(Z)V

    .line 118
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "encapsulated"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encapsulated"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->extraHeaders:Ljava/util/Map;

    .line 111
    sget-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->STANDARD_MICALGS:Ljava/util/Map;

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->micAlgs:Ljava/util/Map;

    .line 113
    const-string v0, "base64"

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    .line 123
    iput-boolean p1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encapsulated:Z

    .line 124
    return-void
.end method

.method private addBoundary(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/StringBuffer;
    .param p2, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "header",
            "boundary"
        }
    .end annotation

    .line 278
    const-string v0, ";\r\n\tboundary=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    return-void
.end method

.method private addHashHeader(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 6
    .param p1, "header"    # Ljava/lang/StringBuffer;
    .param p2, "signers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "header",
            "signers"
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    .line 219
    .local v0, "count":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 220
    .local v1, "it":Ljava/util/Iterator;
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 222
    .local v2, "micAlgSet":Ljava/util/Set;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 226
    .local v3, "digest":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v4, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->micAlgs:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 228
    .local v4, "micAlg":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 230
    const-string/jumbo v5, "unknown"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v3    # "digest":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v4    # "micAlg":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 238
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 240
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, "alg":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 246
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 248
    const-string v4, "; micalg=\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 252
    :cond_2
    const-string v4, "; micalg="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 257
    :cond_3
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    :goto_3
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    nop

    .end local v3    # "alg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 263
    goto :goto_2

    .line 265
    :cond_4
    if-eqz v0, :cond_5

    .line 267
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 269
    const/16 v3, 0x22

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    :cond_5
    return-void
.end method

.method private generateBoundary()Ljava/lang/String;
    .locals 4

    .line 285
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 287
    .local v0, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0xb4

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0xb3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
    .locals 1
    .param p1, "certificate"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    .line 146
    return-object p0
.end method

.method public addCertificates(Lorg/bouncycastle/util/Store;)Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
    .locals 1
    .param p1, "certificates"    # Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certificates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addCertificates(Lorg/bouncycastle/util/Store;)V

    .line 154
    return-object p0
.end method

.method public addSignerInfoGenerator(Lorg/bouncycastle/cms/SignerInfoGenerator;)Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
    .locals 1
    .param p1, "signerGenerator"    # Lorg/bouncycastle/cms/SignerInfoGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signerGenerator"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addSignerInfoGenerator(Lorg/bouncycastle/cms/SignerInfoGenerator;)V

    .line 167
    return-object p0
.end method

.method public build(Ljava/io/OutputStream;)Lorg/bouncycastle/mime/smime/SMIMESignedWriter;
    .locals 7
    .param p1, "mimeOut"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeOut"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v0

    .line 175
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encapsulated:Z

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "boundary":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encHeaders:[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 180
    sget-object v2, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encHeaders:[Ljava/lang/String;

    aget-object v2, v2, v1

    sget-object v4, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->encValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v0

    .end local v1    # "i":I
    goto :goto_2

    .line 185
    .end local v0    # "boundary":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0    # "boundary":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detValues:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "contValue":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getDigestAlgorithms()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->addHashHeader(Ljava/lang/StringBuffer;Ljava/util/List;)V

    .line 192
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->addBoundary(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 193
    sget-object v2, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detHeaders:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    sget-object v4, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detHeaders:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 197
    sget-object v4, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detHeaders:[Ljava/lang/String;

    aget-object v4, v4, v2

    sget-object v5, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->detValues:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 201
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "contValue":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .local v4, "boundary":Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->extraHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 204
    .local v1, "ent":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v1    # "ent":Ljava/util/Map$Entry;
    goto :goto_3

    .line 207
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_3
    new-instance v1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;

    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMimeUtils;->autoBuffer(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;-><init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;Lorg/bouncycastle/mime/smime/SMIMESignedWriter-IA;)V

    return-object v1
.end method

.method public withHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;
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

    .line 136
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->extraHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-object p0
.end method
