.class public Lcom/artfulbits/aiCharts/Types/ChartRadarAreaType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartRadarAreaType;->FLAG_ORIGIN_DEPENDENT:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartRadarAreaType;->FLAG_INDEXED:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartRadarAreaType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 18

    move-object/from16 v6, p1

    iget-object v7, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Types/ChartRadarAreaType;->isIndexed()Z

    move-result v9

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v1

    iget-object v3, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v3

    const/4 v15, 0x0

    move-object v10, v5

    move-wide v11, v1

    move-wide v13, v3

    move/from16 v16, v0

    invoke-static/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Types/ChartRadarAreaType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v17

    move/from16 v15, v17

    invoke-static/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Types/ChartRadarAreaType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v10

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move-object v13, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v0, v12, Landroid/graphics/PointF;->x:F

    iget v1, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v14, v17

    :goto_0
    if-gt v14, v10, :cond_1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v9, :cond_0

    int-to-double v1, v14

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    :goto_1
    invoke-virtual {v0, v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget v0, v12, Landroid/graphics/PointF;->x:F

    iget v1, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v7, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Polar:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    return-object v0
.end method
