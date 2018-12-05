.class public final Lcom/artfulbits/aiCharts/Base/MathUtils;
.super Ljava/lang/Object;


# static fields
.field public static final PIAndHalf:D = 4.71238898038469

.field public static final PIOver2:D = 1.5707963267948966

.field public static final PIOver4:D = 0.7853981633974483

.field public static final TwoPI:D = 6.283185307179586


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cellingTo(DD)D
    .locals 0

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    mul-double p2, p2, p0

    return-wide p2
.end method

.method public static clamp(DDD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmpl-double p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static coerce(DD)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->log10(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static equals(Ljava/lang/Double;D)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static floorTo(DD)D
    .locals 0

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    mul-double p2, p2, p0

    return-wide p2
.end method

.method public static round(DI)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/artfulbits/aiCharts/Base/MathUtils;->floorTo(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static solveQuadratic(DDD[D)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmpl-double v4, p0, v2

    if-nez v4, :cond_0

    cmpl-double p0, p2, v2

    if-eqz p0, :cond_1

    neg-double p0, p4

    div-double/2addr p0, p2

    aput-wide p0, p6, v0

    aput-wide p0, p6, v1

    return v0

    :cond_0
    mul-double v4, p2, p2

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v6, v6, p0

    mul-double v6, v6, p4

    sub-double/2addr v4, v6

    cmpl-double p4, v4, v2

    if-ltz p4, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    neg-double p2, p2

    sub-double v2, p2, p4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double p0, p0, v4

    div-double/2addr v2, p0

    aput-wide v2, p6, v1

    add-double/2addr p2, p4

    div-double/2addr p2, p0

    aput-wide p2, p6, v0

    const/4 p0, 0x2

    return p0

    :cond_1
    return v1
.end method
