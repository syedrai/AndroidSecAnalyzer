.class final enum Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$2;
.super Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
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

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;-><init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getLongLittleEndian([BI)J
    .locals 5
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "offset"
        }
    .end annotation

    .line 159
    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->-$$Nest$sfgettheUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->-$$Nest$sfgetBYTE_ARRAY_BASE_OFFSET()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 161
    .local v0, "bigEndian":J
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public putLongLittleEndian([BIJ)V
    .locals 8
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "array",
            "offset",
            "value"
        }
    .end annotation

    .line 167
    invoke-static {p3, p4}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    .line 168
    .local v4, "littleEndianValue":J
    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->-$$Nest$sfgettheUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->-$$Nest$sfgetBYTE_ARRAY_BASE_OFFSET()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v1, v6

    move-wide v2, v1

    move-object v1, p1

    .end local p1    # "array":[B
    .local v1, "array":[B
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 169
    return-void
.end method
