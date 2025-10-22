.class public Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;
.super Lorg/bouncycastle/oer/OERDefinition$Builder;
.source "OERDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutableBuilder"
.end annotation


# instance fields
.field private frozen:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V
    .locals 1
    .param p1, "baseType"    # Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseType"
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    .line 625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    .line 630
    return-void
.end method


# virtual methods
.method public varargs addItemsAndFreeze([Lorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;
    .locals 9
    .param p1, "items"    # [Lorg/bouncycastle/oer/OERDefinition$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .line 640
    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    if-nez v0, :cond_5

    .line 645
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    .line 647
    aget-object v1, p1, v0

    .line 648
    .local v1, "item":Ljava/lang/Object;
    instance-of v3, v1, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 650
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    iget-object v3, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "it":Ljava/util/Iterator;
    :cond_0
    goto :goto_3

    .line 658
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 660
    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v6, v3, v4

    .line 662
    .local v6, "o":Ljava/lang/Object;
    iget-object v7, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v6}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    .end local v6    # "o":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 667
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v1    # "item":Ljava/lang/Object;
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    .end local v0    # "i":I
    :cond_4
    iput-boolean v2, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    .line 673
    return-object p0

    .line 642
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build cannot be modified and must be copied only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "label"
        }
    .end annotation

    .line 621
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 634
    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->label:Ljava/lang/String;

    .line 635
    return-object p0
.end method
