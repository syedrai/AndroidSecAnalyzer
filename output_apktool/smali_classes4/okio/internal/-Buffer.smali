.class public final Lokio/internal/-Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1700:1\n110#1,20:1723\n110#1,20:1756\n110#1:1776\n112#1,18:1778\n110#1,20:1796\n73#2:1701\n73#2:1702\n73#2:1703\n73#2:1704\n73#2:1705\n73#2:1706\n73#2:1707\n73#2:1708\n73#2:1709\n73#2:1710\n73#2:1711\n73#2:1712\n82#2:1713\n82#2:1714\n76#2:1715\n76#2:1716\n76#2:1717\n76#2:1718\n76#2:1719\n76#2:1720\n76#2:1721\n76#2:1722\n85#2:1743\n88#2:1745\n73#2:1746\n73#2:1747\n73#2:1748\n73#2:1749\n73#2:1750\n73#2:1751\n73#2:1752\n73#2:1753\n73#2:1754\n73#2:1755\n88#2:1777\n85#2:1816\n1#3:1744\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n*L\n413#1:1723,20\n1262#1:1756,20\n1293#1:1776\n1293#1:1778,18\n1327#1:1796,20\n176#1:1701\n200#1:1702\n319#1:1703\n324#1:1704\n347#1:1705\n348#1:1706\n349#1:1707\n350#1:1708\n356#1:1709\n357#1:1710\n358#1:1711\n359#1:1712\n383#1:1713\n384#1:1714\n390#1:1715\n391#1:1716\n392#1:1717\n393#1:1718\n394#1:1719\n395#1:1720\n396#1:1721\n397#1:1722\n425#1:1743\n858#1:1745\n876#1:1746\n878#1:1747\n882#1:1748\n884#1:1749\n888#1:1750\n890#1:1751\n894#1:1752\n896#1:1753\n916#1:1754\n919#1:1755\n1306#1:1777\n1646#1:1816\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0016\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u001a0\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0000\u001a\u0014\u0010\u000e\u001a\u00020\u000f*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a?\u0010\u0013\u001a\u0002H\u0014\"\u0004\u0008\u0000\u0010\u0014*\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00122\u001a\u0010\u0016\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u0002H\u00140\u0017H\u0080\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018\u001a\u001e\u0010\u0019\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0007H\u0000\u001a%\u0010\u001d\u001a\u00020\u0010*\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012H\u0080\u0008\u001a\r\u0010!\u001a\u00020\u0012*\u00020\u0010H\u0080\u0008\u001a\r\u0010\"\u001a\u00020#*\u00020\u0010H\u0080\u0008\u001a\r\u0010$\u001a\u00020%*\u00020\u0010H\u0080\u0008\u001a\r\u0010&\u001a\u00020\u0005*\u00020\u0010H\u0080\u0008\u001a\r\u0010\'\u001a\u00020\u0012*\u00020\u0010H\u0080\u0008\u001a\u0015\u0010(\u001a\u00020#*\u00020\u00102\u0006\u0010)\u001a\u00020\u0012H\u0080\u0008\u001a\r\u0010*\u001a\u00020+*\u00020\u0010H\u0080\u0008\u001a\u0015\u0010,\u001a\u00020+*\u00020\u00102\u0006\u0010 \u001a\u00020\u0012H\u0080\u0008\u001a)\u0010-\u001a\u00020\u0010*\u00020\u00102\u0006\u0010.\u001a\u00020/2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00052\u0008\u0008\u0002\u0010 \u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u00100\u001a\u00020\u0010*\u00020\u00102\u0006\u00101\u001a\u00020\u0012H\u0080\u0008\u001a\u0010\u00102\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u0012H\u0002\u001a\u0015\u00105\u001a\u00020\u0010*\u00020\u00102\u0006\u00101\u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u00106\u001a\u00020\t*\u00020\u00102\u0006\u00107\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010-\u001a\u00020\u0010*\u00020\u00102\u0006\u00108\u001a\u00020\u0001H\u0080\u0008\u001a%\u0010-\u001a\u00020\u0010*\u00020\u00102\u0006\u00108\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0080\u0008\u001a\r\u00109\u001a\u00020\u0001*\u00020\u0010H\u0080\u0008\u001a\u0015\u00109\u001a\u00020\u0001*\u00020\u00102\u0006\u0010 \u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010:\u001a\u00020\u0005*\u00020\u00102\u0006\u0010;\u001a\u00020\u0001H\u0080\u0008\u001a\u0015\u0010<\u001a\u00020+*\u00020\u00102\u0006\u0010;\u001a\u00020\u0001H\u0080\u0008\u001a%\u0010:\u001a\u00020\u0005*\u00020\u00102\u0006\u0010;\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0080\u0008\u001a\r\u0010?\u001a\u00020\u0012*\u00020\u0010H\u0080\u0008\u001a\r\u0010@\u001a\u00020\u0012*\u00020\u0010H\u0080\u0008\u001a\r\u0010A\u001a\u00020/*\u00020\u0010H\u0080\u0008\u001a\u0015\u0010A\u001a\u00020/*\u00020\u00102\u0006\u0010 \u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010B\u001a\u00020\u0005*\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0080\u0008\u001a\u001d\u0010<\u001a\u00020+*\u00020\u00102\u0006\u0010;\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010C\u001a\u00020\u0012*\u00020\u00102\u0006\u0010;\u001a\u00020DH\u0080\u0008\u001a\u0015\u0010E\u001a\u00020\u000f*\u00020\u00102\u0006\u0010 \u001a\u00020\u0012H\u0080\u0008\u001a\u000f\u0010F\u001a\u0004\u0018\u00010\u000f*\u00020\u0010H\u0080\u0008\u001a\u0015\u0010G\u001a\u00020\u000f*\u00020\u00102\u0006\u0010H\u001a\u00020\u0012H\u0080\u0008\u001a\r\u0010I\u001a\u00020\u0005*\u00020\u0010H\u0080\u0008\u001a%\u0010J\u001a\u00020\u0010*\u00020\u00102\u0006\u0010K\u001a\u00020\u000f2\u0006\u0010L\u001a\u00020\u00052\u0006\u0010M\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010N\u001a\u00020\u0010*\u00020\u00102\u0006\u0010O\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010P\u001a\u00020\u0012*\u00020\u00102\u0006\u00108\u001a\u00020QH\u0080\u0008\u001a\u001d\u0010-\u001a\u00020\u0010*\u00020\u00102\u0006\u00108\u001a\u00020Q2\u0006\u0010 \u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010R\u001a\u00020\u0010*\u00020\u00102\u0006\u0010S\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010T\u001a\u00020\u0010*\u00020\u00102\u0006\u0010U\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010V\u001a\u00020\u0010*\u00020\u00102\u0006\u0010W\u001a\u00020\u0005H\u0080\u0008\u001a\u0015\u0010X\u001a\u00020\u0010*\u00020\u00102\u0006\u00101\u001a\u00020\u0012H\u0080\u0008\u001a\u001d\u0010-\u001a\u00020+*\u00020\u00102\u0006\u00108\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0012H\u0080\u0008\u001a\u001d\u0010:\u001a\u00020\u0012*\u00020\u00102\u0006\u0010;\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0012H\u0080\u0008\u001a%\u0010Y\u001a\u00020\u0012*\u00020\u00102\u0006\u0010S\u001a\u00020#2\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010Z\u001a\u00020\u0012H\u0080\u0008\u001a\u001d\u0010Y\u001a\u00020\u0012*\u00020\u00102\u0006\u0010\u000b\u001a\u00020/2\u0006\u0010\u0015\u001a\u00020\u0012H\u0080\u0008\u001a\u001d\u0010[\u001a\u00020\u0012*\u00020\u00102\u0006\u0010\\\u001a\u00020/2\u0006\u0010\u0015\u001a\u00020\u0012H\u0080\u0008\u001a-\u0010]\u001a\u00020\u0007*\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020/2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0080\u0008\u001a\u0017\u0010^\u001a\u00020\u0007*\u00020\u00102\u0008\u0010_\u001a\u0004\u0018\u00010`H\u0080\u0008\u001a\r\u0010a\u001a\u00020\u0005*\u00020\u0010H\u0080\u0008\u001a\r\u0010b\u001a\u00020\u0010*\u00020\u0010H\u0080\u0008\u001a\r\u0010c\u001a\u00020/*\u00020\u0010H\u0080\u0008\u001a\u0015\u0010c\u001a\u00020/*\u00020\u00102\u0006\u0010 \u001a\u00020\u0005H\u0080\u0008\u001a\u0014\u0010d\u001a\u00020e*\u00020\u00102\u0006\u0010f\u001a\u00020eH\u0000\u001a\u0014\u0010g\u001a\u00020e*\u00020\u00102\u0006\u0010f\u001a\u00020eH\u0000\u001a\r\u0010h\u001a\u00020\u0005*\u00020eH\u0080\u0008\u001a\u0015\u0010i\u001a\u00020\u0005*\u00020e2\u0006\u0010\u001f\u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010j\u001a\u00020\u0012*\u00020e2\u0006\u0010k\u001a\u00020\u0012H\u0080\u0008\u001a\u0015\u0010l\u001a\u00020\u0012*\u00020e2\u0006\u0010m\u001a\u00020\u0005H\u0080\u0008\u001a\r\u0010n\u001a\u00020+*\u00020eH\u0080\u0008\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u00103\u001a\u000204X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010=\u001a\u00020\u0012X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010>\u001a\u00020\u0012X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006o"
    }
    d2 = {
        "HEX_DIGIT_BYTES",
        "",
        "getHEX_DIGIT_BYTES",
        "()[B",
        "SEGMENTING_THRESHOLD",
        "",
        "rangeEquals",
        "",
        "segment",
        "Lokio/Segment;",
        "segmentPos",
        "bytes",
        "bytesOffset",
        "bytesLimit",
        "readUtf8Line",
        "",
        "Lokio/Buffer;",
        "newline",
        "",
        "seek",
        "T",
        "fromIndex",
        "lambda",
        "Lkotlin/Function2;",
        "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "selectPrefix",
        "options",
        "Lokio/Options;",
        "selectTruncated",
        "commonCopyTo",
        "out",
        "offset",
        "byteCount",
        "commonCompleteSegmentByteCount",
        "commonReadByte",
        "",
        "commonReadShort",
        "",
        "commonReadInt",
        "commonReadLong",
        "commonGet",
        "pos",
        "commonClear",
        "",
        "commonSkip",
        "commonWrite",
        "byteString",
        "Lokio/ByteString;",
        "commonWriteDecimalLong",
        "v",
        "countDigitsIn",
        "DigitCountToLargestValue",
        "",
        "commonWriteHexadecimalUnsignedLong",
        "commonWritableSegment",
        "minimumCapacity",
        "source",
        "commonReadByteArray",
        "commonRead",
        "sink",
        "commonReadFully",
        "OVERFLOW_ZONE",
        "OVERFLOW_DIGIT_START",
        "commonReadDecimalLong",
        "commonReadHexadecimalUnsignedLong",
        "commonReadByteString",
        "commonSelect",
        "commonReadAll",
        "Lokio/Sink;",
        "commonReadUtf8",
        "commonReadUtf8Line",
        "commonReadUtf8LineStrict",
        "limit",
        "commonReadUtf8CodePoint",
        "commonWriteUtf8",
        "string",
        "beginIndex",
        "endIndex",
        "commonWriteUtf8CodePoint",
        "codePoint",
        "commonWriteAll",
        "Lokio/Source;",
        "commonWriteByte",
        "b",
        "commonWriteShort",
        "s",
        "commonWriteInt",
        "i",
        "commonWriteLong",
        "commonIndexOf",
        "toIndex",
        "commonIndexOfElement",
        "targetBytes",
        "commonRangeEquals",
        "commonEquals",
        "other",
        "",
        "commonHashCode",
        "commonCopy",
        "commonSnapshot",
        "commonReadUnsafe",
        "Lokio/Buffer$UnsafeCursor;",
        "unsafeCursor",
        "commonReadAndWriteUnsafe",
        "commonNext",
        "commonSeek",
        "commonResizeBuffer",
        "newSize",
        "commonExpandBuffer",
        "minByteCount",
        "commonClose",
        "third_party.java_src.okio_okio-jvm"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DigitCountToLargestValue:[J

.field private static final HEX_DIGIT_BYTES:[B

.field public static final OVERFLOW_DIGIT_START:J = -0x7L

.field public static final OVERFLOW_ZONE:J = -0xcccccccccccccccL

.field public static final SEGMENTING_THRESHOLD:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "0123456789abcdef"

    invoke-static {v0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lokio/internal/-Buffer;->HEX_DIGIT_BYTES:[B

    .line 489
    nop

    .line 490
    nop

    .line 491
    nop

    .line 490
    nop

    .line 492
    nop

    .line 490
    nop

    .line 493
    nop

    .line 490
    nop

    .line 494
    nop

    .line 490
    nop

    .line 495
    nop

    .line 490
    nop

    .line 496
    nop

    .line 490
    nop

    .line 497
    nop

    .line 490
    nop

    .line 498
    nop

    .line 490
    nop

    .line 499
    nop

    .line 490
    nop

    .line 500
    nop

    .line 490
    nop

    .line 501
    nop

    .line 490
    nop

    .line 502
    nop

    .line 490
    nop

    .line 503
    nop

    .line 490
    nop

    .line 504
    nop

    .line 490
    nop

    .line 505
    nop

    .line 490
    nop

    .line 506
    nop

    .line 490
    nop

    .line 507
    nop

    .line 490
    nop

    .line 508
    nop

    .line 490
    nop

    .line 509
    const/16 v0, 0x14

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 490
    nop

    .line 489
    sput-object v0, Lokio/internal/-Buffer;->DigitCountToLargestValue:[J

    return-void

    nop

    :array_0
    .array-data 8
        -0x1
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x2540be3ffL
        0x174876e7ffL
        0xe8d4a50fffL
        0x9184e729fffL
        0x5af3107a3fffL
        0x38d7ea4c67fffL
        0x2386f26fc0ffffL
        0x16345785d89ffffL
        0xde0b6b3a763ffffL
        0x7fffffffffffffffL
    .end array-data
.end method

.method public static final synthetic access$countDigitsIn(J)I
    .locals 1
    .param p0, "v"    # J

    .line 1
    invoke-static {p0, p1}, Lokio/internal/-Buffer;->countDigitsIn(J)I

    move-result v0

    return v0
.end method

.method public static final commonClear(Lokio/Buffer;)V
    .locals 3
    .param p0, "$this$commonClear"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonClear"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 418
    .local v0, "$i$f$commonClear":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method public static final commonClose(Lokio/Buffer$UnsafeCursor;)V
    .locals 4
    .param p0, "$this$commonClose"    # Lokio/Buffer$UnsafeCursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonClose"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1691
    .local v0, "$i$f$commonClose":I
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1693
    const/4 v1, 0x0

    iput-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1694
    invoke-virtual {p0, v1}, Lokio/Buffer$UnsafeCursor;->setSegment$third_party_java_src_okio_okio_jvm(Lokio/Segment;)V

    .line 1695
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1696
    iput-object v1, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1697
    const/4 v1, -0x1

    iput v1, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1698
    iput v1, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1699
    return-void

    .line 1744
    :cond_1
    const/4 v1, 0x0

    .line 1691
    .local v1, "$i$a$-check--Buffer$commonClose$1":I
    nop

    .end local v1    # "$i$a$-check--Buffer$commonClose$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonCompleteSegmentByteCount(Lokio/Buffer;)J
    .locals 6
    .param p0, "$this$commonCompleteSegmentByteCount"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonCompleteSegmentByteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 277
    .local v0, "$i$f$commonCompleteSegmentByteCount":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 278
    .local v1, "result":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-wide v3

    .line 281
    :cond_0
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    .local v3, "tail":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->limit:I

    const/16 v5, 0x2000

    if-ge v4, v5, :cond_1

    iget-boolean v4, v3, Lokio/Segment;->owner:Z

    if-eqz v4, :cond_1

    .line 283
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v1, v4

    .line 286
    :cond_1
    return-wide v1
.end method

.method public static final commonCopy(Lokio/Buffer;)Lokio/Buffer;
    .locals 7
    .param p0, "$this$commonCopy"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonCopy"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1454
    .local v0, "$i$f$commonCopy":I
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1455
    .local v1, "result":Lokio/Buffer;
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-object v1

    .line 1457
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1458
    .local v2, "head":Lokio/Segment;
    invoke-virtual {v2}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v3

    .line 1460
    .local v3, "headCopy":Lokio/Segment;
    iput-object v3, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1461
    iget-object v4, v1, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v4, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1462
    iget-object v4, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1464
    iget-object v4, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1465
    .local v4, "s":Lokio/Segment;
    :goto_0
    if-eq v4, v2, :cond_1

    .line 1466
    iget-object v5, v3, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1467
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 1470
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1471
    return-object v1
.end method

.method public static final commonCopyTo(Lokio/Buffer;Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 11
    .param p0, "$this$commonCopyTo"    # Lokio/Buffer;
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonCopyTo",
            "out",
            "offset",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 242
    .local v0, "$i$f$commonCopyTo":I
    move-wide v3, p2

    .line 243
    .local v3, "offset":J
    move-wide v5, p4

    .line 244
    .local v5, "byteCount":J
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 245
    const-wide/16 v1, 0x0

    cmp-long v7, v5, v1

    if-nez v7, :cond_0

    return-object p0

    .line 247
    :cond_0
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {p1, v7, v8}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 250
    iget-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 251
    .local v7, "s":Lokio/Segment;
    :goto_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v8, v7, Lokio/Segment;->limit:I

    iget v9, v7, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    cmp-long v10, v3, v8

    if-ltz v10, :cond_1

    .line 252
    iget v8, v7, Lokio/Segment;->limit:I

    iget v9, v7, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v3, v8

    .line 253
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 257
    :cond_1
    :goto_1
    cmp-long v8, v5, v1

    if-lez v8, :cond_3

    .line 258
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v8

    .line 259
    .local v8, "copy":Lokio/Segment;
    iget v9, v8, Lokio/Segment;->pos:I

    long-to-int v10, v3

    add-int/2addr v9, v10

    iput v9, v8, Lokio/Segment;->pos:I

    .line 260
    iget v9, v8, Lokio/Segment;->pos:I

    long-to-int v10, v5

    add-int/2addr v9, v10

    iget v10, v8, Lokio/Segment;->limit:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v8, Lokio/Segment;->limit:I

    .line 261
    iget-object v9, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v9, :cond_2

    .line 262
    iput-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    .line 263
    iget-object v9, v8, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v9, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 264
    iget-object v9, v8, Lokio/Segment;->next:Lokio/Segment;

    iput-object v9, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 266
    :cond_2
    iget-object v9, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v9, v9, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 268
    :goto_2
    iget v9, v8, Lokio/Segment;->limit:I

    iget v10, v8, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    sub-long/2addr v5, v9

    .line 269
    const-wide/16 v3, 0x0

    .line 270
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .end local v8    # "copy":Lokio/Segment;
    goto :goto_1

    .line 273
    :cond_3
    return-object p0
.end method

.method public static final commonEquals(Lokio/Buffer;Ljava/lang/Object;)Z
    .locals 18
    .param p0, "$this$commonEquals"    # Lokio/Buffer;
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonEquals",
            "other"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1404
    .local v2, "$i$f$commonEquals":I
    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    return v3

    .line 1405
    :cond_0
    instance-of v4, v1, Lokio/Buffer;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    .line 1406
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object v4, v1

    check-cast v4, Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    return v5

    .line 1407
    :cond_2
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    return v3

    .line 1409
    :cond_3
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1410
    .local v4, "sa":Lokio/Segment;
    move-object v6, v1

    check-cast v6, Lokio/Buffer;

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1411
    .local v6, "sb":Lokio/Segment;
    iget v7, v4, Lokio/Segment;->pos:I

    .line 1412
    .local v7, "posA":I
    iget v8, v6, Lokio/Segment;->pos:I

    .line 1414
    .local v8, "posB":I
    const-wide/16 v9, 0x0

    .line 1415
    .local v9, "pos":J
    const-wide/16 v11, 0x0

    .line 1416
    .local v11, "count":J
    :goto_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v13

    cmp-long v15, v9, v13

    if-gez v15, :cond_8

    .line 1417
    iget v13, v4, Lokio/Segment;->limit:I

    sub-int/2addr v13, v7

    iget v14, v6, Lokio/Segment;->limit:I

    sub-int/2addr v14, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-long v11, v13

    .line 1419
    const-wide/16 v13, 0x0

    .local v13, "i":J
    :goto_1
    cmp-long v15, v13, v11

    if-gez v15, :cond_5

    .line 1420
    iget-object v15, v4, Lokio/Segment;->data:[B

    add-int/lit8 v16, v7, 0x1

    .end local v7    # "posA":I
    .local v16, "posA":I
    aget-byte v7, v15, v7

    iget-object v15, v6, Lokio/Segment;->data:[B

    add-int/lit8 v17, v8, 0x1

    .end local v8    # "posB":I
    .local v17, "posB":I
    aget-byte v8, v15, v8

    if-eq v7, v8, :cond_4

    return v5

    .line 1419
    :cond_4
    const-wide/16 v7, 0x1

    add-long/2addr v13, v7

    move/from16 v7, v16

    move/from16 v8, v17

    goto :goto_1

    .line 1423
    .end local v13    # "i":J
    .end local v16    # "posA":I
    .end local v17    # "posB":I
    .restart local v7    # "posA":I
    .restart local v8    # "posB":I
    :cond_5
    iget v13, v4, Lokio/Segment;->limit:I

    if-ne v7, v13, :cond_6

    .line 1424
    iget-object v13, v4, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1425
    .end local v4    # "sa":Lokio/Segment;
    .local v13, "sa":Lokio/Segment;
    iget v4, v13, Lokio/Segment;->pos:I

    move v7, v4

    move-object v4, v13

    .line 1428
    .end local v13    # "sa":Lokio/Segment;
    .restart local v4    # "sa":Lokio/Segment;
    :cond_6
    iget v13, v6, Lokio/Segment;->limit:I

    if-ne v8, v13, :cond_7

    .line 1429
    iget-object v13, v6, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1430
    .end local v6    # "sb":Lokio/Segment;
    .local v13, "sb":Lokio/Segment;
    iget v6, v13, Lokio/Segment;->pos:I

    move v8, v6

    move-object v6, v13

    .line 1432
    .end local v13    # "sb":Lokio/Segment;
    .restart local v6    # "sb":Lokio/Segment;
    :cond_7
    add-long/2addr v9, v11

    goto :goto_0

    .line 1435
    :cond_8
    return v3
.end method

.method public static final commonExpandBuffer(Lokio/Buffer$UnsafeCursor;I)J
    .locals 9
    .param p0, "$this$commonExpandBuffer"    # Lokio/Buffer$UnsafeCursor;
    .param p1, "minByteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonExpandBuffer",
            "minByteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1668
    .local v0, "$i$f$commonExpandBuffer":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    .line 1669
    const/16 v3, 0x2000

    if-gt p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 1670
    iget-object v1, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v1, :cond_3

    .line 1671
    .local v1, "buffer":Lokio/Buffer;
    iget-boolean v2, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_2

    .line 1673
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 1674
    .local v4, "oldSize":J
    invoke-virtual {v1, p1}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v2

    .line 1675
    .local v2, "tail":Lokio/Segment;
    iget v6, v2, Lokio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    .line 1676
    .local v6, "result":I
    iput v3, v2, Lokio/Segment;->limit:I

    .line 1677
    int-to-long v7, v6

    add-long/2addr v7, v4

    invoke-virtual {v1, v7, v8}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1680
    invoke-virtual {p0, v2}, Lokio/Buffer$UnsafeCursor;->setSegment$third_party_java_src_okio_okio_jvm(Lokio/Segment;)V

    .line 1681
    iput-wide v4, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1682
    iget-object v7, v2, Lokio/Segment;->data:[B

    iput-object v7, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1683
    rsub-int v7, v6, 0x2000

    iput v7, p0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1684
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1686
    int-to-long v7, v6

    return-wide v7

    .line 1744
    .end local v2    # "tail":Lokio/Segment;
    .end local v4    # "oldSize":J
    .end local v6    # "result":I
    :cond_2
    const/4 v2, 0x0

    .line 1671
    .local v2, "$i$a$-check--Buffer$commonExpandBuffer$3":I
    nop

    .end local v2    # "$i$a$-check--Buffer$commonExpandBuffer$3":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "expandBuffer() only permitted for read/write buffers"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1744
    .end local v1    # "buffer":Lokio/Buffer;
    :cond_3
    const/4 v1, 0x0

    .line 1670
    .local v1, "$i$a$-checkNotNull--Buffer$commonExpandBuffer$buffer$1":I
    nop

    .end local v1    # "$i$a$-checkNotNull--Buffer$commonExpandBuffer$buffer$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1744
    :cond_4
    const/4 v1, 0x0

    .line 1669
    .local v1, "$i$a$-require--Buffer$commonExpandBuffer$2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minByteCount > Segment.SIZE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--Buffer$commonExpandBuffer$2":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1744
    :cond_5
    const/4 v1, 0x0

    .line 1668
    .local v1, "$i$a$-require--Buffer$commonExpandBuffer$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minByteCount <= 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--Buffer$commonExpandBuffer$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonGet(Lokio/Buffer;J)B
    .locals 13
    .param p0, "$this$commonGet"    # Lokio/Buffer;
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonGet",
            "pos"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 412
    .local v0, "$i$f$commonGet":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v5, 0x1

    move-wide v3, p1

    .end local p1    # "pos":J
    .local v3, "pos":J
    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 413
    move-object p1, p0

    .local p1, "$this$seek$iv":Lokio/Buffer;
    const/4 p2, 0x0

    .line 1723
    .local p2, "$i$f$seek":I
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .local v1, "s":Lokio/Segment;
    const-wide/16 v5, -0x1

    .local v5, "offset":J
    const/4 v2, 0x0

    .line 414
    .local v2, "$i$a$-seek--Buffer$commonGet$1":I
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v1, Lokio/Segment;->data:[B

    iget v8, v1, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long/2addr v8, v3

    sub-long/2addr v8, v5

    long-to-int v9, v8

    aget-byte v7, v7, v9

    return v7

    .end local v1    # "s":Lokio/Segment;
    .end local v2    # "$i$a$-seek--Buffer$commonGet$1":I
    .end local v5    # "offset":J
    :cond_0
    nop

    .line 1725
    .local v1, "s$iv":Lokio/Segment;
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v2, v5, v3

    if-gez v2, :cond_2

    .line 1727
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v5

    .line 1728
    .local v5, "offset$iv":J
    :goto_0
    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    .line 1729
    iget-object v2, v1, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v2

    .line 1730
    iget v2, v1, Lokio/Segment;->limit:I

    iget v7, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v7

    int-to-long v7, v2

    sub-long/2addr v5, v7

    goto :goto_0

    .line 1732
    :cond_1
    move-object v2, v1

    .local v2, "s":Lokio/Segment;
    move-wide v7, v5

    .local v7, "offset":J
    const/4 v9, 0x0

    .line 414
    .local v9, "$i$a$-seek--Buffer$commonGet$1":I
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v2, Lokio/Segment;->data:[B

    iget v11, v2, Lokio/Segment;->pos:I

    int-to-long v11, v11

    add-long/2addr v11, v3

    sub-long/2addr v11, v7

    long-to-int v12, v11

    aget-byte v10, v10, v12

    return v10

    .line 1735
    .end local v2    # "s":Lokio/Segment;
    .end local v5    # "offset$iv":J
    .end local v7    # "offset":J
    .end local v9    # "$i$a$-seek--Buffer$commonGet$1":I
    :cond_2
    const-wide/16 v5, 0x0

    .line 1736
    .restart local v5    # "offset$iv":J
    :goto_1
    nop

    .line 1737
    iget v2, v1, Lokio/Segment;->limit:I

    iget v7, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v7

    int-to-long v7, v2

    add-long/2addr v7, v5

    .line 1738
    .local v7, "nextOffset$iv":J
    cmp-long v2, v7, v3

    if-gtz v2, :cond_3

    .line 1739
    iget-object v2, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v2

    .line 1740
    move-wide v5, v7

    .end local v7    # "nextOffset$iv":J
    goto :goto_1

    .line 1742
    :cond_3
    move-object v2, v1

    .restart local v2    # "s":Lokio/Segment;
    move-wide v7, v5

    .local v7, "offset":J
    const/4 v9, 0x0

    .line 414
    .restart local v9    # "$i$a$-seek--Buffer$commonGet$1":I
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v2, Lokio/Segment;->data:[B

    iget v11, v2, Lokio/Segment;->pos:I

    int-to-long v11, v11

    add-long/2addr v11, v3

    sub-long/2addr v11, v7

    long-to-int v12, v11

    aget-byte v10, v10, v12

    return v10
.end method

.method public static final commonHashCode(Lokio/Buffer;)I
    .locals 7
    .param p0, "$this$commonHashCode"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonHashCode"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1439
    .local v0, "$i$f$commonHashCode":I
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1440
    .local v1, "s":Lokio/Segment;
    :cond_0
    const/4 v2, 0x1

    .line 1442
    .local v2, "result":I
    :cond_1
    iget v3, v1, Lokio/Segment;->pos:I

    .line 1443
    .local v3, "pos":I
    iget v4, v1, Lokio/Segment;->limit:I

    .line 1444
    .local v4, "limit":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1445
    mul-int/lit8 v5, v2, 0x1f

    iget-object v6, v1, Lokio/Segment;->data:[B

    aget-byte v6, v6, v3

    add-int v2, v5, v6

    .line 1446
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1448
    :cond_2
    iget-object v5, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v5

    .line 1449
    .end local v3    # "pos":I
    .end local v4    # "limit":I
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v1, v3, :cond_1

    .line 1450
    return v2
.end method

.method public static final commonIndexOf(Lokio/Buffer;BJJ)J
    .locals 32
    .param p0, "$this$commonIndexOf"    # Lokio/Buffer;
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonIndexOf",
            "b",
            "fromIndex",
            "toIndex"
        }
    .end annotation

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    const-string v5, "<this>"

    move-object/from16 v6, p0

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1255
    .local v5, "$i$f$commonIndexOf":I
    nop

    .line 1256
    nop

    .line 1257
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v10, v7, v1

    if-gtz v10, :cond_0

    cmp-long v7, v1, v3

    if-gtz v7, :cond_0

    const/4 v9, 0x1

    :cond_0
    if-eqz v9, :cond_f

    .line 1259
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v7

    .end local p4    # "toIndex":J
    .local v7, "toIndex":J
    goto :goto_0

    .end local v7    # "toIndex":J
    .restart local p4    # "toIndex":J
    :cond_1
    move-wide v7, v3

    .line 1260
    .restart local v7    # "toIndex":J
    :goto_0
    const-wide/16 v9, -0x1

    cmp-long v11, v1, v7

    if-nez v11, :cond_2

    return-wide v9

    .line 1262
    :cond_2
    move-wide/from16 v11, p2

    .local v11, "fromIndex$iv":J
    move-object/from16 v13, p0

    .local v13, "$this$seek$iv":Lokio/Buffer;
    const/4 v14, 0x0

    .line 1756
    .local v14, "$i$f$seek":I
    iget-object v15, v13, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v15, :cond_3

    const/4 v15, 0x0

    .local v15, "s":Lokio/Segment;
    const-wide/16 v16, -0x1

    .local v16, "offset":J
    const/16 v18, 0x0

    .line 1263
    .local v18, "$i$a$-seek--Buffer$commonIndexOf$2":I
    return-wide v9

    .end local v15    # "s":Lokio/Segment;
    .end local v16    # "offset":J
    .end local v18    # "$i$a$-seek--Buffer$commonIndexOf$2":I
    :cond_3
    nop

    .line 1758
    .local v15, "s$iv":Lokio/Segment;
    invoke-virtual {v13}, Lokio/Buffer;->size()J

    move-result-wide v16

    sub-long v16, v16, v11

    cmp-long v18, v16, v11

    if-gez v18, :cond_9

    .line 1760
    invoke-virtual {v13}, Lokio/Buffer;->size()J

    move-result-wide v16

    .line 1761
    .local v16, "offset$iv":J
    :goto_1
    cmp-long v18, v16, v11

    if-lez v18, :cond_4

    .line 1762
    move-wide/from16 v18, v9

    iget-object v9, v15, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v9

    .line 1763
    iget v9, v15, Lokio/Segment;->limit:I

    iget v10, v15, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    sub-long v16, v16, v9

    move-wide/from16 v9, v18

    goto :goto_1

    .line 1765
    :cond_4
    move-wide/from16 v18, v9

    move-object v9, v15

    .local v9, "s":Lokio/Segment;
    move-wide/from16 v20, v16

    .local v20, "offset":J
    const/4 v10, 0x0

    .line 1263
    .local v10, "$i$a$-seek--Buffer$commonIndexOf$2":I
    if-nez v9, :cond_5

    return-wide v18

    :cond_5
    move-object/from16 v22, v9

    .line 1264
    .local v22, "s":Lokio/Segment;
    move-wide/from16 v23, v20

    move-wide/from16 v26, v1

    move/from16 v25, v5

    move-object/from16 v5, v22

    .line 1267
    .end local v22    # "s":Lokio/Segment;
    .local v5, "s":Lokio/Segment;
    .local v23, "offset":J
    .local v25, "$i$f$commonIndexOf":I
    .local v26, "fromIndex":J
    :goto_2
    cmp-long v22, v23, v7

    if-gez v22, :cond_8

    .line 1268
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 1269
    .local v6, "data":[B
    move-object/from16 v22, v6

    .end local v6    # "data":[B
    .local v22, "data":[B
    iget v6, v5, Lokio/Segment;->limit:I

    move-wide/from16 v28, v7

    .end local v7    # "toIndex":J
    .local v28, "toIndex":J
    int-to-long v6, v6

    iget v8, v5, Lokio/Segment;->pos:I

    move-object/from16 v30, v9

    .end local v9    # "s":Lokio/Segment;
    .local v30, "s":Lokio/Segment;
    int-to-long v8, v8

    add-long v8, v8, v28

    sub-long v8, v8, v23

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 1270
    .local v7, "limit":I
    iget v6, v5, Lokio/Segment;->pos:I

    int-to-long v8, v6

    add-long v8, v8, v26

    sub-long v8, v8, v23

    long-to-int v6, v8

    .line 1271
    .local v6, "pos":I
    :goto_3
    if-ge v6, v7, :cond_7

    .line 1272
    aget-byte v8, v22, v6

    if-ne v8, v0, :cond_6

    .line 1273
    iget v8, v5, Lokio/Segment;->pos:I

    sub-int v8, v6, v8

    int-to-long v8, v8

    add-long v8, v8, v23

    return-wide v8

    .line 1275
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1279
    :cond_7
    iget v8, v5, Lokio/Segment;->limit:I

    iget v9, v5, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long v23, v23, v8

    .line 1280
    move-wide/from16 v26, v23

    .line 1281
    iget-object v8, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v8

    move-object/from16 v6, p0

    move-wide/from16 v7, v28

    move-object/from16 v9, v30

    .end local v6    # "pos":I
    .end local v7    # "limit":I
    .end local v22    # "data":[B
    goto :goto_2

    .line 1284
    .end local v28    # "toIndex":J
    .end local v30    # "s":Lokio/Segment;
    .local v7, "toIndex":J
    .restart local v9    # "s":Lokio/Segment;
    :cond_8
    return-wide v18

    .line 1768
    .end local v9    # "s":Lokio/Segment;
    .end local v10    # "$i$a$-seek--Buffer$commonIndexOf$2":I
    .end local v16    # "offset$iv":J
    .end local v20    # "offset":J
    .end local v23    # "offset":J
    .end local v25    # "$i$f$commonIndexOf":I
    .end local v26    # "fromIndex":J
    .local v5, "$i$f$commonIndexOf":I
    :cond_9
    move/from16 v25, v5

    move-wide/from16 v28, v7

    move-wide/from16 v18, v9

    .end local v5    # "$i$f$commonIndexOf":I
    .end local v7    # "toIndex":J
    .restart local v25    # "$i$f$commonIndexOf":I
    .restart local v28    # "toIndex":J
    const-wide/16 v5, 0x0

    .line 1769
    .local v5, "offset$iv":J
    :goto_4
    nop

    .line 1770
    iget v7, v15, Lokio/Segment;->limit:I

    iget v8, v15, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v5

    .line 1771
    .local v7, "nextOffset$iv":J
    cmp-long v9, v7, v11

    if-gtz v9, :cond_a

    .line 1772
    iget-object v9, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v9

    .line 1773
    move-wide v5, v7

    .end local v7    # "nextOffset$iv":J
    goto :goto_4

    .line 1775
    :cond_a
    move-object v7, v15

    .local v7, "s":Lokio/Segment;
    move-wide v8, v5

    .local v8, "offset":J
    const/4 v10, 0x0

    .line 1263
    .restart local v10    # "$i$a$-seek--Buffer$commonIndexOf$2":I
    if-nez v7, :cond_b

    return-wide v18

    :cond_b
    move-object/from16 v16, v7

    .line 1264
    .local v16, "s":Lokio/Segment;
    move-wide/from16 v20, v8

    move-wide/from16 v22, v5

    move-object/from16 v5, v16

    move-wide/from16 v16, v1

    .line 1267
    .local v5, "s":Lokio/Segment;
    .local v16, "fromIndex":J
    .restart local v20    # "offset":J
    .local v22, "offset$iv":J
    :goto_5
    cmp-long v6, v20, v28

    if-gez v6, :cond_e

    .line 1268
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 1269
    .local v6, "data":[B
    move-object/from16 v24, v6

    .end local v6    # "data":[B
    .local v24, "data":[B
    iget v6, v5, Lokio/Segment;->limit:I

    move-object/from16 v26, v7

    .end local v7    # "s":Lokio/Segment;
    .local v26, "s":Lokio/Segment;
    int-to-long v6, v6

    move-wide/from16 v30, v8

    .end local v8    # "offset":J
    .local v30, "offset":J
    iget v8, v5, Lokio/Segment;->pos:I

    int-to-long v8, v8

    add-long v8, v8, v28

    sub-long v8, v8, v20

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 1270
    .local v7, "limit":I
    iget v6, v5, Lokio/Segment;->pos:I

    int-to-long v8, v6

    add-long v8, v8, v16

    sub-long v8, v8, v20

    long-to-int v6, v8

    .line 1271
    .local v6, "pos":I
    :goto_6
    if-ge v6, v7, :cond_d

    .line 1272
    aget-byte v8, v24, v6

    if-ne v8, v0, :cond_c

    .line 1273
    iget v8, v5, Lokio/Segment;->pos:I

    sub-int v8, v6, v8

    int-to-long v8, v8

    add-long v8, v8, v20

    return-wide v8

    .line 1275
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1279
    :cond_d
    iget v8, v5, Lokio/Segment;->limit:I

    iget v9, v5, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long v20, v20, v8

    .line 1280
    move-wide/from16 v16, v20

    .line 1281
    iget-object v8, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v8

    move-object/from16 v7, v26

    move-wide/from16 v8, v30

    .end local v6    # "pos":I
    .end local v7    # "limit":I
    .end local v24    # "data":[B
    goto :goto_5

    .line 1284
    .end local v26    # "s":Lokio/Segment;
    .end local v30    # "offset":J
    .local v7, "s":Lokio/Segment;
    .restart local v8    # "offset":J
    :cond_e
    return-wide v18

    .line 1744
    .end local v7    # "s":Lokio/Segment;
    .end local v8    # "offset":J
    .end local v10    # "$i$a$-seek--Buffer$commonIndexOf$2":I
    .end local v11    # "fromIndex$iv":J
    .end local v13    # "$this$seek$iv":Lokio/Buffer;
    .end local v14    # "$i$f$seek":I
    .end local v15    # "s$iv":Lokio/Segment;
    .end local v16    # "fromIndex":J
    .end local v20    # "offset":J
    .end local v22    # "offset$iv":J
    .end local v25    # "$i$f$commonIndexOf":I
    .end local v28    # "toIndex":J
    .local v5, "$i$f$commonIndexOf":I
    :cond_f
    move/from16 v25, v5

    .end local v5    # "$i$f$commonIndexOf":I
    .restart local v25    # "$i$f$commonIndexOf":I
    const/4 v5, 0x0

    .line 1257
    .local v5, "$i$a$-require--Buffer$commonIndexOf$1":I
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fromIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " toIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require--Buffer$commonIndexOf$1":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static final commonIndexOf(Lokio/Buffer;Lokio/ByteString;J)J
    .locals 34
    .param p0, "$this$commonIndexOf"    # Lokio/Buffer;
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonIndexOf",
            "bytes",
            "fromIndex"
        }
    .end annotation

    move-wide/from16 v0, p2

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bytes"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1289
    .local v2, "$i$f$commonIndexOf":I
    nop

    .line 1290
    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_10

    .line 1291
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_f

    .line 1293
    move-wide/from16 v8, p2

    .local v8, "fromIndex$iv":J
    move-object/from16 v5, p0

    .local v5, "$this$seek$iv":Lokio/Buffer;
    const/4 v10, 0x0

    .line 1776
    .local v10, "$i$f$seek":I
    iget-object v11, v5, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v12, -0x1

    if-nez v11, :cond_2

    const/4 v6, 0x0

    .local v6, "s":Lokio/Segment;
    const-wide/16 v14, -0x1

    .local v14, "offset":J
    const/4 v7, 0x0

    .line 1294
    .local v7, "$i$a$-seek--Buffer$commonIndexOf$5":I
    return-wide v12

    .end local v6    # "s":Lokio/Segment;
    .end local v7    # "$i$a$-seek--Buffer$commonIndexOf$5":I
    .end local v14    # "offset":J
    :cond_2
    nop

    .line 1778
    .local v11, "s$iv":Lokio/Segment;
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v8

    const-wide/16 v16, 0x1

    cmp-long v18, v14, v8

    if-gez v18, :cond_8

    .line 1780
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v14

    .line 1781
    .local v14, "offset$iv":J
    :goto_2
    cmp-long v18, v14, v8

    if-lez v18, :cond_3

    .line 1782
    const/16 v18, 0x0

    iget-object v6, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v6

    .line 1783
    iget v6, v11, Lokio/Segment;->limit:I

    move-wide/from16 v19, v12

    iget v12, v11, Lokio/Segment;->pos:I

    sub-int/2addr v6, v12

    int-to-long v12, v6

    sub-long/2addr v14, v12

    move-wide/from16 v12, v19

    goto :goto_2

    .line 1785
    :cond_3
    move-wide/from16 v19, v12

    const/16 v18, 0x0

    move-object v6, v11

    .restart local v6    # "s":Lokio/Segment;
    move-wide v12, v14

    .local v12, "offset":J
    const/16 v21, 0x0

    .line 1294
    .local v21, "$i$a$-seek--Buffer$commonIndexOf$5":I
    if-nez v6, :cond_4

    return-wide v19

    :cond_4
    move-object/from16 v22, v6

    .line 1295
    .local v22, "s":Lokio/Segment;
    move-wide/from16 v23, v12

    .line 1299
    .local v23, "offset":J
    invoke-virtual {v4}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v7

    .line 1300
    .local v7, "targetByteArray":[B
    move/from16 v25, v2

    .end local v2    # "$i$f$commonIndexOf":I
    .local v25, "$i$f$commonIndexOf":I
    aget-byte v2, v7, v18

    .line 1301
    .local v2, "b0":B
    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v3

    .line 1302
    .local v3, "bytesSize":I
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v26

    move-object/from16 v28, v5

    .end local v5    # "$this$seek$iv":Lokio/Buffer;
    .local v28, "$this$seek$iv":Lokio/Buffer;
    int-to-long v4, v3

    sub-long v26, v26, v4

    add-long v26, v26, v16

    move-wide/from16 v16, v0

    move-object/from16 v4, v22

    .line 1303
    .end local v22    # "s":Lokio/Segment;
    .local v4, "s":Lokio/Segment;
    .local v16, "fromIndex":J
    .local v26, "resultLimit":J
    :goto_3
    cmp-long v5, v23, v26

    if-gez v5, :cond_7

    .line 1305
    iget-object v5, v4, Lokio/Segment;->data:[B

    .line 1306
    .local v5, "data":[B
    move-object/from16 v18, v5

    .end local v5    # "data":[B
    .local v18, "data":[B
    iget v5, v4, Lokio/Segment;->limit:I

    move-object/from16 v22, v6

    .end local v6    # "s":Lokio/Segment;
    .local v5, "a$iv":I
    .restart local v22    # "s":Lokio/Segment;
    iget v6, v4, Lokio/Segment;->pos:I

    move-wide/from16 v29, v8

    .end local v8    # "fromIndex$iv":J
    .local v29, "fromIndex$iv":J
    int-to-long v8, v6

    add-long v8, v8, v26

    sub-long v8, v8, v23

    .local v8, "b$iv":J
    const/4 v6, 0x0

    .line 1777
    .local v6, "$i$f$minOf":I
    move/from16 v31, v10

    move-object/from16 v32, v11

    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv":Lokio/Segment;
    .local v31, "$i$f$seek":I
    .local v32, "s$iv":Lokio/Segment;
    int-to-long v10, v5

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 1306
    .end local v5    # "a$iv":I
    .end local v6    # "$i$f$minOf":I
    .end local v8    # "b$iv":J
    long-to-int v5, v10

    .line 1307
    .local v5, "segmentLimit":I
    iget v6, v4, Lokio/Segment;->pos:I

    int-to-long v8, v6

    add-long v8, v8, v16

    sub-long v8, v8, v23

    long-to-int v6, v8

    .local v6, "pos":I
    :goto_4
    if-ge v6, v5, :cond_6

    .line 1308
    aget-byte v8, v18, v6

    if-ne v8, v2, :cond_5

    add-int/lit8 v8, v6, 0x1

    const/4 v9, 0x1

    invoke-static {v4, v8, v7, v9, v3}, Lokio/internal/-Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1309
    iget v8, v4, Lokio/Segment;->pos:I

    sub-int v8, v6, v8

    int-to-long v8, v8

    add-long v8, v8, v23

    return-wide v8

    .line 1307
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1314
    .end local v6    # "pos":I
    :cond_6
    iget v6, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v6, v8

    int-to-long v8, v6

    add-long v23, v23, v8

    .line 1315
    move-wide/from16 v16, v23

    .line 1316
    iget-object v6, v4, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v6

    move-object/from16 v6, v22

    move-wide/from16 v8, v29

    move/from16 v10, v31

    move-object/from16 v11, v32

    .end local v5    # "segmentLimit":I
    .end local v18    # "data":[B
    goto :goto_3

    .line 1319
    .end local v22    # "s":Lokio/Segment;
    .end local v29    # "fromIndex$iv":J
    .end local v31    # "$i$f$seek":I
    .end local v32    # "s$iv":Lokio/Segment;
    .local v6, "s":Lokio/Segment;
    .local v8, "fromIndex$iv":J
    .restart local v10    # "$i$f$seek":I
    .restart local v11    # "s$iv":Lokio/Segment;
    :cond_7
    return-wide v19

    .line 1788
    .end local v3    # "bytesSize":I
    .end local v4    # "s":Lokio/Segment;
    .end local v6    # "s":Lokio/Segment;
    .end local v7    # "targetByteArray":[B
    .end local v12    # "offset":J
    .end local v14    # "offset$iv":J
    .end local v16    # "fromIndex":J
    .end local v21    # "$i$a$-seek--Buffer$commonIndexOf$5":I
    .end local v23    # "offset":J
    .end local v25    # "$i$f$commonIndexOf":I
    .end local v26    # "resultLimit":J
    .end local v28    # "$this$seek$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOf":I
    .local v5, "$this$seek$iv":Lokio/Buffer;
    :cond_8
    move/from16 v25, v2

    move-object/from16 v28, v5

    move-wide/from16 v29, v8

    move/from16 v31, v10

    move-wide/from16 v19, v12

    const/16 v18, 0x0

    .end local v2    # "$i$f$commonIndexOf":I
    .end local v5    # "$this$seek$iv":Lokio/Buffer;
    .end local v8    # "fromIndex$iv":J
    .end local v10    # "$i$f$seek":I
    .restart local v25    # "$i$f$commonIndexOf":I
    .restart local v28    # "$this$seek$iv":Lokio/Buffer;
    .restart local v29    # "fromIndex$iv":J
    .restart local v31    # "$i$f$seek":I
    const-wide/16 v2, 0x0

    .line 1789
    .local v2, "offset$iv":J
    :goto_5
    nop

    .line 1790
    iget v4, v11, Lokio/Segment;->limit:I

    iget v5, v11, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1791
    .local v4, "nextOffset$iv":J
    cmp-long v6, v4, v29

    if-gtz v6, :cond_9

    .line 1792
    iget-object v6, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v6

    .line 1793
    move-wide v2, v4

    .end local v4    # "nextOffset$iv":J
    goto :goto_5

    .line 1795
    :cond_9
    move-object v4, v11

    .local v4, "s":Lokio/Segment;
    move-wide v5, v2

    .local v5, "offset":J
    const/4 v7, 0x0

    .line 1294
    .local v7, "$i$a$-seek--Buffer$commonIndexOf$5":I
    if-nez v4, :cond_a

    return-wide v19

    :cond_a
    move-object v8, v4

    .line 1295
    .local v8, "s":Lokio/Segment;
    move-wide v9, v5

    .line 1299
    .local v9, "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v12

    .line 1300
    .local v12, "targetByteArray":[B
    aget-byte v13, v12, v18

    .line 1301
    .local v13, "b0":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v14

    .line 1302
    .local v14, "bytesSize":I
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v21

    move-wide/from16 v23, v2

    .end local v2    # "offset$iv":J
    .local v23, "offset$iv":J
    int-to-long v2, v14

    sub-long v21, v21, v2

    add-long v21, v21, v16

    move-wide v2, v0

    .line 1303
    .local v2, "fromIndex":J
    .local v21, "resultLimit":J
    :goto_6
    cmp-long v15, v9, v21

    if-gez v15, :cond_e

    .line 1305
    iget-object v15, v8, Lokio/Segment;->data:[B

    .line 1306
    .local v15, "data":[B
    move-wide/from16 v16, v2

    .end local v2    # "fromIndex":J
    .restart local v16    # "fromIndex":J
    iget v2, v8, Lokio/Segment;->limit:I

    .local v2, "a$iv":I
    iget v3, v8, Lokio/Segment;->pos:I

    move-object/from16 v18, v4

    .end local v4    # "s":Lokio/Segment;
    .local v18, "s":Lokio/Segment;
    int-to-long v3, v3

    add-long v3, v3, v21

    sub-long/2addr v3, v9

    .local v3, "b$iv":J
    const/16 v26, 0x0

    .line 1777
    .local v26, "$i$f$minOf":I
    move-wide/from16 v32, v5

    .end local v5    # "offset":J
    .local v32, "offset":J
    int-to-long v5, v2

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 1306
    .end local v2    # "a$iv":I
    .end local v3    # "b$iv":J
    .end local v26    # "$i$f$minOf":I
    long-to-int v2, v5

    .line 1307
    .local v2, "segmentLimit":I
    iget v3, v8, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long v3, v3, v16

    sub-long/2addr v3, v9

    long-to-int v4, v3

    .local v4, "pos":I
    :goto_7
    if-ge v4, v2, :cond_d

    .line 1308
    aget-byte v3, v15, v4

    if-ne v3, v13, :cond_b

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x1

    invoke-static {v8, v3, v12, v5, v14}, Lokio/internal/-Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1309
    iget v3, v8, Lokio/Segment;->pos:I

    sub-int v3, v4, v3

    int-to-long v5, v3

    add-long/2addr v5, v9

    return-wide v5

    .line 1308
    :cond_b
    const/4 v5, 0x1

    .line 1307
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x1

    .line 1314
    .end local v4    # "pos":I
    iget v3, v8, Lokio/Segment;->limit:I

    iget v4, v8, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v9, v3

    .line 1315
    move-wide v3, v9

    .line 1316
    .end local v16    # "fromIndex":J
    .local v3, "fromIndex":J
    iget-object v6, v8, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v6

    move-wide v2, v3

    move-object/from16 v4, v18

    move-wide/from16 v5, v32

    .end local v2    # "segmentLimit":I
    .end local v15    # "data":[B
    goto :goto_6

    .line 1319
    .end local v3    # "fromIndex":J
    .end local v18    # "s":Lokio/Segment;
    .end local v32    # "offset":J
    .local v2, "fromIndex":J
    .local v4, "s":Lokio/Segment;
    .restart local v5    # "offset":J
    :cond_e
    return-wide v19

    .line 1744
    .end local v4    # "s":Lokio/Segment;
    .end local v5    # "offset":J
    .end local v7    # "$i$a$-seek--Buffer$commonIndexOf$5":I
    .end local v8    # "s":Lokio/Segment;
    .end local v9    # "offset":J
    .end local v11    # "s$iv":Lokio/Segment;
    .end local v12    # "targetByteArray":[B
    .end local v13    # "b0":B
    .end local v14    # "bytesSize":I
    .end local v21    # "resultLimit":J
    .end local v23    # "offset$iv":J
    .end local v25    # "$i$f$commonIndexOf":I
    .end local v28    # "$this$seek$iv":Lokio/Buffer;
    .end local v29    # "fromIndex$iv":J
    .end local v31    # "$i$f$seek":I
    .local v2, "$i$f$commonIndexOf":I
    :cond_f
    move/from16 v25, v2

    .end local v2    # "$i$f$commonIndexOf":I
    .restart local v25    # "$i$f$commonIndexOf":I
    const/4 v2, 0x0

    .line 1291
    .local v2, "$i$a$-require--Buffer$commonIndexOf$4":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromIndex < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require--Buffer$commonIndexOf$4":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1744
    .end local v25    # "$i$f$commonIndexOf":I
    .local v2, "$i$f$commonIndexOf":I
    :cond_10
    move/from16 v25, v2

    .end local v2    # "$i$f$commonIndexOf":I
    .restart local v25    # "$i$f$commonIndexOf":I
    const/4 v2, 0x0

    .line 1290
    .local v2, "$i$a$-require--Buffer$commonIndexOf$3":I
    nop

    .end local v2    # "$i$a$-require--Buffer$commonIndexOf$3":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bytes is empty"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonIndexOfElement(Lokio/Buffer;Lokio/ByteString;J)J
    .locals 32
    .param p0, "$this$commonIndexOfElement"    # Lokio/Buffer;
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonIndexOfElement",
            "targetBytes",
            "fromIndex"
        }
    .end annotation

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    const-string v3, "<this>"

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "targetBytes"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1324
    .local v3, "$i$f$commonIndexOfElement":I
    nop

    .line 1325
    const-wide/16 v5, 0x0

    cmp-long v9, v1, v5

    if-ltz v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_19

    .line 1327
    move-wide/from16 v5, p2

    .local v5, "fromIndex$iv":J
    move-object/from16 v9, p0

    .local v9, "$this$seek$iv":Lokio/Buffer;
    const/4 v10, 0x0

    .line 1796
    .local v10, "$i$f$seek":I
    iget-object v11, v9, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v12, -0x1

    if-nez v11, :cond_1

    const/4 v7, 0x0

    .local v7, "s":Lokio/Segment;
    const-wide/16 v14, -0x1

    .local v14, "offset":J
    const/4 v8, 0x0

    .line 1328
    .local v8, "$i$a$-seek--Buffer$commonIndexOfElement$2":I
    return-wide v12

    .end local v7    # "s":Lokio/Segment;
    .end local v8    # "$i$a$-seek--Buffer$commonIndexOfElement$2":I
    .end local v14    # "offset":J
    :cond_1
    nop

    .line 1798
    .local v11, "s$iv":Lokio/Segment;
    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v5

    move-wide/from16 v16, v12

    const/4 v12, 0x2

    cmp-long v13, v14, v5

    if-gez v13, :cond_d

    .line 1800
    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v13

    .line 1801
    .local v13, "offset$iv":J
    :goto_1
    cmp-long v15, v13, v5

    if-lez v15, :cond_2

    .line 1802
    iget-object v15, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v15

    .line 1803
    iget v15, v11, Lokio/Segment;->limit:I

    iget v8, v11, Lokio/Segment;->pos:I

    sub-int/2addr v15, v8

    int-to-long v7, v15

    sub-long/2addr v13, v7

    goto :goto_1

    .line 1805
    :cond_2
    move-object v7, v11

    .restart local v7    # "s":Lokio/Segment;
    move-wide/from16 v20, v13

    .local v20, "offset":J
    const/4 v8, 0x0

    .line 1328
    .restart local v8    # "$i$a$-seek--Buffer$commonIndexOfElement$2":I
    if-nez v7, :cond_3

    return-wide v16

    :cond_3
    move-object v15, v7

    .line 1329
    .local v15, "s":Lokio/Segment;
    move-wide/from16 v22, v20

    .line 1334
    .local v22, "offset":J
    move/from16 v24, v3

    .end local v3    # "$i$f$commonIndexOfElement":I
    .local v24, "$i$f$commonIndexOfElement":I
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v3, v12, :cond_8

    .line 1336
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    .line 1337
    .local v3, "b0":B
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lokio/ByteString;->getByte(I)B

    move-result v12

    move-wide/from16 v18, v1

    .line 1338
    .local v12, "b1":B
    .local v18, "fromIndex":J
    :goto_2
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v25

    cmp-long v27, v22, v25

    if-gez v27, :cond_7

    .line 1339
    iget-object v4, v15, Lokio/Segment;->data:[B

    .line 1340
    .local v4, "data":[B
    move-object/from16 v25, v4

    .end local v4    # "data":[B
    .local v25, "data":[B
    iget v4, v15, Lokio/Segment;->pos:I

    move-wide/from16 v26, v5

    .end local v5    # "fromIndex$iv":J
    .local v26, "fromIndex$iv":J
    int-to-long v4, v4

    add-long v4, v4, v18

    sub-long v4, v4, v22

    long-to-int v5, v4

    .line 1341
    .local v5, "pos":I
    iget v4, v15, Lokio/Segment;->limit:I

    .line 1342
    .local v4, "limit":I
    :goto_3
    if-ge v5, v4, :cond_6

    .line 1343
    aget-byte v6, v25, v5

    .line 1344
    .local v6, "b":I
    if-eq v6, v3, :cond_5

    if-ne v6, v12, :cond_4

    goto :goto_4

    .line 1347
    :cond_4
    nop

    .end local v6    # "b":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1345
    .restart local v6    # "b":I
    :cond_5
    :goto_4
    move/from16 v28, v3

    .end local v3    # "b0":B
    .local v28, "b0":B
    iget v3, v15, Lokio/Segment;->pos:I

    sub-int v3, v5, v3

    move/from16 v29, v4

    .end local v4    # "limit":I
    .local v29, "limit":I
    int-to-long v3, v3

    add-long v3, v3, v22

    return-wide v3

    .line 1351
    .end local v6    # "b":I
    .end local v28    # "b0":B
    .end local v29    # "limit":I
    .restart local v3    # "b0":B
    .restart local v4    # "limit":I
    :cond_6
    move/from16 v28, v3

    move/from16 v29, v4

    .end local v3    # "b0":B
    .end local v4    # "limit":I
    .restart local v28    # "b0":B
    .restart local v29    # "limit":I
    iget v3, v15, Lokio/Segment;->limit:I

    iget v4, v15, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long v22, v22, v3

    .line 1352
    move-wide/from16 v18, v22

    .line 1353
    iget-object v3, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v3

    move-object/from16 v4, p0

    move-wide/from16 v5, v26

    move/from16 v3, v28

    .end local v5    # "pos":I
    .end local v25    # "data":[B
    .end local v29    # "limit":I
    goto :goto_2

    .line 1338
    .end local v26    # "fromIndex$iv":J
    .end local v28    # "b0":B
    .restart local v3    # "b0":B
    .local v5, "fromIndex$iv":J
    :cond_7
    move/from16 v28, v3

    move-wide/from16 v26, v5

    .end local v3    # "b0":B
    .end local v5    # "fromIndex$iv":J
    .restart local v26    # "fromIndex$iv":J
    .restart local v28    # "b0":B
    goto/16 :goto_8

    .line 1357
    .end local v12    # "b1":B
    .end local v18    # "fromIndex":J
    .end local v26    # "fromIndex$iv":J
    .end local v28    # "b0":B
    .restart local v5    # "fromIndex$iv":J
    :cond_8
    move-wide/from16 v26, v5

    .end local v5    # "fromIndex$iv":J
    .restart local v26    # "fromIndex$iv":J
    invoke-virtual {v0}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v3

    move-wide v4, v1

    .line 1358
    .local v3, "targetByteArray":[B
    .local v4, "fromIndex":J
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v28

    cmp-long v6, v22, v28

    if-gez v6, :cond_c

    .line 1359
    iget-object v6, v15, Lokio/Segment;->data:[B

    .line 1360
    .local v6, "data":[B
    iget v12, v15, Lokio/Segment;->pos:I

    move-wide/from16 v28, v4

    .end local v4    # "fromIndex":J
    .local v28, "fromIndex":J
    int-to-long v4, v12

    add-long v4, v4, v28

    sub-long v4, v4, v22

    long-to-int v5, v4

    .line 1361
    .local v5, "pos":I
    iget v4, v15, Lokio/Segment;->limit:I

    .line 1362
    .local v4, "limit":I
    :goto_6
    if-ge v5, v4, :cond_b

    .line 1363
    aget-byte v12, v6, v5

    .line 1364
    .local v12, "b":I
    move/from16 v18, v4

    .end local v4    # "limit":I
    .local v18, "limit":I
    array-length v4, v3

    move-object/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "targetByteArray":[B
    .local v25, "targetByteArray":[B
    :goto_7
    if-ge v3, v4, :cond_a

    move/from16 v30, v3

    aget-byte v3, v25, v30

    .line 1365
    .local v3, "t":B
    if-ne v12, v3, :cond_9

    iget v4, v15, Lokio/Segment;->pos:I

    sub-int v4, v5, v4

    move/from16 v31, v3

    .end local v3    # "t":B
    .local v31, "t":B
    int-to-long v3, v4

    add-long v3, v3, v22

    return-wide v3

    .end local v31    # "t":B
    .restart local v3    # "t":B
    :cond_9
    move/from16 v31, v3

    .line 1364
    .end local v3    # "t":B
    add-int/lit8 v3, v30, 0x1

    goto :goto_7

    .line 1367
    :cond_a
    nop

    .end local v12    # "b":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v18

    move-object/from16 v3, v25

    goto :goto_6

    .line 1371
    .end local v18    # "limit":I
    .end local v25    # "targetByteArray":[B
    .local v3, "targetByteArray":[B
    .restart local v4    # "limit":I
    :cond_b
    move-object/from16 v25, v3

    move/from16 v18, v4

    .end local v3    # "targetByteArray":[B
    .end local v4    # "limit":I
    .restart local v18    # "limit":I
    .restart local v25    # "targetByteArray":[B
    iget v3, v15, Lokio/Segment;->limit:I

    iget v4, v15, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long v22, v22, v3

    .line 1372
    move-wide/from16 v3, v22

    .line 1373
    .end local v28    # "fromIndex":J
    .local v3, "fromIndex":J
    iget-object v12, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v12

    move-wide v4, v3

    move-object/from16 v3, v25

    .end local v5    # "pos":I
    .end local v6    # "data":[B
    .end local v18    # "limit":I
    goto :goto_5

    .line 1358
    .end local v25    # "targetByteArray":[B
    .local v3, "targetByteArray":[B
    .local v4, "fromIndex":J
    :cond_c
    move-object/from16 v25, v3

    move-wide/from16 v28, v4

    .end local v3    # "targetByteArray":[B
    .end local v4    # "fromIndex":J
    .restart local v25    # "targetByteArray":[B
    .restart local v28    # "fromIndex":J
    move-wide/from16 v18, v28

    .line 1377
    .end local v25    # "targetByteArray":[B
    .end local v28    # "fromIndex":J
    .local v18, "fromIndex":J
    :goto_8
    return-wide v16

    .line 1808
    .end local v7    # "s":Lokio/Segment;
    .end local v8    # "$i$a$-seek--Buffer$commonIndexOfElement$2":I
    .end local v13    # "offset$iv":J
    .end local v15    # "s":Lokio/Segment;
    .end local v18    # "fromIndex":J
    .end local v20    # "offset":J
    .end local v22    # "offset":J
    .end local v24    # "$i$f$commonIndexOfElement":I
    .end local v26    # "fromIndex$iv":J
    .local v3, "$i$f$commonIndexOfElement":I
    .local v5, "fromIndex$iv":J
    :cond_d
    move/from16 v24, v3

    move-wide/from16 v26, v5

    .end local v3    # "$i$f$commonIndexOfElement":I
    .end local v5    # "fromIndex$iv":J
    .restart local v24    # "$i$f$commonIndexOfElement":I
    .restart local v26    # "fromIndex$iv":J
    const-wide/16 v3, 0x0

    .line 1809
    .local v3, "offset$iv":J
    :goto_9
    nop

    .line 1810
    iget v5, v11, Lokio/Segment;->limit:I

    iget v6, v11, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 1811
    .local v5, "nextOffset$iv":J
    cmp-long v7, v5, v26

    if-gtz v7, :cond_e

    .line 1812
    iget-object v7, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v7

    .line 1813
    move-wide v3, v5

    .end local v5    # "nextOffset$iv":J
    goto :goto_9

    .line 1815
    :cond_e
    move-object v5, v11

    .local v5, "s":Lokio/Segment;
    move-wide v6, v3

    .local v6, "offset":J
    const/4 v8, 0x0

    .line 1328
    .restart local v8    # "$i$a$-seek--Buffer$commonIndexOfElement$2":I
    if-nez v5, :cond_f

    return-wide v16

    :cond_f
    move-object v13, v5

    .line 1329
    .local v13, "s":Lokio/Segment;
    move-wide v14, v6

    .line 1334
    .restart local v14    # "offset":J
    move-wide/from16 v20, v3

    .end local v3    # "offset$iv":J
    .local v20, "offset$iv":J
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v3, v12, :cond_14

    .line 1336
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    .line 1337
    .local v3, "b0":B
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lokio/ByteString;->getByte(I)B

    move-result v4

    move-wide/from16 v18, v1

    .line 1338
    .local v4, "b1":B
    .restart local v18    # "fromIndex":J
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v22

    cmp-long v12, v14, v22

    if-gez v12, :cond_13

    .line 1339
    iget-object v12, v13, Lokio/Segment;->data:[B

    .line 1340
    .local v12, "data":[B
    iget v0, v13, Lokio/Segment;->pos:I

    move-wide/from16 v22, v6

    move-object v7, v5

    .end local v5    # "s":Lokio/Segment;
    .end local v6    # "offset":J
    .restart local v7    # "s":Lokio/Segment;
    .restart local v22    # "offset":J
    int-to-long v5, v0

    add-long v5, v5, v18

    sub-long/2addr v5, v14

    long-to-int v0, v5

    .line 1341
    .local v0, "pos":I
    iget v5, v13, Lokio/Segment;->limit:I

    .line 1342
    .local v5, "limit":I
    :goto_b
    if-ge v0, v5, :cond_12

    .line 1343
    aget-byte v6, v12, v0

    .line 1344
    .local v6, "b":I
    if-eq v6, v3, :cond_11

    if-ne v6, v4, :cond_10

    goto :goto_c

    .line 1347
    :cond_10
    nop

    .end local v6    # "b":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1345
    .restart local v6    # "b":I
    :cond_11
    :goto_c
    move/from16 v25, v0

    .end local v0    # "pos":I
    .local v25, "pos":I
    iget v0, v13, Lokio/Segment;->pos:I

    sub-int v0, v25, v0

    move/from16 v28, v3

    move/from16 v29, v4

    .end local v3    # "b0":B
    .end local v4    # "b1":B
    .local v28, "b0":B
    .local v29, "b1":B
    int-to-long v3, v0

    add-long/2addr v3, v14

    return-wide v3

    .line 1351
    .end local v6    # "b":I
    .end local v25    # "pos":I
    .end local v28    # "b0":B
    .end local v29    # "b1":B
    .restart local v0    # "pos":I
    .restart local v3    # "b0":B
    .restart local v4    # "b1":B
    :cond_12
    move/from16 v25, v0

    move/from16 v28, v3

    move/from16 v29, v4

    .end local v0    # "pos":I
    .end local v3    # "b0":B
    .end local v4    # "b1":B
    .restart local v25    # "pos":I
    .restart local v28    # "b0":B
    .restart local v29    # "b1":B
    iget v0, v13, Lokio/Segment;->limit:I

    iget v3, v13, Lokio/Segment;->pos:I

    sub-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v14, v3

    .line 1352
    move-wide/from16 v18, v14

    .line 1353
    iget-object v0, v13, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v0

    move-object/from16 v0, p1

    move-object v5, v7

    move-wide/from16 v6, v22

    move/from16 v3, v28

    move/from16 v4, v29

    .end local v5    # "limit":I
    .end local v12    # "data":[B
    .end local v25    # "pos":I
    goto :goto_a

    .line 1338
    .end local v7    # "s":Lokio/Segment;
    .end local v22    # "offset":J
    .end local v28    # "b0":B
    .end local v29    # "b1":B
    .restart local v3    # "b0":B
    .restart local v4    # "b1":B
    .local v5, "s":Lokio/Segment;
    .local v6, "offset":J
    :cond_13
    move/from16 v28, v3

    move/from16 v29, v4

    move-wide/from16 v22, v6

    move-object v7, v5

    .end local v3    # "b0":B
    .end local v4    # "b1":B
    .end local v5    # "s":Lokio/Segment;
    .end local v6    # "offset":J
    .restart local v7    # "s":Lokio/Segment;
    .restart local v22    # "offset":J
    .restart local v28    # "b0":B
    .restart local v29    # "b1":B
    goto :goto_10

    .line 1357
    .end local v7    # "s":Lokio/Segment;
    .end local v18    # "fromIndex":J
    .end local v22    # "offset":J
    .end local v28    # "b0":B
    .end local v29    # "b1":B
    .restart local v5    # "s":Lokio/Segment;
    .restart local v6    # "offset":J
    :cond_14
    move-wide/from16 v22, v6

    const/4 v3, 0x0

    move-object v7, v5

    .end local v5    # "s":Lokio/Segment;
    .end local v6    # "offset":J
    .restart local v7    # "s":Lokio/Segment;
    .restart local v22    # "offset":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v0

    move-wide/from16 v18, v1

    .line 1358
    .local v0, "targetByteArray":[B
    .restart local v18    # "fromIndex":J
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v6, v14, v4

    if-gez v6, :cond_18

    .line 1359
    iget-object v4, v13, Lokio/Segment;->data:[B

    .line 1360
    .local v4, "data":[B
    iget v5, v13, Lokio/Segment;->pos:I

    int-to-long v5, v5

    add-long v5, v5, v18

    sub-long/2addr v5, v14

    long-to-int v6, v5

    .line 1361
    .local v6, "pos":I
    iget v5, v13, Lokio/Segment;->limit:I

    .line 1362
    .local v5, "limit":I
    :goto_e
    if-ge v6, v5, :cond_17

    .line 1363
    aget-byte v12, v4, v6

    .line 1364
    .local v12, "b":I
    array-length v3, v0

    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "targetByteArray":[B
    .local v28, "targetByteArray":[B
    :goto_f
    if-ge v0, v3, :cond_16

    move/from16 v29, v0

    aget-byte v0, v28, v29

    .line 1365
    .local v0, "t":B
    if-ne v12, v0, :cond_15

    iget v3, v13, Lokio/Segment;->pos:I

    sub-int v3, v6, v3

    move-object/from16 v30, v4

    .end local v4    # "data":[B
    .local v30, "data":[B
    int-to-long v3, v3

    add-long/2addr v3, v14

    return-wide v3

    .end local v30    # "data":[B
    .restart local v4    # "data":[B
    :cond_15
    move-object/from16 v30, v4

    .line 1364
    .end local v0    # "t":B
    .end local v4    # "data":[B
    .restart local v30    # "data":[B
    add-int/lit8 v0, v29, 0x1

    goto :goto_f

    .line 1367
    .end local v30    # "data":[B
    .restart local v4    # "data":[B
    :cond_16
    move-object/from16 v30, v4

    .end local v4    # "data":[B
    .end local v12    # "b":I
    .restart local v30    # "data":[B
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v28

    const/4 v3, 0x0

    goto :goto_e

    .line 1371
    .end local v28    # "targetByteArray":[B
    .end local v30    # "data":[B
    .local v0, "targetByteArray":[B
    .restart local v4    # "data":[B
    :cond_17
    move-object/from16 v28, v0

    move-object/from16 v30, v4

    .end local v0    # "targetByteArray":[B
    .end local v4    # "data":[B
    .restart local v28    # "targetByteArray":[B
    .restart local v30    # "data":[B
    iget v0, v13, Lokio/Segment;->limit:I

    iget v3, v13, Lokio/Segment;->pos:I

    sub-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v14, v3

    .line 1372
    move-wide/from16 v18, v14

    .line 1373
    iget-object v0, v13, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v0

    move-object/from16 v0, v28

    const/4 v3, 0x0

    .end local v5    # "limit":I
    .end local v6    # "pos":I
    .end local v30    # "data":[B
    goto :goto_d

    .line 1358
    .end local v28    # "targetByteArray":[B
    .restart local v0    # "targetByteArray":[B
    :cond_18
    move-object/from16 v28, v0

    .line 1377
    .end local v0    # "targetByteArray":[B
    :goto_10
    return-wide v16

    .line 1744
    .end local v7    # "s":Lokio/Segment;
    .end local v8    # "$i$a$-seek--Buffer$commonIndexOfElement$2":I
    .end local v9    # "$this$seek$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv":Lokio/Segment;
    .end local v13    # "s":Lokio/Segment;
    .end local v14    # "offset":J
    .end local v18    # "fromIndex":J
    .end local v20    # "offset$iv":J
    .end local v22    # "offset":J
    .end local v24    # "$i$f$commonIndexOfElement":I
    .end local v26    # "fromIndex$iv":J
    .local v3, "$i$f$commonIndexOfElement":I
    :cond_19
    move/from16 v24, v3

    .end local v3    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$i$f$commonIndexOfElement":I
    const/4 v0, 0x0

    .line 1325
    .local v0, "$i$a$-require--Buffer$commonIndexOfElement$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromIndex < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require--Buffer$commonIndexOfElement$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final commonNext(Lokio/Buffer$UnsafeCursor;)I
    .locals 6
    .param p0, "$this$commonNext"    # Lokio/Buffer$UnsafeCursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonNext"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1537
    .local v0, "$i$f$commonNext":I
    iget-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v3, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1538
    iget-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v4, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_1
    invoke-virtual {p0, v1, v2}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v1

    return v1

    .line 1744
    :cond_2
    const/4 v1, 0x0

    .line 1537
    .local v1, "$i$a$-check--Buffer$commonNext$1":I
    nop

    .end local v1    # "$i$a$-check--Buffer$commonNext$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no more bytes"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonRangeEquals(Lokio/Buffer;JLokio/ByteString;II)Z
    .locals 7
    .param p0, "$this$commonRangeEquals"    # Lokio/Buffer;
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonRangeEquals",
            "offset",
            "bytes",
            "bytesOffset",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1387
    .local v0, "$i$f$commonRangeEquals":I
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-ltz v4, :cond_3

    .line 1388
    if-ltz p4, :cond_3

    .line 1389
    if-ltz p5, :cond_3

    .line 1390
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    sub-long/2addr v1, p1

    int-to-long v4, p5

    cmp-long v6, v1, v4

    if-ltz v6, :cond_3

    .line 1391
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_1

    .line 1395
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_2

    .line 1396
    int-to-long v4, v1

    add-long/2addr v4, p1

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v4, p4, v1

    invoke-virtual {p3, v4}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v2, v4, :cond_1

    .line 1397
    return v3

    .line 1395
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1400
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1393
    :cond_3
    :goto_1
    return v3
.end method

.method public static final commonRead(Lokio/Buffer;[B)I
    .locals 3
    .param p0, "$this$commonRead"    # Lokio/Buffer;
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonRead",
            "sink"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 614
    .local v0, "$i$f$commonRead":I
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lokio/Buffer;->read([BII)I

    move-result v1

    return v1
.end method

.method public static final commonRead(Lokio/Buffer;[BII)I
    .locals 8
    .param p0, "$this$commonRead"    # Lokio/Buffer;
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonRead",
            "sink",
            "offset",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 626
    .local v0, "$i$f$commonRead":I
    array-length v1, p1

    int-to-long v2, v1

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v2 .. v7}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 628
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 629
    .local v1, "s":Lokio/Segment;
    :cond_0
    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 630
    .local v2, "toCopy":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    .line 631
    nop

    .line 632
    nop

    .line 633
    iget v4, v1, Lokio/Segment;->pos:I

    .line 634
    iget v5, v1, Lokio/Segment;->pos:I

    add-int/2addr v5, v2

    .line 630
    invoke-static {v3, p1, p2, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 637
    iget v3, v1, Lokio/Segment;->pos:I

    add-int/2addr v3, v2

    iput v3, v1, Lokio/Segment;->pos:I

    .line 638
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 640
    iget v3, v1, Lokio/Segment;->pos:I

    iget v4, v1, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_1

    .line 641
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 642
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 645
    :cond_1
    return v2
.end method

.method public static final commonRead(Lokio/Buffer;Lokio/Buffer;J)J
    .locals 6
    .param p0, "$this$commonRead"    # Lokio/Buffer;
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonRead",
            "sink",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1246
    .local v0, "$i$f$commonRead":I
    nop

    .line 1247
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 1248
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    const-wide/16 v1, -0x1

    return-wide v1

    .line 1249
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, p2, v1

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    .end local p2    # "byteCount":J
    .local v1, "byteCount":J
    goto :goto_1

    .end local v1    # "byteCount":J
    .restart local p2    # "byteCount":J
    :cond_2
    move-wide v1, p2

    .line 1250
    .restart local v1    # "byteCount":J
    :goto_1
    invoke-virtual {p1, p0, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1251
    return-wide v1

    .line 1744
    .end local v1    # "byteCount":J
    :cond_3
    const/4 v1, 0x0

    .line 1247
    .local v1, "$i$a$-require--Buffer$commonRead$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--Buffer$commonRead$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonReadAll(Lokio/Buffer;Lokio/Sink;)J
    .locals 6
    .param p0, "$this$commonReadAll"    # Lokio/Buffer;
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonReadAll",
            "sink"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 805
    .local v0, "$i$f$commonReadAll":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 806
    .local v1, "byteCount":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 807
    invoke-interface {p1, p0, v1, v2}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 809
    :cond_0
    return-wide v1
.end method

.method public static final commonReadAndWriteUnsafe(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 3
    .param p0, "$this$commonReadAndWriteUnsafe"    # Lokio/Buffer;
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonReadAndWriteUnsafe",
            "unsafeCursor"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1528
    invoke-static {p1}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    .line 1529
    .local v0, "unsafeCursor":Lokio/Buffer$UnsafeCursor;
    iget-object v1, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1531
    iput-object p0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1532
    iput-boolean v2, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1533
    return-object v0

    .line 1744
    :cond_1
    const/4 v1, 0x0

    .line 1529
    .local v1, "$i$a$-check--Buffer$commonReadAndWriteUnsafe$1":I
    nop

    .end local v1    # "$i$a$-check--Buffer$commonReadAndWriteUnsafe$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonReadByte(Lokio/Buffer;)B
    .locals 10
    .param p0, "$this$commonReadByte"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonReadByte"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 290
    .local v0, "$i$f$commonReadByte":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 292
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 293
    .local v1, "segment":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    .line 294
    .local v2, "pos":I
    iget v3, v1, Lokio/Segment;->limit:I

    .line 296
    .local v3, "limit":I
    iget-object v4, v1, Lokio/Segment;->data:[B

    .line 297
    .local v4, "data":[B
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "pos":I
    .local v5, "pos":I
    aget-byte v2, v4, v2

    .line 298
    .local v2, "b":B
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 300
    if-ne v5, v3, :cond_0

    .line 301
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 302
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 304
    :cond_0
    iput v5, v1, Lokio/Segment;->pos:I

    .line 307
    :goto_0
    return v2

    .line 290
    .end local v1    # "segment":Lokio/Segment;
    .end local v2    # "b":B
    .end local v3    # "limit":I
    .end local v4    # "data":[B
    .end local v5    # "pos":I
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadByteArray(Lokio/Buffer;)[B
    .locals 3
    .param p0, "$this$commonReadByteArray"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonReadByteArray"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 603
    .local v0, "$i$f$commonReadByteArray":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadByteArray(Lokio/Buffer;J)[B
    .locals 4
    .param p0, "$this$commonReadByteArray"    # Lokio/Buffer;
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonReadByteArray",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 606
    .local v0, "$i$f$commonReadByteArray":I
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 607
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_1

    .line 609
    long-to-int v1, p1

    new-array v1, v1, [B

    .line 610
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Lokio/Buffer;->readFully([B)V

    .line 611
    return-object v1

    .line 607
    .end local v1    # "result":[B
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 1744
    :cond_2
    const/4 v1, 0x0

    .line 606
    .local v1, "$i$a$-require--Buffer$commonReadByteArray$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--Buffer$commonReadByteArray$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonReadByteString(Lokio/Buffer;)Lokio/ByteString;
    .locals 3
    .param p0, "$this$commonReadByteString"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonReadByteString"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 773
    .local v0, "$i$f$commonReadByteString":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public static final commonReadByteString(Lokio/Buffer;J)Lokio/ByteString;
    .locals 4
    .param p0, "$this$commonReadByteString"    # Lokio/Buffer;
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonReadByteString",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 776
    .local v0, "$i$f$commonReadByteString":I
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 777
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-ltz v3, :cond_2

    .line 779
    const-wide/16 v1, 0x1000

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    .line 780
    long-to-int v1, p1

    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v1

    move-object v2, v1

    .line 1744
    .local v2, "it":Lokio/ByteString;
    const/4 v3, 0x0

    .line 780
    .local v3, "$i$a$-also--Buffer$commonReadByteString$2":I
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->skip(J)V

    .end local v2    # "it":Lokio/ByteString;
    .end local v3    # "$i$a$-also--Buffer$commonReadByteString$2":I
    return-object v1

    .line 782
    :cond_1
    new-instance v1, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1

    .line 777
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 1744
    :cond_3
    const/4 v1, 0x0

    .line 776
    .local v1, "$i$a$-require--Buffer$commonReadByteString$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--Buffer$commonReadByteString$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonReadDecimalLong(Lokio/Buffer;)J
    .locals 22
    .param p0, "$this$commonReadDecimalLong"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonReadDecimalLong"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 652
    .local v1, "$i$f$commonReadDecimalLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_f

    .line 655
    const-wide/16 v2, 0x0

    .line 656
    .local v2, "value":J
    const/4 v6, 0x0

    .line 657
    .local v6, "seen":I
    const/4 v7, 0x0

    .line 658
    .local v7, "negative":Z
    const/4 v8, 0x0

    .line 660
    .local v8, "done":Z
    const-wide/16 v9, -0x7

    .line 663
    .local v9, "overflowDigit":J
    :goto_0
    iget-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 665
    .local v11, "segment":Lokio/Segment;
    iget-object v12, v11, Lokio/Segment;->data:[B

    .line 666
    .local v12, "data":[B
    iget v13, v11, Lokio/Segment;->pos:I

    .line 667
    .local v13, "pos":I
    iget v14, v11, Lokio/Segment;->limit:I

    .line 669
    .local v14, "limit":I
    :goto_1
    if-ge v13, v14, :cond_6

    .line 670
    aget-byte v15, v12, v13

    .line 671
    .local v15, "b":B
    move-wide/from16 v16, v4

    const/16 v4, 0x30

    if-lt v15, v4, :cond_4

    const/16 v4, 0x39

    if-gt v15, v4, :cond_4

    .line 672
    rsub-int/lit8 v4, v15, 0x30

    .line 675
    .local v4, "digit":I
    const-wide v18, -0xcccccccccccccccL

    cmp-long v5, v2, v18

    if-ltz v5, :cond_2

    cmp-long v5, v2, v18

    if-nez v5, :cond_0

    move/from16 v18, v7

    move v5, v8

    .end local v7    # "negative":Z
    .end local v8    # "done":Z
    .local v5, "done":Z
    .local v18, "negative":Z
    int-to-long v7, v4

    cmp-long v19, v7, v9

    if-gez v19, :cond_1

    goto :goto_2

    .end local v5    # "done":Z
    .end local v18    # "negative":Z
    .restart local v7    # "negative":Z
    .restart local v8    # "done":Z
    :cond_0
    move/from16 v18, v7

    move v5, v8

    .line 680
    .end local v7    # "negative":Z
    .end local v8    # "done":Z
    .restart local v5    # "done":Z
    .restart local v18    # "negative":Z
    :cond_1
    const-wide/16 v7, 0xa

    mul-long v2, v2, v7

    .line 681
    int-to-long v7, v4

    add-long/2addr v2, v7

    move/from16 v19, v1

    move/from16 v21, v5

    move/from16 v7, v18

    .end local v4    # "digit":I
    goto :goto_3

    .line 675
    .end local v5    # "done":Z
    .end local v18    # "negative":Z
    .restart local v4    # "digit":I
    .restart local v7    # "negative":Z
    .restart local v8    # "done":Z
    :cond_2
    move/from16 v18, v7

    move v5, v8

    .line 676
    .end local v7    # "negative":Z
    .end local v8    # "done":Z
    .restart local v5    # "done":Z
    .restart local v18    # "negative":Z
    :goto_2
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    invoke-virtual {v7, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v7

    invoke-virtual {v7, v15}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v7

    .line 677
    .local v7, "buffer":Lokio/Buffer;
    if-nez v18, :cond_3

    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    .line 678
    :cond_3
    new-instance v8, Ljava/lang/NumberFormatException;

    move/from16 v19, v1

    .end local v1    # "$i$f$commonReadDecimalLong":I
    .local v19, "$i$f$commonReadDecimalLong":I
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    move/from16 v20, v4

    .end local v4    # "digit":I
    .local v20, "digit":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v5

    .end local v5    # "done":Z
    .local v21, "done":Z
    const-string v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 671
    .end local v18    # "negative":Z
    .end local v19    # "$i$f$commonReadDecimalLong":I
    .end local v20    # "digit":I
    .end local v21    # "done":Z
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .local v7, "negative":Z
    .restart local v8    # "done":Z
    :cond_4
    move/from16 v19, v1

    move/from16 v18, v7

    move/from16 v21, v8

    .line 682
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .end local v7    # "negative":Z
    .end local v8    # "done":Z
    .restart local v18    # "negative":Z
    .restart local v19    # "$i$f$commonReadDecimalLong":I
    .restart local v21    # "done":Z
    const/16 v1, 0x2d

    if-ne v15, v1, :cond_5

    if-nez v6, :cond_5

    .line 683
    const/4 v7, 0x1

    .line 684
    .end local v18    # "negative":Z
    .restart local v7    # "negative":Z
    const-wide/16 v4, 0x1

    sub-long/2addr v9, v4

    .line 690
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 691
    nop

    .end local v15    # "b":B
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v4, v16

    move/from16 v1, v19

    move/from16 v8, v21

    goto/16 :goto_1

    .line 687
    .end local v7    # "negative":Z
    .restart local v15    # "b":B
    .restart local v18    # "negative":Z
    :cond_5
    const/4 v1, 0x1

    .line 688
    .end local v21    # "done":Z
    .local v1, "done":Z
    move v8, v1

    goto :goto_4

    .line 669
    .end local v15    # "b":B
    .end local v18    # "negative":Z
    .end local v19    # "$i$f$commonReadDecimalLong":I
    .local v1, "$i$f$commonReadDecimalLong":I
    .restart local v7    # "negative":Z
    .restart local v8    # "done":Z
    :cond_6
    move/from16 v19, v1

    move-wide/from16 v16, v4

    move/from16 v18, v7

    move/from16 v21, v8

    .line 694
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .end local v7    # "negative":Z
    .restart local v18    # "negative":Z
    .restart local v19    # "$i$f$commonReadDecimalLong":I
    :goto_4
    if-ne v13, v14, :cond_7

    .line 695
    invoke-virtual {v11}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 696
    invoke-static {v11}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5

    .line 698
    :cond_7
    iput v13, v11, Lokio/Segment;->pos:I

    .line 700
    .end local v11    # "segment":Lokio/Segment;
    .end local v12    # "data":[B
    .end local v13    # "pos":I
    .end local v14    # "limit":I
    :goto_5
    if-nez v8, :cond_9

    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move-wide/from16 v4, v16

    move/from16 v7, v18

    move/from16 v1, v19

    goto/16 :goto_0

    .line 702
    :cond_9
    :goto_6
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v11, v6

    sub-long/2addr v4, v11

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 704
    if-eqz v18, :cond_a

    const/4 v1, 0x2

    goto :goto_7

    :cond_a
    const/4 v1, 0x1

    .line 705
    .local v1, "minimumSeen":I
    :goto_7
    if-ge v6, v1, :cond_d

    .line 706
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v7, v4, v16

    if-eqz v7, :cond_c

    .line 707
    if-eqz v18, :cond_b

    const-string v4, "Expected a digit"

    goto :goto_8

    :cond_b
    const-string v4, "Expected a digit or \'-\'"

    .line 708
    .local v4, "expected":Ljava/lang/String;
    :goto_8
    new-instance v5, Ljava/lang/NumberFormatException;

    move-wide/from16 v11, v16

    invoke-virtual {v0, v11, v12}, Lokio/Buffer;->getByte(J)B

    move-result v7

    invoke-static {v7}, Lokio/-SegmentedByteString;->toHexString(B)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but was 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 706
    .end local v4    # "expected":Ljava/lang/String;
    :cond_c
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 711
    :cond_d
    if-eqz v18, :cond_e

    move-wide v4, v2

    goto :goto_9

    :cond_e
    neg-long v4, v2

    :goto_9
    return-wide v4

    .line 652
    .end local v2    # "value":J
    .end local v6    # "seen":I
    .end local v8    # "done":Z
    .end local v9    # "overflowDigit":J
    .end local v18    # "negative":Z
    .end local v19    # "$i$f$commonReadDecimalLong":I
    .local v1, "$i$f$commonReadDecimalLong":I
    :cond_f
    move/from16 v19, v1

    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v19    # "$i$f$commonReadDecimalLong":I
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadFully(Lokio/Buffer;Lokio/Buffer;J)V
    .locals 4
    .param p0, "$this$commonReadFully"    # Lokio/Buffer;
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonReadFully",
            "sink",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 797
    .local v0, "$i$f$commonReadFully":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-ltz v3, :cond_0

    .line 801
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 802
    return-void

    .line 798
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {p1, p0, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 799
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadFully(Lokio/Buffer;[B)V
    .locals 4
    .param p0, "$this$commonReadFully"    # Lokio/Buffer;
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonReadFully",
            "sink"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 617
    .local v0, "$i$f$commonReadFully":I
    const/4 v1, 0x0

    .line 618
    .local v1, "offset":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 619
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Lokio/Buffer;->read([BII)I

    move-result v2

    .line 620
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 621
    add-int/2addr v1, v2

    .end local v2    # "read":I
    goto :goto_0

    .line 620
    .restart local v2    # "read":I
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 623
    .end local v2    # "read":I
    :cond_1
    return-void
.end method

.method public static final commonReadHexadecimalUnsignedLong(Lokio/Buffer;)J
    .locals 17
    .param p0, "$this$commonReadHexadecimalUnsignedLong"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonReadHexadecimalUnsignedLong"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 715
    .local v1, "$i$f$commonReadHexadecimalUnsignedLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    .line 717
    const-wide/16 v2, 0x0

    .line 718
    .local v2, "value":J
    const/4 v6, 0x0

    .line 719
    .local v6, "seen":I
    const/4 v7, 0x0

    .line 722
    .local v7, "done":Z
    :goto_0
    iget-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 724
    .local v8, "segment":Lokio/Segment;
    iget-object v9, v8, Lokio/Segment;->data:[B

    .line 725
    .local v9, "data":[B
    iget v10, v8, Lokio/Segment;->pos:I

    .line 726
    .local v10, "pos":I
    iget v11, v8, Lokio/Segment;->limit:I

    .line 728
    .local v11, "limit":I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 729
    const/4 v12, 0x0

    .line 731
    .local v12, "digit":I
    aget-byte v13, v9, v10

    .line 732
    .local v13, "b":B
    const/16 v14, 0x30

    if-lt v13, v14, :cond_0

    const/16 v14, 0x39

    if-gt v13, v14, :cond_0

    .line 733
    add-int/lit8 v12, v13, -0x30

    goto :goto_2

    .line 734
    :cond_0
    const/16 v14, 0x61

    if-lt v13, v14, :cond_1

    const/16 v14, 0x66

    if-gt v13, v14, :cond_1

    .line 735
    add-int/lit8 v14, v13, -0x61

    add-int/lit8 v12, v14, 0xa

    goto :goto_2

    .line 736
    :cond_1
    const/16 v14, 0x41

    if-lt v13, v14, :cond_3

    const/16 v14, 0x46

    if-gt v13, v14, :cond_3

    .line 737
    add-int/lit8 v14, v13, -0x41

    add-int/lit8 v12, v14, 0xa

    .line 750
    :goto_2
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v2

    cmp-long v16, v14, v4

    if-nez v16, :cond_2

    .line 755
    const/4 v14, 0x4

    shl-long/2addr v2, v14

    .line 756
    int-to-long v14, v12

    or-long/2addr v2, v14

    .line 757
    add-int/lit8 v10, v10, 0x1

    .line 758
    nop

    .end local v12    # "digit":I
    .end local v13    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 751
    .restart local v12    # "digit":I
    .restart local v13    # "b":B
    :cond_2
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    .line 752
    .local v4, "buffer":Lokio/Buffer;
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-virtual {v4}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    .end local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .local v16, "$i$f$commonReadHexadecimalUnsignedLong":I
    const-string v1, "Number too large: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 736
    .end local v4    # "buffer":Lokio/Buffer;
    .end local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .restart local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    :cond_3
    move/from16 v16, v1

    .line 739
    .end local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .restart local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    if-eqz v6, :cond_4

    .line 745
    const/4 v1, 0x1

    .line 746
    .end local v7    # "done":Z
    .local v1, "done":Z
    move v7, v1

    goto :goto_3

    .line 740
    .end local v1    # "done":Z
    .restart local v7    # "done":Z
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 741
    invoke-static {v13}, Lokio/-SegmentedByteString;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 740
    invoke-direct {v1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    .end local v12    # "digit":I
    .end local v13    # "b":B
    .end local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .local v1, "$i$f$commonReadHexadecimalUnsignedLong":I
    :cond_5
    move/from16 v16, v1

    .line 761
    .end local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .restart local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    :goto_3
    if-ne v10, v11, :cond_6

    .line 762
    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 763
    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_4

    .line 765
    :cond_6
    iput v10, v8, Lokio/Segment;->pos:I

    .line 767
    .end local v8    # "segment":Lokio/Segment;
    .end local v9    # "data":[B
    .end local v10    # "pos":I
    .end local v11    # "limit":I
    :goto_4
    if-nez v7, :cond_8

    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v1, v16

    goto/16 :goto_0

    .line 769
    :cond_8
    :goto_5
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v8, v6

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 770
    return-wide v2

    .line 715
    .end local v2    # "value":J
    .end local v6    # "seen":I
    .end local v7    # "done":Z
    .end local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .restart local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    :cond_9
    move/from16 v16, v1

    .end local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .restart local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadInt(Lokio/Buffer;)I
    .locals 11
    .param p0, "$this$commonReadInt"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonReadInt"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 338
    .local v0, "$i$f$commonReadInt":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 340
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 341
    .local v1, "segment":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    .line 342
    .local v2, "pos":I
    iget v5, v1, Lokio/Segment;->limit:I

    .line 345
    .local v5, "limit":I
    sub-int v6, v5, v2

    int-to-long v6, v6

    cmp-long v8, v6, v3

    if-gez v8, :cond_0

    .line 347
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    .local v3, "$this$and$iv":B
    const/16 v4, 0xff

    .local v4, "other$iv":I
    const/4 v6, 0x0

    .line 1705
    .local v6, "$i$f$and":I
    and-int/2addr v3, v4

    .line 347
    .end local v3    # "$this$and$iv":B
    .end local v4    # "other$iv":I
    .end local v6    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x18

    .line 348
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv":B
    const/16 v6, 0xff

    .local v6, "other$iv":I
    const/4 v7, 0x0

    .line 1706
    .local v7, "$i$f$and":I
    and-int/2addr v4, v6

    .line 348
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x10

    .line 347
    or-int/2addr v3, v4

    .line 349
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .restart local v4    # "$this$and$iv":B
    const/16 v6, 0xff

    .restart local v6    # "other$iv":I
    const/4 v7, 0x0

    .line 1707
    .restart local v7    # "$i$f$and":I
    and-int/2addr v4, v6

    .line 349
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x8

    .line 347
    or-int/2addr v3, v4

    .line 350
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .restart local v4    # "$this$and$iv":B
    const/16 v6, 0xff

    .restart local v6    # "other$iv":I
    const/4 v7, 0x0

    .line 1708
    .restart local v7    # "$i$f$and":I
    and-int/2addr v4, v6

    .line 347
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    or-int/2addr v3, v4

    .line 346
    return v3

    .line 354
    :cond_0
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 356
    .local v6, "data":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "pos":I
    .local v7, "pos":I
    aget-byte v2, v6, v2

    .local v2, "$this$and$iv":B
    const/16 v8, 0xff

    .local v8, "other$iv":I
    const/4 v9, 0x0

    .line 1709
    .local v9, "$i$f$and":I
    and-int/2addr v2, v8

    .line 356
    .end local v2    # "$this$and$iv":B
    .end local v8    # "other$iv":I
    .end local v9    # "$i$f$and":I
    shl-int/lit8 v2, v2, 0x18

    .line 357
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv":I
    const/4 v10, 0x0

    .line 1710
    .local v10, "$i$f$and":I
    and-int/2addr v7, v9

    .line 357
    .end local v7    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v7, v7, 0x10

    .line 356
    or-int/2addr v2, v7

    .line 358
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "pos":I
    .local v7, "pos":I
    aget-byte v8, v6, v8

    .local v8, "$this$and$iv":B
    const/16 v9, 0xff

    .restart local v9    # "other$iv":I
    const/4 v10, 0x0

    .line 1711
    .restart local v10    # "$i$f$and":I
    and-int/2addr v8, v9

    .line 358
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v8, v8, 0x8

    .line 356
    or-int/2addr v2, v8

    .line 359
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v9, 0xff

    .restart local v9    # "other$iv":I
    const/4 v10, 0x0

    .line 1712
    .restart local v10    # "$i$f$and":I
    and-int/2addr v7, v9

    .line 356
    .end local v7    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    or-int/2addr v2, v7

    .line 355
    nop

    .line 361
    .local v2, "i":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 363
    if-ne v8, v5, :cond_1

    .line 364
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 365
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 367
    :cond_1
    iput v8, v1, Lokio/Segment;->pos:I

    .line 370
    :goto_0
    return v2

    .line 338
    .end local v1    # "segment":Lokio/Segment;
    .end local v2    # "i":I
    .end local v5    # "limit":I
    .end local v6    # "data":[B
    .end local v8    # "pos":I
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadLong(Lokio/Buffer;)J
    .locals 17
    .param p0, "$this$commonReadLong"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonReadLong"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 374
    .local v1, "$i$f$commonReadLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 376
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 377
    .local v2, "segment":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 378
    .local v3, "pos":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 381
    .local v6, "limit":I
    sub-int v7, v6, v3

    int-to-long v7, v7

    const/16 v9, 0x20

    cmp-long v10, v7, v4

    if-gez v10, :cond_0

    .line 383
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v4

    .local v4, "$this$and$iv":I
    const-wide v7, 0xffffffffL

    .local v7, "other$iv":J
    const/4 v5, 0x0

    .line 1713
    .local v5, "$i$f$and":I
    int-to-long v10, v4

    and-long v4, v10, v7

    .line 383
    .end local v4    # "$this$and$iv":I
    .end local v5    # "$i$f$and":I
    .end local v7    # "other$iv":J
    shl-long/2addr v4, v9

    .line 384
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v7

    .local v7, "$this$and$iv":I
    const-wide v8, 0xffffffffL

    .local v8, "other$iv":J
    const/4 v10, 0x0

    .line 1714
    .local v10, "$i$f$and":I
    int-to-long v11, v7

    and-long/2addr v8, v11

    .line 383
    .end local v7    # "$this$and$iv":I
    .end local v8    # "other$iv":J
    .end local v10    # "$i$f$and":I
    or-long/2addr v4, v8

    .line 382
    return-wide v4

    .line 388
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 390
    .local v7, "data":[B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos":I
    .local v8, "pos":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv":B
    const-wide/16 v10, 0xff

    .local v10, "other$iv":J
    const/4 v12, 0x0

    .line 1715
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 390
    .end local v3    # "$this$and$iv":B
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x38

    shl-long/2addr v10, v3

    .line 391
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "pos":I
    .local v3, "pos":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv":B
    const-wide/16 v12, 0xff

    .local v12, "other$iv":J
    const/4 v14, 0x0

    .line 1716
    .local v14, "$i$f$and":I
    move-wide v15, v4

    int-to-long v4, v8

    and-long/2addr v4, v12

    .line 391
    .end local v8    # "$this$and$iv":B
    .end local v12    # "other$iv":J
    .end local v14    # "$i$f$and":I
    const/16 v8, 0x30

    shl-long/2addr v4, v8

    .line 390
    or-long/2addr v4, v10

    .line 392
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos":I
    .local v8, "pos":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv":J
    const/4 v12, 0x0

    .line 1717
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 392
    .end local v3    # "$this$and$iv":B
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x28

    shl-long/2addr v10, v3

    .line 390
    or-long/2addr v4, v10

    .line 393
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "pos":I
    .local v3, "pos":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv":J
    const/4 v12, 0x0

    .line 1718
    .restart local v12    # "$i$f$and":I
    int-to-long v13, v8

    and-long/2addr v10, v13

    .line 393
    .end local v8    # "$this$and$iv":B
    .end local v10    # "other$iv":J
    .end local v12    # "$i$f$and":I
    shl-long v8, v10, v9

    .line 390
    or-long/2addr v4, v8

    .line 394
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos":I
    .local v8, "pos":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .local v9, "other$iv":J
    const/4 v11, 0x0

    .line 1719
    .local v11, "$i$f$and":I
    int-to-long v12, v3

    and-long/2addr v9, v12

    .line 394
    .end local v3    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v3, 0x18

    shl-long/2addr v9, v3

    .line 390
    or-long/2addr v4, v9

    .line 395
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "pos":I
    .local v3, "pos":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv":J
    const/4 v11, 0x0

    .line 1720
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long/2addr v9, v12

    .line 395
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v8, 0x10

    shl-long v8, v9, v8

    .line 390
    or-long/2addr v4, v8

    .line 396
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos":I
    .local v8, "pos":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv":J
    const/4 v11, 0x0

    .line 1721
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v3

    and-long/2addr v9, v12

    .line 396
    .end local v3    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v3, 0x8

    shl-long/2addr v9, v3

    .line 390
    or-long/2addr v4, v9

    .line 397
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "pos":I
    .local v3, "pos":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv":J
    const/4 v11, 0x0

    .line 1722
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long/2addr v9, v12

    .line 390
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":J
    .end local v11    # "$i$f$and":I
    or-long/2addr v4, v9

    .line 389
    nop

    .line 399
    .local v4, "v":J
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    sub-long/2addr v8, v15

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 401
    if-ne v3, v6, :cond_1

    .line 402
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 403
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 405
    :cond_1
    iput v3, v2, Lokio/Segment;->pos:I

    .line 408
    :goto_0
    return-wide v4

    .line 374
    .end local v2    # "segment":Lokio/Segment;
    .end local v3    # "pos":I
    .end local v4    # "v":J
    .end local v6    # "limit":I
    .end local v7    # "data":[B
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static final commonReadShort(Lokio/Buffer;)S
    .locals 11
    .param p0, "$this$commonReadShort"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonReadShort"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 311
    .local v0, "$i$f$commonReadShort":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 313
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 314
    .local v1, "segment":Lokio/Segment;
    iget v2, v1, Lokio/Segment;->pos:I

    .line 315
    .local v2, "pos":I
    iget v5, v1, Lokio/Segment;->limit:I

    .line 318
    .local v5, "limit":I
    sub-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 319
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v3

    .local v3, "$this$and$iv":B
    const/16 v4, 0xff

    .local v4, "other$iv":I
    const/4 v6, 0x0

    .line 1703
    .local v6, "$i$f$and":I
    and-int/2addr v3, v4

    .line 319
    .end local v3    # "$this$and$iv":B
    .end local v4    # "other$iv":I
    .end local v6    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv":B
    const/16 v6, 0xff

    .local v6, "other$iv":I
    const/4 v7, 0x0

    .line 1703
    .local v7, "$i$f$and":I
    and-int/2addr v4, v6

    .line 319
    .end local v4    # "$this$and$iv":B
    .end local v6    # "other$iv":I
    .end local v7    # "$i$f$and":I
    or-int/2addr v3, v4

    .line 320
    .local v3, "s":I
    int-to-short v4, v3

    return v4

    .line 323
    .end local v3    # "s":I
    :cond_0
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 324
    .local v6, "data":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "pos":I
    .local v7, "pos":I
    aget-byte v2, v6, v2

    .local v2, "$this$and$iv":B
    const/16 v8, 0xff

    .local v8, "other$iv":I
    const/4 v9, 0x0

    .line 1704
    .local v9, "$i$f$and":I
    and-int/2addr v2, v8

    .line 324
    .end local v2    # "$this$and$iv":B
    .end local v8    # "other$iv":I
    .end local v9    # "$i$f$and":I
    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv":I
    const/4 v10, 0x0

    .line 1704
    .local v10, "$i$f$and":I
    and-int/2addr v7, v9

    .line 324
    .end local v7    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    or-int/2addr v2, v7

    .line 325
    .local v2, "s":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 327
    if-ne v8, v5, :cond_1

    .line 328
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 329
    invoke-static {v1}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 331
    :cond_1
    iput v8, v1, Lokio/Segment;->pos:I

    .line 334
    :goto_0
    int-to-short v3, v2

    return v3

    .line 311
    .end local v1    # "segment":Lokio/Segment;
    .end local v2    # "s":I
    .end local v5    # "limit":I
    .end local v6    # "data":[B
    .end local v8    # "pos":I
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadUnsafe(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 3
    .param p0, "$this$commonReadUnsafe"    # Lokio/Buffer;
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonReadUnsafe",
            "unsafeCursor"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1519
    invoke-static {p1}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    .line 1520
    .local v0, "unsafeCursor":Lokio/Buffer$UnsafeCursor;
    iget-object v1, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1522
    iput-object p0, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    .line 1523
    iput-boolean v2, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    .line 1524
    return-object v0

    .line 1744
    :cond_1
    const/4 v1, 0x0

    .line 1520
    .local v1, "$i$a$-check--Buffer$commonReadUnsafe$1":I
    nop

    .end local v1    # "$i$a$-check--Buffer$commonReadUnsafe$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already attached to a buffer"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonReadUtf8(Lokio/Buffer;J)Ljava/lang/String;
    .locals 8
    .param p0, "$this$commonReadUtf8"    # Lokio/Buffer;
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonReadUtf8",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 813
    .local v0, "$i$f$commonReadUtf8":I
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, p1, v4

    if-gtz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    .line 814
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-ltz v6, :cond_4

    .line 815
    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    const-string v1, ""

    return-object v1

    .line 817
    :cond_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 818
    .local v2, "s":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p1

    iget v5, v2, Lokio/Segment;->limit:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 821
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v1, v1, v4, v5}, Lokio/internal/_Utf8Kt;->commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 824
    :cond_2
    iget-object v1, v2, Lokio/Segment;->data:[B

    iget v3, v2, Lokio/Segment;->pos:I

    iget v4, v2, Lokio/Segment;->pos:I

    long-to-int v5, p1

    add-int/2addr v4, v5

    invoke-static {v1, v3, v4}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "result":Ljava/lang/String;
    iget v3, v2, Lokio/Segment;->pos:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    iput v3, v2, Lokio/Segment;->pos:I

    .line 826
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, p1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 828
    iget v3, v2, Lokio/Segment;->pos:I

    iget v4, v2, Lokio/Segment;->limit:I

    if-ne v3, v4, :cond_3

    .line 829
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 830
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 833
    :cond_3
    return-object v1

    .line 814
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "s":Lokio/Segment;
    :cond_4
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 1744
    :cond_5
    const/4 v1, 0x0

    .line 813
    .local v1, "$i$a$-require--Buffer$commonReadUtf8$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--Buffer$commonReadUtf8$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonReadUtf8CodePoint(Lokio/Buffer;)I
    .locals 11
    .param p0, "$this$commonReadUtf8CodePoint"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonReadUtf8CodePoint"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 868
    .local v0, "$i$f$commonReadUtf8CodePoint":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    .line 870
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v1

    .line 871
    .local v1, "b0":B
    const/4 v2, 0x0

    .line 872
    .local v2, "codePoint":I
    const/4 v3, 0x0

    .line 873
    .local v3, "byteCount":I
    const/4 v4, 0x0

    .line 875
    .local v4, "min":I
    nop

    .line 876
    const/16 v5, 0x80

    .local v5, "other$iv":I
    move v6, v1

    .local v6, "$this$and$iv":B
    const/4 v7, 0x0

    .line 1746
    .local v7, "$i$f$and":I
    and-int/2addr v5, v6

    .line 876
    .end local v5    # "other$iv":I
    .end local v6    # "$this$and$iv":B
    .end local v7    # "$i$f$and":I
    const v6, 0xfffd

    if-nez v5, :cond_0

    .line 878
    const/16 v5, 0x7f

    .restart local v5    # "other$iv":I
    move v7, v1

    .local v7, "$this$and$iv":B
    const/4 v8, 0x0

    .line 1747
    .local v8, "$i$f$and":I
    and-int/2addr v5, v7

    .line 878
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    nop

    .line 879
    .end local v2    # "codePoint":I
    .local v5, "codePoint":I
    const/4 v2, 0x1

    .line 880
    .end local v3    # "byteCount":I
    .local v2, "byteCount":I
    const/4 v3, 0x0

    .end local v4    # "min":I
    .local v3, "min":I
    goto :goto_0

    .line 882
    .end local v5    # "codePoint":I
    .local v2, "codePoint":I
    .local v3, "byteCount":I
    .restart local v4    # "min":I
    :cond_0
    const/16 v5, 0xe0

    .local v5, "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1748
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 882
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/16 v7, 0xc0

    if-ne v5, v7, :cond_1

    .line 884
    const/16 v5, 0x1f

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1749
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 884
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    nop

    .line 885
    .end local v2    # "codePoint":I
    .local v5, "codePoint":I
    const/4 v2, 0x2

    .line 886
    .end local v3    # "byteCount":I
    .local v2, "byteCount":I
    const/16 v3, 0x80

    .end local v4    # "min":I
    .local v3, "min":I
    goto :goto_0

    .line 888
    .end local v5    # "codePoint":I
    .local v2, "codePoint":I
    .local v3, "byteCount":I
    .restart local v4    # "min":I
    :cond_1
    const/16 v5, 0xf0

    .local v5, "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1750
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 888
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/16 v7, 0xe0

    if-ne v5, v7, :cond_2

    .line 890
    const/16 v5, 0xf

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1751
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 890
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    nop

    .line 891
    .end local v2    # "codePoint":I
    .local v5, "codePoint":I
    const/4 v2, 0x3

    .line 892
    .end local v3    # "byteCount":I
    .local v2, "byteCount":I
    const/16 v3, 0x800

    .end local v4    # "min":I
    .local v3, "min":I
    goto :goto_0

    .line 894
    .end local v5    # "codePoint":I
    .local v2, "codePoint":I
    .local v3, "byteCount":I
    .restart local v4    # "min":I
    :cond_2
    const/16 v5, 0xf8

    .local v5, "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1752
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 894
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    const/16 v7, 0xf0

    if-ne v5, v7, :cond_a

    .line 896
    const/4 v5, 0x7

    .restart local v5    # "other$iv":I
    move v7, v1

    .restart local v7    # "$this$and$iv":B
    const/4 v8, 0x0

    .line 1753
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 896
    .end local v5    # "other$iv":I
    .end local v7    # "$this$and$iv":B
    .end local v8    # "$i$f$and":I
    nop

    .line 897
    .end local v2    # "codePoint":I
    .local v5, "codePoint":I
    const/4 v2, 0x4

    .line 898
    .end local v3    # "byteCount":I
    .local v2, "byteCount":I
    const/high16 v3, 0x10000

    .line 907
    .end local v4    # "min":I
    .local v3, "min":I
    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v7

    int-to-long v9, v2

    cmp-long v4, v7, v9

    if-ltz v4, :cond_9

    .line 914
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 915
    int-to-long v7, v4

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v7

    .line 916
    .local v7, "b":B
    const/16 v8, 0xc0

    .local v8, "other$iv":I
    move v9, v7

    .local v9, "$this$and$iv":B
    const/4 v10, 0x0

    .line 1754
    .local v10, "$i$f$and":I
    and-int/2addr v8, v9

    .line 916
    .end local v8    # "other$iv":I
    .end local v9    # "$this$and$iv":B
    .end local v10    # "$i$f$and":I
    const/16 v9, 0x80

    if-ne v8, v9, :cond_3

    .line 918
    shl-int/lit8 v5, v5, 0x6

    .line 919
    const/16 v8, 0x3f

    .restart local v8    # "other$iv":I
    move v9, v7

    .restart local v9    # "$this$and$iv":B
    const/4 v10, 0x0

    .line 1755
    .restart local v10    # "$i$f$and":I
    and-int/2addr v8, v9

    .line 919
    .end local v8    # "other$iv":I
    .end local v9    # "$this$and$iv":B
    .end local v10    # "$i$f$and":I
    or-int/2addr v5, v8

    .line 914
    .end local v7    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 921
    .restart local v7    # "b":B
    :cond_3
    int-to-long v8, v4

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 922
    return v6

    .line 926
    .end local v4    # "i":I
    .end local v7    # "b":B
    :cond_4
    int-to-long v7, v2

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 928
    nop

    .line 929
    const v4, 0x10ffff

    if-le v5, v4, :cond_5

    .line 930
    goto :goto_2

    .line 932
    :cond_5
    const v4, 0xd800

    const/4 v7, 0x0

    if-gt v4, v5, :cond_6

    const v4, 0xe000

    if-ge v5, v4, :cond_6

    const/4 v7, 0x1

    :cond_6
    if-eqz v7, :cond_7

    .line 933
    goto :goto_2

    .line 935
    :cond_7
    if-ge v5, v3, :cond_8

    .line 936
    goto :goto_2

    .line 938
    :cond_8
    move v6, v5

    .line 928
    :goto_2
    return v6

    .line 908
    :cond_9
    new-instance v4, Ljava/io/EOFException;

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v1}, Lokio/-SegmentedByteString;->toHexString(B)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "size < "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (to read code point prefixed 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 902
    .end local v5    # "codePoint":I
    .local v2, "codePoint":I
    .local v3, "byteCount":I
    .local v4, "min":I
    :cond_a
    const-wide/16 v7, 0x1

    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 903
    return v6

    .line 868
    .end local v1    # "b0":B
    .end local v2    # "codePoint":I
    .end local v3    # "byteCount":I
    .end local v4    # "min":I
    :cond_b
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static final commonReadUtf8Line(Lokio/Buffer;)Ljava/lang/String;
    .locals 8
    .param p0, "$this$commonReadUtf8Line"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonReadUtf8Line"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 837
    .local v0, "$i$f$commonReadUtf8Line":I
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v1

    .line 839
    .local v1, "newline":J
    nop

    .line 840
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {p0, v1, v2}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 841
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 842
    :cond_1
    const/4 v3, 0x0

    .line 839
    :goto_0
    return-object v3
.end method

.method public static final commonReadUtf8LineStrict(Lokio/Buffer;J)Ljava/lang/String;
    .locals 15
    .param p0, "$this$commonReadUtf8LineStrict"    # Lokio/Buffer;
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonReadUtf8LineStrict",
            "limit"
        }
    .end annotation

    move-wide/from16 v6, p1

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 847
    .local v8, "$i$f$commonReadUtf8LineStrict":I
    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 848
    const-wide/16 v9, 0x1

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, v6, v1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-long v1, v6, v9

    :goto_1
    move-wide v4, v1

    .line 849
    .local v4, "scanLength":J
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v11

    .line 850
    move-wide v13, v4

    .end local v4    # "scanLength":J
    .local v11, "newline":J
    .local v13, "scanLength":J
    const-wide/16 v1, -0x1

    cmp-long v3, v11, v1

    if-eqz v3, :cond_2

    invoke-static {p0, v11, v12}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 851
    :cond_2
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, v13, v1

    if-gez v3, :cond_3

    .line 852
    sub-long v4, v13, v9

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 853
    invoke-virtual {p0, v13, v14}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 855
    invoke-static {p0, v13, v14}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 857
    :cond_3
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 858
    .local v1, "data":Lokio/Buffer;
    const/16 v2, 0x20

    .local v2, "a$iv":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    .local v3, "b$iv":J
    const/4 v5, 0x0

    .line 1745
    .local v5, "$i$f$minOf":I
    int-to-long v9, v2

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 858
    .end local v2    # "a$iv":I
    .end local v3    # "b$iv":J
    .end local v5    # "$i$f$minOf":I
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 859
    new-instance v0, Ljava/io/EOFException;

    .line 860
    nop

    .line 861
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 863
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\n not found: limit="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1744
    .end local v1    # "data":Lokio/Buffer;
    .end local v11    # "newline":J
    .end local v13    # "scanLength":J
    :cond_4
    const/4 v0, 0x0

    .line 847
    .local v0, "$i$a$-require--Buffer$commonReadUtf8LineStrict$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require--Buffer$commonReadUtf8LineStrict$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonResizeBuffer(Lokio/Buffer$UnsafeCursor;J)J
    .locals 16
    .param p0, "$this$commonResizeBuffer"    # Lokio/Buffer$UnsafeCursor;
    .param p1, "newSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonResizeBuffer",
            "newSize"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1614
    .local v3, "$i$f$commonResizeBuffer":I
    iget-object v4, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v4, :cond_8

    .line 1615
    .local v4, "buffer":Lokio/Buffer;
    iget-boolean v5, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v5, :cond_7

    .line 1617
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v5

    .line 1618
    .local v5, "oldSize":J
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    cmp-long v10, v1, v5

    if-gtz v10, :cond_4

    .line 1619
    cmp-long v10, v1, v8

    if-ltz v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_3

    .line 1621
    sub-long v10, v5, v1

    .line 1622
    .local v10, "bytesToSubtract":J
    :goto_1
    cmp-long v7, v10, v8

    if-lez v7, :cond_2

    .line 1623
    iget-object v7, v4, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v7, Lokio/Segment;->prev:Lokio/Segment;

    .line 1624
    .local v7, "tail":Lokio/Segment;
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v12, v7, Lokio/Segment;->limit:I

    iget v13, v7, Lokio/Segment;->pos:I

    sub-int/2addr v12, v13

    .line 1625
    .local v12, "tailSize":I
    int-to-long v13, v12

    cmp-long v15, v13, v10

    if-gtz v15, :cond_1

    .line 1626
    invoke-virtual {v7}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v13

    iput-object v13, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 1627
    invoke-static {v7}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1628
    int-to-long v13, v12

    sub-long/2addr v10, v13

    goto :goto_1

    .line 1630
    :cond_1
    iget v8, v7, Lokio/Segment;->limit:I

    long-to-int v9, v10

    sub-int/2addr v8, v9

    iput v8, v7, Lokio/Segment;->limit:I

    .line 1631
    nop

    .line 1635
    .end local v7    # "tail":Lokio/Segment;
    .end local v12    # "tailSize":I
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lokio/Buffer$UnsafeCursor;->setSegment$third_party_java_src_okio_okio_jvm(Lokio/Segment;)V

    .line 1636
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1637
    iput-object v7, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1638
    const/4 v7, -0x1

    iput v7, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1639
    iput v7, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .end local v10    # "bytesToSubtract":J
    goto :goto_3

    .line 1744
    :cond_3
    const/4 v7, 0x0

    .line 1619
    .local v7, "$i$a$-require--Buffer$commonResizeBuffer$2":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newSize < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7    # "$i$a$-require--Buffer$commonResizeBuffer$2":I
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1640
    :cond_4
    cmp-long v10, v1, v5

    if-lez v10, :cond_6

    .line 1642
    const/4 v10, 0x1

    .line 1643
    .local v10, "needsToSeek":Z
    sub-long v11, v1, v5

    .line 1644
    .local v11, "bytesToAdd":J
    :goto_2
    cmp-long v13, v11, v8

    if-lez v13, :cond_6

    .line 1645
    invoke-virtual {v4, v7}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v13

    .line 1646
    .local v13, "tail":Lokio/Segment;
    iget v14, v13, Lokio/Segment;->limit:I

    rsub-int v14, v14, 0x2000

    .local v14, "b$iv":I
    const/4 v15, 0x0

    .line 1816
    .local v15, "$i$f$minOf":I
    int-to-long v7, v14

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 1646
    .end local v14    # "b$iv":I
    .end local v15    # "$i$f$minOf":I
    long-to-int v8, v7

    .line 1647
    .local v8, "segmentBytesToAdd":I
    iget v7, v13, Lokio/Segment;->limit:I

    add-int/2addr v7, v8

    iput v7, v13, Lokio/Segment;->limit:I

    .line 1648
    int-to-long v14, v8

    sub-long/2addr v11, v14

    .line 1651
    if-eqz v10, :cond_5

    .line 1652
    invoke-virtual {v0, v13}, Lokio/Buffer$UnsafeCursor;->setSegment$third_party_java_src_okio_okio_jvm(Lokio/Segment;)V

    .line 1653
    iput-wide v5, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1654
    iget-object v7, v13, Lokio/Segment;->data:[B

    iput-object v7, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1655
    iget v7, v13, Lokio/Segment;->limit:I

    sub-int/2addr v7, v8

    iput v7, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1656
    iget v7, v13, Lokio/Segment;->limit:I

    iput v7, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1657
    const/4 v10, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    .end local v8    # "segmentBytesToAdd":I
    .end local v13    # "tail":Lokio/Segment;
    goto :goto_2

    .line 1651
    .restart local v8    # "segmentBytesToAdd":I
    .restart local v13    # "tail":Lokio/Segment;
    :cond_5
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    goto :goto_2

    .line 1662
    .end local v8    # "segmentBytesToAdd":I
    .end local v10    # "needsToSeek":Z
    .end local v11    # "bytesToAdd":J
    .end local v13    # "tail":Lokio/Segment;
    :cond_6
    :goto_3
    invoke-virtual {v4, v1, v2}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1664
    return-wide v5

    .line 1744
    .end local v5    # "oldSize":J
    :cond_7
    const/4 v5, 0x0

    .line 1615
    .local v5, "$i$a$-check--Buffer$commonResizeBuffer$1":I
    nop

    .end local v5    # "$i$a$-check--Buffer$commonResizeBuffer$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "resizeBuffer() only permitted for read/write buffers"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1744
    .end local v4    # "buffer":Lokio/Buffer;
    :cond_8
    const/4 v4, 0x0

    .line 1614
    .local v4, "$i$a$-checkNotNull--Buffer$commonResizeBuffer$buffer$1":I
    nop

    .end local v4    # "$i$a$-checkNotNull--Buffer$commonResizeBuffer$buffer$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "not attached to a buffer"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static final commonSeek(Lokio/Buffer$UnsafeCursor;J)I
    .locals 19
    .param p0, "$this$commonSeek"    # Lokio/Buffer$UnsafeCursor;
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonSeek",
            "offset"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1542
    .local v3, "$i$f$commonSeek":I
    iget-object v4, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v4, :cond_9

    .line 1543
    .local v4, "buffer":Lokio/Buffer;
    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-ltz v7, :cond_8

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v9, v1, v7

    if-gtz v9, :cond_8

    .line 1547
    cmp-long v7, v1, v5

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    move v15, v3

    move-object/from16 v16, v4

    goto/16 :goto_3

    .line 1557
    :cond_0
    const-wide/16 v5, 0x0

    .line 1558
    .local v5, "min":J
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v7

    .line 1559
    .local v7, "max":J
    iget-object v9, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 1560
    .local v9, "head":Lokio/Segment;
    iget-object v10, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 1561
    .local v10, "tail":Lokio/Segment;
    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->getSegment$third_party_java_src_okio_okio_jvm()Lokio/Segment;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1562
    iget-wide v11, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v13, v0, Lokio/Buffer$UnsafeCursor;->start:I

    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->getSegment$third_party_java_src_okio_okio_jvm()Lokio/Segment;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v14, v14, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    int-to-long v13, v13

    sub-long/2addr v11, v13

    .line 1563
    .local v11, "segmentOffset":J
    cmp-long v13, v11, v1

    if-lez v13, :cond_1

    .line 1565
    move-wide v7, v11

    .line 1566
    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->getSegment$third_party_java_src_okio_okio_jvm()Lokio/Segment;

    move-result-object v10

    goto :goto_0

    .line 1569
    :cond_1
    move-wide v5, v11

    .line 1570
    invoke-virtual {v0}, Lokio/Buffer$UnsafeCursor;->getSegment$third_party_java_src_okio_okio_jvm()Lokio/Segment;

    move-result-object v9

    .line 1574
    .end local v11    # "segmentOffset":J
    :cond_2
    :goto_0
    const/4 v11, 0x0

    .line 1575
    .local v11, "next":Lokio/Segment;
    const-wide/16 v12, 0x0

    .line 1576
    .local v12, "nextOffset":J
    sub-long v14, v7, v1

    sub-long v16, v1, v5

    cmp-long v18, v14, v16

    if-lez v18, :cond_3

    .line 1578
    move-object v11, v9

    .line 1579
    move-wide v12, v5

    .line 1580
    :goto_1
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v14, v11, Lokio/Segment;->limit:I

    iget v15, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    add-long/2addr v14, v12

    cmp-long v16, v1, v14

    if-ltz v16, :cond_4

    .line 1581
    iget v14, v11, Lokio/Segment;->limit:I

    iget v15, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    add-long/2addr v12, v14

    .line 1582
    iget-object v11, v11, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 1586
    :cond_3
    move-object v11, v10

    .line 1587
    move-wide v12, v7

    .line 1588
    :goto_2
    cmp-long v14, v12, v1

    if-lez v14, :cond_4

    .line 1589
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v11, Lokio/Segment;->prev:Lokio/Segment;

    .line 1590
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v14, v11, Lokio/Segment;->limit:I

    iget v15, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v15

    int-to-long v14, v14

    sub-long/2addr v12, v14

    goto :goto_2

    .line 1595
    :cond_4
    iget-boolean v14, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v14, :cond_6

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v14, v11, Lokio/Segment;->shared:Z

    if-eqz v14, :cond_6

    .line 1596
    invoke-virtual {v11}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v14

    .line 1597
    .local v14, "unsharedNext":Lokio/Segment;
    iget-object v15, v4, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v15, v11, :cond_5

    .line 1598
    iput-object v14, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 1600
    :cond_5
    invoke-virtual {v11, v14}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v11

    .line 1601
    iget-object v15, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15}, Lokio/Segment;->pop()Lokio/Segment;

    .line 1605
    .end local v14    # "unsharedNext":Lokio/Segment;
    :cond_6
    invoke-virtual {v0, v11}, Lokio/Buffer$UnsafeCursor;->setSegment$third_party_java_src_okio_okio_jvm(Lokio/Segment;)V

    .line 1606
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1607
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v14, v11, Lokio/Segment;->data:[B

    iput-object v14, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1608
    iget v14, v11, Lokio/Segment;->pos:I

    move v15, v3

    move-object/from16 v16, v4

    .end local v3    # "$i$f$commonSeek":I
    .end local v4    # "buffer":Lokio/Buffer;
    .local v15, "$i$f$commonSeek":I
    .local v16, "buffer":Lokio/Buffer;
    sub-long v3, v1, v12

    long-to-int v4, v3

    add-int/2addr v14, v4

    iput v14, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1609
    iget v3, v11, Lokio/Segment;->limit:I

    iput v3, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1610
    iget v3, v0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v4, v0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v3, v4

    return v3

    .line 1547
    .end local v5    # "min":J
    .end local v7    # "max":J
    .end local v9    # "head":Lokio/Segment;
    .end local v10    # "tail":Lokio/Segment;
    .end local v11    # "next":Lokio/Segment;
    .end local v12    # "nextOffset":J
    .end local v15    # "$i$f$commonSeek":I
    .end local v16    # "buffer":Lokio/Buffer;
    .restart local v3    # "$i$f$commonSeek":I
    .restart local v4    # "buffer":Lokio/Buffer;
    :cond_7
    move v15, v3

    move-object/from16 v16, v4

    .line 1548
    .end local v3    # "$i$f$commonSeek":I
    .end local v4    # "buffer":Lokio/Buffer;
    .restart local v15    # "$i$f$commonSeek":I
    .restart local v16    # "buffer":Lokio/Buffer;
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokio/Buffer$UnsafeCursor;->setSegment$third_party_java_src_okio_okio_jvm(Lokio/Segment;)V

    .line 1549
    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    .line 1550
    iput-object v3, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    .line 1551
    const/4 v3, -0x1

    iput v3, v0, Lokio/Buffer$UnsafeCursor;->start:I

    .line 1552
    iput v3, v0, Lokio/Buffer$UnsafeCursor;->end:I

    .line 1553
    return v3

    .line 1543
    .end local v15    # "$i$f$commonSeek":I
    .end local v16    # "buffer":Lokio/Buffer;
    .restart local v3    # "$i$f$commonSeek":I
    .restart local v4    # "buffer":Lokio/Buffer;
    :cond_8
    move v15, v3

    move-object/from16 v16, v4

    .line 1544
    .end local v3    # "$i$f$commonSeek":I
    .end local v4    # "buffer":Lokio/Buffer;
    .restart local v15    # "$i$f$commonSeek":I
    .restart local v16    # "buffer":Lokio/Buffer;
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual/range {v16 .. v16}, Lokio/Buffer;->size()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1744
    .end local v15    # "$i$f$commonSeek":I
    .end local v16    # "buffer":Lokio/Buffer;
    .restart local v3    # "$i$f$commonSeek":I
    :cond_9
    move v15, v3

    .end local v3    # "$i$f$commonSeek":I
    .restart local v15    # "$i$f$commonSeek":I
    const/4 v3, 0x0

    .line 1542
    .local v3, "$i$a$-checkNotNull--Buffer$commonSeek$buffer$1":I
    nop

    .end local v3    # "$i$a$-checkNotNull--Buffer$commonSeek$buffer$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not attached to a buffer"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final commonSelect(Lokio/Buffer;Lokio/Options;)I
    .locals 5
    .param p0, "$this$commonSelect"    # Lokio/Buffer;
    .param p1, "options"    # Lokio/Options;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonSelect",
            "options"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 787
    .local v0, "$i$f$commonSelect":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v1, v2}, Lokio/internal/-Buffer;->selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v1

    .line 788
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    .line 791
    :cond_0
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$third_party_java_src_okio_okio_jvm()[Lokio/ByteString;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    .line 792
    .local v2, "selectedSize":I
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->skip(J)V

    .line 793
    return v1
.end method

.method public static final commonSkip(Lokio/Buffer;J)V
    .locals 9
    .param p0, "$this$commonSkip"    # Lokio/Buffer;
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonSkip",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 421
    .local v0, "$i$f$commonSkip":I
    move-wide v1, p1

    .line 422
    .local v1, "byteCount":J
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 423
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v3, :cond_1

    .line 425
    .local v3, "head":Lokio/Segment;
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    .local v4, "b$iv":I
    const/4 v5, 0x0

    .line 1743
    .local v5, "$i$f$minOf":I
    int-to-long v6, v4

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 425
    .end local v4    # "b$iv":I
    .end local v5    # "$i$f$minOf":I
    long-to-int v4, v6

    .line 426
    .local v4, "toSkip":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v5

    int-to-long v7, v4

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 427
    int-to-long v5, v4

    sub-long/2addr v1, v5

    .line 428
    iget v5, v3, Lokio/Segment;->pos:I

    add-int/2addr v5, v4

    iput v5, v3, Lokio/Segment;->pos:I

    .line 430
    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_0

    .line 431
    invoke-virtual {v3}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 432
    invoke-static {v3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .end local v3    # "head":Lokio/Segment;
    .end local v4    # "toSkip":I
    goto :goto_0

    .line 423
    :cond_1
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 435
    :cond_2
    return-void
.end method

.method public static final commonSnapshot(Lokio/Buffer;)Lokio/ByteString;
    .locals 6
    .param p0, "$this$commonSnapshot"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonSnapshot"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1476
    .local v0, "$i$f$commonSnapshot":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1477
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p0, v2}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v1

    return-object v1

    .line 1744
    :cond_1
    const/4 v1, 0x0

    .line 1476
    .local v1, "$i$a$-check--Buffer$commonSnapshot$1":I
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "size > Int.MAX_VALUE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-check--Buffer$commonSnapshot$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonSnapshot(Lokio/Buffer;I)Lokio/ByteString;
    .locals 8
    .param p0, "$this$commonSnapshot"    # Lokio/Buffer;
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonSnapshot",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1482
    .local v0, "$i$f$commonSnapshot":I
    if-nez p1, :cond_0

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-object v1

    .line 1483
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    int-to-long v6, p1

    invoke-static/range {v2 .. v7}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 1486
    const/4 v1, 0x0

    .line 1487
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 1488
    .local v2, "segmentCount":I
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1489
    .local v3, "s":Lokio/Segment;
    :goto_0
    if-ge v1, p1, :cond_2

    .line 1490
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    if-eq v4, v5, :cond_1

    .line 1493
    iget v4, v3, Lokio/Segment;->limit:I

    iget v5, v3, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 1494
    add-int/lit8 v2, v2, 0x1

    .line 1495
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 1491
    :cond_1
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "s.limit == s.pos"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1499
    :cond_2
    new-array v4, v2, [[B

    .line 1500
    .local v4, "segments":[[B
    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [I

    .line 1501
    .local v5, "directory":[I
    const/4 v1, 0x0

    .line 1502
    const/4 v2, 0x0

    .line 1503
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1504
    :goto_1
    if-ge v1, p1, :cond_3

    .line 1505
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v3, Lokio/Segment;->data:[B

    aput-object v6, v4, v2

    .line 1506
    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    .line 1508
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v5, v2

    .line 1509
    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    add-int/2addr v6, v2

    iget v7, v3, Lokio/Segment;->pos:I

    aput v7, v5, v6

    .line 1510
    const/4 v6, 0x1

    iput-boolean v6, v3, Lokio/Segment;->shared:Z

    .line 1511
    add-int/lit8 v2, v2, 0x1

    .line 1512
    iget-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 1515
    :cond_3
    new-instance v6, Lokio/SegmentedByteString;

    invoke-direct {v6, v4, v5}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v6, Lokio/ByteString;

    return-object v6
.end method

.method public static final commonWritableSegment(Lokio/Buffer;I)Lokio/Segment;
    .locals 4
    .param p0, "$this$commonWritableSegment"    # Lokio/Buffer;
    .param p1, "minimumCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonWritableSegment",
            "minimumCapacity"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 556
    .local v0, "$i$f$commonWritableSegment":I
    const/16 v1, 0x2000

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 558
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_1

    .line 559
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    .line 560
    .local v1, "result":Lokio/Segment;
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 561
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 562
    iput-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 563
    return-object v1

    .line 566
    .end local v1    # "result":Lokio/Segment;
    :cond_1
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 567
    .local v2, "tail":Lokio/Segment;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/Segment;->limit:I

    add-int/2addr v3, p1

    if-gt v3, v1, :cond_2

    iget-boolean v1, v2, Lokio/Segment;->owner:Z

    if-nez v1, :cond_3

    .line 568
    :cond_2
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    invoke-virtual {v2, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v2

    .line 570
    :cond_3
    return-object v2

    .line 1744
    .end local v2    # "tail":Lokio/Segment;
    :cond_4
    const/4 v1, 0x0

    .line 556
    .local v1, "$i$a$-require--Buffer$commonWritableSegment$1":I
    nop

    .end local v1    # "$i$a$-require--Buffer$commonWritableSegment$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unexpected capacity"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/ByteString;II)Lokio/Buffer;
    .locals 1
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonWrite",
            "byteString",
            "offset",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 442
    .local v0, "$i$f$commonWrite":I
    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->write$third_party_java_src_okio_okio_jvm(Lokio/Buffer;II)V

    .line 443
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/Source;J)Lokio/Buffer;
    .locals 8
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonWrite",
            "source",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1095
    .local v0, "$i$f$commonWrite":I
    move-wide v1, p2

    .line 1096
    .local v1, "byteCount":J
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 1097
    invoke-interface {p1, p0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    .line 1098
    .local v3, "read":J
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 1099
    sub-long/2addr v1, v3

    .end local v3    # "read":J
    goto :goto_0

    .line 1098
    .restart local v3    # "read":J
    :cond_0
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 1101
    .end local v3    # "read":J
    :cond_1
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;[B)Lokio/Buffer;
    .locals 3
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonWrite",
            "source"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 573
    .local v0, "$i$f$commonWrite":I
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    return-object v1
.end method

.method public static final commonWrite(Lokio/Buffer;[BII)Lokio/Buffer;
    .locals 9
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonWrite",
            "source",
            "offset",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 580
    .local v0, "$i$f$commonWrite":I
    move v1, p2

    .line 581
    .local v1, "offset":I
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, v1

    int-to-long v7, p3

    invoke-static/range {v3 .. v8}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 583
    add-int v2, v1, p3

    .line 584
    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 585
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v3

    .line 587
    .local v3, "tail":Lokio/Segment;
    sub-int v4, v2, v1

    iget v5, v3, Lokio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 588
    .local v4, "toCopy":I
    nop

    .line 589
    iget-object v5, v3, Lokio/Segment;->data:[B

    .line 590
    iget v6, v3, Lokio/Segment;->limit:I

    .line 591
    nop

    .line 592
    add-int v7, v1, v4

    .line 588
    invoke-static {p1, v5, v6, v1, v7}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 595
    add-int/2addr v1, v4

    .line 596
    iget v5, v3, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v3, Lokio/Segment;->limit:I

    .end local v3    # "tail":Lokio/Segment;
    .end local v4    # "toCopy":I
    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 600
    return-object p0
.end method

.method public static final commonWrite(Lokio/Buffer;Lokio/Buffer;J)V
    .locals 10
    .param p0, "$this$commonWrite"    # Lokio/Buffer;
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonWrite",
            "source",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1153
    .local v0, "$i$f$commonWrite":I
    move-wide v5, p2

    .line 1204
    .local v5, "byteCount":J
    const/4 v7, 0x0

    if-eq p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    .line 1205
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 1207
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v3, v5, v1

    if-lez v3, :cond_6

    .line 1209
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, v5, v1

    if-gez v3, :cond_4

    .line 1210
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 1211
    .local v1, "tail":Lokio/Segment;
    :goto_2
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lokio/Segment;->owner:Z

    if-eqz v2, :cond_3

    .line 1212
    iget v2, v1, Lokio/Segment;->limit:I

    int-to-long v2, v2

    add-long/2addr v2, v5

    iget-boolean v4, v1, Lokio/Segment;->shared:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    iget v4, v1, Lokio/Segment;->pos:I

    :goto_3
    int-to-long v8, v4

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x2000

    cmp-long v4, v2, v8

    if-gtz v4, :cond_3

    .line 1215
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v3, v5

    invoke-virtual {v2, v1, v3}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1216
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {p1, v2, v3}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1217
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1218
    return-void

    .line 1222
    :cond_3
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v2

    iput-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1227
    .end local v1    # "tail":Lokio/Segment;
    :cond_4
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1228
    .local v1, "segmentToMove":Lokio/Segment;
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 1229
    .local v2, "movedByteCount":J
    invoke-virtual {v1}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1230
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_5

    .line 1231
    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1232
    iput-object v1, v1, Lokio/Segment;->prev:Lokio/Segment;

    .line 1233
    iget-object v4, v1, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v1, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_4

    .line 1235
    :cond_5
    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1236
    .local v4, "tail":Lokio/Segment;
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v4

    .line 1237
    invoke-virtual {v4}, Lokio/Segment;->compact()V

    .line 1239
    .end local v4    # "tail":Lokio/Segment;
    :goto_4
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1240
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1241
    sub-long/2addr v5, v2

    .end local v1    # "segmentToMove":Lokio/Segment;
    .end local v2    # "movedByteCount":J
    goto/16 :goto_1

    .line 1243
    :cond_6
    return-void

    .line 1744
    :cond_7
    const/4 v1, 0x0

    .line 1204
    .local v1, "$i$a$-require--Buffer$commonWrite$1":I
    nop

    .end local v1    # "$i$a$-require--Buffer$commonWrite$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "source == this"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic commonWrite$default(Lokio/Buffer;Lokio/ByteString;IIILjava/lang/Object;)Lokio/Buffer;
    .locals 0
    .param p0, "$this$commonWrite_u24default"    # Lokio/Buffer;
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 437
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 439
    const/4 p2, 0x0

    .line 437
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 440
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p3

    .line 437
    :cond_1
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "byteString"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 442
    .local p4, "$i$f$commonWrite":I
    invoke-virtual {p1, p0, p2, p3}, Lokio/ByteString;->write$third_party_java_src_okio_okio_jvm(Lokio/Buffer;II)V

    .line 443
    return-object p0
.end method

.method public static final commonWriteAll(Lokio/Buffer;Lokio/Source;)J
    .locals 8
    .param p0, "$this$commonWriteAll"    # Lokio/Buffer;
    .param p1, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonWriteAll",
            "source"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1085
    .local v0, "$i$f$commonWriteAll":I
    const-wide/16 v1, 0x0

    .line 1086
    .local v1, "totalBytesRead":J
    :goto_0
    nop

    .line 1087
    const-wide/16 v3, 0x2000

    invoke-interface {p1, p0, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    .line 1088
    .local v3, "readCount":J
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 1089
    add-long/2addr v1, v3

    .end local v3    # "readCount":J
    goto :goto_0

    .line 1091
    :cond_0
    return-wide v1
.end method

.method public static final commonWriteByte(Lokio/Buffer;I)Lokio/Buffer;
    .locals 6
    .param p0, "$this$commonWriteByte"    # Lokio/Buffer;
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonWriteByte",
            "b"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1105
    .local v0, "$i$f$commonWriteByte":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v1

    .line 1106
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    iget v3, v1, Lokio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lokio/Segment;->limit:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 1107
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1108
    return-object p0
.end method

.method public static final commonWriteDecimalLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 14
    .param p0, "$this$commonWriteDecimalLong"    # Lokio/Buffer;
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonWriteDecimalLong",
            "v"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 447
    .local v0, "$i$f$commonWriteDecimalLong":I
    move-wide v1, p1

    .line 448
    .local v1, "v":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 450
    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v3

    return-object v3

    .line 453
    :cond_0
    const/4 v5, 0x0

    .line 454
    .local v5, "negative":Z
    cmp-long v6, v1, v3

    if-gez v6, :cond_2

    .line 455
    neg-long v1, v1

    .line 456
    cmp-long v6, v1, v3

    if-gez v6, :cond_1

    .line 457
    const-string v3, "-9223372036854775808"

    invoke-virtual {p0, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v3

    return-object v3

    .line 459
    :cond_1
    const/4 v5, 0x1

    .line 462
    :cond_2
    invoke-static {v1, v2}, Lokio/internal/-Buffer;->access$countDigitsIn(J)I

    move-result v6

    .line 463
    .local v6, "width":I
    if-eqz v5, :cond_3

    .line 464
    add-int/lit8 v6, v6, 0x1

    .line 467
    :cond_3
    invoke-virtual {p0, v6}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v7

    .line 468
    .local v7, "tail":Lokio/Segment;
    iget-object v8, v7, Lokio/Segment;->data:[B

    .line 469
    .local v8, "data":[B
    iget v9, v7, Lokio/Segment;->limit:I

    add-int/2addr v9, v6

    .line 470
    .local v9, "pos":I
    :goto_0
    cmp-long v10, v1, v3

    if-eqz v10, :cond_4

    .line 471
    const/16 v10, 0xa

    int-to-long v10, v10

    rem-long v12, v1, v10

    long-to-int v13, v12

    .line 472
    .local v13, "digit":I
    add-int/lit8 v9, v9, -0x1

    invoke-static {}, Lokio/internal/-Buffer;->getHEX_DIGIT_BYTES()[B

    move-result-object v12

    aget-byte v12, v12, v13

    aput-byte v12, v8, v9

    .line 473
    div-long/2addr v1, v10

    .end local v13    # "digit":I
    goto :goto_0

    .line 475
    :cond_4
    if-eqz v5, :cond_5

    .line 476
    add-int/lit8 v9, v9, -0x1

    const/16 v3, 0x2d

    aput-byte v3, v8, v9

    .line 479
    :cond_5
    iget v3, v7, Lokio/Segment;->limit:I

    add-int/2addr v3, v6

    iput v3, v7, Lokio/Segment;->limit:I

    .line 480
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    int-to-long v10, v6

    add-long/2addr v3, v10

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 481
    return-object p0
.end method

.method public static final commonWriteHexadecimalUnsignedLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 16
    .param p0, "$this$commonWriteHexadecimalUnsignedLong"    # Lokio/Buffer;
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonWriteHexadecimalUnsignedLong",
            "v"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 513
    .local v1, "$i$f$commonWriteHexadecimalUnsignedLong":I
    move-wide/from16 v2, p1

    .line 514
    .local v2, "v":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 516
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    return-object v4

    .line 521
    :cond_0
    move-wide v4, v2

    .line 522
    .local v4, "x":J
    const/4 v6, 0x1

    ushr-long v7, v4, v6

    or-long/2addr v4, v7

    .line 523
    const/4 v7, 0x2

    ushr-long v8, v4, v7

    or-long/2addr v4, v8

    .line 524
    const/4 v8, 0x4

    ushr-long v9, v4, v8

    or-long/2addr v4, v9

    .line 525
    const/16 v9, 0x8

    ushr-long v10, v4, v9

    or-long/2addr v4, v10

    .line 526
    const/16 v10, 0x10

    ushr-long v11, v4, v10

    or-long/2addr v4, v11

    .line 527
    const/16 v11, 0x20

    ushr-long v12, v4, v11

    or-long/2addr v4, v12

    .line 531
    ushr-long v12, v4, v6

    const-wide v14, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v12, v14

    sub-long/2addr v4, v12

    .line 532
    ushr-long v12, v4, v7

    const-wide v14, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v12, v14

    and-long/2addr v14, v4

    add-long/2addr v12, v14

    .line 533
    .end local v4    # "x":J
    .local v12, "x":J
    ushr-long v4, v12, v8

    add-long/2addr v4, v12

    const-wide v14, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v4, v14

    .line 534
    .end local v12    # "x":J
    .restart local v4    # "x":J
    ushr-long v12, v4, v9

    add-long/2addr v4, v12

    .line 535
    ushr-long v9, v4, v10

    add-long/2addr v4, v9

    .line 536
    const-wide/16 v9, 0x3f

    and-long v12, v4, v9

    ushr-long v14, v4, v11

    and-long/2addr v9, v14

    add-long/2addr v12, v9

    .line 539
    .end local v4    # "x":J
    .restart local v12    # "x":J
    const/4 v4, 0x3

    int-to-long v4, v4

    add-long/2addr v4, v12

    int-to-long v9, v8

    div-long/2addr v4, v9

    long-to-int v5, v4

    .line 541
    .local v5, "width":I
    invoke-virtual {v0, v5}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v4

    .line 542
    .local v4, "tail":Lokio/Segment;
    iget-object v7, v4, Lokio/Segment;->data:[B

    .line 543
    .local v7, "data":[B
    iget v9, v4, Lokio/Segment;->limit:I

    add-int/2addr v9, v5

    sub-int/2addr v9, v6

    .line 544
    .local v9, "pos":I
    iget v6, v4, Lokio/Segment;->limit:I

    .line 545
    .local v6, "start":I
    :goto_0
    if-lt v9, v6, :cond_1

    .line 546
    invoke-static {}, Lokio/internal/-Buffer;->getHEX_DIGIT_BYTES()[B

    move-result-object v10

    const-wide/16 v14, 0xf

    and-long/2addr v14, v2

    long-to-int v11, v14

    aget-byte v10, v10, v11

    aput-byte v10, v7, v9

    .line 547
    ushr-long/2addr v2, v8

    .line 548
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 550
    :cond_1
    iget v8, v4, Lokio/Segment;->limit:I

    add-int/2addr v8, v5

    iput v8, v4, Lokio/Segment;->limit:I

    .line 551
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v10

    int-to-long v14, v5

    add-long/2addr v10, v14

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 552
    return-object v0
.end method

.method public static final commonWriteInt(Lokio/Buffer;I)Lokio/Buffer;
    .locals 8
    .param p0, "$this$commonWriteInt"    # Lokio/Buffer;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonWriteInt",
            "i"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1123
    .local v0, "$i$f$commonWriteInt":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v1

    .line 1124
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1125
    .local v2, "data":[B
    iget v3, v1, Lokio/Segment;->limit:I

    .line 1126
    .local v3, "limit":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .local v4, "limit":I
    ushr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1127
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    ushr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1128
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1129
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1130
    iput v3, v1, Lokio/Segment;->limit:I

    .line 1131
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1132
    return-object p0
.end method

.method public static final commonWriteLong(Lokio/Buffer;J)Lokio/Buffer;
    .locals 10
    .param p0, "$this$commonWriteLong"    # Lokio/Buffer;
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonWriteLong",
            "v"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1136
    .local v0, "$i$f$commonWriteLong":I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v2

    .line 1137
    .local v2, "tail":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1138
    .local v3, "data":[B
    iget v4, v2, Lokio/Segment;->limit:I

    .line 1139
    .local v4, "limit":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .local v5, "limit":I
    const/16 v6, 0x38

    ushr-long v6, p1, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v4

    .line 1140
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit":I
    .restart local v4    # "limit":I
    const/16 v6, 0x30

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v5

    .line 1141
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .restart local v5    # "limit":I
    const/16 v6, 0x28

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v4

    .line 1142
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit":I
    .restart local v4    # "limit":I
    const/16 v6, 0x20

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v5

    .line 1143
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .restart local v5    # "limit":I
    const/16 v6, 0x18

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v4

    .line 1144
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit":I
    .restart local v4    # "limit":I
    const/16 v6, 0x10

    ushr-long v6, p1, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v3, v5

    .line 1145
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit":I
    .restart local v5    # "limit":I
    ushr-long v6, p1, v1

    and-long/2addr v6, v8

    long-to-int v1, v6

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    .line 1146
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "limit":I
    .local v1, "limit":I
    and-long v6, p1, v8

    long-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 1147
    iput v1, v2, Lokio/Segment;->limit:I

    .line 1148
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1149
    return-object p0
.end method

.method public static final commonWriteShort(Lokio/Buffer;I)Lokio/Buffer;
    .locals 8
    .param p0, "$this$commonWriteShort"    # Lokio/Buffer;
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonWriteShort",
            "s"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1112
    .local v0, "$i$f$commonWriteShort":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v1

    .line 1113
    .local v1, "tail":Lokio/Segment;
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1114
    .local v2, "data":[B
    iget v3, v1, Lokio/Segment;->limit:I

    .line 1115
    .local v3, "limit":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "limit":I
    .local v4, "limit":I
    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 1116
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1117
    iput v3, v1, Lokio/Segment;->limit:I

    .line 1118
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1119
    return-object p0
.end method

.method public static final commonWriteUtf8(Lokio/Buffer;Ljava/lang/String;II)Lokio/Buffer;
    .locals 19
    .param p0, "$this$commonWriteUtf8"    # Lokio/Buffer;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonWriteUtf8",
            "string",
            "beginIndex",
            "endIndex"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "string"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 943
    .local v4, "$i$f$commonWriteUtf8":I
    const/4 v6, 0x1

    if-ltz v2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_f

    .line 944
    if-lt v3, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_e

    .line 945
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v3, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_d

    .line 948
    move/from16 v7, p2

    .line 949
    .local v7, "i":I
    :goto_3
    if-ge v7, v3, :cond_c

    .line 950
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 952
    .local v8, "c":I
    nop

    .line 953
    const/16 v9, 0x80

    if-ge v8, v9, :cond_4

    .line 954
    invoke-virtual {v0, v6}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v10

    .line 955
    .local v10, "tail":Lokio/Segment;
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 956
    .local v11, "data":[B
    iget v12, v10, Lokio/Segment;->limit:I

    sub-int/2addr v12, v7

    .line 957
    .local v12, "segmentOffset":I
    rsub-int v13, v12, 0x2000

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 960
    .local v13, "runLimit":I
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i":I
    .local v14, "i":I
    add-int/2addr v7, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v7

    move v7, v14

    .line 964
    .end local v14    # "i":I
    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v13, :cond_3

    .line 965
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 966
    if-ge v8, v9, :cond_3

    .line 967
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i":I
    .restart local v14    # "i":I
    add-int/2addr v7, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v7

    move v7, v14

    goto :goto_4

    .line 970
    .end local v14    # "i":I
    .restart local v7    # "i":I
    :cond_3
    add-int v9, v7, v12

    iget v14, v10, Lokio/Segment;->limit:I

    sub-int/2addr v9, v14

    .line 971
    .local v9, "runSize":I
    iget v14, v10, Lokio/Segment;->limit:I

    add-int/2addr v14, v9

    iput v14, v10, Lokio/Segment;->limit:I

    .line 972
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v14

    const/16 v16, 0x1

    int-to-long v5, v9

    add-long/2addr v14, v5

    invoke-virtual {v0, v14, v15}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    const/4 v6, 0x1

    .end local v9    # "runSize":I
    .end local v10    # "tail":Lokio/Segment;
    .end local v11    # "data":[B
    .end local v12    # "segmentOffset":I
    .end local v13    # "runLimit":I
    goto :goto_3

    .line 975
    :cond_4
    const/16 v16, 0x1

    const/16 v5, 0x800

    const/4 v6, 0x2

    if-ge v8, v5, :cond_5

    .line 977
    invoke-virtual {v0, v6}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v5

    .line 979
    .local v5, "tail":Lokio/Segment;
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v12, v8, 0x6

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 980
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    add-int/lit8 v11, v11, 0x1

    and-int/lit8 v12, v8, 0x3f

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v10, v11

    .line 982
    iget v9, v5, Lokio/Segment;->limit:I

    add-int/2addr v9, v6

    iput v9, v5, Lokio/Segment;->limit:I

    .line 983
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    add-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 984
    nop

    .end local v5    # "tail":Lokio/Segment;
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 987
    :cond_5
    const v5, 0xd800

    const/4 v10, 0x3

    const/16 v11, 0x3f

    if-lt v8, v5, :cond_b

    const v5, 0xdfff

    if-le v8, v5, :cond_6

    const/16 v17, 0x2

    goto/16 :goto_8

    .line 1004
    :cond_6
    add-int/lit8 v5, v7, 0x1

    if-ge v5, v3, :cond_7

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    .line 1005
    .local v5, "low":I
    :goto_5
    const v12, 0xdbff

    if-gt v8, v12, :cond_a

    const v12, 0xdc00

    if-gt v12, v5, :cond_8

    const v12, 0xe000

    if-ge v5, v12, :cond_8

    const/4 v12, 0x1

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    if-nez v12, :cond_9

    goto :goto_7

    .line 1012
    :cond_9
    and-int/lit16 v12, v8, 0x3ff

    shl-int/lit8 v12, v12, 0xa

    and-int/lit16 v13, v5, 0x3ff

    or-int/2addr v12, v13

    const/high16 v13, 0x10000

    add-int/2addr v12, v13

    .line 1015
    .local v12, "codePoint":I
    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v14

    .line 1017
    .local v14, "tail":Lokio/Segment;
    iget-object v15, v14, Lokio/Segment;->data:[B

    const/16 v17, 0x2

    iget v6, v14, Lokio/Segment;->limit:I

    const/16 v18, 0x4

    shr-int/lit8 v13, v12, 0x12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v15, v6

    .line 1018
    iget-object v6, v14, Lokio/Segment;->data:[B

    iget v13, v14, Lokio/Segment;->limit:I

    add-int/lit8 v13, v13, 0x1

    shr-int/lit8 v15, v12, 0xc

    and-int/2addr v15, v11

    or-int/2addr v15, v9

    int-to-byte v15, v15

    aput-byte v15, v6, v13

    .line 1019
    iget-object v6, v14, Lokio/Segment;->data:[B

    iget v13, v14, Lokio/Segment;->limit:I

    add-int/lit8 v13, v13, 0x2

    shr-int/lit8 v15, v12, 0x6

    and-int/2addr v11, v15

    or-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v6, v13

    .line 1020
    iget-object v6, v14, Lokio/Segment;->data:[B

    iget v11, v14, Lokio/Segment;->limit:I

    add-int/2addr v11, v10

    and-int/lit8 v10, v12, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v11

    .line 1022
    iget v6, v14, Lokio/Segment;->limit:I

    add-int/lit8 v6, v6, 0x4

    iput v6, v14, Lokio/Segment;->limit:I

    .line 1023
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v17, 0x4

    add-long v9, v9, v17

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1024
    add-int/lit8 v7, v7, 0x2

    const/4 v6, 0x1

    .end local v12    # "codePoint":I
    .end local v14    # "tail":Lokio/Segment;
    goto/16 :goto_3

    .line 1006
    :cond_a
    :goto_7
    invoke-virtual {v0, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1007
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 987
    .end local v5    # "low":I
    :cond_b
    const/16 v17, 0x2

    .line 989
    :goto_8
    invoke-virtual {v0, v10}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v5

    .line 991
    .local v5, "tail":Lokio/Segment;
    iget-object v6, v5, Lokio/Segment;->data:[B

    iget v12, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v13, v8, 0xc

    or-int/lit16 v13, v13, 0xe0

    int-to-byte v13, v13

    aput-byte v13, v6, v12

    .line 992
    iget-object v6, v5, Lokio/Segment;->data:[B

    iget v12, v5, Lokio/Segment;->limit:I

    add-int/lit8 v12, v12, 0x1

    shr-int/lit8 v13, v8, 0x6

    and-int/2addr v11, v13

    or-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v6, v12

    .line 993
    iget-object v6, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    add-int/lit8 v11, v11, 0x2

    and-int/lit8 v12, v8, 0x3f

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v6, v11

    .line 995
    iget v6, v5, Lokio/Segment;->limit:I

    add-int/2addr v6, v10

    iput v6, v5, Lokio/Segment;->limit:I

    .line 996
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x3

    add-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 997
    nop

    .end local v5    # "tail":Lokio/Segment;
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 1030
    .end local v8    # "c":I
    :cond_c
    return-object v0

    .line 1744
    .end local v7    # "i":I
    :cond_d
    const/4 v5, 0x0

    .line 945
    .local v5, "$i$a$-require--Buffer$commonWriteUtf8$3":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endIndex > string.length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require--Buffer$commonWriteUtf8$3":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1744
    :cond_e
    const/4 v5, 0x0

    .line 944
    .local v5, "$i$a$-require--Buffer$commonWriteUtf8$2":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex < beginIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require--Buffer$commonWriteUtf8$2":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1744
    :cond_f
    const/4 v5, 0x0

    .line 943
    .local v5, "$i$a$-require--Buffer$commonWriteUtf8$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beginIndex < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require--Buffer$commonWriteUtf8$1":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static final commonWriteUtf8CodePoint(Lokio/Buffer;I)Lokio/Buffer;
    .locals 11
    .param p0, "$this$commonWriteUtf8CodePoint"    # Lokio/Buffer;
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonWriteUtf8CodePoint",
            "codePoint"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1034
    .local v0, "$i$f$commonWriteUtf8CodePoint":I
    nop

    .line 1035
    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    .line 1037
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_0

    .line 1039
    :cond_0
    const/16 v2, 0x800

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge p1, v2, :cond_1

    .line 1041
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v2

    .line 1043
    .local v2, "tail":Lokio/Segment;
    iget-object v5, v2, Lokio/Segment;->data:[B

    iget v6, v2, Lokio/Segment;->limit:I

    shr-int/lit8 v7, p1, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1044
    iget-object v5, v2, Lokio/Segment;->data:[B

    iget v6, v2, Lokio/Segment;->limit:I

    add-int/2addr v6, v3

    and-int/lit8 v3, p1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v5, v6

    .line 1046
    iget v1, v2, Lokio/Segment;->limit:I

    add-int/2addr v1, v4

    iput v1, v2, Lokio/Segment;->limit:I

    .line 1047
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .end local v2    # "tail":Lokio/Segment;
    goto/16 :goto_0

    .line 1049
    :cond_1
    const v2, 0xd800

    const/4 v5, 0x0

    if-gt v2, p1, :cond_2

    const v2, 0xe000

    if-ge p1, v2, :cond_2

    const/4 v5, 0x1

    :cond_2
    const/16 v2, 0x3f

    if-eqz v5, :cond_3

    .line 1051
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_0

    .line 1053
    :cond_3
    const/high16 v5, 0x10000

    const/4 v6, 0x3

    if-ge p1, v5, :cond_4

    .line 1055
    invoke-virtual {p0, v6}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v5

    .line 1057
    .local v5, "tail":Lokio/Segment;
    iget-object v7, v5, Lokio/Segment;->data:[B

    iget v8, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v9, p1, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1058
    iget-object v7, v5, Lokio/Segment;->data:[B

    iget v8, v5, Lokio/Segment;->limit:I

    add-int/2addr v8, v3

    shr-int/lit8 v3, p1, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, v7, v8

    .line 1059
    iget-object v2, v5, Lokio/Segment;->data:[B

    iget v3, v5, Lokio/Segment;->limit:I

    add-int/2addr v3, v4

    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 1061
    iget v1, v5, Lokio/Segment;->limit:I

    add-int/2addr v1, v6

    iput v1, v5, Lokio/Segment;->limit:I

    .line 1062
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .end local v5    # "tail":Lokio/Segment;
    goto :goto_0

    .line 1064
    :cond_4
    const v5, 0x10ffff

    if-gt p1, v5, :cond_5

    .line 1066
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v7

    .line 1068
    .local v7, "tail":Lokio/Segment;
    iget-object v8, v7, Lokio/Segment;->data:[B

    iget v9, v7, Lokio/Segment;->limit:I

    shr-int/lit8 v10, p1, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1069
    iget-object v8, v7, Lokio/Segment;->data:[B

    iget v9, v7, Lokio/Segment;->limit:I

    add-int/2addr v9, v3

    shr-int/lit8 v3, p1, 0xc

    and-int/2addr v3, v2

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v8, v9

    .line 1070
    iget-object v3, v7, Lokio/Segment;->data:[B

    iget v8, v7, Lokio/Segment;->limit:I

    add-int/2addr v8, v4

    shr-int/lit8 v4, p1, 0x6

    and-int/2addr v2, v4

    or-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, v3, v8

    .line 1071
    iget-object v2, v7, Lokio/Segment;->data:[B

    iget v3, v7, Lokio/Segment;->limit:I

    add-int/2addr v3, v6

    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 1073
    iget v1, v7, Lokio/Segment;->limit:I

    add-int/2addr v1, v5

    iput v1, v7, Lokio/Segment;->limit:I

    .line 1074
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1081
    .end local v7    # "tail":Lokio/Segment;
    :goto_0
    return-object p0

    .line 1077
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lokio/-SegmentedByteString;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected code point: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final countDigitsIn(J)I
    .locals 4
    .param p0, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 485
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    mul-int/lit8 v0, v0, 0xa

    ushr-int/lit8 v0, v0, 0x5

    .line 486
    .local v0, "guess":I
    sget-object v1, Lokio/internal/-Buffer;->DigitCountToLargestValue:[J

    aget-wide v2, v1, v0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public static final getHEX_DIGIT_BYTES()[B
    .locals 1

    .line 43
    sget-object v0, Lokio/internal/-Buffer;->HEX_DIGIT_BYTES:[B

    return-object v0
.end method

.method public static final rangeEquals(Lokio/Segment;I[BII)Z
    .locals 7
    .param p0, "segment"    # Lokio/Segment;
    .param p1, "segmentPos"    # I
    .param p2, "bytes"    # [B
    .param p3, "bytesOffset"    # I
    .param p4, "bytesLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "segment",
            "segmentPos",
            "bytes",
            "bytesOffset",
            "bytesLimit"
        }
    .end annotation

    const-string v0, "segment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    move-object v0, p0

    .line 61
    .local v0, "segment":Lokio/Segment;
    move v1, p1

    .line 62
    .local v1, "segmentPos":I
    iget v2, v0, Lokio/Segment;->limit:I

    .line 63
    .local v2, "segmentLimit":I
    iget-object v3, v0, Lokio/Segment;->data:[B

    .line 65
    .local v3, "data":[B
    move v4, p3

    .line 66
    .local v4, "i":I
    :goto_0
    if-ge v4, p4, :cond_2

    .line 67
    if-ne v1, v2, :cond_0

    .line 68
    iget-object v5, v0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    .end local v0    # "segment":Lokio/Segment;
    .local v5, "segment":Lokio/Segment;
    iget-object v0, v5, Lokio/Segment;->data:[B

    .line 70
    .end local v3    # "data":[B
    .local v0, "data":[B
    iget v1, v5, Lokio/Segment;->pos:I

    .line 71
    iget v2, v5, Lokio/Segment;->limit:I

    move-object v3, v0

    move-object v0, v5

    .line 74
    .end local v5    # "segment":Lokio/Segment;
    .local v0, "segment":Lokio/Segment;
    .restart local v3    # "data":[B
    :cond_0
    aget-byte v5, v3, v1

    aget-byte v6, p2, v4

    if-eq v5, v6, :cond_1

    .line 75
    const/4 v5, 0x0

    return v5

    .line 78
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_2
    const/4 v5, 0x1

    return v5
.end method

.method public static final readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;
    .locals 5
    .param p0, "$this$readUtf8Line"    # Lokio/Buffer;
    .param p1, "newline"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$readUtf8Line",
            "newline"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    nop

    .line 87
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 89
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "result":Ljava/lang/String;
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 91
    nop

    .end local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0    # "result":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 97
    nop

    .line 86
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method public static final seek(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$seek"    # Lokio/Buffer;
    .param p1, "fromIndex"    # J
    .param p3, "lambda"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$seek",
            "fromIndex",
            "lambda"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Buffer;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lokio/Segment;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lambda"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    .local v0, "$i$f$seek":I
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p3, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 112
    .local v1, "s":Lokio/Segment;
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v4, v2, p1

    if-gez v4, :cond_2

    .line 114
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 115
    .local v2, "offset":J
    :goto_0
    cmp-long v4, v2, p1

    if-lez v4, :cond_1

    .line 116
    iget-object v4, v1, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v4

    .line 117
    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 122
    .end local v2    # "offset":J
    :cond_2
    const-wide/16 v2, 0x0

    .line 123
    .restart local v2    # "offset":J
    :goto_1
    nop

    .line 124
    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 125
    .local v4, "nextOffset":J
    cmp-long v6, v4, p1

    if-gtz v6, :cond_3

    .line 126
    iget-object v6, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v6

    .line 127
    move-wide v2, v4

    .end local v4    # "nextOffset":J
    goto :goto_1

    .line 129
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 19
    .param p0, "$this$selectPrefix"    # Lokio/Buffer;
    .param p1, "options"    # Lokio/Options;
    .param p2, "selectTruncated"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$selectPrefix",
            "options",
            "selectTruncated"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v4, -0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    const/4 v3, -0x2

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    return v3

    .line 148
    .local v1, "head":Lokio/Segment;
    :cond_1
    move-object v5, v1

    .line 149
    .local v5, "s":Lokio/Segment;
    iget-object v6, v1, Lokio/Segment;->data:[B

    .line 150
    .local v6, "data":[B
    iget v7, v1, Lokio/Segment;->pos:I

    .line 151
    .local v7, "pos":I
    iget v8, v1, Lokio/Segment;->limit:I

    .line 153
    .local v8, "limit":I
    invoke-virtual {v2}, Lokio/Options;->getTrie$third_party_java_src_okio_okio_jvm()[I

    move-result-object v9

    .line 154
    .local v9, "trie":[I
    const/4 v10, 0x0

    .line 156
    .local v10, "triePos":I
    const/4 v11, -0x1

    .line 159
    .local v11, "prefixIndex":I
    :goto_1
    nop

    .line 160
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "triePos":I
    .local v12, "triePos":I
    aget v10, v9, v10

    .line 162
    .local v10, "scanOrSelect":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "triePos":I
    .local v13, "triePos":I
    aget v12, v9, v12

    .line 163
    .local v12, "possiblePrefixIndex":I
    if-eq v12, v4, :cond_2

    .line 164
    move v11, v12

    .line 167
    :cond_2
    const/4 v14, 0x0

    .line 169
    .local v14, "nextStep":I
    if-nez v5, :cond_3

    .line 170
    const/16 v16, -0x2

    goto :goto_4

    .line 171
    :cond_3
    if-gez v10, :cond_b

    .line 173
    mul-int/lit8 v15, v10, -0x1

    .line 174
    .local v15, "scanByteCount":I
    const/16 v16, -0x2

    add-int v3, v13, v15

    .line 175
    .local v3, "trieLimit":I
    :goto_2
    nop

    .line 176
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "pos":I
    .local v4, "pos":I
    aget-byte v7, v6, v7

    .local v7, "$this$and$iv":B
    const/16 v17, 0xff

    .local v17, "other$iv":I
    const/16 v18, 0x0

    .line 1701
    .local v18, "$i$f$and":I
    and-int v7, v7, v17

    .line 176
    .end local v7    # "$this$and$iv":B
    .end local v17    # "other$iv":I
    .end local v18    # "$i$f$and":I
    nop

    .line 177
    .local v7, "byte":I
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "triePos":I
    .local v0, "triePos":I
    aget v13, v9, v13

    if-eq v7, v13, :cond_4

    return v11

    .line 178
    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 181
    .local v13, "scanComplete":Z
    :goto_3
    if-ne v4, v8, :cond_8

    .line 182
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v17, v0

    .end local v0    # "triePos":I
    .local v17, "triePos":I
    iget-object v0, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v0

    .line 183
    iget v0, v5, Lokio/Segment;->pos:I

    .line 184
    .end local v4    # "pos":I
    .local v0, "pos":I
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 185
    iget v8, v5, Lokio/Segment;->limit:I

    .line 186
    if-ne v5, v1, :cond_9

    .line 187
    if-eqz v13, :cond_6

    .line 188
    const/4 v4, 0x0

    move-object v5, v4

    .end local v5    # "s":Lokio/Segment;
    .local v4, "s":Lokio/Segment;
    goto :goto_5

    .line 187
    .end local v4    # "s":Lokio/Segment;
    .restart local v5    # "s":Lokio/Segment;
    :cond_6
    move v7, v0

    move/from16 v13, v17

    .line 230
    .end local v0    # "pos":I
    .end local v3    # "trieLimit":I
    .end local v10    # "scanOrSelect":I
    .end local v12    # "possiblePrefixIndex":I
    .end local v14    # "nextStep":I
    .end local v15    # "scanByteCount":I
    .end local v17    # "triePos":I
    .local v7, "pos":I
    .local v13, "triePos":I
    :goto_4
    if-eqz p2, :cond_7

    return v16

    .line 231
    :cond_7
    return v11

    .line 181
    .local v0, "triePos":I
    .restart local v3    # "trieLimit":I
    .local v4, "pos":I
    .local v7, "byte":I
    .restart local v10    # "scanOrSelect":I
    .restart local v12    # "possiblePrefixIndex":I
    .local v13, "scanComplete":Z
    .restart local v14    # "nextStep":I
    .restart local v15    # "scanByteCount":I
    :cond_8
    move/from16 v17, v0

    .end local v0    # "triePos":I
    .restart local v17    # "triePos":I
    move v0, v4

    .line 192
    .end local v4    # "pos":I
    .local v0, "pos":I
    :cond_9
    :goto_5
    if-eqz v13, :cond_a

    .line 193
    aget v4, v9, v17

    .line 194
    .end local v14    # "nextStep":I
    .local v4, "nextStep":I
    move v7, v0

    move/from16 v0, v17

    goto :goto_7

    .line 192
    .end local v4    # "nextStep":I
    .restart local v14    # "nextStep":I
    :cond_a
    const/4 v4, -0x1

    move v7, v0

    move/from16 v13, v17

    move-object/from16 v0, p0

    goto :goto_2

    .line 199
    .end local v0    # "pos":I
    .end local v3    # "trieLimit":I
    .end local v15    # "scanByteCount":I
    .end local v17    # "triePos":I
    .local v7, "pos":I
    .local v13, "triePos":I
    :cond_b
    const/16 v16, -0x2

    move v0, v10

    .line 200
    .local v0, "selectChoiceCount":I
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "pos":I
    .local v3, "pos":I
    aget-byte v4, v6, v7

    .local v4, "$this$and$iv":B
    const/16 v7, 0xff

    .local v7, "other$iv":I
    const/4 v15, 0x0

    .line 1702
    .local v15, "$i$f$and":I
    and-int/2addr v4, v7

    .line 200
    .end local v4    # "$this$and$iv":B
    .end local v7    # "other$iv":I
    .end local v15    # "$i$f$and":I
    nop

    .line 201
    .local v4, "byte":I
    add-int v7, v13, v0

    .line 202
    .local v7, "selectLimit":I
    :goto_6
    nop

    .line 203
    if-ne v13, v7, :cond_c

    return v11

    .line 205
    :cond_c
    aget v15, v9, v13

    if-ne v4, v15, :cond_10

    .line 206
    add-int v15, v13, v0

    aget v14, v9, v15

    .line 207
    nop

    .line 214
    if-ne v3, v8, :cond_e

    .line 215
    iget-object v15, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 216
    .end local v5    # "s":Lokio/Segment;
    .local v15, "s":Lokio/Segment;
    iget v3, v15, Lokio/Segment;->pos:I

    .line 217
    iget-object v5, v15, Lokio/Segment;->data:[B

    .line 218
    .end local v6    # "data":[B
    .local v5, "data":[B
    iget v6, v15, Lokio/Segment;->limit:I

    .line 219
    .end local v8    # "limit":I
    .local v6, "limit":I
    if-ne v15, v1, :cond_d

    .line 220
    const/4 v8, 0x0

    move v0, v6

    move-object v6, v5

    move-object v5, v8

    move v8, v0

    move v7, v3

    move v0, v13

    move v4, v14

    .end local v15    # "s":Lokio/Segment;
    .local v8, "s":Lokio/Segment;
    goto :goto_7

    .line 219
    .end local v8    # "s":Lokio/Segment;
    .restart local v15    # "s":Lokio/Segment;
    :cond_d
    move v7, v3

    move v8, v6

    move v0, v13

    move v4, v14

    move-object v6, v5

    move-object v5, v15

    goto :goto_7

    .line 214
    .end local v15    # "s":Lokio/Segment;
    .local v5, "s":Lokio/Segment;
    .local v6, "data":[B
    .local v8, "limit":I
    :cond_e
    move v7, v3

    move v0, v13

    move v4, v14

    .line 225
    .end local v3    # "pos":I
    .end local v13    # "triePos":I
    .end local v14    # "nextStep":I
    .local v0, "triePos":I
    .local v4, "nextStep":I
    .local v7, "pos":I
    :goto_7
    if-ltz v4, :cond_f

    return v4

    .line 226
    :cond_f
    neg-int v10, v4

    const/4 v4, -0x1

    move-object/from16 v0, p0

    .end local v0    # "triePos":I
    .end local v4    # "nextStep":I
    .end local v12    # "possiblePrefixIndex":I
    .local v10, "triePos":I
    goto/16 :goto_1

    .line 210
    .local v0, "selectChoiceCount":I
    .restart local v3    # "pos":I
    .local v4, "byte":I
    .local v7, "selectLimit":I
    .local v10, "scanOrSelect":I
    .restart local v12    # "possiblePrefixIndex":I
    .restart local v13    # "triePos":I
    .restart local v14    # "nextStep":I
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_6
.end method

.method public static synthetic selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .locals 0

    .line 145
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/-Buffer;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result p0

    return p0
.end method
