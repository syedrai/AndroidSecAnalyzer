.class final Lcom/afwsamples/testdpc/ShellCommand$KeyValue;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/ShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyValue"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetkey(Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->key:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalue(Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->value:Ljava/lang/String;

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
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

    .line 1651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1652
    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->key:Ljava/lang/String;

    .line 1653
    iput-object p2, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->value:Ljava/lang/String;

    .line 1654
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/afwsamples/testdpc/ShellCommand-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .line 1657
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->value:Ljava/lang/String;

    return-object v0
.end method
