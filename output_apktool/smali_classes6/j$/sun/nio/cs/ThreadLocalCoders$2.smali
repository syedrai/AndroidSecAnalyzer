.class Lj$/sun/nio/cs/ThreadLocalCoders$2;
.super Lj$/sun/nio/cs/ThreadLocalCoders$Cache;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    const-class v0, Lj$/sun/nio/cs/ThreadLocalCoders;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 112
    invoke-direct {p0, p1}, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;-><init>(I)V

    return-void
.end method


# virtual methods
.method create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    .line 121
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    .line 122
    move-object v0, p1

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 124
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0

    .line 125
    :cond_1
    nop

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/Object;

    .line 114
    instance-of v0, p2, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    .line 115
    move-object v0, p1

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 116
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 117
    move-object v0, p1

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
