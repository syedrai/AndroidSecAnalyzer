.class final Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;
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
    name = "CommandMethodImpl6"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "T5:",
        "Ljava/lang/Object;",
        "T6:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;>;"
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

.field private final param3:Lcom/afwsamples/testdpc/util/flags/Flags$Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;"
        }
    .end annotation
.end field

.field private final param4:Lcom/afwsamples/testdpc/util/flags/Flags$Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;"
        }
    .end annotation
.end field

.field private final param5:Lcom/afwsamples/testdpc/util/flags/Flags$Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;"
        }
    .end annotation
.end field

.field private final param6:Lcom/afwsamples/testdpc/util/flags/Flags$Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "param1",
            "param2",
            "param3",
            "param4",
            "param5",
            "param6"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params<",
            "TT1;TT2;TT3;TT4;TT5;TT6;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT4;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT5;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT6;>;)V"
        }
    .end annotation

    .line 1752
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT6;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1753
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;

    .line 1754
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param1:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1755
    iput-object p3, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param2:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1756
    iput-object p4, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param3:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1757
    iput-object p5, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param4:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1758
    iput-object p6, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param5:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1759
    iput-object p7, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param6:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1760
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)V
    .locals 8
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

    .line 1764
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param1:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v0, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v2

    .line 1765
    .local v2, "arg1":Ljava/lang/Object;, "TT1;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param2:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v0, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v3

    .line 1766
    .local v3, "arg2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param3:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v0, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v4

    .line 1767
    .local v4, "arg3":Ljava/lang/Object;, "TT3;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param4:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v0, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v5

    .line 1768
    .local v5, "arg4":Ljava/lang/Object;, "TT4;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param5:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v0, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v6

    .line 1769
    .local v6, "arg5":Ljava/lang/Object;, "TT5;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->param6:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v0, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v7

    .line 1771
    .local v7, "arg6":Ljava/lang/Object;, "TT6;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl6;->callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;

    invoke-interface/range {v1 .. v7}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback6Params;->execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1772
    return-void
.end method
