.class public Lorg/bouncycastle/asn1/x509/X509NameTokenizer;
.super Ljava/lang/Object;
.source "X509NameTokenizer.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private index:I

.field private separator:C

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 20
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oid",
            "separator"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 29
    iput-char p2, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    .line 30
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .line 34
    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 7

    .line 39
    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    iget v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 45
    .local v0, "end":I
    const/4 v2, 0x0

    .line 46
    .local v2, "quoted":Z
    const/4 v3, 0x0

    .line 48
    .local v3, "escaped":Z
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 50
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_8

    .line 52
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 54
    .local v4, "c":C
    const/16 v6, 0x22

    if-ne v4, v6, :cond_3

    .line 56
    if-nez v3, :cond_2

    .line 58
    if-nez v2, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    move v2, v6

    .line 60
    :cond_2
    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    const/4 v3, 0x0

    goto :goto_3

    .line 65
    :cond_3
    if-nez v3, :cond_7

    if-eqz v2, :cond_4

    goto :goto_2

    .line 70
    :cond_4
    const/16 v6, 0x5c

    if-ne v4, v6, :cond_5

    .line 72
    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    const/4 v3, 0x1

    goto :goto_3

    .line 75
    :cond_5
    iget-char v6, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    if-ne v4, v6, :cond_6

    .line 77
    goto :goto_4

    .line 81
    :cond_6
    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 67
    :cond_7
    :goto_2
    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    const/4 v3, 0x0

    .line 84
    :goto_3
    nop

    .end local v4    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_0

    .line 87
    :cond_8
    :goto_4
    iput v0, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    .line 89
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
