.class final Lcom/artfulbits/aiCharts/Base/ChartTransform$a;
.super Lcom/artfulbits/aiCharts/Base/ChartTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

.field private final f:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;)V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartTransform;-><init>()V

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->f:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iput p2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->a:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->b:F

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iput p2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->c:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->d:F

    return-void
.end method


# virtual methods
.method public final getPoint(DDLandroid/graphics/PointF;)V
    .locals 4

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->a:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v2, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide p1

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->b:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p5, Landroid/graphics/PointF;->x:F

    iget p1, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->c:F

    float-to-double p1, p1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->f:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v0, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide p3

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->d:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, p3

    double-to-float p1, p1

    iput p1, p5, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final getX(FF)D
    .locals 2

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->a:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->b:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->coefficientToValue(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final getY(FF)D
    .locals 2

    iget-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->f:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->c:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->d:F

    div-float/2addr p2, v0

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->coefficientToValue(D)D

    move-result-wide p1

    return-wide p1
.end method
