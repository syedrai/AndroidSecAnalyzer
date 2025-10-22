.class public Lorg/bouncycastle/oer/OERInputStream$Sequence;
.super Lorg/bouncycastle/oer/OERInputStream;
.source "OERInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sequence"
.end annotation


# instance fields
.field private final extensionFlagSet:Z

.field private final preamble:I

.field private final valuePresent:[Z


# direct methods
.method static bridge synthetic -$$Nest$fgetextensionFlagSet(Lorg/bouncycastle/oer/OERInputStream$Sequence;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvaluePresent(Lorg/bouncycastle/oer/OERInputStream$Sequence;)[Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    return-object p0
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/oer/Element;)V
    .locals 11
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "element"    # Lorg/bouncycastle/oer/Element;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERInputStream;-><init>(Ljava/io/InputStream;)V

    .line 877
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->hasPopulatedExtension()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getOptionals()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->hasDefaultChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    iput v1, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    .line 890
    iput-boolean v1, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    .line 891
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    .line 892
    return-void

    .line 879
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    .line 880
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    if-ltz v0, :cond_b

    .line 885
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->hasPopulatedExtension()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    .line 895
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "block":I
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->hasPopulatedExtension()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    goto :goto_2

    :cond_3
    const/4 v3, 0x7

    .line 900
    .local v3, "j":I
    :goto_2
    iget v4, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    .line 901
    .local v4, "mask":I
    const/4 v5, 0x0

    .line 902
    .local v5, "presentIndex":I
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/oer/Element;

    .line 904
    .local v7, "child":Lorg/bouncycastle/oer/Element;
    invoke-virtual {v7}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v8

    sget-object v9, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v8, v9, :cond_4

    .line 906
    goto :goto_3

    .line 909
    :cond_4
    invoke-virtual {v7}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v8

    if-eq v8, v0, :cond_5

    .line 914
    goto :goto_7

    .line 917
    :cond_5
    invoke-virtual {v7}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 919
    iget-object v8, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "presentIndex":I
    .local v9, "presentIndex":I
    aput-boolean v2, v8, v5

    move v5, v9

    goto :goto_6

    .line 924
    .end local v9    # "presentIndex":I
    .restart local v5    # "presentIndex":I
    :cond_6
    if-gez v3, :cond_8

    .line 926
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 927
    if-ltz v4, :cond_7

    .line 931
    const/4 v3, 0x7

    goto :goto_4

    .line 929
    :cond_7
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "expecting mask byte sequence"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 933
    :cond_8
    :goto_4
    iget-object v8, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "presentIndex":I
    .restart local v9    # "presentIndex":I
    invoke-static {}, Lorg/bouncycastle/oer/OERInputStream;->-$$Nest$sfgetbits()[I

    move-result-object v10

    aget v10, v10, v3

    and-int/2addr v10, v4

    if-lez v10, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_5
    aput-boolean v10, v8, v5

    .line 934
    add-int/lit8 v3, v3, -0x1

    move v5, v9

    .line 937
    .end local v7    # "child":Lorg/bouncycastle/oer/Element;
    .end local v9    # "presentIndex":I
    .restart local v5    # "presentIndex":I
    :goto_6
    goto :goto_3

    .line 940
    :cond_a
    :goto_7
    return-void

    .line 882
    .end local v0    # "block":I
    .end local v3    # "j":I
    .end local v4    # "mask":I
    .end local v5    # "presentIndex":I
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "expecting preamble byte of sequence"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasExtension()Z
    .locals 1

    .line 952
    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    return v0
.end method

.method public hasOptional(I)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 959
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SEQ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream$Sequence;->hasExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Ext "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    iget-object v1, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    if-nez v1, :cond_1

    .line 964
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 968
    :cond_1
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 970
    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    .line 972
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 976
    :cond_2
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 980
    .end local v1    # "t":I
    :cond_3
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
