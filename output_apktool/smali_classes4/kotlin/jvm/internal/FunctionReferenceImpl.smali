.class public Lkotlin/jvm/internal/FunctionReferenceImpl;
.super Lkotlin/jvm/internal/FunctionReference;
.source "FunctionReferenceImpl.java"


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "arity"    # I
    .param p2, "owner"    # Ljava/lang/Class;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arity",
            "owner",
            "name",
            "signature",
            "flags"
        }
    .end annotation

    .line 24
    sget-object v2, Lkotlin/jvm/internal/FunctionReferenceImpl;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "arity":I
    .end local p2    # "owner":Ljava/lang/Class;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "signature":Ljava/lang/String;
    .end local p5    # "flags":I
    .local v1, "arity":I
    .local v3, "owner":Ljava/lang/Class;
    .local v4, "name":Ljava/lang/String;
    .local v5, "signature":Ljava/lang/String;
    .local v6, "flags":I
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "arity"    # I
    .param p2, "receiver"    # Ljava/lang/Object;
    .param p3, "owner"    # Ljava/lang/Class;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arity",
            "receiver",
            "owner",
            "name",
            "signature",
            "flags"
        }
    .end annotation

    .line 29
    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "arity"    # I
    .param p2, "owner"    # Lkotlin/reflect/KDeclarationContainer;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arity",
            "owner",
            "name",
            "signature"
        }
    .end annotation

    .line 15
    sget-object v2, Lkotlin/jvm/internal/FunctionReferenceImpl;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;

    .line 17
    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v3

    .line 18
    instance-of v0, p2, Lkotlin/reflect/KClass;

    .line 15
    xor-int/lit8 v6, v0, 0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "arity":I
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "signature":Ljava/lang/String;
    .local v1, "arity":I
    .local v4, "name":Ljava/lang/String;
    .local v5, "signature":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    return-void
.end method
