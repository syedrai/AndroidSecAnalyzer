.class Lcom/google/common/collect/ArrayTable$ColumnMap;
.super Lcom/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ArrayTable$ArrayMap<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 649
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$ColumnMap;->this$0:Lcom/google/common/collect/ArrayTable;

    .line 650
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->-$$Nest$fgetcolumnKeyToIndex(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ArrayTable$ArrayMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ArrayTable-IA;)V

    .line 651
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$ColumnMap;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .locals 1

    .line 655
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    const-string v0, "Column"

    return-object v0
.end method

.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 647
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$ColumnMap;->getValue(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method getValue(I)Ljava/util/Map;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 660
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$Column;

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$ColumnMap;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/ArrayTable$Column;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 647
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$ColumnMap;->put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/util/Map<",
            "TR;TV;>;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 670
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    .local p1, "key":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<TR;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method bridge synthetic setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "newValue"
        }
    .end annotation

    .line 647
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$ColumnMap;->setValue(ILjava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method setValue(ILjava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "TR;TV;>;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 665
    .local p0, "this":Lcom/google/common/collect/ArrayTable$ColumnMap;, "Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    .local p2, "newValue":Ljava/util/Map;, "Ljava/util/Map<TR;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
