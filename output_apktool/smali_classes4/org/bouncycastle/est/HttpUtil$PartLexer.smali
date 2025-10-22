.class Lorg/bouncycastle/est/HttpUtil$PartLexer;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/est/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PartLexer"
.end annotation


# instance fields
.field last:I

.field p:I

.field private final src:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->last:I

    .line 64
    iput v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    .line 68
    iput-object p1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private consumeAlpha()Ljava/lang/String;
    .locals 4

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    iget v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 119
    .local v0, "c":C
    :goto_0
    iget v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    iget-object v2, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 121
    :cond_1
    iget v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    .line 122
    iget-object v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    iget v2, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    iget v2, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->last:I

    iget v3, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "s":Ljava/lang/String;
    iget v2, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    iput v2, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->last:I

    .line 126
    return-object v1
.end method

.method private consumeIf(C)Z
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 141
    iget v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    iget-object v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    iget v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    .line 143
    iget v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    .line 144
    return v1

    .line 146
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private consumeUntil(C)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 151
    nop

    :goto_0
    iget v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    iget-object v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    iget v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_0

    .line 153
    iget v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    iget v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->last:I

    iget v2, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    iput v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->last:I

    .line 157
    return-object v0
.end method

.method private discard()V
    .locals 1

    .line 162
    iget v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    iput v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->last:I

    .line 163
    return-void
.end method

.method private discard(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 167
    iget v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    .line 168
    iget v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    iput v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->last:I

    .line 169
    return-void
.end method

.method private skipWhiteSpace()V
    .locals 2

    .line 131
    nop

    :goto_0
    iget v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    iget-object v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    iget v1, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 133
    iget v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    goto :goto_0

    .line 135
    :cond_0
    iget v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    iput v0, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->last:I

    .line 136
    return-void
.end method


# virtual methods
.method Parse()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 76
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 77
    .local v2, "value":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->p:I

    iget-object v4, p0, Lorg/bouncycastle/est/HttpUtil$PartLexer;->src:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 79
    invoke-direct {p0}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->skipWhiteSpace()V

    .line 81
    invoke-direct {p0}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->consumeAlpha()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    invoke-direct {p0}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->skipWhiteSpace()V

    .line 87
    const/16 v3, 0x3d

    invoke-direct {p0, v3}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->consumeIf(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    invoke-direct {p0}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->skipWhiteSpace()V

    .line 94
    const/16 v3, 0x22

    invoke-direct {p0, v3}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->consumeIf(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-direct {p0}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->discard()V

    .line 100
    invoke-direct {p0, v3}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->consumeUntil(C)Ljava/lang/String;

    move-result-object v2

    .line 101
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->discard(I)V

    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-direct {p0}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->skipWhiteSpace()V

    .line 105
    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->consumeIf(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    goto :goto_1

    .line 109
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/est/HttpUtil$PartLexer;->discard()V

    goto :goto_0

    .line 96
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Expecting start quote: \'\"\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Expecting assign: \'=\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Expecting alpha label."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_4
    :goto_1
    return-object v0
.end method
