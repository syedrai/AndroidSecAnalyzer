.class public interface abstract Lkotlin/reflect/KParameter;
.super Ljava/lang/Object;
.source "KParameter.kt"

# interfaces
.implements Lkotlin/reflect/KAnnotatedElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/KParameter$DefaultImpls;,
        Lkotlin/reflect/KParameter$Kind;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001:\u0001\u0018R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u00138&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/reflect/KParameter;",
        "Lkotlin/reflect/KAnnotatedElement;",
        "index",
        "",
        "getIndex",
        "()I",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "type",
        "Lkotlin/reflect/KType;",
        "getType",
        "()Lkotlin/reflect/KType;",
        "kind",
        "Lkotlin/reflect/KParameter$Kind;",
        "getKind",
        "()Lkotlin/reflect/KParameter$Kind;",
        "isOptional",
        "",
        "()Z",
        "isVararg",
        "isVararg$annotations",
        "()V",
        "Kind",
        "kotlin_stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getIndex()I
.end method

.method public abstract getKind()Lkotlin/reflect/KParameter$Kind;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Lkotlin/reflect/KType;
.end method

.method public abstract isOptional()Z
.end method

.method public abstract isVararg()Z
.end method
