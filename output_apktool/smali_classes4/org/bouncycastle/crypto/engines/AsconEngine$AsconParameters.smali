.class public final enum Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
.super Ljava/lang/Enum;
.source "AsconEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AsconEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AsconParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field public static final enum ascon128:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field public static final enum ascon128a:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field public static final enum ascon80pq:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    .locals 3

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon80pq:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128a:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const-string v1, "ascon80pq"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon80pq:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    .line 30
    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const-string v1, "ascon128a"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128a:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    .line 31
    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const-string v1, "ascon128"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ascon128:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    .line 27
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->$values()[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->$VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 27
    const-class v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    .locals 1

    .line 27
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->$VALUES:[Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    return-object v0
.end method
