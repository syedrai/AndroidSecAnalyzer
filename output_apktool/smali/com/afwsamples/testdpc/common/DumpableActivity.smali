.class public abstract Lcom/afwsamples/testdpc/common/DumpableActivity;
.super Landroid/app/Activity;
.source "DumpableActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "fd",
            "pw",
            "args"
        }
    .end annotation

    .line 29
    invoke-static {p4}, Lcom/afwsamples/testdpc/common/Dumpable$-CC;->isQuietMode([Ljava/lang/String;)Z

    move-result v4

    .line 30
    .local v4, "quietMode":Z
    if-eqz v4, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/DumpableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v6

    .line 32
    .local v6, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    const-string v0, "*** Dumping Dumpable fragments only ***"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "prefix2":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/Fragment;

    .line 35
    .local v8, "fragment":Landroid/app/Fragment;
    instance-of v0, v8, Lcom/afwsamples/testdpc/common/Dumpable;

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object v8, v0, v2

    const-string v2, "%s%s:\n"

    invoke-virtual {p3, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 37
    move-object v0, v8

    check-cast v0, Lcom/afwsamples/testdpc/common/Dumpable;

    move-object v3, p2

    move-object v2, p3

    move-object v5, p4

    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "args":[Ljava/lang/String;
    .local v2, "pw":Ljava/io/PrintWriter;
    .local v3, "fd":Ljava/io/FileDescriptor;
    .local v5, "args":[Ljava/lang/String;
    invoke-interface/range {v0 .. v5}, Lcom/afwsamples/testdpc/common/Dumpable;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Z[Ljava/lang/String;)V

    goto :goto_1

    .line 35
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "args":[Ljava/lang/String;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "args":[Ljava/lang/String;
    :cond_0
    move-object v3, p2

    move-object v2, p3

    move-object v5, p4

    .line 39
    .end local v8    # "fragment":Landroid/app/Fragment;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "args":[Ljava/lang/String;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "args":[Ljava/lang/String;
    :goto_1
    move-object p3, v2

    move-object p2, v3

    move-object p4, v5

    goto :goto_0

    .line 40
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "args":[Ljava/lang/String;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "args":[Ljava/lang/String;
    :cond_1
    return-void

    .line 43
    .end local v1    # "prefix2":Ljava/lang/String;
    .end local v6    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_2
    move-object v3, p2

    move-object v2, p3

    move-object v5, p4

    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "args":[Ljava/lang/String;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "args":[Ljava/lang/String;
    invoke-super {p0, p1, v3, v2, v5}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 44
    return-void
.end method
