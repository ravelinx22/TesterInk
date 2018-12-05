.class public Lcom/artfulbits/aiCharts/Types/ChartPolarType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPolarType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 22

    move-object/from16 v6, p1

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartPolarType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    iget v8, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/artfulbits/aiCharts/Types/ChartPolarType;->isIndexed()Z

    move-result v9

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v5

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

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

    iget-object v4, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v17

    const/4 v15, 0x0

    move-object v10, v5

    move-wide v11, v1

    move-wide/from16 v13, v17

    move/from16 v16, v0

    invoke-static/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Types/ChartPolarType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v19

    move/from16 v15, v19

    invoke-static/range {v10 .. v16}, Lcom/artfulbits/aiCharts/Types/ChartPolarType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v11}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v11, v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v14

    move-object/from16 v0, p1

    move-object/from16 v20, v3

    move-wide v3, v14

    move-object v14, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    move-object v15, v11

    move/from16 v11, v19

    :goto_0
    if-gt v11, v10, :cond_2

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v9, :cond_0

    int-to-double v0, v11

    :goto_1
    move-wide v1, v0

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    goto :goto_1

    :goto_2
    invoke-virtual {v5, v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move/from16 v21, v8

    move-object v8, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v12, v13, v15}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->reset()V

    iget v0, v13, Landroid/graphics/PointF;->x:F

    iget v1, v13, Landroid/graphics/PointF;->y:F

    int-to-float v2, v7

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v4, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v0, v8}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    move-object/from16 v4, v20

    :goto_3
    invoke-virtual {v12, v13}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v4

    move-object v15, v8

    move/from16 v8, v21

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getRequiredCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->Polar:Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    return-object v0
.end method
