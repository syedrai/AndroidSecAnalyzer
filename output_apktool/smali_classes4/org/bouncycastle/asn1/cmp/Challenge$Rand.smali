.class public Lorg/bouncycastle/asn1/cmp/Challenge$Rand;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "Challenge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/cmp/Challenge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rand"
.end annotation


# instance fields
.field private final _int:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final sender:Lorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "_int"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "sender"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "_int",
            "sender"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 166
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->_int:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 167
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 168
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->_int:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 179
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/Challenge$Rand;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 183
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;

    if-eqz v0, :cond_0

    .line 185
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;

    return-object v0

    .line 187
    :cond_0
    if-eqz p0, :cond_1

    .line 189
    new-instance v0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 192
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getInt()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->_int:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSender()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 208
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->_int:Lorg/bouncycastle/asn1/ASN1Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->sender:Lorg/bouncycastle/asn1/x509/GeneralName;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
