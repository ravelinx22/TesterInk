.class final Lcom/artfulbits/aiCharts/Base/ChartTransform$b;
.super Lcom/artfulbits/aiCharts/Base/ChartTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

.field private final e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;)V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartTransform;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->b:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->c:F

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    return-void
.end method

.method public static a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;D)F
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide p0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    mul-double p0, p0, v0

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    add-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public final getPoint(DDLandroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide p1

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    mul-double p1, p1, v0

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    add-double/2addr p1, v0

    double-to-float p1, p1

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide p2

    double-to-float p2, p2

    iget p3, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a:F

    invoke-static {p1}, Landroid/util/FloatMath;->cos(F)F

    move-result p4

    mul-float p4, p4, p2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->c:F

    mul-float p4, p4, v0

    add-float/2addr p3, p4

    iput p3, p5, Landroid/graphics/PointF;->x:F

    iget p3, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->b:F

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result p1

    mul-float p1, p1, p2

    iget p2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->c:F

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    iput p3, p5, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final getX(FF)D
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->b:F

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->coefficientToValue(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final getY(FF)D
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->b:F

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method
