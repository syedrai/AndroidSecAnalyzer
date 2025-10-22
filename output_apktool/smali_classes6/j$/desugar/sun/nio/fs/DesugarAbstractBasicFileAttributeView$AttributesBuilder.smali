.class Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;
.super Ljava/lang/Object;
.source "DesugarAbstractBasicFileAttributeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributesBuilder"
.end annotation


# instance fields
.field private copyAll:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private names:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;[Ljava/lang/String;)V
    .locals 4
    .param p2, "requested"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "allowed",
            "requested"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    .local p1, "allowed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->names:Ljava/util/Set;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->map:Ljava/util/Map;

    .line 103
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 104
    .local v2, "name":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const/4 v3, 0x1

    iput-boolean v3, p0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->copyAll:Z

    goto :goto_1

    .line 107
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->names:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' not recognized"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static create(Ljava/util/Set;[Ljava/lang/String;)Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;
    .locals 1
    .param p1, "requested"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "allowed",
            "requested"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;"
        }
    .end annotation

    .line 118
    .local p0, "allowed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;

    invoke-direct {v0, p0, p1}, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;-><init>(Ljava/util/Set;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method match(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->copyAll:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->names:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method unmodifiableMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView$AttributesBuilder;->map:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
