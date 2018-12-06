.class public Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->INTERNAL_STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->STACK_GROUP:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->FLAG_ORIGIN_DEPENDENT:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->FLAG_STACKED:I

    or-int/2addr v0, v1

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->m_flags:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 20

    move-object/from16 v6, p1

    iget-object v7, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v15

    iget v5, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_4

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

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

    const/4 v13, 0x0

    move-object v8, v15

    move-wide v9, v1

    move-wide/from16 v11, v16

    move v14, v0

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v4

    move v13, v4

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Types/ChartStackedAreaType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v8

    sub-int v0, v8, v4

    add-int/lit8 v9, v0, 0x1

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    mul-int/lit8 v0, v9, 0x4

    new-array v12, v0, [F

    const/4 v13, 0x0

    move v14, v4

    const/16 v16, 0x0

    :goto_0
    if-gt v14, v8, :cond_0

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v6, v4, v5, v13}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide v17

    move-object/from16 v0, p1

    move-object/from16 v19, v4

    const/4 v13, 0x1

    move-wide/from16 v3, v17

    move v13, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v0, v16, 0x1

    iget v1, v11, Landroid/graphics/PointF;->x:F

    aput v1, v12, v16

    add-int/lit8 v16, v0, 0x1

    iget v1, v11, Landroid/graphics/PointF;->y:F

    aput v1, v12, v0

    invoke-virtual/range {v19 .. v19}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    move-object/from16 v0, v19

    const/4 v3, 0x1

    invoke-virtual {v6, v0, v13, v3}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getStackedValue(Lcom/artfulbits/aiCharts/Base/ChartPoint;IZ)D

    move-result-wide v4

    move-object/from16 v0, p1

    move-wide v3, v4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v0, v16, 0x1

    iget v1, v11, Landroid/graphics/PointF;->x:F

    aput v1, v12, v16

    add-int/lit8 v16, v0, 0x1

    iget v1, v11, Landroid/graphics/PointF;->y:F

    aput v1, v12, v0

    add-int/lit8 v14, v14, 0x1

    move v5, v13

    const/4 v3, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v3, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v12, v1, v2, v7}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawArea3D([FFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    aget v0, v12, v0

    const/4 v3, 0x1

    aget v1, v12, v3

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v9, :cond_2

    mul-int/lit8 v1, v0, 0x4

    aget v2, v12, v1

    add-int/2addr v1, v3

    aget v1, v12, v1

    invoke-virtual {v10, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v9, v3

    :goto_2
    if-ltz v9, :cond_3

    mul-int/lit8 v0, v9, 0x4

    add-int/lit8 v1, v0, 0x2

    aget v1, v12, v1

    add-int/lit8 v0, v0, 0x3

    aget v0, v12, v0

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v10, v7, v1}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawPath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method
