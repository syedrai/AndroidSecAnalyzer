.class public abstract Landroidx/constraintlayout/core/dsl/Chain;
.super Landroidx/constraintlayout/core/dsl/Helper;
.source "Chain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/dsl/Chain$Style;,
        Landroidx/constraintlayout/core/dsl/Chain$Anchor;
    }
.end annotation


# static fields
.field protected static final styleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/constraintlayout/core/dsl/Chain$Style;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:Landroidx/constraintlayout/core/dsl/Chain$Style;

.field protected references:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/dsl/Ref;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/dsl/Chain;->styleMap:Ljava/util/Map;

    .line 34
    sget-object v0, Landroidx/constraintlayout/core/dsl/Chain;->styleMap:Ljava/util/Map;

    sget-object v1, Landroidx/constraintlayout/core/dsl/Chain$Style;->SPREAD:Landroidx/constraintlayout/core/dsl/Chain$Style;

    const-string v2, "\'spread\'"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Landroidx/constraintlayout/core/dsl/Chain;->styleMap:Ljava/util/Map;

    sget-object v1, Landroidx/constraintlayout/core/dsl/Chain$Style;->SPREAD_INSIDE:Landroidx/constraintlayout/core/dsl/Chain$Style;

    const-string v2, "\'spread_inside\'"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Landroidx/constraintlayout/core/dsl/Chain;->styleMap:Ljava/util/Map;

    sget-object v1, Landroidx/constraintlayout/core/dsl/Chain$Style;->PACKED:Landroidx/constraintlayout/core/dsl/Chain$Style;

    const-string v2, "\'packed\'"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 40
    new-instance v0, Landroidx/constraintlayout/core/dsl/Helper$HelperType;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/dsl/Helper$HelperType;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/dsl/Helper;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/dsl/Helper$HelperType;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Chain;->mStyle:Landroidx/constraintlayout/core/dsl/Chain$Style;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/dsl/Chain;->references:Ljava/util/ArrayList;

    .line 41
    return-void
.end method


# virtual methods
.method public addReference(Landroidx/constraintlayout/core/dsl/Ref;)Landroidx/constraintlayout/core/dsl/Chain;
    .locals 3
    .param p1, "ref"    # Landroidx/constraintlayout/core/dsl/Ref;

    .line 77
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Chain;->references:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Chain;->configMap:Ljava/util/Map;

    const-string v1, "contains"

    invoke-virtual {p0}, Landroidx/constraintlayout/core/dsl/Chain;->referencesToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-object p0
.end method

.method public addReference(Ljava/lang/String;)Landroidx/constraintlayout/core/dsl/Chain;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .line 89
    invoke-static {p1}, Landroidx/constraintlayout/core/dsl/Ref;->parseStringToRef(Ljava/lang/String;)Landroidx/constraintlayout/core/dsl/Ref;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/dsl/Chain;->addReference(Landroidx/constraintlayout/core/dsl/Ref;)Landroidx/constraintlayout/core/dsl/Chain;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Landroidx/constraintlayout/core/dsl/Chain$Style;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Chain;->mStyle:Landroidx/constraintlayout/core/dsl/Chain$Style;

    return-object v0
.end method

.method public referencesToString()Ljava/lang/String;
    .locals 4

    .line 58
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Chain;->references:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, ""

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/constraintlayout/core/dsl/Chain;->references:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/dsl/Ref;

    .line 64
    .local v2, "ref":Landroidx/constraintlayout/core/dsl/Ref;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/dsl/Ref;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .end local v2    # "ref":Landroidx/constraintlayout/core/dsl/Ref;
    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setStyle(Landroidx/constraintlayout/core/dsl/Chain$Style;)V
    .locals 3
    .param p1, "style"    # Landroidx/constraintlayout/core/dsl/Chain$Style;

    .line 48
    iput-object p1, p0, Landroidx/constraintlayout/core/dsl/Chain;->mStyle:Landroidx/constraintlayout/core/dsl/Chain$Style;

    .line 49
    iget-object v0, p0, Landroidx/constraintlayout/core/dsl/Chain;->configMap:Ljava/util/Map;

    sget-object v1, Landroidx/constraintlayout/core/dsl/Chain;->styleMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "style"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
