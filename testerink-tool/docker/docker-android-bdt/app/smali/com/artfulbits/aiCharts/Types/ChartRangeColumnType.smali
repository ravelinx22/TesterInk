.class public Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;->FLAG_SIDE_BY_SIDE:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 28

    move-object/from16 v10, p1

    invoke-virtual/range {p1 .. p1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getSideBySideOffset()Lcom/artfulbits/aiCharts/Base/DoubleRange;

    move-result-object v11

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v12

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v13, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->LowValueIndex:I

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v14, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->HighValueIndex:I

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v8

    iget-object v1, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v15

    const/4 v6, 0x0

    move-object v1, v12

    move-wide v2, v8

    move-wide v4, v15

    move v7, v0

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v17

    move/from16 v6, v17

    invoke-static/range {v1 .. v7}, Lcom/artfulbits/aiCharts/Types/ChartRangeColumnType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v15

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    move/from16 v7, v17

    :goto_0
    if-gt v7, v15, :cond_3

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    iget-wide v2, v11, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Minimum:D

    add-double v1, v0, v2

    invoke-virtual {v8, v13}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v5

    move-object/from16 v24, v12

    move/from16 v25, v13

    iget-wide v12, v11, Lcom/artfulbits/aiCharts/Base/DoubleRange;->Maximum:D

    add-double/2addr v5, v12

    invoke-virtual {v8, v14}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v12

    move-object/from16 v0, p1

    move/from16 v26, v7

    move-object/from16 v27, v11

    move-object v11, v8

    move-wide v7, v12

    move-object v12, v9

    invoke-virtual/range {v0 .. v9}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getRect(DDDDLandroid/graphics/RectF;)V

    invoke-virtual {v12}, Landroid/graphics/RectF;->sort()V

    iget-boolean v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {v10, v12, v11}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/RectF;Ljava/lang/Object;)V

    :cond_0
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, v12, Landroid/graphics/RectF;->top:F

    iget v2, v12, Landroid/graphics/RectF;->right:F

    iget v3, v12, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->isVisible(FFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    iget v3, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v4, v12, Landroid/graphics/RectF;->right:F

    iget v5, v12, Landroid/graphics/RectF;->bottom:F

    iget v6, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v7, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float v22, v6, v7

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v23, v11

    invoke-virtual/range {v16 .. v23}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawBox3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_1

    :cond_1
    iget-object v0, v10, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v12, v11}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawRect(Landroid/graphics/RectF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_2
    :goto_1
    add-int/lit8 v7, v26, 0x1

    move-object v9, v12

    move-object/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v11, v27

    goto :goto_0

    :cond_3
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
