.class final Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArgsContainer"
.end annotation


# static fields
.field private static final primitiveTypeDefaultValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mget(Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->get(Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->primitiveTypeDefaultValues:Ljava/util/Map;

    .line 598
    sget-object v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->primitiveTypeDefaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->primitiveTypeDefaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->primitiveTypeDefaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->primitiveTypeDefaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->primitiveTypeDefaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->primitiveTypeDefaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->primitiveTypeDefaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->primitiveTypeDefaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 610
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->args:Ljava/util/Map;

    .line 612
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private get(Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 615
    .local p1, "param":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->args:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 617
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 618
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->acceptsMultipleValues()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 622
    :cond_0
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    sget-object v1, Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;->primitiveTypeDefaultValues:Ljava/util/Map;

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/flags/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 627
    :cond_1
    return-object v0
.end method
