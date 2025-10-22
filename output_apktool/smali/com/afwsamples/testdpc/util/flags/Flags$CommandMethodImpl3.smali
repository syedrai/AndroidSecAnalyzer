.class final Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;
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
    name = "CommandMethodImpl3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethod;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params<",
            "TT1;TT2;TT3;>;"
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


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "param1",
            "param2",
            "param3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params<",
            "TT1;TT2;TT3;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT1;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT2;>;",
            "Lcom/afwsamples/testdpc/util/flags/Flags$Param<",
            "TT3;>;)V"
        }
    .end annotation

    .line 1650
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3<TT1;TT2;TT3;>;"
    .local p1, "callback":Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params<TT1;TT2;TT3;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/flags/Flags$Param;, "Lcom/afwsamples/testdpc/util/flags/Flags$Param<TT3;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1651
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;->callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;

    .line 1652
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;->param1:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1653
    iput-object p3, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;->param2:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1654
    iput-object p4, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;->param3:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    .line 1655
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)V
    .locals 4
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

    .line 1659
    .local p0, "this":Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;, "Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3<TT1;TT2;TT3;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;->param1:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v0, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v0

    .line 1660
    .local v0, "arg1":Ljava/lang/Object;, "TT1;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;->param2:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v1, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v1

    .line 1661
    .local v1, "arg2":Ljava/lang/Object;, "TT2;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;->param3:Lcom/afwsamples/testdpc/util/flags/Flags$Param;

    invoke-static {p1, v2, p2}, Lcom/afwsamples/testdpc/util/flags/Flags;->-$$Nest$mretrieveArg(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v2

    .line 1663
    .local v2, "arg3":Ljava/lang/Object;, "TT3;"
    iget-object v3, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl3;->callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;

    invoke-interface {v3, v0, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;->execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1664
    return-void
.end method
