.class Lcom/google/common/collect/Sets$4$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$4;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$itr1:Ljava/util/Iterator;

.field final synthetic val$itr2:Ljava/util/Iterator;

.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$4;Ljava/util/Iterator;Ljava/util/Set;Ljava/util/Iterator;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/Sets$4;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$itr1",
            "val$set2",
            "val$itr2",
            "val$set1"
        }
    .end annotation

    .line 1063
    iput-object p2, p0, Lcom/google/common/collect/Sets$4$1;->val$itr1:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/Sets$4$1;->val$set2:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/common/collect/Sets$4$1;->val$itr2:Ljava/util/Iterator;

    iput-object p5, p0, Lcom/google/common/collect/Sets$4$1;->val$set1:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1066
    nop

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->val$itr1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->val$itr1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1068
    .local v0, "elem1":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$4$1;->val$set2:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1069
    return-object v0

    .line 1071
    .end local v0    # "elem1":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 1072
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->val$itr2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1073
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->val$itr2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1074
    .local v0, "elem2":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$4$1;->val$set1:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1075
    return-object v0

    .line 1077
    .end local v0    # "elem2":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_1

    .line 1078
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$4$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
