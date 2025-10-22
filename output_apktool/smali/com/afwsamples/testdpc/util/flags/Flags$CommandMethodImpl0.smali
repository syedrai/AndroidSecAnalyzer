.class final Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl0;
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
    name = "CommandMethodImpl0"
.end annotation


# instance fields
.field private final callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)V
    .locals 0
    .param p1, "callback"    # Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1590
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl0;->callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;

    .line 1591
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;Lcom/afwsamples/testdpc/util/flags/Flags-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl0;-><init>(Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/afwsamples/testdpc/util/flags/Flags;Lcom/afwsamples/testdpc/util/flags/Flags$ArgsContainer;)V
    .locals 1
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

    .line 1595
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$CommandMethodImpl0;->callback:Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;->execute()V

    .line 1596
    return-void
.end method
