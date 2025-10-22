.class public final Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;
.super Ljava/lang/Object;
.source "DefaultXMSSMTOid.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;


# static fields
.field private static final oidLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final oid:I

.field private final stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;>;"
    const/16 v5, 0x14

    const/4 v6, 0x2

    const-string v1, "SHA-256"

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/16 v4, 0x43

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/4 v3, 0x1

    const-string v4, "XMSSMT_SHA2_20/2_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const/16 v9, 0x14

    const/4 v10, 0x4

    const-string v5, "SHA-256"

    const/16 v6, 0x20

    const/16 v7, 0x10

    const/16 v8, 0x43

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/4 v3, 0x2

    const-string v4, "XMSSMT_SHA2_20/4_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const/16 v9, 0x28

    const/4 v10, 0x2

    const-string v5, "SHA-256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/4 v3, 0x3

    const-string v4, "XMSSMT_SHA2_40/2_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const/4 v10, 0x4

    const-string v5, "SHA-256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/4 v3, 0x4

    const-string v4, "XMSSMT_SHA2_40/4_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/16 v10, 0x8

    const-string v5, "SHA-256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/4 v3, 0x5

    const-string v4, "XMSSMT_SHA2_40/8_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const/16 v9, 0x3c

    const/4 v10, 0x3

    const-string v5, "SHA-256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/4 v3, 0x6

    const-string v4, "XMSSMT_SHA2_60/3_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const/4 v10, 0x6

    const-string v5, "SHA-256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/4 v3, 0x7

    const-string v4, "XMSSMT_SHA2_60/6_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const/16 v10, 0xc

    const-string v5, "SHA-256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x8

    const-string v4, "XMSSMT_SHA2_60/12_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const/16 v9, 0x14

    const/4 v10, 0x2

    const-string v5, "SHA-512"

    const/16 v6, 0x40

    const/16 v8, 0x83

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x9

    const-string v4, "XMSSMT_SHA2_20/2_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v10, 0x4

    const-string v5, "SHA-512"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0xa

    const-string v4, "XMSSMT_SHA2_20/4_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const/16 v9, 0x28

    const/4 v10, 0x2

    const-string v5, "SHA-512"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0xb

    const-string v4, "XMSSMT_SHA2_40/2_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v10, 0x4

    const-string v5, "SHA-512"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0xc

    const-string v4, "XMSSMT_SHA2_40/4_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/16 v10, 0x8

    const-string v5, "SHA-512"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0xd

    const-string v4, "XMSSMT_SHA2_40/8_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const/16 v9, 0x3c

    const/4 v10, 0x3

    const-string v5, "SHA-512"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0xe

    const-string v4, "XMSSMT_SHA2_60/3_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const/4 v10, 0x6

    const-string v5, "SHA-512"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0xf

    const-string v4, "XMSSMT_SHA2_60/6_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/16 v10, 0xc

    const-string v5, "SHA-512"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x10

    const-string v4, "XMSSMT_SHA2_60/12_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/16 v9, 0x14

    const/4 v10, 0x2

    const-string v5, "SHAKE128"

    const/16 v6, 0x20

    const/16 v8, 0x43

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x11

    const-string v4, "XMSSMT_SHAKE_20/2_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/4 v10, 0x4

    const-string v5, "SHAKE128"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x12

    const-string v4, "XMSSMT_SHAKE_20/4_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/16 v9, 0x28

    const/4 v10, 0x2

    const-string v5, "SHAKE128"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x13

    const-string v4, "XMSSMT_SHAKE_40/2_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v10, 0x4

    const-string v5, "SHAKE128"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x14

    const-string v4, "XMSSMT_SHAKE_40/4_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/16 v10, 0x8

    const-string v5, "SHAKE128"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x15

    const-string v4, "XMSSMT_SHAKE_40/8_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/16 v9, 0x3c

    const/4 v10, 0x3

    const-string v5, "SHAKE128"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x16

    const-string v4, "XMSSMT_SHAKE_60/3_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/4 v10, 0x6

    const-string v5, "SHAKE128"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x17

    const-string v4, "XMSSMT_SHAKE_60/6_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/16 v10, 0xc

    const-string v5, "SHAKE128"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x18

    const-string v4, "XMSSMT_SHAKE_60/12_256"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/16 v9, 0x14

    const/4 v10, 0x2

    const-string v5, "SHAKE256"

    const/16 v6, 0x40

    const/16 v8, 0x83

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x19

    const-string v4, "XMSSMT_SHAKE_20/2_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/4 v10, 0x4

    const-string v5, "SHAKE256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x1a

    const-string v4, "XMSSMT_SHAKE_20/4_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v9, 0x28

    const/4 v10, 0x2

    const-string v5, "SHAKE256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x1b

    const-string v4, "XMSSMT_SHAKE_40/2_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v10, 0x4

    const-string v5, "SHAKE256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x1c

    const-string v4, "XMSSMT_SHAKE_40/4_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 v10, 0x8

    const-string v5, "SHAKE256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x1d

    const-string v4, "XMSSMT_SHAKE_40/8_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 v9, 0x3c

    const/4 v10, 0x3

    const-string v5, "SHAKE256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x1e

    const-string v4, "XMSSMT_SHAKE_60/3_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v10, 0x6

    const-string v5, "SHAKE256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x1f

    const-string v4, "XMSSMT_SHAKE_60/6_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v10, 0xc

    const-string v5, "SHAKE256"

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const/16 v3, 0x20

    const-string v4, "XMSSMT_SHAKE_60/12_512"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oidLookupTable:Ljava/util/Map;

    .line 87
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;>;"
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

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oid:I

    .line 108
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->stringRepresentation:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private static createKey(Ljava/lang/String;IIIII)Ljava/lang/String;
    .locals 2
    .param p0, "algorithmName"    # Ljava/lang/String;
    .param p1, "digestSize"    # I
    .param p2, "winternitzParameter"    # I
    .param p3, "len"    # I
    .param p4, "height"    # I
    .param p5, "layers"    # I
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
            "algorithmName",
            "digestSize",
            "winternitzParameter",
            "len",
            "height",
            "layers"
        }
    .end annotation

    .line 140
    if-eqz p0, :cond_0

    .line 145
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

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithmName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lookup(Ljava/lang/String;IIIII)Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;
    .locals 2
    .param p0, "algorithmName"    # Ljava/lang/String;
    .param p1, "digestSize"    # I
    .param p2, "winternitzParameter"    # I
    .param p3, "len"    # I
    .param p4, "height"    # I
    .param p5, "layers"    # I
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
            "algorithmName",
            "digestSize",
            "winternitzParameter",
            "len",
            "height",
            "layers"
        }
    .end annotation

    .line 122
    if-eqz p0, :cond_0

    .line 126
    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oidLookupTable:Ljava/util/Map;

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithmName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getOid()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
