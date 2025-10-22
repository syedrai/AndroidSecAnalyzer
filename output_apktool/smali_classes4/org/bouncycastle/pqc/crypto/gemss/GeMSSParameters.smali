.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
.super Ljava/lang/Object;
.source "GeMSSParameters.java"


# static fields
.field public static final bluegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final bluegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final bluegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final bluegemss_128:Ljava/lang/Integer;

.field private static final bluegemss_192:Ljava/lang/Integer;

.field private static final bluegemss_256:Ljava/lang/Integer;

.field public static final cyangemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final cyangemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final cyangemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final cyangemss_128:Ljava/lang/Integer;

.field private static final cyangemss_192:Ljava/lang/Integer;

.field private static final cyangemss_256:Ljava/lang/Integer;

.field public static final dualmodems128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final dualmodems192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final dualmodems256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final dualmodems_128:Ljava/lang/Integer;

.field private static final dualmodems_192:Ljava/lang/Integer;

.field private static final dualmodems_256:Ljava/lang/Integer;

.field public static final fgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final fgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final fgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final fgemss_128:Ljava/lang/Integer;

.field private static final fgemss_192:Ljava/lang/Integer;

.field private static final fgemss_256:Ljava/lang/Integer;

.field public static final gemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final gemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final gemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final gemss_128:Ljava/lang/Integer;

.field private static final gemss_192:Ljava/lang/Integer;

.field private static final gemss_256:Ljava/lang/Integer;

.field public static final magentagemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final magentagemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final magentagemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final magentagemss_128:Ljava/lang/Integer;

.field private static final magentagemss_192:Ljava/lang/Integer;

.field private static final magentagemss_256:Ljava/lang/Integer;

.field private static final oidToParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final paramsToOid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final redgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final redgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final redgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final redgemss_128:Ljava/lang/Integer;

.field private static final redgemss_192:Ljava/lang/Integer;

.field private static final redgemss_256:Ljava/lang/Integer;

.field public static final whitegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final whitegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final whitegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final whitegemss_128:Ljava/lang/Integer;

.field private static final whitegemss_192:Ljava/lang/Integer;

.field private static final whitegemss_256:Ljava/lang/Integer;


