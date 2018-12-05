.class public Lcom/artfulbits/aiCharts/Types/ChartStepLineType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVERSED:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "step_line-inverted"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->INVERSED:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 35

    move-object/from16 v6, p1

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointDeclaration()Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;

    move-result-object v1

    iget v7, v1, Lcom/artfulbits/aiCharts/Base/ChartPointDeclaration;->YValueIndex:I

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v2, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->INVERSED:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/16 v17, 0x1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v2

    iget-object v4, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v4

    invoke-virtual {v4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v4

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_MODE:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v8}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    sget-object v9, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->None:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    const/16 v18, 0x0

    if-eq v8, v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    sget-object v10, Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;->Auto:Lcom/artfulbits/aiCharts/Types/ChartLineType$BreakMode;

    if-ne v8, v10, :cond_1

    const/16 v19, 0x1

    goto :goto_1

    :cond_1
    const/16 v19, 0x0

    :goto_1
    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_DELTA:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v8}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v8}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    if-eqz v19, :cond_2

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    xor-int/lit8 v9, v8, 0x1

    :cond_2
    move/from16 v22, v9

    const/4 v13, 0x0

    move-object v8, v15

    move-wide v9, v2

    move-wide v11, v4

    move-object/from16 v23, v14

    move v14, v1

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v14

    move v13, v14

    move v5, v14

    move v14, v1

    invoke-static/range {v8 .. v14}, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v8

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v9, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move v13, v0

    move-object/from16 v0, p1

    move v14, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    add-int/lit8 v14, v14, 0x1

    :goto_2
    if-gt v14, v8, :cond_a

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v5}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v5, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    move-object/from16 v0, p1

    move/from16 v32, v8

    move-object v8, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    if-eqz v16, :cond_3

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v8, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    :goto_3
    move-object/from16 v0, p1

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->getPoint(DDLandroid/graphics/PointF;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v9, v7}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v3

    goto :goto_3

    :goto_4
    if-eqz v22, :cond_6

    if-eqz v19, :cond_5

    invoke-virtual {v8}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v0

    invoke-virtual {v9}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    cmpg-double v2, v0, v20

    if-gtz v2, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->BREAK_POINT:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v9, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_6
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_8

    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v1, v10, Landroid/graphics/PointF;->x:F

    iget v2, v10, Landroid/graphics/PointF;->y:F

    iget v3, v12, Landroid/graphics/PointF;->x:F

    iget v4, v12, Landroid/graphics/PointF;->y:F

    iget v5, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move/from16 v33, v7

    iget v7, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    move-object/from16 v34, v15

    iget v15, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float v30, v7, v15

    move-object/from16 v24, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v31, v9

    invoke-virtual/range {v24 .. v31}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    iget v1, v12, Landroid/graphics/PointF;->x:F

    iget v2, v12, Landroid/graphics/PointF;->y:F

    iget v3, v11, Landroid/graphics/PointF;->x:F

    iget v4, v11, Landroid/graphics/PointF;->y:F

    iget v5, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v7, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v15, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    add-float v30, v7, v15

    move-object/from16 v24, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v29, v5

    invoke-virtual/range {v24 .. v31}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine3D(FFFFFFLcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_7

    :cond_7
    move/from16 v33, v7

    move-object/from16 v34, v15

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v10, v12, v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0, v12, v11, v9}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    goto :goto_7

    :cond_8
    move/from16 v33, v7

    move-object/from16 v34, v15

    :goto_7
    iget-boolean v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v0, :cond_9

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->reset()V

    iget v0, v11, Landroid/graphics/PointF;->x:F

    iget v1, v11, Landroid/graphics/PointF;->y:F

    int-to-float v2, v13

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v4, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget-object v0, v6, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v0, v8}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    goto :goto_8

    :cond_9
    move-object/from16 v4, v23

    :goto_8
    invoke-virtual {v10, v11}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v23, v4

    move-object v9, v8

    move/from16 v8, v32

    move/from16 v7, v33

    move-object/from16 v15, v34

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Types/ChartStepLineType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method
