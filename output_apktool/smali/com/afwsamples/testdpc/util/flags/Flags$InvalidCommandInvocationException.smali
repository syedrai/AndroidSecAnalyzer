.class Lcom/afwsamples/testdpc/util/flags/Flags$InvalidCommandInvocationException;
.super Ljava/lang/RuntimeException;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/flags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidCommandInvocationException"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/flags/Flags$InvalidCommandInvocationException;->message:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public message()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/flags/Flags$InvalidCommandInvocationException;->message:Ljava/lang/String;

    return-object v0
.end method
