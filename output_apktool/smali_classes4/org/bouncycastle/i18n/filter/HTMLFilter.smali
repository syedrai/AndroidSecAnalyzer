.class public Lorg/bouncycastle/i18n/filter/HTMLFilter;
.super Ljava/lang/Object;
.source "HTMLFilter.java"

# interfaces
.implements Lorg/bouncycastle/i18n/filter/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 13
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 14
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 17
    .local v2, "ch":C
    sparse-switch v2, :sswitch_data_0

    .line 56
    add-int/lit8 v1, v1, -0x3

    goto :goto_1

    .line 23
    :sswitch_0
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#62"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    goto :goto_1

    .line 20
    :sswitch_1
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#60"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    goto :goto_1

    .line 47
    :sswitch_2
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#59"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    goto :goto_1

    .line 53
    :sswitch_3
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#45"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    goto :goto_1

    .line 50
    :sswitch_4
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#43"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    goto :goto_1

    .line 29
    :sswitch_5
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#41"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    goto :goto_1

    .line 26
    :sswitch_6
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#40"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    goto :goto_1

    .line 41
    :sswitch_7
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#39"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    goto :goto_1

    .line 35
    :sswitch_8
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#38"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    goto :goto_1

    .line 44
    :sswitch_9
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#37"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    goto :goto_1

    .line 32
    :sswitch_a
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#35"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    goto :goto_1

    .line 38
    :sswitch_b
    add-int/lit8 v3, v1, 0x1

    const-string v4, "&#34"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    nop

    .line 58
    :goto_1
    nop

    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x4

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_b
        0x23 -> :sswitch_a
        0x25 -> :sswitch_9
        0x26 -> :sswitch_8
        0x27 -> :sswitch_7
        0x28 -> :sswitch_6
        0x29 -> :sswitch_5
        0x2b -> :sswitch_4
        0x2d -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public doFilterUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/HTMLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
