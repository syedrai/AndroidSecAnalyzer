.class public Lj$/sun/nio/cs/StandardCharsets;
.super Ljava/nio/charset/spi/CharsetProvider;
.source "StandardCharsets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/StandardCharsets$Aliases;,
        Lj$/sun/nio/cs/StandardCharsets$Classes;,
        Lj$/sun/nio/cs/StandardCharsets$Cache;
    }
.end annotation


# static fields
.field static aliases_MS932:[Ljava/lang/String; = null

.field static aliases_SJIS:[Ljava/lang/String; = null

.field private static final packagePrefix:Ljava/lang/String; = "sun.nio.cs."


# instance fields
.field private aliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z


# direct methods
.method static bridge synthetic -$$Nest$mlookup(Lj$/sun/nio/cs/StandardCharsets;Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/StandardCharsets;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 524
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sjis"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "shift_jis"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "shift-jis"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "ms_kanji"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v6, "x-sjis"

    aput-object v6, v0, v1

    const/4 v1, 0x5

    const-string v6, "csShiftJIS"

    aput-object v6, v0, v1

    sput-object v0, Lj$/sun/nio/cs/StandardCharsets;->aliases_SJIS:[Ljava/lang/String;

    .line 535
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "MS932"

    aput-object v1, v0, v2

    const-string v1, "windows-932"

    aput-object v1, v0, v3

    const-string v1, "csWindows31J"

    aput-object v1, v0, v4

    sput-object v0, Lj$/sun/nio/cs/StandardCharsets;->aliases_MS932:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1226
    invoke-direct {p0}, Ljava/nio/charset/spi/CharsetProvider;-><init>()V

    .line 1374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/nio/cs/StandardCharsets;->initialized:Z

    .line 1227
    return-void
.end method

.method private aliasMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lj$/sun/nio/cs/StandardCharsets;->aliasMap:Ljava/util/Map;

    .line 1236
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1237
    new-instance v1, Lj$/sun/nio/cs/StandardCharsets$Aliases;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lj$/sun/nio/cs/StandardCharsets$Aliases;-><init>(Lj$/sun/nio/cs/StandardCharsets-IA;)V

    move-object v0, v1

    iput-object v1, p0, Lj$/sun/nio/cs/StandardCharsets;->aliasMap:Ljava/util/Map;

    .line 1239
    :cond_0
    return-object v0
.end method

.method static aliases_Big5()[Ljava/lang/String;
    .locals 3

    .line 467
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "csBig5"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_Big5_HKSCS()[Ljava/lang/String;
    .locals 3

    .line 482
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Big5_HKSCS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "big5hk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "big5-hkscs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "big5hkscs"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_Big5_Solaris()[Ljava/lang/String;
    .locals 3

    .line 491
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Big5_Solaris"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_CESU_8()[Ljava/lang/String;
    .locals 3

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CESU8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "csCESU-8"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_EUC_CN()[Ljava/lang/String;
    .locals 3

    .line 510
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gb2312"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gb2312-80"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gb2312-1980"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "euc-cn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "euccn"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "x-EUC-CN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EUC_CN"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_EUC_JP()[Ljava/lang/String;
    .locals 3

    .line 571
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "euc_jp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eucjis"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eucjp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Extended_UNIX_Code_Packed_Format_for_Japanese"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "csEUCPkdFmtjapanese"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "x-euc-jp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "x-eucjp"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_EUC_JP_LINUX()[Ljava/lang/String;
    .locals 3

    .line 583
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "euc_jp_linux"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "euc-jp-linux"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_EUC_JP_Open()[Ljava/lang/String;
    .locals 3

    .line 590
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EUC_JP_Solaris"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eucJP-open"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_EUC_KR()[Ljava/lang/String;
    .locals 3

    .line 603
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "euc_kr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ksc5601"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "euckr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ks_c_5601-1987"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ksc5601-1987"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ksc5601_1987"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ksc_5601"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "csEUCKR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "5601"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_EUC_TW()[Ljava/lang/String;
    .locals 3

    .line 473
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "euc_tw"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "euctw"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cns11643"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EUC-TW"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_GB18030()[Ljava/lang/String;
    .locals 3

    .line 504
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gb18030-2000"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_GBK()[Ljava/lang/String;
    .locals 3

    .line 497
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "windows-936"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CP936"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM437()[Ljava/lang/String;
    .locals 3

    .line 356
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp437"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ibm437"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm-437"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "437"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cspc8codepage437"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "windows-437"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM737()[Ljava/lang/String;
    .locals 3

    .line 367
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp737"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ibm737"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm-737"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "737"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM775()[Ljava/lang/String;
    .locals 3

    .line 376
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp775"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ibm775"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm-775"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "775"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM850()[Ljava/lang/String;
    .locals 3

    .line 385
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp850"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ibm-850"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm850"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "850"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cspc850multilingual"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM852()[Ljava/lang/String;
    .locals 3

    .line 395
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp852"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ibm852"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm-852"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "852"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "csPCp852"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM855()[Ljava/lang/String;
    .locals 3

    .line 405
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp855"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ibm-855"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm855"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "855"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cspcp855"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM857()[Ljava/lang/String;
    .locals 3

    .line 415
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp857"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ibm857"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm-857"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "857"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "csIBM857"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM858()[Ljava/lang/String;
    .locals 3

    .line 425
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp858"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ccsid00858"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cp00858"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "858"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PC-Multilingual-850+euro"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ibm858"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ibm-858"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM862()[Ljava/lang/String;
    .locals 3

    .line 437
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp862"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ibm862"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm-862"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "862"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "csIBM862"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cspc862latinhebrew"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM866()[Ljava/lang/String;
    .locals 3

    .line 448
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp866"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ibm866"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm-866"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "866"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "csIBM866"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_IBM874()[Ljava/lang/String;
    .locals 3

    .line 458
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp874"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ibm874"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm-874"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "874"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_1()[Ljava/lang/String;
    .locals 3

    .line 143
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso-ir-100"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ISO_8859-1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "latin1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "l1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IBM819"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cp819"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csISOLatin1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "819"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IBM-819"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ISO8859_1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ISO_8859-1:1987"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ISO_8859_1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "8859_1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ISO8859-1"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_11()[Ljava/lang/String;
    .locals 3

    .line 680
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso-8859-11"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iso8859_11"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_13()[Ljava/lang/String;
    .locals 3

    .line 254
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso8859_13"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "8859_13"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso_8859-13"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ISO8859-13"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_15()[Ljava/lang/String;
    .locals 3

    .line 263
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ISO_8859-15"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Latin-9"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "csISO885915"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "8859_15"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO-8859-15"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ISO8859_15"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ISO8859-15"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IBM923"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "IBM-923"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cp923"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "923"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LATIN0"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LATIN9"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "L9"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "csISOlatin0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "csISOlatin9"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ISO8859_15_FDIS"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_16()[Ljava/lang/String;
    .locals 3

    .line 285
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso-ir-226"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ISO_8859-16:2001"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ISO_8859-16"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ISO8859_16"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latin10"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "l10"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "csISO885916"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_2()[Ljava/lang/String;
    .locals 3

    .line 162
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso8859_2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "8859_2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso-ir-101"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ISO_8859-2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO_8859-2:1987"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ISO8859-2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latin2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "l2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ibm912"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ibm-912"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cp912"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "912"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "csISOLatin2"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_3()[Ljava/lang/String;
    .locals 3

    .line 626
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso8859_3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "8859_3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ISO_8859-3:1988"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iso-ir-109"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO_8859-3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ISO8859-3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latin3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "l3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ibm913"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ibm-913"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cp913"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "913"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "csISOLatin3"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_4()[Ljava/lang/String;
    .locals 3

    .line 180
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso8859_4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "iso8859-4"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "8859_4"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iso-ir-110"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO_8859-4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ISO_8859-4:1988"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latin4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "l4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ibm914"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ibm-914"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cp914"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "914"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "csISOLatin4"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_5()[Ljava/lang/String;
    .locals 3

    .line 198
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso8859_5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "8859_5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso-ir-144"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ISO_8859-5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO_8859-5:1988"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ISO8859-5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cyrillic"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ibm915"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ibm-915"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cp915"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "915"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "csISOLatinCyrillic"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_6()[Ljava/lang/String;
    .locals 3

    .line 644
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso8859_6"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "8859_6"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso-ir-127"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ISO_8859-6"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO_8859-6:1987"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ISO8859-6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ECMA-114"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ASMO-708"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "arabic"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ibm1089"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ibm-1089"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cp1089"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1089"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "csISOLatinArabic"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_7()[Ljava/lang/String;
    .locals 3

    .line 215
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso8859_7"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "8859_7"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso-ir-126"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ISO_8859-7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO_8859-7:1987"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ELOT_928"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ECMA-118"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "greek"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "greek8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "csISOLatinGreek"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sun_eu_greek"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ibm813"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ibm-813"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "813"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cp813"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "iso8859-7"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_8()[Ljava/lang/String;
    .locals 3

    .line 663
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso8859_8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "8859_8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso-ir-138"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ISO_8859-8"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO_8859-8:1988"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ISO8859-8"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cp916"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "916"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ibm916"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ibm-916"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hebrew"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "csISOLatinHebrew"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_ISO_8859_9()[Ljava/lang/String;
    .locals 3

    .line 236
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso8859_9"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "8859_9"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso-ir-148"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ISO_8859-9"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO_8859-9:1989"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ISO8859-9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latin5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "l5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ibm920"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ibm-920"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "920"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cp920"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "csISOLatin5"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_JIS_X_0201()[Ljava/lang/String;
    .locals 3

    .line 541
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "JIS0201"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "JIS_X0201"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "X0201"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "csHalfWidthKatakana"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_JIS_X_0208()[Ljava/lang/String;
    .locals 3

    .line 550
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "JIS0208"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "JIS_C6226-1983"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "iso-ir-87"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "x0208"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "JIS_X0208-1983"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "csISO87JISX0208"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_JIS_X_0208_Solaris()[Ljava/lang/String;
    .locals 1

    .line 694
    const/4 v0, 0x0

    return-object v0
.end method

.method static aliases_JIS_X_0212()[Ljava/lang/String;
    .locals 3

    .line 561
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "JIS0212"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "jis_x0212-1990"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "x0212"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iso-ir-159"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "csISO159JISX02121990"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_JIS_X_0212_Solaris()[Ljava/lang/String;
    .locals 1

    .line 696
    const/4 v0, 0x0

    return-object v0
.end method

.method static aliases_Johab()[Ljava/lang/String;
    .locals 3

    .line 617
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ksc5601-1992"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ksc5601_1992"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ms1361"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "johab"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_KOI8_R()[Ljava/lang/String;
    .locals 3

    .line 297
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "koi8_r"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "koi8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cskoi8r"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_KOI8_U()[Ljava/lang/String;
    .locals 3

    .line 305
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "koi8_u"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_MS1250()[Ljava/lang/String;
    .locals 3

    .line 311
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp1250"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cp5346"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_MS1251()[Ljava/lang/String;
    .locals 3

    .line 318
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp1251"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cp5347"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ansi-1251"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_MS1252()[Ljava/lang/String;
    .locals 3

    .line 326
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp1252"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cp5348"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ibm-1252"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ibm1252"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_MS1253()[Ljava/lang/String;
    .locals 3

    .line 335
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp1253"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cp5349"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_MS1254()[Ljava/lang/String;
    .locals 3

    .line 342
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp1254"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cp5350"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_MS1257()[Ljava/lang/String;
    .locals 3

    .line 349
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cp1257"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cp5353"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_MS932()[Ljava/lang/String;
    .locals 1

    .line 533
    sget-object v0, Lj$/sun/nio/cs/StandardCharsets;->aliases_MS932:[Ljava/lang/String;

    return-object v0
.end method

.method static aliases_PCK()[Ljava/lang/String;
    .locals 3

    .line 597
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pck"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_SJIS()[Ljava/lang/String;
    .locals 1

    .line 522
    sget-object v0, Lj$/sun/nio/cs/StandardCharsets;->aliases_SJIS:[Ljava/lang/String;

    return-object v0
.end method

.method static aliases_TIS_620()[Ljava/lang/String;
    .locals 3

    .line 687
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tis620"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tis620.2533"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_US_ASCII()[Ljava/lang/String;
    .locals 3

    .line 43
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iso-ir-6"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ANSI_X3.4-1986"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ISO_646.irv:1991"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ASCII"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ISO646-US"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "us"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IBM367"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cp367"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "csASCII"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "646"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iso_646.irv:1983"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ANSI_X3.4-1968"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ascii7"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_UTF_16()[Ljava/lang/String;
    .locals 3

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF_16"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "utf16"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unicode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UnicodeBig"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_UTF_16BE()[Ljava/lang/String;
    .locals 3

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF_16BE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ISO-10646-UCS-2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "X-UTF-16BE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UnicodeBigUnmarked"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_UTF_16LE()[Ljava/lang/String;
    .locals 3

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF_16LE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "X-UTF-16LE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UnicodeLittleUnmarked"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_UTF_16LE_BOM()[Ljava/lang/String;
    .locals 3

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UnicodeLittle"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_UTF_32()[Ljava/lang/String;
    .locals 3

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF_32"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UTF32"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_UTF_32BE()[Ljava/lang/String;
    .locals 3

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF_32BE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "X-UTF-32BE"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_UTF_32BE_BOM()[Ljava/lang/String;
    .locals 3

    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF_32BE_BOM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UTF-32BE-BOM"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_UTF_32LE()[Ljava/lang/String;
    .locals 3

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF_32LE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "X-UTF-32LE"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_UTF_32LE_BOM()[Ljava/lang/String;
    .locals 3

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF_32LE_BOM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UTF-32LE-BOM"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static aliases_UTF_8()[Ljava/lang/String;
    .locals 3

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unicode-1-1-utf-8"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private cache(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1
    .param p1, "csn"    # Ljava/lang/String;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    .line 1335
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->cache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    return-object p2
.end method

.method private cache()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .line 1251
    iget-object v0, p0, Lj$/sun/nio/cs/StandardCharsets;->cache:Ljava/util/Map;

    .line 1252
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    if-nez v0, :cond_0

    .line 1253
    new-instance v1, Lj$/sun/nio/cs/StandardCharsets$Cache;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lj$/sun/nio/cs/StandardCharsets$Cache;-><init>(Lj$/sun/nio/cs/StandardCharsets-IA;)V

    move-object v0, v1

    .line 1254
    const-string v1, "utf-8"

    sget-object v2, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const-string v1, "iso-8859-1"

    sget-object v2, Lj$/sun/nio/cs/ISO_8859_1;->INSTANCE:Lj$/sun/nio/cs/ISO_8859_1;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    const-string v1, "us-ascii"

    sget-object v2, Lj$/sun/nio/cs/US_ASCII;->INSTANCE:Lj$/sun/nio/cs/US_ASCII;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const-string v1, "utf-16"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string v1, "utf-16be"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const-string v1, "utf-16le"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    iput-object v0, p0, Lj$/sun/nio/cs/StandardCharsets;->cache:Ljava/util/Map;

    .line 1262
    :cond_0
    return-object v0
.end method

.method private canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "csn"    # Ljava/lang/String;

    .line 1230
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->aliasMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1231
    .local v0, "acn":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method private classMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1243
    iget-object v0, p0, Lj$/sun/nio/cs/StandardCharsets;->classMap:Ljava/util/Map;

    .line 1244
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1245
    new-instance v1, Lj$/sun/nio/cs/StandardCharsets$Classes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lj$/sun/nio/cs/StandardCharsets$Classes;-><init>(Lj$/sun/nio/cs/StandardCharsets-IA;)V

    move-object v0, v1

    iput-object v1, p0, Lj$/sun/nio/cs/StandardCharsets;->classMap:Ljava/util/Map;

    .line 1247
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 12

    .line 1379
    iget-boolean v0, p0, Lj$/sun/nio/cs/StandardCharsets;->initialized:Z

    if-eqz v0, :cond_0

    .line 1380
    return-void

    .line 1384
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/sun/nio/cs/StandardCharsets;->initialized:Z

    .line 1386
    const-string v1, "sun.nio.cs.map"

    invoke-static {v1}, Lj$/sun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1387
    .local v1, "map":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1388
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->aliasMap()Ljava/util/Map;

    move-result-object v2

    .line 1389
    .local v2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->classMap()Ljava/util/Map;

    move-result-object v3

    .line 1390
    .local v3, "classMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1391
    .local v4, "maps":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 1392
    aget-object v6, v4, v5

    const-string v7, "Windows-31J/Shift_JIS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1394
    const-string v6, "shift_jis"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1395
    const-string v7, "windows-31j"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1396
    goto :goto_2

    .line 1398
    :cond_1
    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "MS932"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "windows-932"

    aput-object v9, v8, v0

    const/4 v9, 0x2

    const-string v11, "csWindows31J"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "shift-jis"

    aput-object v11, v8, v9

    const/4 v9, 0x4

    const-string v11, "ms_kanji"

    aput-object v11, v8, v9

    const/4 v9, 0x5

    const-string v11, "x-sjis"

    aput-object v11, v8, v9

    const/4 v9, 0x6

    const-string v11, "csShiftJIS"

    aput-object v11, v8, v9

    const/4 v9, 0x7

    aput-object v6, v8, v9

    sput-object v8, Lj$/sun/nio/cs/StandardCharsets;->aliases_MS932:[Ljava/lang/String;

    .line 1411
    new-array v0, v0, [Ljava/lang/String;

    const-string v8, "sjis"

    aput-object v8, v0, v10

    sput-object v0, Lj$/sun/nio/cs/StandardCharsets;->aliases_SJIS:[Ljava/lang/String;

    .line 1413
    sget-object v0, Lj$/sun/nio/cs/StandardCharsets;->aliases_MS932:[Ljava/lang/String;

    array-length v8, v0

    :goto_1
    if-ge v10, v8, :cond_2

    aget-object v9, v0, v10

    .line 1414
    .local v9, "alias":Ljava/lang/String;
    invoke-static {v9}, Lj$/sun/nio/cs/StandardCharsets;->toLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    .end local v9    # "alias":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1416
    :cond_2
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->cache()Ljava/util/Map;

    move-result-object v0

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    goto :goto_2

    .line 1391
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1421
    .end local v2    # "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "classMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "maps":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_4
    :goto_2
    return-void
.end method

.method private lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 7
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 1291
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->init()V

    .line 1300
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    sget-object v0, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    return-object v0

    .line 1302
    :cond_0
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1303
    sget-object v0, Lj$/sun/nio/cs/US_ASCII;->INSTANCE:Lj$/sun/nio/cs/US_ASCII;

    return-object v0

    .line 1304
    :cond_1
    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1305
    sget-object v0, Lj$/sun/nio/cs/ISO_8859_1;->INSTANCE:Lj$/sun/nio/cs/ISO_8859_1;

    return-object v0

    .line 1307
    :cond_2
    invoke-static {p1}, Lj$/sun/nio/cs/StandardCharsets;->toLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/sun/nio/cs/StandardCharsets;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "csn":Ljava/lang/String;
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->cache()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    .line 1312
    .local v1, "cs":Ljava/nio/charset/Charset;
    if-eqz v1, :cond_3

    .line 1313
    return-object v1

    .line 1316
    :cond_3
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->classMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1317
    .local v2, "cln":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 1318
    return-object v3

    .line 1323
    :cond_4
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sun.nio.cs."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1325
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1323
    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 1325
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 1326
    .local v4, "o":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v5}, Lj$/sun/nio/cs/StandardCharsets;->cache(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1327
    .end local v4    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v4

    .line 1330
    .local v4, "x":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-object v3
.end method

.method private static toLower(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 1268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1269
    .local v0, "n":I
    const/4 v1, 0x1

    .line 1270
    .local v1, "allLower":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1271
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1272
    .local v3, "c":I
    add-int/lit8 v4, v3, -0x41

    rsub-int/lit8 v5, v3, 0x5a

    or-int/2addr v4, v5

    if-ltz v4, :cond_0

    .line 1273
    const/4 v1, 0x0

    .line 1274
    goto :goto_1

    .line 1270
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1277
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1278
    return-object p0

    .line 1279
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1280
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 1281
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1282
    .local v4, "c":I
    add-int/lit8 v5, v4, -0x41

    rsub-int/lit8 v6, v4, 0x5a

    or-int/2addr v5, v6

    if-ltz v5, :cond_3

    .line 1283
    add-int/lit8 v5, v4, 0x20

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1285
    :cond_3
    int-to-char v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1280
    .end local v4    # "c":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1287
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public final charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 1340
    monitor-enter p0

    .line 1341
    :try_start_0
    invoke-direct {p0, p1}, Lj$/sun/nio/cs/StandardCharsets;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final charsets()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .line 1347
    monitor-enter p0

    .line 1348
    :try_start_0
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->init()V

    .line 1350
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->classMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1351
    .local v0, "charsetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->aliasMap()Ljava/util/Map;

    .line 1352
    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets;->cache()Ljava/util/Map;

    .line 1353
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    new-instance v1, Lj$/sun/nio/cs/StandardCharsets$1;

    invoke-direct {v1, p0, v0}, Lj$/sun/nio/cs/StandardCharsets$1;-><init>(Lj$/sun/nio/cs/StandardCharsets;Ljava/util/Set;)V

    return-object v1

    .line 1353
    .end local v0    # "charsetNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