# instance fields
.field private final engine:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 11
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v8, 0x9

    const/4 v9, 0x0

    const-string v1, "gemss128"

    const/16 v2, 0x80

    const/16 v3, 0xae

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/16 v7, 0x201

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 12
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v9, 0x9

    const/4 v10, 0x0

    const-string v2, "gemss192"

    const/16 v3, 0xc0

    const/16 v4, 0x109

    const/16 v5, 0x14

    const/16 v6, 0x16

    const/4 v7, 0x4

    const/16 v8, 0x201

    invoke-direct/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 13
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v10, 0x9

    const/4 v11, 0x0

    const-string v3, "gemss256"

    const/16 v4, 0x100

    const/16 v5, 0x162

    const/16 v6, 0x21

    const/16 v7, 0x1e

    const/4 v8, 0x4

    const/16 v9, 0x201

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 14
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const-string v4, "bluegemss128"

    const/16 v5, 0x80

    const/16 v6, 0xaf

    const/16 v7, 0xe

    const/16 v8, 0xd

    const/4 v9, 0x4

    const/16 v10, 0x81

    invoke-direct/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 15
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v12, 0x7

    const/4 v13, 0x0

    const-string v5, "bluegemss192"

    const/16 v6, 0xc0

    const/16 v7, 0x109

    const/16 v8, 0x17

    const/16 v9, 0x16

    const/4 v10, 0x4

    const/16 v11, 0x81

    invoke-direct/range {v4 .. v13}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 16
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v13, 0x7

    const/4 v14, 0x0

    const-string v6, "bluegemss256"

    const/16 v7, 0x100

    const/16 v8, 0x166

    const/16 v9, 0x20

    const/16 v10, 0x22

    const/4 v11, 0x4

    const/16 v12, 0x81

    invoke-direct/range {v5 .. v14}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 17
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v7, "redgemss128"

    const/16 v8, 0x80

    const/16 v9, 0xb1

    const/16 v10, 0xf

    const/16 v11, 0xf

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct/range {v6 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 18
    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v8, "redgemss192"

    const/16 v9, 0xc0

    const/16 v10, 0x10a

    const/16 v11, 0x19

    const/16 v12, 0x17

    const/4 v13, 0x4

    const/16 v14, 0x11

    invoke-direct/range {v7 .. v16}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 19
    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v9, "redgemss256"

    const/16 v10, 0x100

    const/16 v11, 0x166

    const/16 v12, 0x23

    const/16 v13, 0x22

    const/4 v14, 0x4

    const/16 v15, 0x11

    invoke-direct/range {v8 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 20
    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v17, 0x9

    const/16 v18, 0x0

    const-string/jumbo v10, "whitegemss128"

    const/16 v11, 0x80

    const/16 v12, 0xaf

    const/16 v13, 0xc

    const/16 v14, 0xc

    const/4 v15, 0x3

    const/16 v16, 0x201

    invoke-direct/range {v9 .. v18}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 21
    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v18, 0x9

    const/16 v19, 0x0

    const-string/jumbo v11, "whitegemss192"

    const/16 v12, 0xc0

    const/16 v13, 0x10c

    const/16 v14, 0x15

    const/16 v15, 0x15

    const/16 v16, 0x3

    const/16 v17, 0x201

    invoke-direct/range {v10 .. v19}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 22
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v8, 0x9

    const/4 v9, 0x0

    const-string/jumbo v1, "whitegemss256"

    const/16 v2, 0x100

    const/16 v3, 0x16c

    const/16 v4, 0x1d

    const/16 v5, 0x1f

    const/4 v6, 0x3

    const/16 v7, 0x201

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 23
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v9, 0x7

    const/4 v10, 0x0

    const-string v2, "cyangemss128"

    const/16 v3, 0x80

    const/16 v4, 0xb1

    const/16 v5, 0xd

    const/16 v6, 0xe

    const/4 v7, 0x3

    const/16 v8, 0x81

    invoke-direct/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 24
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const-string v3, "cyangemss192"

    const/16 v4, 0xc0

    const/16 v5, 0x10e

    const/16 v6, 0x16

    const/16 v7, 0x17

    const/4 v8, 0x3

    const/16 v9, 0x81

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 25
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const-string v4, "cyangemss256"

    const/16 v5, 0x100

    const/16 v6, 0x16c

    const/16 v7, 0x20

    const/16 v8, 0x1f

    const/4 v9, 0x3

    const/16 v10, 0x81

    invoke-direct/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 26
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v5, "magentagemss128"

    const/16 v6, 0x80

    const/16 v7, 0xb2

    const/16 v8, 0xf

    const/16 v9, 0xf

    const/4 v10, 0x3

    const/16 v11, 0x11

    invoke-direct/range {v4 .. v13}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 27
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v6, "magentagemss192"

    const/16 v7, 0xc0

    const/16 v8, 0x10f

    const/16 v9, 0x18

    const/16 v10, 0x18

    const/4 v11, 0x3

    const/16 v12, 0x11

    invoke-direct/range {v5 .. v14}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 28
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v7, "magentagemss256"

    const/16 v8, 0x100

    const/16 v9, 0x16e

    const/16 v10, 0x21

    const/16 v11, 0x21

    const/4 v12, 0x3

    const/16 v13, 0x11

    invoke-direct/range {v6 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 29
    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v15, 0x7

    const/16 v16, 0x0

    const-string v8, "fgemss128"

    const/16 v9, 0x80

    const/16 v10, 0x10a

    const/16 v11, 0xb

    const/16 v12, 0xa

    const/4 v13, 0x1

    const/16 v14, 0x81

    invoke-direct/range {v7 .. v16}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 30
    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v16, 0x9

    const/16 v17, 0x7

    const-string v9, "fgemss192"

    const/16 v10, 0xc0

    const/16 v11, 0x192

    const/16 v12, 0x12

    const/16 v13, 0x12

    const/4 v14, 0x1

    const/16 v15, 0x280

    invoke-direct/range {v8 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 31
    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v17, 0xa

    const/16 v18, 0x7

    const-string v10, "fgemss256"

    const/16 v11, 0x100

    const/16 v12, 0x219

    const/16 v13, 0x1a

    const/16 v14, 0x19

    const/4 v15, 0x1

    const/16 v16, 0x480

    invoke-direct/range {v9 .. v18}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v9, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 32
    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v11, "dualmodems128"

    const/16 v12, 0x80

    const/16 v13, 0x10a

    const/16 v14, 0xb

    const/16 v15, 0xa

    const/16 v16, 0x1

    const/16 v17, 0x81

    invoke-direct/range {v10 .. v19}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v10, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 33
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const-string v1, "dualmodems192"

    const/16 v2, 0xc0

    const/16 v3, 0x192

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x1

    const/16 v7, 0x81

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 34
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/4 v9, 0x7

    const/4 v10, 0x0

    const-string v2, "dualmodems256"

    const/16 v3, 0x100

    const/16 v4, 0x220

    const/16 v5, 0x20

    const/16 v6, 0x20

    const/4 v7, 0x1

    const/16 v8, 0x81

    invoke-direct/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 36
    const/16 v0, 0x101

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_128:Ljava/lang/Integer;

    .line 37
    const/16 v0, 0x102

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_192:Ljava/lang/Integer;

    .line 38
    const/16 v0, 0x103

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_256:Ljava/lang/Integer;

    .line 39
    const/16 v0, 0x201

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_128:Ljava/lang/Integer;

    .line 40
    const/16 v0, 0x202

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_192:Ljava/lang/Integer;

    .line 41
    const/16 v0, 0x203

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_256:Ljava/lang/Integer;

    .line 42
    const/16 v0, 0x301

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_128:Ljava/lang/Integer;

    .line 43
    const/16 v0, 0x302

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_192:Ljava/lang/Integer;

    .line 44
    const/16 v0, 0x303

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_256:Ljava/lang/Integer;

    .line 45
    const/16 v0, 0x401

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_128:Ljava/lang/Integer;

    .line 46
    const/16 v0, 0x402

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_192:Ljava/lang/Integer;

    .line 47
    const/16 v0, 0x403

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_256:Ljava/lang/Integer;

    .line 48
    const/16 v0, 0x501

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_128:Ljava/lang/Integer;

    .line 49
    const/16 v0, 0x502

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_192:Ljava/lang/Integer;

    .line 50
    const/16 v0, 0x503

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_256:Ljava/lang/Integer;

    .line 51
    const/16 v0, 0x601

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_128:Ljava/lang/Integer;

    .line 52
    const/16 v0, 0x602

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_192:Ljava/lang/Integer;

    .line 53
    const/16 v0, 0x603

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_256:Ljava/lang/Integer;

    .line 54
    const/16 v0, 0x701

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_128:Ljava/lang/Integer;

    .line 55
    const/16 v0, 0x702

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_192:Ljava/lang/Integer;

    .line 56
    const/16 v0, 0x703

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_256:Ljava/lang/Integer;

    .line 57
    const/16 v0, 0x801

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_128:Ljava/lang/Integer;

    .line 58
    const/16 v0, 0x802

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_192:Ljava/lang/Integer;

    .line 59
    const/16 v0, 0x803

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_256:Ljava/lang/Integer;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    .line 65
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "K"    # I
    .param p3, "HFEn"    # I
    .param p4, "HFEv"    # I
    .param p5, "HFEDELTA"    # I
    .param p6, "NB_ITE"    # I
    .param p7, "HFEDeg"    # I
    .param p8, "HFEDegI"    # I
    .param p9, "HFEDegJ"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "K",
            "HFEn",
            "HFEv",
            "HFEDELTA",
            "NB_ITE",
            "HFEDeg",
            "HFEDegI",
            "HFEDegJ"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->name:Ljava/lang/String;

    .line 124
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;-><init>(IIIIIIII)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->engine:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    .line 125
    return-void
.end method

.method public static getID(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)Ljava/lang/Integer;
    .locals 1
    .param p0, "params"    # Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 152
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getParams(Ljava/lang/Integer;)Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
    .locals 1
    .param p0, "id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 141
    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .line 157
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->getID(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->engine:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->name:Ljava/lang/String;

    return-object v0
.end method
