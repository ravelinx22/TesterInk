.class public Lcom/artfulbits/aiCharts/Types/ChartRangeAreaType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartRangeAreaType;->FLAG_SUPPORT_3D:I

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartRangeAreaType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 18

    move-object/from16 v6, p1

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v15, 0x1

    if-le v0, v15, :cond_5

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v3, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v15

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v1

    iget-object v4, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v16

    const/4 v12, 0x0

    move-object v7, v14

    move-wide v8, v1

    move-wide/from16 v10, v16

    move v13, v0

    invoke-static/range {v7 .. v13}, Lcom/artfulbits/aiCharts/Types/ChartRangeAreaType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v4

    move v12, v4

    invoke-static/range {v7 .. v13}, Lcom/artfulbits/aiCharts/Types/ChartRangeAreaType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v7

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    sub-int v0, v7, v4

    add-int/2addr v0, v15

    mul-int/lit8 v0, v0, 0x4

    new-array v9, v0, [F

    const/4 v10, 0x0

    move v11, v4

    const/4 v12, 0x0

    :goto_0
    if-gt v11, v7, :cond_0

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v13, v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v16

    move-object/from16 v0, p1

    move v15, v3

    move-wide/from16 v3, v16

    move/from16 v16, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v0, v12, 0x1

    iget v1, v8, Landroid/graphics/PointF;->x:F

    aput v1, v9, v12

    add-int/lit8 v12, v0, 0x1

    iget v1, v8, Landroid/graphics/PointF;->y:F

    aput v1, v9, v0

    invoke-virtual {v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v13, v15}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v0, v12, 0x1

    iget v1, v8, Landroid/graphics/PointF;->x:F

    aput v1, v9, v12

    add-int/lit8 v12, v0, 0x1

    iget v1, v8, Landroid/graphics/PointF;->y:F

    aput v1, v9, v0

    add-int/lit8 v11, v11, 0x1

    move v3, v15

    move/from16 v5, v16

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v3, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float/2addr v2, v3

    iget-object v3, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawArea3D([FFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    aget v1, v9, v10

    const/4 v2, 0x1

    aget v3, v9, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    array-length v1, v9

    div-int/lit8 v1, v1, 0x4

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v1, :cond_2

    mul-int/lit8 v4, v3, 0x4

    aget v5, v9, v4

    add-int/2addr v4, v2

    aget v4, v9, v4

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    array-length v1, v9

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_3

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v2, 0x2

    aget v3, v9, v3

    add-int/lit8 v2, v2, 0x3

    aget v2, v9, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-boolean v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v6, v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_4
    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iget-object v3, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    :cond_5
    return-void
.end method

.method public getRequiredUsages()[Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->LowValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;->HighValue:Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration$Usage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 4

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v0, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {p0, p1, p2, v1}, Lcom/artfulbits/aiCharts/Base/ChartType;->computeYRange(Lcom/artfulbits/aiCharts/Base/ChartType;Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;[I)V

    return-void
.end method
