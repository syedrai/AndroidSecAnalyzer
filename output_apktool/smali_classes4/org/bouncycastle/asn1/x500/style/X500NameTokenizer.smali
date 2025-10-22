.class public Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;
.source "X500NameTokenizer.java"


# instance fields
.field private index:I

.field private final separator:C

.field private final value:Ljava/lang/String;


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

    .line 18
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 2
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_2

    .line 27
    const/16 v0, 0x22

    if-eq p2, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_1

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    .line 33
    iput-char p2, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    .line 35
    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reserved separator character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .line 39
    iget v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 6

    .line 44
    iget v0, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    .local v0, "quoted":Z
    const/4 v1, 0x0

    .line 52
    .local v1, "escaped":Z
    iget v2, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 53
    .local v2, "beginIndex":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 55
    iget-object v4, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v5, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 57
    .local v4, "c":C
    if-eqz v1, :cond_1

    .line 59
    const/4 v1, 0x0

    goto :goto_2

    .line 61
    :cond_1
    const/16 v5, 0x22

    if-ne v4, v5, :cond_3

    .line 63
    if-nez v0, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    move v0, v5

    .end local v0    # "quoted":Z
    .local v5, "quoted":Z
    goto :goto_2

    .line 65
    .end local v5    # "quoted":Z
    .restart local v0    # "quoted":Z
    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    .line 68
    :cond_4
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_5

    .line 70
    const/4 v1, 0x1

    goto :goto_2

    .line 72
    :cond_5
    iget-char v5, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    if-ne v4, v5, :cond_6

    .line 74
    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v5, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 76
    .end local v4    # "c":C
    :cond_6
    :goto_2
    goto :goto_0

    .line 78
    :cond_7
    if-nez v1, :cond_8

    if-nez v0, :cond_8

    .line 83
    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    iget v4, p0, Lorg/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 80
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "badly formatted directory string"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
