.class public final Lj$/nio/file/attribute/AclEntry$Builder;
.super Ljava/lang/Object;
.source "AclEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/nio/file/attribute/AclEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation
.end field

.field private perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lj$/nio/file/attribute/AclEntryType;

.field private who:Lj$/nio/file/attribute/UserPrincipal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-class v0, Lj$/nio/file/attribute/AclEntry;

    return-void
.end method

.method private constructor <init>(Lj$/nio/file/attribute/AclEntryType;Lj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p1, "type"    # Lj$/nio/file/attribute/AclEntryType;
    .param p2, "who"    # Lj$/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/attribute/AclEntryType;",
            "Lj$/nio/file/attribute/UserPrincipal;",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/AclEntryPermission;",
            ">;",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/AclEntryFlag;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p3, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    .local p4, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    nop

    .line 110
    iput-object p1, p0, Lj$/nio/file/attribute/AclEntry$Builder;->type:Lj$/nio/file/attribute/AclEntryType;

    .line 111
    iput-object p2, p0, Lj$/nio/file/attribute/AclEntry$Builder;->who:Lj$/nio/file/attribute/UserPrincipal;

    .line 112
    iput-object p3, p0, Lj$/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    .line 113
    iput-object p4, p0, Lj$/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lj$/nio/file/attribute/AclEntryType;Lj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Lj$/nio/file/attribute/AclEntry-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lj$/nio/file/attribute/AclEntry$Builder;-><init>(Lj$/nio/file/attribute/AclEntryType;Lj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static checkSet(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 162
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 163
    .local v1, "e":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v1    # "e":Ljava/lang/Object;
    goto :goto_0

    .line 164
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 167
    .end local v1    # "e":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public build()Lj$/nio/file/attribute/AclEntry;
    .locals 7

    .line 127
    iget-object v0, p0, Lj$/nio/file/attribute/AclEntry$Builder;->type:Lj$/nio/file/attribute/AclEntryType;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lj$/nio/file/attribute/AclEntry$Builder;->who:Lj$/nio/file/attribute/UserPrincipal;

    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Lj$/nio/file/attribute/AclEntry;

    iget-object v2, p0, Lj$/nio/file/attribute/AclEntry$Builder;->type:Lj$/nio/file/attribute/AclEntryType;

    iget-object v3, p0, Lj$/nio/file/attribute/AclEntry$Builder;->who:Lj$/nio/file/attribute/UserPrincipal;

    iget-object v4, p0, Lj$/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    iget-object v5, p0, Lj$/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lj$/nio/file/attribute/AclEntry;-><init>(Lj$/nio/file/attribute/AclEntryType;Lj$/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Lj$/nio/file/attribute/AclEntry-IA;)V

    return-object v1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing who component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing type component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlags(Ljava/util/Set;)Lj$/nio/file/attribute/AclEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/AclEntryFlag;",
            ">;)",
            "Lj$/nio/file/attribute/AclEntry$Builder;"
        }
    .end annotation

    .line 226
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 232
    const-class v0, Lj$/nio/file/attribute/AclEntryFlag;

    invoke-static {p1, v0}, Lj$/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    .line 235
    :goto_0
    iput-object p1, p0, Lj$/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    .line 236
    return-object p0
.end method

.method public varargs setFlags([Lj$/nio/file/attribute/AclEntryFlag;)Lj$/nio/file/attribute/AclEntry$Builder;
    .locals 4
    .param p1, "flags"    # [Lj$/nio/file/attribute/AclEntryFlag;

    .line 248
    const-class v0, Lj$/nio/file/attribute/AclEntryFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 250
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 251
    .local v3, "f":Lj$/nio/file/attribute/AclEntryFlag;
    if-eqz v3, :cond_0

    .line 253
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v3    # "f":Lj$/nio/file/attribute/AclEntryFlag;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .restart local v3    # "f":Lj$/nio/file/attribute/AclEntryFlag;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 255
    .end local v3    # "f":Lj$/nio/file/attribute/AclEntryFlag;
    :cond_1
    iput-object v0, p0, Lj$/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    .line 256
    return-object p0
.end method

.method public setPermissions(Ljava/util/Set;)Lj$/nio/file/attribute/AclEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lj$/nio/file/attribute/AclEntryPermission;",
            ">;)",
            "Lj$/nio/file/attribute/AclEntry$Builder;"
        }
    .end annotation

    .line 181
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 187
    const-class v0, Lj$/nio/file/attribute/AclEntryPermission;

    invoke-static {p1, v0}, Lj$/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    .line 190
    :goto_0
    iput-object p1, p0, Lj$/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    .line 191
    return-object p0
.end method

.method public varargs setPermissions([Lj$/nio/file/attribute/AclEntryPermission;)Lj$/nio/file/attribute/AclEntry$Builder;
    .locals 4
    .param p1, "perms"    # [Lj$/nio/file/attribute/AclEntryPermission;

    .line 203
    const-class v0, Lj$/nio/file/attribute/AclEntryPermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 205
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 206
    .local v3, "p":Lj$/nio/file/attribute/AclEntryPermission;
    if-eqz v3, :cond_0

    .line 208
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v3    # "p":Lj$/nio/file/attribute/AclEntryPermission;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .restart local v3    # "p":Lj$/nio/file/attribute/AclEntryPermission;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 210
    .end local v3    # "p":Lj$/nio/file/attribute/AclEntryPermission;
    :cond_1
    iput-object v0, p0, Lj$/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    .line 211
    return-object p0
.end method

.method public setPrincipal(Lj$/nio/file/attribute/UserPrincipal;)Lj$/nio/file/attribute/AclEntry$Builder;
    .locals 1
    .param p1, "who"    # Lj$/nio/file/attribute/UserPrincipal;

    .line 154
    if-eqz p1, :cond_0

    .line 156
    iput-object p1, p0, Lj$/nio/file/attribute/AclEntry$Builder;->who:Lj$/nio/file/attribute/UserPrincipal;

    .line 157
    return-object p0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setType(Lj$/nio/file/attribute/AclEntryType;)Lj$/nio/file/attribute/AclEntry$Builder;
    .locals 1
    .param p1, "type"    # Lj$/nio/file/attribute/AclEntryType;

    .line 141
    if-eqz p1, :cond_0

    .line 143
    iput-object p1, p0, Lj$/nio/file/attribute/AclEntry$Builder;->type:Lj$/nio/file/attribute/AclEntryType;

    .line 144
    return-object p0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
