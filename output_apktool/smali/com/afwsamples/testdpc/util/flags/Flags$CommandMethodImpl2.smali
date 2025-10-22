.class final Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommandMethodImpl2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params<",
            "TT1;TT2;>;"
        }
    .end annotation
.end field

.field private final param1:Lcom/afwsamples/testdpc/util/flags/Flags$Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;"
        }
    .end annotation
.end field

.field private final param2:Lcom/afwsamples/testdpc/util/flags/Flags$Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "param1",
            "param2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params<",
            "TT1;TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;)V"
        }
    .end annotation

    .line 1624
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2<TT1;TT2;>;"
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params<TT1;TT2;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1625
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;->callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;

    .line 1626
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;->param1:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1627
    iput-object p3, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;->param2:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1628
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)V
    .locals 3
    .param p1, "flags"    # Lcom/afwsamples/testdpc/util/flags/Flags;
    .param p2, "args"    # Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "args"
        }
    .end annotation

    .line 1632
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2<TT1;TT2;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;->param1:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v0, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v0

    .line 1633
    .local v0, "arg1":Ljava/lang/Object;, "TT1;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;->param2:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v1

    .line 1635
    .local v1, "arg2":Ljava/lang/Object;, "TT2;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl2;->callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;

    invoke-interface {v2, v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;->execute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1636
    return-void
.end method
