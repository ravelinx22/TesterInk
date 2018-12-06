.class public final Lcom/artfulbits/aiCharts/Base/DoubleRange;
.super Ljava/lang/Object;


# instance fields
.field public Maximum:D

.field public Minimum:D


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->b()V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->set(DD)V

    return-void
.end method

.method public static union(Lcom/artfulbits/aiCharts/Base/DoubleRange;Lcom/artfulbits/aiCharts/Base/DoubleRange;)Lcom/artfulbits/aiCharts/Base/DoubleRange;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->union(Lcom/artfulbits/aiCharts/Base/DoubleRange;)Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()Z
    .locals 5

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final b()V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    iput-wide v0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    return-void
.end method

.method public final center()D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public final extrapolate(D)D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    sub-double/2addr v0, v2

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public final getDelta()D
    .locals 4

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public final interpolate(D)D
    .locals 6

    iget-wide v0, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    iget-wide v2, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    iget-wide v4, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    sub-double/2addr v2, v4

    mul-double p1, p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public final set(DD)V
    .locals 1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    iput-wide p3, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    return-void

    :cond_0
    iput-wide p3, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    iput-wide p1, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    return-void
.end method

.method public final union(D)Lcom/artfulbits/aiCharts/Base/DoubleRange;
    .locals 6

    new-instance v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;

    iget-wide v1, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    cmpg-double v3, p1, v1

    if-gez v3, :cond_0

    move-wide v1, p1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    :goto_0
    iget-wide v3, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    cmpl-double v5, p1, v3

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-wide p1, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    :goto_1
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/artfulbits/aiCharts/Base/DoubleRange;-><init>(DD)V

    return-object v0
.end method

.method public final union(DD)Lcom/artfulbits/aiCharts/Base/DoubleRange;
    .locals 4

    new-instance v0, Lcom/artfulbits/aiCharts/Base/DoubleRange;

    iget-wide v1, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    cmpg-double v3, p1, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    :goto_0
    iget-wide v1, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    cmpl-double v3, p3, v1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-wide p3, p0, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    :goto_1
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/DoubleRange;-><init>(DD)V

    return-object v0
.end method

.method public final union(Lcom/artfulbits/aiCharts/Base/DoubleRange;)Lcom/artfulbits/aiCharts/Base/DoubleRange;
    .locals 4

    iget-wide v0, p1, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    iget-wide v2, p1, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/DoubleRange;->union(DD)Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object p1

    return-object p1
.end method
