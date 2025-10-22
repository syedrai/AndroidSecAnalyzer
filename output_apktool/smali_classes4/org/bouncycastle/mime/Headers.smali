.class public Lorg/bouncycastle/mime/Headers;
.super Ljava/lang/Object;
.source "Headers.java"

# interfaces
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/mime/Headers$KV;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private boundary:Ljava/lang/String;

.field private final contentTransferEncoding:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private contentTypeParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field private final headersAsPresented:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private multipart:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "defaultContentTransferEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "defaultContentTransferEncoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-static {p1}, Lorg/bouncycastle/mime/Headers;->parseHeaders(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "defaultContentTransferEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentType",
            "defaultContentTransferEncoding"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/bouncycastle/mime/Headers;->headers:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "header":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/mime/Headers;->headersAsPresented:Ljava/util/List;

    .line 58
    iget-object v1, p0, Lorg/bouncycastle/mime/Headers;->headersAsPresented:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v1, "Content-Type"

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/mime/Headers;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v1}, Lorg/bouncycastle/mime/Headers;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v1, "text/plain"

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/bouncycastle/mime/Headers;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    .line 64
    .local v1, "contentTypeHeader":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 65
    .local v2, "parameterIndex":I
    if-gez v2, :cond_1

    .line 67
    move-object p1, v1

    .line 68
    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v4, p0, Lorg/bouncycastle/mime/Headers;->contentTypeParameters:Ljava/util/Map;

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 73
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/mime/Headers;->createContentTypeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/mime/Headers;->contentTypeParameters:Ljava/util/Map;

    .line 76
    :goto_1
    const-string v4, "Content-Transfer-Encoding"

    invoke-virtual {p0, v4}, Lorg/bouncycastle/mime/Headers;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v4, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4}, Lorg/bouncycastle/mime/Headers;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    :goto_2
    iput-object v4, p0, Lorg/bouncycastle/mime/Headers;->contentTransferEncoding:Ljava/lang/String;

    .line 78
    const-string v4, "multipart"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 80
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/bouncycastle/mime/Headers;->multipart:Z

    .line 81
    iget-object v4, p0, Lorg/bouncycastle/mime/Headers;->contentTypeParameters:Ljava/util/Map;

    const-string v5, "boundary"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    .local v4, "bound":Ljava/lang/String;
    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/mime/Headers;->boundary:Ljava/lang/String;

    goto :goto_3

    .line 88
    :cond_3
    iput-object v4, p0, Lorg/bouncycastle/mime/Headers;->boundary:Ljava/lang/String;

    .line 90
    .end local v4    # "bound":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 93
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/bouncycastle/mime/Headers;->boundary:Ljava/lang/String;

    .line 94
    iput-boolean v3, p0, Lorg/bouncycastle/mime/Headers;->multipart:Z

    .line 96
    :goto_4
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p2, "defaultContentTransferEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headerLines",
            "defaultContentTransferEncoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 105
    .local p1, "headerLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/bouncycastle/mime/Headers;->headers:Ljava/util/Map;

    .line 106
    iput-object p1, p0, Lorg/bouncycastle/mime/Headers;->headersAsPresented:Ljava/util/List;

    .line 108
    const-string v0, ""

    .line 109
    .local v0, "header":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x3a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, "line":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "\t"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lorg/bouncycastle/mime/Headers;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_1
    move-object v0, v2

    goto :goto_2

    .line 114
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .end local v2    # "line":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 127
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/mime/Headers;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lorg/bouncycastle/mime/Headers;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string/jumbo v1, "text/plain"

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v1}, Lorg/bouncycastle/mime/Headers;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    .line 134
    .local v1, "contentTypeHeader":Ljava/lang/String;
    :goto_3
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 135
    .local v2, "parameterIndex":I
    if-gez v2, :cond_6

    .line 137
    iput-object v1, p0, Lorg/bouncycastle/mime/Headers;->contentType:Ljava/lang/String;

    .line 138
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v3, p0, Lorg/bouncycastle/mime/Headers;->contentTypeParameters:Ljava/util/Map;

    goto :goto_4

    .line 142
    :cond_6
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/mime/Headers;->contentType:Ljava/lang/String;

    .line 143
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/mime/Headers;->createContentTypeParameters(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/mime/Headers;->contentTypeParameters:Ljava/util/Map;

    .line 146
    :goto_4
    const-string v3, "Content-Transfer-Encoding"

    invoke-virtual {p0, v3}, Lorg/bouncycastle/mime/Headers;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    move-object v3, p2

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v3}, Lorg/bouncycastle/mime/Headers;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    :goto_5
    iput-object v3, p0, Lorg/bouncycastle/mime/Headers;->contentTransferEncoding:Ljava/lang/String;

    .line 148
    iget-object v3, p0, Lorg/bouncycastle/mime/Headers;->contentType:Ljava/lang/String;

    const-string v6, "multipart"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    .line 150
    iput-boolean v4, p0, Lorg/bouncycastle/mime/Headers;->multipart:Z

    .line 151
    iget-object v3, p0, Lorg/bouncycastle/mime/Headers;->contentTypeParameters:Ljava/util/Map;

    const-string v5, "boundary"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "bound":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/mime/Headers;->boundary:Ljava/lang/String;

    .line 153
    .end local v3    # "bound":Ljava/lang/String;
    goto :goto_6

    .line 156
    :cond_8
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/bouncycastle/mime/Headers;->boundary:Ljava/lang/String;

    .line 157
    iput-boolean v5, p0, Lorg/bouncycastle/mime/Headers;->multipart:Z

    .line 159
    :goto_6
    return-void
