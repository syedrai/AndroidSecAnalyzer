.class public Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;
.super Ljava/lang/Object;
.source "ERSEvidenceRecordSelector.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Selector<",
        "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lorg/bouncycastle/tsp/ers/ERSData;

.field private final date:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tsp/ers/ERSData;)V
    .locals 1
    .param p1, "data"    # Lorg/bouncycastle/tsp/ers/ERSData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;-><init>(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    .locals 3
    .param p1, "data"    # Lorg/bouncycastle/tsp/ers/ERSData;
    .param p2, "atDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "atDate"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;->data:Lorg/bouncycastle/tsp/ers/ERSData;

    .line 21
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;->date:Ljava/util/Date;

    .line 22
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 57
    return-object p0
.end method

.method public getData()Lorg/bouncycastle/tsp/ers/ERSData;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;->data:Lorg/bouncycastle/tsp/ers/ERSData;

    return-object v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "obj"
        }
    .end annotation

    .line 7
    check-cast p1, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;->match(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)Z

    move-result p1

    return p1
.end method

.method public match(Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;)Z
    .locals 3
    .param p1, "obj"    # Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;->data:Lorg/bouncycastle/tsp/ers/ERSData;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;->date:Ljava/util/Date;

    invoke-virtual {p1, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->isContaining(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 37
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;->data:Lorg/bouncycastle/tsp/ers/ERSData;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordSelector;->date:Ljava/util/Date;

    invoke-virtual {p1, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;->validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    const/4 v0, 0x1

    return v0

    .line 41
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 47
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return v0

    .line 49
    :catch_1
    move-exception v1

    .line 51
    .restart local v1    # "e":Ljava/lang/Exception;
    return v0
.end method
