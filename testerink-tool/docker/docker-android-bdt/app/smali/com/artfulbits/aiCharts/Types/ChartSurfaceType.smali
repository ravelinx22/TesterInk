.class public Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;
.super Lcom/artfulbits/aiCharts/Types/a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/a;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->b:Landroid/graphics/Paint;

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->FLAG_SUPPORT_3D:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->FLAG_Z_AXIS:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->m_flags:I

    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/artfulbits/aiCharts/Types/a;->draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V

    return-void
.end method

.method public bridge synthetic drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/artfulbits/aiCharts/Types/a;->drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V

    return-void
.end method

.method protected drawPolygon(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FII)V
    .locals 4

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/artfulbits/aiCharts/Base/ChartPalette;->getColor(I)I

    move-result p4

    iget-boolean v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPoly3D([FII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->a:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v3, p2, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p4, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p4, 0x1

    :goto_0
    if-ge p4, p3, :cond_1

    mul-int/lit8 v0, p4, 0x3

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->a:Landroid/graphics/Path;

    aget v3, p2, v0

    add-int/2addr v0, v2

    aget v0, p2, v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->a:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    iget-object p2, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/artfulbits/aiCharts/Types/ChartSurfaceType;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public bridge synthetic getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    return-void
.end method

.method public bridge synthetic getZRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->getZRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    return-void
.end method
