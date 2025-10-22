.class public Lcom/airbnb/lottie/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final floatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/PerformanceTracker$FrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final layerRenderTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/utils/MeanCalculator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 25
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    .line 27
    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/PerformanceTracker$1;-><init>(Lcom/airbnb/lottie/PerformanceTracker;)V

    iput-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public addFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .locals 1
    .param p1, "frameListener"    # Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameListener"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public clearRenderTimes()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 73
    return-void
.end method

.method public getSortedRenderTimes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v0, "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 93
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/airbnb/lottie/utils/MeanCalculator;>;"
    new-instance v3, Landroidx/core/util/Pair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/utils/MeanCalculator;

    invoke-virtual {v5}, Lcom/airbnb/lottie/utils/MeanCalculator;->getMean()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/airbnb/lottie/utils/MeanCalculator;>;"
    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->floatComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    return-object v0
.end method

.method public logRenderTimes()V
    .locals 8

    .line 76
    iget-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/PerformanceTracker;->getSortedRenderTimes()Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "sortedRenderTimes":Ljava/util/List;, "Ljava/util/List<Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;>;"
    const-string v1, "Render times:"

    const-string v2, "LOTTIE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 83
    .local v3, "layer":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    iget-object v4, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const-string v4, "\t\t%30s:%.2f"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v3    # "layer":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public recordRenderTime(Ljava/lang/String;F)V
    .locals 3
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "millis"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layerName",
            "millis"
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/utils/MeanCalculator;

    .line 50
    .local v0, "meanCalculator":Lcom/airbnb/lottie/utils/MeanCalculator;
    if-nez v0, :cond_1

    .line 51
    new-instance v1, Lcom/airbnb/lottie/utils/MeanCalculator;

    invoke-direct {v1}, Lcom/airbnb/lottie/utils/MeanCalculator;-><init>()V

    move-object v0, v1

    .line 52
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/utils/MeanCalculator;->add(F)V

    .line 56
    const-string v1, "__container"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;

    .line 58
    .local v2, "listener":Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    invoke-interface {v2, p2}, Lcom/airbnb/lottie/PerformanceTracker$FrameListener;->onFrameRendered(F)V

    .line 59
    .end local v2    # "listener":Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

.method public removeFrameListener(Lcom/airbnb/lottie/PerformanceTracker$FrameListener;)V
    .locals 1
    .param p1, "frameListener"    # Lcom/airbnb/lottie/PerformanceTracker$FrameListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameListener"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/airbnb/lottie/PerformanceTracker;->frameListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 42
    iput-boolean p1, p0, Lcom/airbnb/lottie/PerformanceTracker;->enabled:Z

    .line 43
    return-void
.end method