.end method

.method private createContentTypeParameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "contentTypeParameters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentTypeParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "parameterSplit":[Ljava/lang/String;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 181
    .local v1, "rv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_1

    .line 183
    aget-object v3, v0, v2

    .line 185
    .local v3, "parameter":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 186
    .local v4, "eqIndex":I
    if-ltz v4, :cond_0

    .line 191
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v3    # "parameter":Ljava/lang/String;
    .end local v4    # "eqIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .restart local v3    # "parameter":Ljava/lang/String;
    .restart local v4    # "eqIndex":I
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "malformed Content-Type header"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    .end local v2    # "i":I
    .end local v3    # "parameter":Ljava/lang/String;
    .end local v4    # "eqIndex":I
    :cond_1
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private static parseHeaders(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .param p0, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "headerLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lorg/bouncycastle/mime/LineReader;

    invoke-direct {v1, p0}, Lorg/bouncycastle/mime/LineReader;-><init>(Ljava/io/InputStream;)V

    .line 36
    .local v1, "rd":Lorg/bouncycastle/mime/LineReader;
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/mime/LineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 40
    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    return-object v0
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 219
    monitor-enter p0

    .line 221
    :try_start_0
    new-instance v0, Lorg/bouncycastle/mime/Headers$KV;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/mime/Headers$KV;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v0, "kv":Lorg/bouncycastle/mime/Headers$KV;
    iget-object v1, p0, Lorg/bouncycastle/mime/Headers;->headers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 223
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/mime/Headers$KV;>;"
    if-nez v1, :cond_0

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 226
    iget-object v2, p0, Lorg/bouncycastle/mime/Headers;->headers:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    nop

    .end local v0    # "kv":Lorg/bouncycastle/mime/Headers$KV;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/mime/Headers$KV;>;"
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/bouncycastle/mime/Headers;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dumpHeaders(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/bouncycastle/mime/Headers;->headersAsPresented:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 282
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 283
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 285
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/bouncycastle/mime/Headers;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/bouncycastle/mime/Headers;->contentTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/bouncycastle/mime/Headers;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/mime/Headers;->contentTypeParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/bouncycastle/mime/Headers;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "header"
        }
    .end annotation

    .line 240
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/mime/Headers;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 243
    .local v0, "kvList":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/mime/Headers$KV;>;"
    if-nez v0, :cond_0

    .line 245
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 247
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 249
    .local v1, "out":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/mime/Headers$KV;

    iget-object v3, v3, Lorg/bouncycastle/mime/Headers$KV;->value:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v2    # "t":I
    :cond_1
    monitor-exit p0

    return-object v1

    .line 255
    .end local v0    # "kvList":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/mime/Headers$KV;>;"
    .end local v1    # "out":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 260
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/mime/Headers;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMultipart()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lorg/bouncycastle/mime/Headers;->multipart:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/bouncycastle/mime/Headers;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
