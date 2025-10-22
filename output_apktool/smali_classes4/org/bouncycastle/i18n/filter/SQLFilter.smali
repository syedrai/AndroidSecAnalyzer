.class public Lorg/bouncycastle/i18n/filter/SQLFilter;
.super Ljava/lang/Object;
.source "SQLFilter.java"

# interfaces
.implements Lorg/bouncycastle/i18n/filter/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
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

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 15
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 16
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 19
    .local v2, "ch":C
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 42
    :sswitch_0
    add-int/lit8 v3, v1, 0x1

    const-string v4, "\\\\"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_1

    .line 30
    :sswitch_1
    add-int/lit8 v3, v1, 0x1

    const-string v4, "\\="

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_1

    .line 46
    :sswitch_2
    add-int/lit8 v3, v1, 0x1

    const-string v4, "\\;"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_1

    .line 38
    :sswitch_3
    add-int/lit8 v3, v1, 0x1

    const-string v4, "\\/"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_1

    .line 34
    :sswitch_4
    add-int/lit8 v3, v1, 0x1

    const-string v4, "\\-"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_1

    .line 22
    :sswitch_5
    add-int/lit8 v3, v1, 0x1

    const-string v4, "\\\'"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_1

    .line 26
    :sswitch_6
    add-int/lit8 v3, v1, 0x1

    const-string v4, "\\\""

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_1

    .line 50
    :sswitch_7
    add-int/lit8 v3, v1, 0x1

    const-string v4, "\\r"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_1

    .line 54
    :sswitch_8
    add-int/lit8 v3, v1, 0x1

    const-string v4, "\\n"

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    nop

    .line 59
    :goto_1
    nop

    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_8
        0xd -> :sswitch_7
        0x22 -> :sswitch_6
        0x27 -> :sswitch_5
        0x2d -> :sswitch_4
        0x2f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3d -> :sswitch_1
        0x5c -> :sswitch_0
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

    .line 66
    invoke-virtual {p0, p1}, Lorg/bouncycastle/i18n/filter/SQLFilter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
