.class abstract Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractStrongKeyEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 351
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;, "Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry<TK;TV;TE;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->key:Ljava/lang/Object;

    .line 353
    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->hash:I

    .line 354
    return-void
.end method


# virtual methods
.method public final getHash()I
    .locals 1

    .line 363
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;, "Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry<TK;TV;TE;>;"
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->hash:I

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;, "Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry<TK;TV;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;, "Lcom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry<TK;TV;TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method
