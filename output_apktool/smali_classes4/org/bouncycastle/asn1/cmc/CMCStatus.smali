.class public Lorg/bouncycastle/asn1/cmc/CMCStatus;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CMCStatus.java"


# static fields
.field public static final confirmRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final failed:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final noSupport:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final partial:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final pending:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field public static final popRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

.field private static range:Ljava/util/Map;

.field public static final success:Lorg/bouncycastle/asn1/cmc/CMCStatus;


# instance fields
.field private final value:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->success:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->failed:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->pending:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 30
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x4

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->noSupport:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 31
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x5

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->confirmRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 32
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x6

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x7

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CMCStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->partial:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    .line 39
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->success:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCStatus;->success:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->failed:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCStatus;->failed:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->pending:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCStatus;->pending:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->noSupport:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCStatus;->noSupport:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->confirmRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCStatus;->confirmRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCStatus;->popRequired:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->partial:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/bouncycastle/asn1/cmc/CMCStatus;->partial:Lorg/bouncycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "value"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 53
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatus;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 57
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    return-object v0

    .line 62
    :cond_0
    if-eqz p0, :cond_2

    .line 64
    sget-object v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/CMCStatus;

    .line 66
    .local v0, "status":Lorg/bouncycastle/asn1/cmc/CMCStatus;
    if-eqz v0, :cond_1

    .line 68
    return-object v0

    .line 71
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown object in getInstance(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    .end local v0    # "status":Lorg/bouncycastle/asn1/cmc/CMCStatus;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
