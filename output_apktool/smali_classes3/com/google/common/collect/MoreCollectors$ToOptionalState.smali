.class final Lcom/google/common/collect/MoreCollectors$ToOptionalState;
.super Ljava/lang/Object;
.source "MoreCollectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MoreCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToOptionalState"
.end annotation


# static fields
.field static final MAX_EXTRAS:I = 0x4


# instance fields
.field element:Ljava/lang/Object;

.field extras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->element:Ljava/lang/Object;

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    .line 126
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 144
    iput-object p1, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->element:Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    .line 148
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->multiples(Z)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method combine(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Lcom/google/common/collect/MoreCollectors$ToOptionalState;
    .locals 3
    .param p1, "other"    # Lcom/google/common/collect/MoreCollectors$ToOptionalState;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->element:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 158
    return-object p1

    .line 159
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->element:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 160
    return-object p0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    iget-object v1, p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->element:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    iget-object v1, p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    .line 172
    return-object p0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    iget-object v2, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->multiples(Z)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method getElement()Ljava/lang/Object;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->element:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->element:Ljava/lang/Object;

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->multiples(Z)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 187
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method getOptional()Lj$/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Optional<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->element:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->multiples(Z)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method multiples(Z)Ljava/lang/IllegalArgumentException;
    .locals 4
    .param p1, "overflow"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overflow"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const-string v1, "expected one element but was: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->extras:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 132
    .local v2, "o":Ljava/lang/Object;
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    .line 135
    const-string v1, ", ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
