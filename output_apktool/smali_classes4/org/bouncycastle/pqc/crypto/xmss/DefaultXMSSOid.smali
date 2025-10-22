.class public final Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;
.super Ljava/lang/Object;
.source "DefaultXMSSOid.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;


# static fields
.field private static final oidLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final oid:I

.field private final stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;>;"
    const-string v1, "SHA-256"

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/16 v4, 0x43

    const/16 v5, 0xa

    invoke-static {v1, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/4 v8, 0x1

    const-string v9, "XMSS_SHA2_10_256"

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v1, v2, v3, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/4 v8, 0x2

    const-string v9, "XMSS_SHA2_16_256"

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const/16 v6, 0x14

    invoke-static {v1, v2, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/4 v8, 0x3

    const-string v9, "XMSS_SHA2_20_256"

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "SHA-512"

    const/16 v7, 0x40

    const/16 v8, 0x83

    invoke-static {v1, v7, v3, v8, v5}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/4 v11, 0x4

    const-string v12, "XMSS_SHA2_10_512"

    invoke-direct {v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v1, v7, v3, v8, v3}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/4 v11, 0x5

    const-string v12, "XMSS_SHA2_16_512"

    invoke-direct {v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v1, v7, v3, v8, v6}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/4 v10, 0x6

    const-string v11, "XMSS_SHA2_20_512"

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "SHAKE128"

    invoke-static {v1, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/4 v11, 0x7

    const-string v12, "XMSS_SHAKE_10_256"

    invoke-direct {v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v1, v2, v3, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/16 v11, 0x8

    const-string v12, "XMSS_SHAKE_16_256"

    invoke-direct {v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v1, v2, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/16 v4, 0x9

    const-string v9, "XMSS_SHAKE_20_256"

    invoke-direct {v2, v4, v9}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "SHAKE256"

    invoke-static {v1, v7, v3, v8, v5}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const-string v9, "XMSS_SHAKE_10_512"

    invoke-direct {v4, v5, v9}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v1, v7, v3, v8, v3}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/16 v5, 0xb

    const-string v9, "XMSS_SHAKE_16_512"

    invoke-direct {v4, v5, v9}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {v1, v7, v3, v8, v6}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    const/16 v3, 0xc

    const-string v4, "XMSS_SHAKE_20_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->oidLookupTable:Ljava/util/Map;

    .line 35
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;>;"
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "stringRepresentation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oid",
            "stringRepresentation"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->oid:I

    .line 56
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->stringRepresentation:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private static createKey(Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 2
    .param p0, "algorithmName"    # Ljava/lang/String;
    .param p1, "digestSize"    # I
    .param p2, "winternitzParameter"    # I
    .param p3, "len"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithmName",
            "digestSize",
            "winternitzParameter",
            "len",
            "height"
        }
    .end annotation

    .line 88
    if-eqz p0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithmName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lookup(Ljava/lang/String;IIII)Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;
    .locals 2
    .param p0, "algorithmName"    # Ljava/lang/String;
    .param p1, "digestSize"    # I
    .param p2, "winternitzParameter"    # I
    .param p3, "len"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithmName",
            "digestSize",
            "winternitzParameter",
            "len",
            "height"
        }
    .end annotation

    .line 70
    if-eqz p0, :cond_0

    .line 74
    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->oidLookupTable:Ljava/util/Map;

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->createKey(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithmName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getOid()I
    .locals 1

    .line 102
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->oid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSOid;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
