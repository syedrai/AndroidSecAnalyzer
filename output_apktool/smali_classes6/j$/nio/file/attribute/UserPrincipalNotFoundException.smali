.class public Lj$/nio/file/attribute/UserPrincipalNotFoundException;
.super Ljava/io/IOException;
.source "UserPrincipalNotFoundException.java"


# static fields
.field static final serialVersionUID:J = -0x4a83873fd8ce0540L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 52
    iput-object p1, p0, Lj$/nio/file/attribute/UserPrincipalNotFoundException;->name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lj$/nio/file/attribute/UserPrincipalNotFoundException;->name:Ljava/lang/String;

    return-object v0
.end method
