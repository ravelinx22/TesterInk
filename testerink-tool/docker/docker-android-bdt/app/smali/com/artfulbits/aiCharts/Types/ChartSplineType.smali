.class public Lcom/artfulbits/aiCharts/Types/ChartSplineType;
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

.field public static final SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final TENSION:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    const-string v0, "spline_tension"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartSplineType;

    const-class v2, Ljava/lang/Float;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->TENSION:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSpline([FF)Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v2, v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v1, p2, v4

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float v1, v3, v2

    :goto_0
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v13, 0x1

    aget v6, v0, v13

    invoke-virtual {v12, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    sub-int/2addr v4, v13

    const/4 v14, 0x1

    :goto_1
    if-gt v14, v4, :cond_3

    add-int/lit8 v5, v14, -0x1

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v14, 0x2

    if-ne v14, v13, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v14, -0x2

    mul-int/lit8 v7, v7, 0x2

    :goto_2
    if-ne v14, v4, :cond_2

    move v8, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v14, 0x1

    mul-int/lit8 v8, v8, 0x2

    :goto_3
    aget v9, v0, v5

    mul-float v9, v9, v2

    aget v10, v0, v6

    aget v11, v0, v7

    sub-float/2addr v10, v11

    mul-float v10, v10, v3

    add-float/2addr v9, v10

    mul-float v9, v9, v1

    add-int/lit8 v10, v5, 0x1

    aget v11, v0, v10

    mul-float v11, v11, v2

    add-int/lit8 v15, v6, 0x1

    aget v16, v0, v15

    add-int/2addr v7, v13

    aget v7, v0, v7

    sub-float v16, v16, v7

    mul-float v16, v16, v3

    add-float v11, v11, v16

    mul-float v7, v1, v11

    aget v11, v0, v6

    mul-float v11, v11, v2

    aget v16, v0, v8

    aget v5, v0, v5

    sub-float v16, v16, v5

    mul-float v16, v16, v3

    sub-float v11, v11, v16

    mul-float v11, v11, v1

    aget v5, v0, v15

    mul-float v5, v5, v2

    add-int/2addr v8, v13

    aget v8, v0, v8

    aget v10, v0, v10

    sub-float/2addr v8, v10

    mul-float v8, v8, v3

    sub-float/2addr v5, v8

    mul-float v10, v1, v5

    aget v16, v0, v6

    aget v15, v0, v15

    move-object v5, v12

    move v6, v9

    move v8, v11

    move v9, v10

    move/from16 v10, v16

    move v11, v15

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    return-object v12
.end method

.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 23

    move-object/from16 v6, p1

    iget-object v7, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v0

    iget v8, v0, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->SORTED_POINTS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v7, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPoints()Lcom/artfulbits/aiCharts/Base/ChartPointCollection;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v7, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->TENSION:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v7, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v16

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v18

    const/4 v14, 0x0

    move-object v9, v5

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    const/4 v0, 0x0

    move v15, v2

    invoke-static/range {v9 .. v15}, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v20

    move/from16 v14, v20

    invoke-static/range {v9 .. v15}, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/16 v20, 0x0

    :goto_2
    add-int/lit8 v9, v20, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    sub-int v2, v10, v9

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v12, v2, [F

    const/4 v13, 0x0

    :goto_3
    if-gt v9, v10, :cond_3

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v14}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v15

    invoke-virtual {v14, v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v17

    move-object/from16 v0, p1

    move-object/from16 v21, v1

    move-wide v1, v15

    move v15, v3

    move/from16 v22, v4

    move-wide/from16 v3, v17

    move-object/from16 v16, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v0, v13, 0x1

    iget v1, v11, Landroid/graphics/PointF;->x:F

    aput v1, v12, v13

    add-int/lit8 v13, v0, 0x1

    iget v1, v11, Landroid/graphics/PointF;->y:F

    aput v1, v12, v0

    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->reset()V

    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v1, v11, Landroid/graphics/PointF;->y:F

    int-to-float v2, v15

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v4, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v0, v14}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    move-object/from16 v4, v21

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object v1, v4

    move v3, v15

    move-object/from16 v5, v16

    move/from16 v4, v22

    goto :goto_3

    :cond_3
    move/from16 v22, v4

    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_4

    iget-object v9, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float v13, v1, v2

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getBackColor()I

    move-result v14

    move-object v10, v12

    move/from16 v11, v22

    move v12, v0

    invoke-virtual/range {v9 .. v14}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawSpline3D([FFFFI)V

    return-void

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->createSpline([FF)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v2, v1, v7}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->strokePath(Landroid/graphics/Path;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    :goto_5
    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Types/ChartSplineType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method
